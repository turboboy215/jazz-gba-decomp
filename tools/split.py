#!/usr/bin/env python3
"""Split baserom.gba into asm/*.s (disassembled code) + data/*.s (incbin), driven by
decomp/functions.csv (exported from the Ghidra project) and splits.txt.

splits.txt lines: `<hex start> <hex end> c <name>` mark ranges implemented in src/<name>.c;
the splitter leaves them out of asm and slots build/src/<name>.o into the link order.

Usage: tools/split.py            # generate asm/, data/, ld_script.ld
       tools/split.py --verify   # also build, diff against baserom, demote mismatching
                                 # functions to raw .2byte/.4byte, repeat until matching
"""
import csv, os, re, subprocess, sys, collections

ROM = "baserom.gba"
BASE = 0x08000000
# Jazz Jackrabbit (USA) has two .text regions with ~2.8 MB of graphics/level data between
# them (see docs/rom_map.md). Everything outside CODE_REGIONS is emitted as .incbin data.
CODE_REGIONS = [
    (0x080002E0, 0x08012974),  # region A: engine library (live) + orphaned old build (dead)
    (0x082E8470, 0x0831AEB4),  # region B: game code, live GAX 3.01, ld interworking veneers
]
CODE_END = CODE_REGIONS[-1][1]
# Orphaned, never-referenced code image (old game build + stale GAX 3.01 copy). Kept as asm.
ORPHAN = (0x08005710, 0x08012974)
CHUNK = 0x10000           # one asm file per 64 KiB of code
OUT_ROM = "jazz.gba"


def in_regions(a):
    return any(lo <= a < hi for lo, hi in CODE_REGIONS)


def region_end(a):
    return next(hi for lo, hi in CODE_REGIONS if lo <= a < hi)
RAW = "tools/raw_funcs.txt"  # functions that must be emitted as raw bytes (written by --verify)

rom = open(ROM, "rb").read() if os.path.exists(ROM) else b""  # CI (no ROM) only uses committed tables


def referenced():
    """Addresses that are bl targets from code or appear as pointers anywhere in the ROM."""
    ref = set()
    for i in (j for lo, hi in CODE_REGIONS for j in range(lo - BASE, hi - BASE - 2, 2)):
        h1, h2 = rom[i] | rom[i + 1] << 8, rom[i + 2] | rom[i + 3] << 8
        if h1 & 0xF800 == 0xF000 and h2 & 0xF800 == 0xF800:
            off = ((h1 & 0x7FF) << 12) | ((h2 & 0x7FF) << 1)
            if off & 0x400000:
                off -= 0x800000
            ref.add(BASE + i + 4 + off)
    for i in range(0, len(rom) - 3, 4):
        v = int.from_bytes(rom[i:i + 4], "little")
        if in_regions(v & ~1):
            ref.add(v & ~1)
    return ref


def load_funcs():
    """Cached _load_funcs(); the cache is keyed on functions.csv and split.py mtimes."""
    import json
    key = [os.path.getmtime(f) if os.path.exists(f) else 0 for f in ("decomp/functions.csv", __file__, "starts.txt", "ignore_starts.txt")]
    cache = "decomp/funcs_cache.json"
    try:
        c = json.load(open(cache))
        if c["key"] == key:
            return [(s, e, t, [tuple(x) for x in segs]) for s, e, t, segs in c["funcs"]]
    except (OSError, ValueError, KeyError):
        pass
    funcs = _load_funcs()
    tmp = "%s.%d" % (cache, os.getpid())
    json.dump({"key": key, "funcs": funcs}, open(tmp, "w"))
    os.replace(tmp, cache)  # atomic: agents may call this concurrently
    return funcs


def _load_funcs():
    """Return [(start, end, thumb, code_segments)]. end = next function start, so literal
    pools belong to the function; bytes outside code_segments are emitted as data words."""
    rows = []
    for r in csv.DictReader(open("decomp/functions.csv")):
        s, e = int(r["start"], 16), int(r["end"], 16) + 1
        if not in_regions(s):
            continue  # Ghidra false positives in data
        rows.append([s, min(e, region_end(s)), int(r.get("thumb", 1))])
    # starts.txt: function starts Ghidra missed (one hex address per line)
    # (optional 2nd column "arm" marks an ARM-mode start; default Thumb)
    extra, extra_mode = set(), {}
    if os.path.exists("starts.txt"):
        for l in open("starts.txt"):
            q = l.split("#")[0].split()
            if q:
                extra.add(int(q[0], 16)); extra_mode[int(q[0], 16)] = 0 if q[1:2] == ["arm"] else 1
    rows = [r for r in rows if r[0] not in extra or r[2] == extra_mode[r[0]]]
    rows += [[x, region_end(x), extra_mode[x]] for x in extra if not any(r[0] == x for r in rows)]
    rows.sort()
    clean = []
    for i, (s, e, t) in enumerate(rows):
        rend = region_end(s)
        nxt = min(rows[i + 1][0], rend) if i + 1 < len(rows) else rend
        e = min(e, nxt)  # Ghidra body end; the pool/padding up to the next start is added below
        if clean and s < clean[-1][1]:
            continue
        # Thumb must be 2-aligned, ARM 4-aligned, bodies non-empty
        if e > s and s % (2 if t else 4) == 0 and (e - s) % (2 if t else 4) == 0:
            clean.append((s, e, t))
    ref = referenced() | extra
    # ignore_starts.txt: fake starts (e.g. targets of agbcc's long-branch `bl` inside big functions)
    ignore = set()
    if os.path.exists("ignore_starts.txt"):
        ignore = {int(l.split("#")[0], 16) for l in open("ignore_starts.txt") if l.split("#")[0].strip()}
    out = []
    for s, e, t in clean:
        if s in ignore and out:
            out[-1][3].append((s, e))
            continue
        # Unreferenced Thumb start without push {.., lr}: a fragment of the previous function
        if out and t and out[-1][2] == t and s not in ref and hw(s) & 0xFF00 != 0xB500:
            out[-1][3].append((s, e))
            continue
        out.append([s, e, t, [(s, e)]])
    for i, f in enumerate(out):
        rend = region_end(f[0])
        f[1] = min(out[i + 1][0], rend) if i + 1 < len(out) else f[3][-1][1]
    return [tuple(f) for f in out]


def load_splits():
    sp = []
    if os.path.exists("splits.txt"):
        for line in open("splits.txt"):
            line = line.split("#")[0].split()
            if line:
                sp.append((int(line[0], 16), int(line[1], 16), line[2], line[3]))
    return sorted(sp)


def objdump(start, end, thumb):
    """Return {addr: (raw_bytes, mnemonic, operands)} for [start, end)."""
    cmd = ["arm-none-eabi-objdump", "-D", "-b", "binary", "-marmv4t", "--adjust-vma=%#x" % BASE,
           "--start-address=%#x" % start, "--stop-address=%#x" % end, ROM]
    if thumb:
        cmd[6:6] = ["-M", "force-thumb"]
    ins = {}
    for line in subprocess.run(cmd, capture_output=True, text=True, check=True).stdout.splitlines():
        m = re.match(r"\s*([0-9a-f]+):\t([0-9a-f ]+?)\s*\t(\S+)\s*(.*)", line)
        if m:
            a = int(m.group(1), 16)
            n = len(m.group(2).replace(" ", "")) // 2
            ops = re.split(r"\s*[@;]", m.group(4))[0].strip()
            ins[a] = (n, m.group(3), ops)
            h = int.from_bytes(rom[a - BASE:a - BASE + 2], "little")
            # add/sub Rd, Rn, #imm3 with Rd == Rn: GAS picks the imm8 encoding instead
            imm3_same = thumb and h & 0xFC00 in (0x1C00, 0x1E00) and h & 7 == (h >> 3) & 7
            if thumb and (re.sub(r"\..*", "", m.group(3)) in POST_V4T or "{}" in ops or imm3_same):
                ins[a] = (n, ".raw", "%s %s" % (m.group(3), ops))
    if thumb:
        # objdump 2.40 decodes Thumb-2 regardless of -m; on ARMv4T the only 32-bit
        # Thumb encoding is a bl pair. Split anything else and re-decode the 2nd half.
        todo = [a for a, (n, _, _) in ins.items() if n == 4 and not is_bl(a)]
        while todo:
            a = todo.pop()
            ins[a] = (2, ".raw", "")
            if a + 2 not in ins and a + 2 < end:
                one = objdump_one(a + 2)
                ins[a + 2] = one
                if one[0] == 4 and not is_bl(a + 2):
                    todo.append(a + 2)
    return ins


def hw(a):
    return int.from_bytes(rom[a - BASE:a - BASE + 2], "little")


def is_bl(a):
    return 0xF000 <= hw(a) < 0xF800 and hw(a + 2) >= 0xF800


def objdump_one(a):
    out = subprocess.run(["arm-none-eabi-objdump", "-D", "-b", "binary", "-marmv4t", "-M", "force-thumb",
                          "--adjust-vma=%#x" % BASE, "--start-address=%#x" % a, "--stop-address=%#x" % (a + 4), ROM],
                         capture_output=True, text=True, check=True).stdout
    m = re.search(r"\n\s*%x:\t([0-9a-f ]+?)\s*\t(\S+)\s*(.*)" % a, out)
    if not m:
        return (2, ".raw", "")
    ops = re.split(r"\s*[@;]", m.group(3))[0].strip()
    if re.sub(r"\..*", "", m.group(2)) in POST_V4T or "{}" in ops:
        return (2, ".raw", "%s %s" % (m.group(2), ops))
    return (len(m.group(1).replace(" ", "")) // 2, m.group(2), ops)


# 16-bit Thumb encodings objdump decodes that ARMv4T does not have
POST_V4T = {"sxth", "sxtb", "uxth", "uxtb", "rev", "rev16", "revsh", "cbz", "cbnz", "it", "ite", "itt",
            "itte", "ittt", "itet", "itee", "iteee", "cpsie", "cpsid", "setend", "bkpt", "nop", "yield",
            "wfe", "wfi", "sev", "blx", "bxns", "blxns"}

BRANCH = re.compile(r"^(b|bl|b(?:eq|ne|cs|hs|cc|lo|mi|pl|vs|vc|hi|ls|ge|lt|gt|le))(\.n|\.w)?$")


def raw(a, n, thumb, text):
    if thumb:
        hw = [int.from_bytes(rom[a - BASE + i:a - BASE + i + 2], "little") for i in range(0, n, 2)]
        return "\t.2byte %s @ %s" % (", ".join("0x%04x" % h for h in hw), text)
    return "\t.4byte 0x%08x @ %s" % (int.from_bytes(rom[a - BASE:a - BASE + 4], "little"), text)


def in_code(a, segs):
    return any(cs <= a < ce for cs, ce in segs)


def load_names():
    """names.txt: ADDR NAME [# comment] -> {addr: (name, comment)}"""
    out = {}
    if os.path.exists("names.txt"):
        for l in open("names.txt"):
            body, _, com = l.partition("#")
            q = body.split()
            if len(q) >= 2:
                out[int(q[0], 16)] = (q[1], com.strip())
    return out


NAMES = load_names()
_C_RANGES = None


def in_c(a):
    global _C_RANGES
    if _C_RANGES is None:
        _C_RANGES = [(s, e) for s, e, k, _ in load_splits() if k == "c"]
    return any(s <= a < e for s, e in _C_RANGES)


def emit_func(s, e, thumb, segs, starts, ins, force_raw):
    name = "sub_%08X" % s
    lines = [""]
    if s in NAMES:
        alias, com = NAMES[s]
        lines += ["@ %s%s" % (alias, (": " + com) if com else "")]
    lines += ["\t%s" % (".thumb" if thumb else ".arm"), "\t.align %d, 0" % (1 if thumb else 2),
             "\t.global %s" % name] + (["\t.thumb_func"] if thumb else []) + ["%s:" % name]
    if s in NAMES:  # zero-size alias so the labelled name is a real symbol (no bytes emitted)
        lines[-1:-1] = []
        lines += ["\t.global %s" % NAMES[s][0], "\t.%s %s, %s" % ("thumb_set" if thumb else "set", NAMES[s][0], name)]
    body, labels, a = [], set(), s
    while a < e:
        if not in_code(a, segs):  # literal pool / padding owned by this function
            if a % 4 == 0 and a + 4 <= e and not in_code(a + 2, segs):
                body.append((a, "\t.4byte 0x%08X" % int.from_bytes(rom[a - BASE:a - BASE + 4], "little"))); a += 4
            else:
                body.append((a, "\t.2byte 0x%04X" % hw(a))); a += 2
            continue
        seg_end = next(ce for cs, ce in segs if cs <= a < ce)
        if a not in ins or a + ins[a][0] > seg_end:  # misaligned decode / straddles end
            body.append((a, raw(a, 2 if thumb else 4, thumb, "?")))
            a += 2 if thumb else 4
            continue
        n, mn, ops = ins[a]
        text = ("%s %s" % (mn, ops)).strip()
        line = None
        if not force_raw and "undefined" not in mn and not mn.startswith("."):
            bm = BRANCH.match(mn)
            tm = re.match(r"^0x([0-9a-f]+)\b", ops)
            if bm and tm:
                t = int(tm.group(1), 16)
                base = bm.group(1)
                if s <= t < e and t != s and base != "bl":
                    labels.add(t); line = "\t%s .L%08X" % (base, t)
                elif base == "bl" and t in starts and starts[t] == thumb == 1:
                    # alias names exist only while the callee is still asm (C defines sub_ only)
                    line = "\tbl %s" % (NAMES[t][0] if t in NAMES and not in_c(t) else "sub_%08X" % t)
            elif not bm:
                line = "\t" + text  # mismatches get demoted to raw by --verify
        body.append((a, line or raw(a, n, thumb, text), raw(a, n, thumb, text)))
        a += n
    addrs = {b[0] for b in body}
    for i, b in enumerate(body):  # branch into a pool / mid-instruction: no label there, keep raw
        m = re.search(r"\.L([0-9A-F]{8})$", b[1])
        if m and int(m.group(1), 16) not in addrs:
            body[i] = (b[0], b[2])
    labels &= addrs
    for a, l, *_ in body:
        if a in labels:
            lines.append(".L%08X:" % a)
        lines.append(l)
    return lines


def write_if_changed(path, text):
    """Keep mtimes of unchanged files so make only rebuilds what changed."""
    if os.path.exists(path) and open(path).read() == text:
        return
    open(path, "w").write(text)


def incbin(s, e):
    return ["\t.incbin \"baserom.gba\", %#x, %#x" % (s - BASE, e - s)]


def main(verify):
    funcs, splits = load_funcs(), load_splits()
    force = set(int(x, 16) for x in open(RAW).read().split()) if os.path.exists(RAW) else set()
    starts = {f[0]: f[2] for f in funcs}
    code_end = CODE_END
    # Precompute decode once per mode over each code region
    dis = {1: {}, 0: {}}
    for lo, hi in [(BASE, 0x080002E0)] + CODE_REGIONS:
        for t in (0, 1):
            dis[t].update(objdump(lo, hi, t))

    # Build ordered list of (start, end, kind, payload)
    objs = []  # (object path, lines or None)
    cur_file, cur_lines, pos, cur_chunk = None, [], BASE, None
    fi, si = 0, 0

    def flush():
        nonlocal cur_file, cur_lines
        if cur_file:
            objs.append((cur_file, cur_lines))
        cur_file, cur_lines = None, []

    def ensure_file(addr):
        nonlocal cur_file, cur_lines
        nonlocal cur_chunk
        chunk = (addr - BASE) // CHUNK
        # ld aligns each object to 4 and pads with nops: only start files at 4-aligned addresses
        orphan = ORPHAN[0] <= addr < ORPHAN[1]
        if cur_file is None or (chunk != cur_chunk and addr % 4 == 0) or (addr == ORPHAN[0]):
            flush()
            fname = "asm/%s_%08X.s" % ("orphan" if orphan else "code", addr if addr == ORPHAN[0] else BASE + chunk * CHUNK)
            if any(f == fname for f, _ in objs):
                fname = "asm/code_%08X.s" % addr  # chunk continues after a src/*.c range
            cur_file, cur_chunk = fname, chunk
            cur_lines = ["\t.include \"asm/macros.inc\"", "\t.syntax unified", "\t.text"]

    total = len(rom) + BASE
    while pos < total:
        if si < len(splits) and splits[si][0] <= pos:
            s, e, kind, name = splits[si]; si += 1
            flush()
            if kind == "asm":  # handwritten code / header kept as a named asm file
                lines = ["\t.include \"asm/macros.inc\"", "\t.syntax unified", "\t.text"]
                while pos < e:
                    if fi < len(funcs) and funcs[fi][0] == pos:
                        fs_, fe, ft, fsegs = funcs[fi]; fi += 1
                        lines += emit_func(fs_, min(fe, e), ft, fsegs, starts, dis[ft], fs_ in force)
                        pos = min(fe, e)
                    else:
                        stop = min([e] + [funcs[fi][0]] if fi < len(funcs) else [e])
                        lines += incbin(pos, stop); pos = stop
                if name == "header" and any(l.startswith("\t.4byte") for l in lines):  # keep Nintendo's logo (0x04-0x9F) out of the repo: copy it from the ROM
                    k = next(i for i, l in enumerate(lines) if l.startswith("\t.4byte")) + 1
                    lines[k:k + 0x9C // 4] = ['\t.incbin "baserom.gba", 0x4, 0x9C  @ Nintendo logo']
                objs.append(("asm/%s.s" % name, lines))
            else:
                objs.append(("src/%s.c" % name, None)); pos = e
            while fi < len(funcs) and funcs[fi][0] < pos:
                fi += 1
            continue
        if not in_regions(pos) and pos >= 0x080002E0:  # between code regions: a data object
            flush()
            nreg = next((lo for lo, hi in CODE_REGIONS if lo > pos), len(rom) + BASE)
            stop = min([nreg] + ([splits[si][0]] if si < len(splits) and splits[si][0] > pos else []))
            objs.append(("data/data_%08X.s" % pos, ["\t.section .rodata"] + incbin(pos, stop))); pos = stop
            cur_chunk = None
            continue
        ensure_file(pos)
        nxt = min([funcs[fi][0] if fi < len(funcs) else code_end, region_end(pos)]
                  + ([splits[si][0]] if si < len(splits) else []))
        chunk_end = BASE + ((pos - BASE) // CHUNK + 1) * CHUNK
        if pos < nxt:  # gap: literal pools / data between functions
            stop = min(nxt, chunk_end)
            cur_lines += incbin(pos, stop); pos = stop; continue
        if not (fi < len(funcs) and funcs[fi][0] == pos):
            continue
        s, e, t, segs = funcs[fi]; fi += 1
        cur_lines += emit_func(s, e, t, segs, starts, dis[t], s in force)
        pos = e
    flush()

    for f, lines in objs:
        if lines is not None:
            os.makedirs(os.path.dirname(f), exist_ok=True)
            write_if_changed(f, "\n".join(lines) + "\n")
    # stale asm files from older splits
    keep = {f for f, _ in objs}
    for f in os.listdir("data"):
        if f.endswith(".s") and "data/" + f not in keep:
            os.remove("data/" + f)
    for f in os.listdir("asm"):
        if f.endswith(".s") and "asm/" + f not in keep and not re.match(r"header_\w+\.s$", f):  # keep other versions' headers
            os.remove("asm/" + f)
    o = ["build/" + re.sub(r"\.[cs]$", ".o", f) for f, _ in objs]
    # agbcc -O1 also emits an unused .rodata copy of the literal pool; those bytes are not in the ROM
    o1set = set()
    if os.path.exists("splits.txt"):
        o1set = {"build/src/%s.o" % l.split()[3] for l in open("splits.txt") if len(l.split()) >= 5 and l.split()[4] == "o1"}
    write_if_changed("ld_script.ld",
        "\nINCLUDE build/syms.ld\nSECTIONS\n{\n    . = 0x08000000;\n    .text : {\n"
        + "".join(("        %s(.text);\n" if x in o1set else "        %s(.text .rodata .data);\n") % x for x in o)
        + "    }\n    /DISCARD/ : { *(.comment) *(.ARM.attributes)"
        + "".join(" %s(.rodata)" % x for x in sorted(o1set)) + " }\n}\n")
    # splits.txt optional 5th column "old": build that C file with old_agbcc
    rows5 = [l.split() for l in (open("splits.txt") if os.path.exists("splits.txt") else [])
             if len(l.split("#")[0].split()) >= 5]
    old_cc = [r[3] for r in rows5 if r[4] == "old"]
    o1 = [r[3] for r in rows5 if r[4] == "o1"]  # library code built at -O1
    write_if_changed("objects.mk", "OBJS := " + " ".join(o) + "\n" + "".join(
        "$(BUILD)/src/%s.o: CC1 := tools/agbcc/bin/old_agbcc\n" % n for n in old_cc) + "".join(
        "$(BUILD)/src/%s.o: CFLAGS += -O1\n" % n for n in o1) + "".join(
        "$(BUILD)/src/%s.o: CFLAGS += -mno-thumb-interwork\n" % n for n in [r[3] for r in rows5 if r[4] == "noiw"]) + "".join(
        "$(BUILD)/src/%s.o: CFLAGS += -fprologue-bugfix\n" % n for n in [r[3] for r in rows5 if r[4] == "bugfix"]))
    if verify:
        return do_verify(funcs, force)


def do_verify(funcs, force):
    r = subprocess.run(["make", "-s", "-j%d" % os.cpu_count(), OUT_ROM], capture_output=True, text=True)
    if r.returncode:
        # assembler errors: demote the functions on the reported lines
        bad = set()
        for f, ln in re.findall(r"(asm/\w+\.s):(\d+): Error", r.stderr):
            lines = open(f).read().splitlines()[: int(ln)]
            for l in reversed(lines):
                m = re.match(r"sub_([0-9A-F]{8}):", l)
                if m:
                    bad.add(int(m.group(1), 16)); break
        if not bad:
            sys.exit(r.stdout + r.stderr)
    else:
        built = open(OUT_ROM, "rb").read()
        if built == rom:
            print("MATCH (%d functions, %d raw)" % (len(funcs), len(force)))
            return True
        def mask(x):  # hide bl offsets: a size shift anywhere changes every later bl
            x = bytearray(x)
            for i in range(0, len(x) - 3, 2):
                if x[i + 1] & 0xF8 == 0xF0 and x[i + 3] & 0xF8 == 0xF8:
                    x[i:i + 4] = b"\0\0\0\0"
            return x
        mb, mr = mask(built), mask(rom)
        n = min(len(built), len(rom))
        diffs = [i for i in range(n) if mb[i] != mr[i]]
        if not diffs:  # only bl targets differ
            diffs = [i for i in range(n) if built[i] != rom[i]]
        elif len(built) != len(rom):
            diffs = diffs[:1]  # a size shift: fix the first divergence only, then rebuild
        if len(built) != len(rom) and not diffs:
            sys.exit("size mismatch %d vs %d" % (len(built), len(rom)))
        bad = set()
        for d in diffs[:100000]:
            a = d + BASE
            for s, e, *_ in funcs:
                if s <= a < e:
                    bad.add(s); break
        if not bad:
            sys.exit("diffs outside functions: first at %#x" % (diffs[0] + BASE))
    new = bad - force
    if not new:
        sys.exit("could not converge; still bad: %s" % sorted(hex(x) for x in bad)[:10])
    print("demoting %d functions to raw" % len(new))
    open(RAW, "w").write("\n".join("%08X" % x for x in sorted(force | new)) + "\n")
    return False


if __name__ == "__main__":
    verify = "--verify" in sys.argv
    while not main(verify) and verify:
        pass
