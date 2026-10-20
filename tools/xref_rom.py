#!/usr/bin/env python3
"""Find Jazz Jackrabbit functions inside another GBA ROM (e.g. Earthworm Jim, Game Titan 2001).

Usage: tools/xref_rom.py OTHER.gba [--min 24] [--all] [--json out.json]

Every live Thumb function of baserom.gba (decomp/functions.csv, names from names.txt; the
orphaned block 08005710-08012974 is skipped) becomes a byte pattern in which everything that
depends on where things sit in the ROM is a wildcard:
  * both halves of a bl pair (the call offset),
  * literal-pool words (found from the pc-relative ldr instructions that read them),
  * b/bcc branch offsets are kept: they are relative and survive relinking.
The pattern is then searched for in OTHER.gba (2-byte aligned). Hits are printed as
"jazz_addr name -> other_addr", grouped by how many functions matched in a row, which is how
shared libraries (GAX, libgcc, the engine helpers in region A) show up.

Functions shorter than --min bytes (default 24) are skipped unless --all, because short
accessors match by accident.
"""
import argparse, json, os, re, sys

sys.path.insert(0, os.path.dirname(__file__))
from split import BASE, load_funcs, rom, NAMES  # noqa: E402

ORPHAN = (0x08005710, 0x08012974)


def h(a):
    return rom[a - BASE] | rom[a - BASE + 1] << 8


def pattern(start, end):
    """bytes regex for the Thumb function [start, end)."""
    n = end - start
    wild = [False] * n
    a = start
    while a < end - 1:
        x = h(a)
        if 0xF000 <= x < 0xF800 and a + 3 < end and h(a + 2) >= 0xF800:  # bl pair
            for k in range(4):
                wild[a - start + k] = True
            a += 4
            continue
        if x & 0xF800 == 0x4800:  # ldr rd, [pc, #imm8*4]
            lit = ((a + 4) & ~3) + (x & 0xFF) * 4
            if start <= lit and lit + 4 <= end:
                for k in range(4):
                    wild[lit - start + k] = True
        a += 2
    out = b""
    for i in range(n):
        out += b"." if wild[i] else re.escape(bytes([rom[start - BASE + i]]))
    return out, n - sum(wild)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("other")
    ap.add_argument("--min", type=int, default=24)
    ap.add_argument("--all", action="store_true")
    ap.add_argument("--json")
    args = ap.parse_args()
    other = open(args.other, "rb").read()
    hits = []
    for f in load_funcs():
        start, end, thumb = f[0], f[1], f[2]
        if not thumb or ORPHAN[0] <= start < ORPHAN[1]:
            continue
        if end - start < args.min and not args.all:
            continue
        pat, fixed = pattern(start, end)
        if fixed < 12:
            continue
        name = NAMES.get(start, ("sub_%08X" % start, ""))[0]
        locs = [m.start() for m in re.finditer(pat, other, re.S) if m.start() % 2 == 0]
        if locs:
            hits.append({"jazz": "%08X" % start, "name": name, "size": end - start,
                         "other": ["%08X" % (BASE + l) for l in locs[:8]]})
    run = []
    for x in hits:
        print("%s %-32s %5d -> %s" % (x["jazz"], x["name"], x["size"], " ".join(x["other"])))
    print("%d functions found in %s" % (len(hits), os.path.basename(args.other)))
    if args.json:
        json.dump(hits, open(args.json, "w"), indent=1)
    return 0


if __name__ == "__main__":
    sys.exit(main())
