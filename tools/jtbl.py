#!/usr/bin/env python3
"""Move switch jump tables from .text to .rodata in agbcc output (in place).

agbcc puts a thumb `switch` table right after the `mov pc, rX` dispatch. In this ROM (region A
library, GAX, ...) the tables live in the ROM's rodata block instead; the code only holds a
literal-pool word with the table address. Rewriting
        .align 2, 0
    .L16:
        .word .L10 ...
to `.section .rodata` makes the code byte-identical and leaves the table in the object's
.rodata, which ld_script.ld places at its ROM address (splits.txt kind "rodata").
Usage: tools/jtbl.py file.s
"""
import re, sys

path = sys.argv[1]
lines = open(path).read().split("\n")
out, moved, i = [], [], 0
while i < len(lines):
    m = re.match(r"(\.L\d+):$", lines[i])
    if m and i + 1 < len(lines) and re.match(r"\s*\.word\s+\.L\d+\s*$", lines[i + 1]):
        j = i + 1
        while j < len(lines) and re.match(r"\s*\.word\s+\.L\d+\s*$", lines[j]):
            j += 1
        # a single .word is a literal pool entry; a table follows a dispatch (2+ entries)
        if j - i - 1 >= 2:
            while out and re.match(r"\s*\.align\s+2, 0\s*$", out[-1]):
                out.pop()
            moved += ["\t.section .rodata", "\t.align\t2, 0"] + lines[i:j] + ["\t.text"]
            out += moved[-(j - i + 3):]
            moved = []
            i = j
            continue
    out.append(lines[i])
    i += 1
open(path, "w").write("\n".join(out))
