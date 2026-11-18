#!/usr/bin/env python3
"""Move switch jump tables from .text to .rodata in agbcc output (in place).

agbcc puts a thumb `switch` table right after the `mov pc, rX` dispatch. In this ROM (region A
library, game code) the tables live in the ROM's rodata block instead; the code only holds a
literal-pool word with the table address (GAX is the exception: objects.mk sets JTBL := true
for its files, and check_func.py skips this with OPT=-fprologue-bugfix). Rewriting
        .align 2, 0
    .L16:
        .word .L10 ...
to `.section .rodata` makes the code byte-identical and leaves the table in the object's
.rodata, which ld_script.ld places at its ROM address (splits.txt kind "rodata").

agbcc also turned conditional branches that had to jump over the inline table into
`b<cc> .LCBn; b .Lx @long jump; .LCBn:`. In functions that had a table moved, those are
turned back into `b<!cc> .Lx` (the original compiler never saw the table in .text); any that
gas then reports out of range are restored.
Usage: tools/jtbl.py file.s
"""
import os, re, subprocess, sys, tempfile

INV = {"eq": "ne", "ne": "eq", "cs": "cc", "cc": "cs", "hs": "lo", "lo": "hs", "mi": "pl", "pl": "mi",
       "vs": "vc", "vc": "vs", "hi": "ls", "ls": "hi", "ge": "lt", "lt": "ge", "gt": "le", "le": "gt"}
WORD = re.compile(r"\s*\.word\s+\.L\d+\s*$")


def move_tables(lines):
    out, funcs_with_tables, func, i = [], set(), None, 0
    while i < len(lines):
        if re.match(r"\s*\.thumb_func", lines[i]) or re.match(r"\s*\.type\s+\w+,\s*%?function", lines[i]):
            func = i
        m = re.match(r"(\.L\d+):$", lines[i])
        if m and i + 2 < len(lines) and WORD.match(lines[i + 1]) and WORD.match(lines[i + 2]):
            j = i + 1
            while j < len(lines) and WORD.match(lines[j]):
                j += 1
            while out and re.match(r"\s*\.align\s+2, 0\s*$", out[-1]):
                out.pop()
            out += ["\t.section .rodata", "\t.align\t2, 0"] + lines[i:j] + ["\t.text"]
            funcs_with_tables.add(func)
            i = j
            continue
        out.append(lines[i] if func is None else lines[i])
        i += 1
    return out, funcs_with_tables


def shorten(lines, skip):
    """b<cc> .LCBn / b .Lx @long jump / .LCBn: -> b<!cc> .Lx, inside functions with a moved table."""
    out, func, i, done = [], None, 0, []
    in_table_func = False
    tf = set()
    # mark function ranges that had a table moved: a function containing '.section .rodata'
    starts = [k for k, l in enumerate(lines) if re.match(r"\s*\.thumb_func", l)] + [len(lines)]
    for a, b in zip(starts, starts[1:]):
        if any(l.strip() == ".section .rodata" for l in lines[a:b]):
            tf.update(range(a, b))
    while i < len(lines):
        m = re.match(r"\s*b(\w\w)\s+(\.LCB\d+)\s*$", lines[i])
        if (m and i in tf and i not in skip and i + 2 < len(lines) and m.group(1) in INV
                and re.match(r"\s*b\s+(\.L\w+)\s*@long jump", lines[i + 1])
                and lines[i + 2].strip() == m.group(2) + ":"):
            tgt = re.match(r"\s*b\s+(\.L\w+)", lines[i + 1]).group(1)
            out.append("\tb%s\t%s\t@ was long jump (line %d)" % (INV[m.group(1)], tgt, i))
            done.append(i)
            out.append(lines[i + 2])
            i += 3
            continue
        out.append(lines[i])
        i += 1
    return out, done


def too_far(out):
    """Shortened branches outside agbcc's short range: target - branch in [-252, 254] (thumb.md)."""
    lab = []
    text = []
    for k, l in enumerate(out):
        m = re.search(r"was long jump \(line (\d+)\)", l)
        if m:
            text.append(".Ljtbl_%s:" % m.group(1))
            lab.append((m.group(1), re.match(r"\s*b\w+\s+(\.L\w+)", l).group(1)))
        text.append(l)
    with tempfile.TemporaryDirectory() as d:
        s, o = os.path.join(d, "t.s"), os.path.join(d, "t.o")
        open(s, "w").write("\n".join(text) + "\n")
        r = subprocess.run(["arm-none-eabi-as", "-L", "-mcpu=arm7tdmi", "-o", o, s], capture_output=True, text=True)
        if r.returncode:
            return {int(m.group(1)) for ln in re.findall(r"t\.s:(\d+): Error", r.stderr)
                    for m in [re.search(r"was long jump \(line (\d+)\)", text[int(ln) - 1])] if m} or {int(a) for a, _ in lab}
        sym = {}
        for l in subprocess.run(["arm-none-eabi-nm", o], capture_output=True, text=True).stdout.splitlines():
            q = l.split()
            if len(q) == 3 and q[1] in "tT":
                sym[q[2]] = int(q[0], 16)
    bad = set()
    for n, tgt in lab:
        d = sym[tgt] - sym[".Ljtbl_" + n]
        if not -252 <= d <= 254:
            bad.add(int(n))
    return bad


INSN = re.compile(r"\s*[a-z]")


def est_len(l):
    """agbcc's length estimate for one line of its thumb output: every `.align 2` counts 2 bytes."""
    t = l.split("@")[0].strip()
    if not t or t.endswith(":"):
        return 0
    if t.startswith(".word"):
        return 4
    if t.startswith(".align"):
        return 2
    if t.startswith("."):
        return 0
    if re.match(r"bl\s", t):
        return 4
    return 2


def still_long(moved):
    """Long jumps the original compiler emitted even without the inline table: its estimated distance
    (pool alignments counted as 2 bytes each) is out of range after the table is gone (0830C5C0)."""
    keep = set()
    text, inro = [], False   # lines outside the moved tables
    for l in moved:
        if l.strip() == ".section .rodata":
            inro = True
        text.append("" if inro else l)
        if inro and l.strip() == ".text":
            inro = False
    moved = text
    labels = {}
    for k, l in enumerate(moved):
        m = re.match(r"(\.L\w+):", l)
        if m:
            labels[m.group(1)] = k
    for k, l in enumerate(moved):
        m = re.match(r"\s*b(\w\w)\s+(\.LCB\d+)\s*$", l)
        if not m or k + 2 >= len(moved):
            continue
        j = re.match(r"\s*b\s+(\.L\w+)\s*@long jump", moved[k + 1])
        if not j or j.group(1) not in labels:
            continue
        t = labels[j.group(1)]
        if t > k:   # forward: from the (shortened) branch at k to the label
            d = sum(est_len(x) for x in moved[k + 1:t]) + 2
        else:
            d = -sum(est_len(x) for x in moved[t:k])
        if not -252 <= d <= 254:
            keep.add(k)
    return keep


def main(path):
    lines = open(path).read().split("\n")
    moved, tf = move_tables(lines)
    if not tf:
        return
    skip = still_long(moved)
    while True:
        out, done = shorten(moved, skip)
        bad = too_far(out) if done else set()
        if not bad:
            break
        skip |= bad
    open(path, "w").write("\n".join(out))


if __name__ == "__main__":
    main(sys.argv[1])
