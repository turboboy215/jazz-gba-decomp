#!/usr/bin/env python3
"""Integrate decompiled functions: tools/add_funcs.py results.json

results.json: [{"addr": "XXXXXXXX", "matched": true, "c_code": "...", "name": "..."}, ...]
Each claimed match is re-checked with tools/check_func.py (inline asm is rejected). Runs of
consecutive matched functions go into one file, appended to an existing file when it ends right
where the run starts (and the file that starts where the run ends is joined to it). In region A the
files are named by subsystem (tools/subsystems.py: src/oam.c, src/oam_2.c, ...), elsewhere
src/code_<first addr>.c; a file is only extended within its subsystem and compiler flavour. Then the split is regenerated and `make compare`
must pass; on any failure every touched file is restored.
"""
import json, os, re, shutil, subprocess, sys, tempfile
sys.path.insert(0, os.path.dirname(__file__))
from split import load_funcs, load_splits
from subsystems import subsystem, file_subsystem, new_name, header, hoist_includes

TRACKED = ["splits.txt", "ld_script.ld", "objects.mk"]


def check(code, addr, end=None, rodata=None):
    if re.search(r"\basm\b|__asm|naked", code) and not os.environ.get("ALLOW_ASM"):  # ALLOW_ASM=1: original source had inline asm (GAX DMA delays)
        return False
    with tempfile.NamedTemporaryFile("w", suffix=".c", delete=False) as f:
        f.write(code)
    try:
        env = dict(os.environ)
        if end:
            env["END"] = end
        if rodata:  # [start, end] of the function's jump tables in the ROM rodata (tools/jtbl.py)
            env["RODATA"] = rodata[0]
        r = subprocess.run(["python3", "tools/check_func.py", f.name, addr], capture_output=True, text=True, env=env)
        return r.stdout.startswith("MATCH")
    finally:
        os.unlink(f.name)


def compiles(code):
    pp = subprocess.run(["arm-none-eabi-cpp", "-nostdinc", "-I", "include", "-I", "tools/agbcc/include", "-"],
                        input=code, capture_output=True, text=True)
    cc = subprocess.run(["tools/agbcc/bin/old_agbcc", "-mthumb-interwork", "-O2", "-fhex-asm", "-fno-merge-blocks", "-fdelete-dead-after-reload", "-fgcse-no-const", "-fno-strict-aliasing", "-fcombine-givs-fix", "-o", "/dev/null"],
                        input=pp.stdout, capture_output=True, text=True)
    return pp.returncode == 0 and cc.returncode == 0 and "error" not in cc.stderr


def merge(codes):
    """Concatenate function files, dropping repeated include/extern/typedef lines."""
    seen, out = set(), []
    for c in codes:
        for line in c.strip().splitlines() + [""]:
            key = line.strip()
            if key and line == line.lstrip() and (key.startswith("#include") or key.startswith("extern") or re.match(r"^[\w\s\*]+\([^)]*\);$", key)):
                if key in seen:
                    continue
                seen.add(key)
            out.append(line)
    return "\n".join(out).rstrip() + "\n"


def main(path):
    funcs = {f[0]: f for f in load_funcs()}
    res = [r for r in json.load(open(path)) if r.get("matched")]
    good = sorted((int(r["addr"], 16), r) for r in res if check(r["c_code"], r["addr"], r.get("end"), r.get("rodata")))
    print("verified %d/%d claimed matches" % (len(good), len(res)))
    if not good:
        return 1
    splits = load_splits()
    ends = {e: (s, n) for s, e, k, n in splits if k == "c"}
    runs = []  # [start, end, [codes]]
    for a, r in good:
        f = funcs[a]
        fe = int(r["end"], 16) if r.get("end") else f[1]  # "end": one C file spanning several functions
        if runs and runs[-1][1] == a and not r.get("end") and not r.get("rodata") and not runs[-1][3]:
            runs[-1][1] = fe; runs[-1][2].append(r["c_code"])
        else:
            runs.append([a, fe, [r["c_code"]], r.get("rodata")])
    # ponytail: functions whose guessed declarations conflict go in separate files; a
    # header-consolidation pass (include/*.h) merges them into subsystem files later.
    split_runs = []
    for s, e, codes, rod in runs:
        if rod:  # a file with .rodata placed in the ROM rodata: keep it on its own
            split_runs.append([s, e, codes, True, rod])
            continue
        prev = ends.get(s)
        alone_ok = len(codes) == 1 or compiles(merge(codes))
        if alone_ok and not (prev and not compiles(merge([open("src/%s.c" % prev[1]).read()] + codes))):
            split_runs.append([s, e, codes, False])
            continue
        for a, r in good:
            if s <= a < e:
                split_runs.append([a, int(r["end"], 16) if r.get("end") else funcs[a][1], [r["c_code"]], True])
    runs = split_runs
    backup = tempfile.mkdtemp()
    touched = list(TRACKED)
    for t in TRACKED:
        if os.path.exists(t):
            shutil.copy(t, backup)
    srcs, srcs_names, removed = {}, [], []
    # compiler flavour of this integration (old_agbcc / -O1 / default); never extend a file built differently
    opt = os.environ.get("OPT", "")
    # -fprologue-bugfix is global and old_agbcc output equals it, so only -O1 / no-interwork remain
    flav = "o1" if "-O1" in opt else ("noiw" if "-mno-thumb-interwork" in opt else "")
    file_flav = {}
    if os.path.exists("splits.txt"):
        for l in open("splits.txt"):
            q = l.split()
            if len(q) >= 4 and q[2] == "c":
                file_flav[q[3]] = q[4] if len(q) >= 5 else ""
    for run in runs:
        s, e, codes, standalone = run[:4]
        rod = run[4] if len(run) > 4 else None
        sub, desc = subsystem(s)
        prev = None if standalone else ends.get(s)
        if prev and (file_flav.get(prev[1], "") != flav or file_subsystem(prev[1]) != sub):
            prev = None
        if prev:  # extend the file that ends where this run starts
            ps, name = prev
            splits = [x for x in splits if x[0] != ps]
            s, old = ps, open("src/%s.c" % name).read()
            codes = [old] + codes
        else:
            taken = {x[3] for x in splits if x[2] == "c"} | set(srcs_names)
            name = new_name(sub, taken) if sub else "code_%08X" % s
            if sub:
                codes = [header(name, sub, desc)] + codes
        nxt = None if standalone else next((x for x in splits if x[2] == "c" and x[0] == e), None)
        if nxt and sub and file_subsystem(nxt[3]) == sub and file_flav.get(nxt[3], "") == flav:
            # the run fills the gap before the next part of the subsystem: join that file too
            ntext = open("src/%s.c" % nxt[3]).read()
            ntext = re.sub(r"\A/\*.*?\*/\n", "", ntext, flags=re.S)  # its header comment
            codes = codes + [ntext]
            splits = [x for x in splits if x[0] != nxt[0]]
            splits = [(a, b, k, name if k == "rodata" and n == nxt[3] else n) for a, b, k, n in splits]
            removed.append("src/%s.c" % nxt[3])
            e = nxt[1]
        srcs["src/%s.c" % name] = re.sub(r"\n{3,}", "\n\n", hoist_includes(merge(codes)))
        srcs_names.append(name)
        splits.append((s, e, "c", name))
        ends[e] = (s, name)
        if rod:  # carve the tables out of the asm rodata row: kind "rodata" -> name.o(.rodata)
            rs, re_ = int(rod[0], 16), int(rod[1], 16)
            host = next(x for x in splits if x[2] == "asm" and x[0] <= rs and re_ <= x[1])
            splits.remove(host)
            if host[0] < rs:
                splits.append((host[0], rs, "asm", host[3]))
            splits.append((rs, re_, "rodata", name))
            if re_ < host[1]:
                splits.append((re_, host[1], "asm", "rodata_%08X" % re_))
    for p in srcs:
        if os.path.exists(p):
            shutil.copy(p, os.path.join(backup, os.path.basename(p)))
        touched.append(p)
        open(p, "w").write(srcs[p])
    for p in removed:
        shutil.copy(p, os.path.join(backup, os.path.basename(p)))
        touched.append(p)
        os.remove(p)
    for n in srcs_names:
        file_flav[n] = flav
    tag = lambda x: " " + file_flav[x[3]] if x[2] == "c" and file_flav.get(x[3]) else ""
    open("splits.txt", "w").write("".join("%08X %08X %s %s%s\n" % (x[:4] + (tag(x),)) for x in sorted(splits)))
    ok = subprocess.run(["python3", "tools/split.py"]).returncode == 0 and \
        subprocess.run(["make", "-s", "-j%d" % os.cpu_count(), "compare"]).returncode == 0
    if not ok and not os.environ.get("KEEP"):
        print("make compare FAILED: restoring")
        for p in touched:
            b = os.path.join(backup, os.path.basename(p))
            if os.path.exists(b):
                shutil.copy(b, p)
            elif os.path.exists(p):
                os.remove(p)
        subprocess.run(["python3", "tools/split.py"])
        return 1
    print("added %d functions in %d files; make compare OK" % (len(good), len(srcs)))
    return 0


if __name__ == "__main__":
    sys.exit(main(sys.argv[1]))
