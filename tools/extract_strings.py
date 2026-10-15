#!/usr/bin/env python3
"""Regenerate docs/strings.tsv: ASCII strings in .rodata of baserom.gba."""
import re
d = open("baserom.gba", "rb").read()
LO, HI = 0x31AEB4, 0x3E085C  # .rodata (see docs/rom_map.md)
out = ["# ASCII strings in .rodata (0x0831AEB4-0x083E085C). addr<TAB>len<TAB>text (\\n escaped). Auto-extracted by tools/extract_strings.py"]
for m in re.finditer(rb"[\x20-\x7e\n\xa9]{4,}\x00", d[LO:HI]):
    s = m.group()[:-1].decode("latin1")
    if sum(c.isalpha() for c in s) < len(s) * 0.5 or len(set(s)) < 3:
        continue
    out.append("%08X\t%d\t%s" % (m.start() + LO + 0x08000000, len(s), s.replace("\n", "\\n")))
open("docs/strings.tsv", "w").write("\n".join(out) + "\n")
print(len(out) - 1, "strings")
