#!/usr/bin/env python3
"""Regenerate docs/strings.tsv: the game's ASCII text in .rodata of baserom.gba.

Text is plain NUL-terminated ASCII; line breaks are C-style newline bytes (0x0A), written
here as the two characters \\n. Song titles live inside the GAX music data and are listed in
docs/songs.md instead (tools/gax_songs.py). Byte runs that only look like text (inside
graphics/music data) are dropped by a simple wordiness filter.
"""
import re

d = open("baserom.gba", "rb").read()
BASE = 0x08000000
TEXT = (0x083D3000, 0x083DFB70)      # game text block (dialogue, menus, credits, multiplayer, debug)
GAXLIB = (0x083DFB70, 0x083E085C)    # GAX 3.01 library strings (copyright, assert messages)


def wordy(s):
    good = sum(c.isalnum() or c in " .,!?'\"-:%()/\\&*+=_|#<>\n" for c in s) / len(s)
    words = re.findall(r"[A-Za-z]{2,}", s)
    vowel = any(re.search(r"[aeiouyAEIOUY]", w) for w in words)
    return good >= 0.9 and vowel and (len(s) >= 6 or " " in s or s.isupper() or s.istitle())


out = ["# addr\tlen\tblock\ttext   (C-style newlines shown as \\n; regenerate with tools/extract_strings.py)"]
for block, (lo, hi) in (("text", TEXT), ("gax", GAXLIB)):
    for m in re.finditer(rb"[\x20-\x7e\n\xa9]{3,}\x00", d[lo - BASE:hi - BASE]):
        s = m.group()[:-1].decode("latin1")
        if not wordy(s):
            continue
        out.append("%08X\t%d\t%s\t%s" % (m.start() + lo, len(s), block, s.replace("\n", "\\n")))
open("docs/strings.tsv", "w").write("\n".join(out) + "\n")
print(len(out) - 1, "strings")
