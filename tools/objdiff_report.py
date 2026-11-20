#!/usr/bin/env python3
"""Write an objdiff v2 progress report (the format ByteMatch and decomp.dev read):
  tools/objdiff_report.py [-o report.json] [--refresh]

Units are the live code of both regions (the multiboot client image is left out, as in
tools/progress.py):
  * every `c` range in splits.txt: matched (`make compare`, run locally with the ROM, proves it);
  * every gap between them (the asm/code_*.s files): not matched yet;
  * `asm` ranges inside the code regions that are near misses (GAX2_init, ...): not matched;
  * hand-written asm (header, crt0, GAX's ARM mixers) is left out: it was never compiler output.
Categories: `game` (region A engine + region B game code), `gax` (GAX 3.01), `lib` (BIOS stubs,
libgcc, memcpy/memset, ld veneers at 0831A528-0831AEB4).

Function boundaries need the ROM (tools/split.py reads it for call targets), so they are kept in
the committed table tools/report_funcs.json. With the ROM present the table is refreshed
automatically; CI (no ROM) reads it as is. Commit the table whenever it changes.
"""
import argparse, json, os, re, sys
sys.path.insert(0, os.path.dirname(__file__))
from split import BASE, CODE_REGIONS, ORPHAN, load_splits

TABLE = "tools/report_funcs.json"
VERSION = "AJJE"
HANDWRITTEN = {"gax/output_asm", "gax/tracker_asm"}   # hand-written ARM in GAX: never compiled
GAX = (0x08317518, 0x0831A528)
LIB = (0x0831A528, 0x0831AEB4)


def category(addr):
    if GAX[0] <= addr < GAX[1]:
        return "gax"
    if LIB[0] <= addr < LIB[1]:
        return "lib"
    return "game"


def load_table(refresh):
    if refresh or (os.path.exists("baserom.gba") and os.path.exists("decomp/functions.csv")):
        from split import load_funcs
        funcs = [[f[0], f[1]] for f in load_funcs()]
        old = json.load(open(TABLE)) if os.path.exists(TABLE) else None
        if funcs != old:
            json.dump(funcs, open(TABLE, "w"))
            print("updated %s (%d functions): commit it" % (TABLE, len(funcs)))
        return funcs
    return json.load(open(TABLE))


def load_names():
    names = {}
    for line in open("names.txt"):
        q = line.split("#")[0].split()
        if len(q) >= 2:
            names[int(q[0], 16)] = q[1]
    return names


def pct(a, b):
    return 100.0 * a / b if b else 100.0


def measures(code, matched, nfuncs, mfuncs):
    complete = matched == code
    return {"fuzzy_match_percent": pct(matched, code), "total_code": code, "matched_code": matched,
            "matched_code_percent": pct(matched, code), "total_data": 0, "matched_data": 0,
            "matched_data_percent": 100.0, "total_functions": nfuncs, "matched_functions": mfuncs,
            "matched_functions_percent": pct(mfuncs, nfuncs), "complete_code": code if complete else 0,
            "complete_code_percent": 100.0 if complete else 0.0, "complete_data": 0,
            "complete_data_percent": 100.0, "total_units": 1, "complete_units": int(complete)}


def total(ms):
    keys = ("total_code", "matched_code", "total_functions", "matched_functions", "complete_code",
            "total_units", "complete_units")
    t = {k: sum(m[k] for m in ms) for k in keys}
    return dict(t, fuzzy_match_percent=pct(t["matched_code"], t["total_code"]),
                matched_code_percent=pct(t["matched_code"], t["total_code"]), total_data=0,
                matched_data=0, matched_data_percent=100.0,
                matched_functions_percent=pct(t["matched_functions"], t["total_functions"]),
                complete_code_percent=pct(t["complete_code"], t["total_code"]), complete_data=0,
                complete_data_percent=100.0)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("-o", "--output", default="report.json")
    ap.add_argument("--refresh", action="store_true", help="rebuild %s from the ROM" % TABLE)
    args = ap.parse_args()
    funcs = load_table(args.refresh)
    names = load_names()

    # live code ranges, cut at the multiboot client image
    live = []
    for lo, hi in CODE_REGIONS:
        if lo < ORPHAN[0] < hi:
            live += [(lo, ORPHAN[0]), (ORPHAN[1], hi)] if ORPHAN[1] < hi else [(lo, ORPHAN[0])]
        else:
            live.append((lo, hi))
    live = [(lo, hi) for lo, hi in live if hi > lo]

    # units: C ranges and asm near misses from splits.txt, the gaps between them as asm units;
    # gaps are cut where the category changes so each unit has one category
    known = [(s, e, k, n) for s, e, k, n in load_splits()
             if k in ("c", "asm") and any(lo <= s < hi for lo, hi in live) and n not in HANDWRITTEN]
    hand = [(s, e) for s, e, k, n in load_splits() if n in HANDWRITTEN]
    cuts = sorted({GAX[0], GAX[1], LIB[0], LIB[1]})
    spans = []
    for lo, hi in live:
        taken = sorted([(s, e, k, n) for s, e, k, n in known if lo <= s < hi] +
                       [(s, e, "hand", None) for s, e in hand if lo <= s < hi])
        pos = lo
        for s, e, k, n in taken + [(hi, hi, None, None)]:
            while pos < s:
                nxt = min([c for c in cuts if pos < c < s] + [s])
                spans.append((pos, nxt, "gap", "code_%08X" % pos))
                pos = nxt
            if k and k != "hand":
                spans.append((s, e, k, n))
            pos = max(pos, e)

    units, cats = [], {"game": [], "gax": [], "lib": []}
    for s, e, kind, name in spans:
        matched = kind == "c"
        path = "src/%s.c" % name if matched else "asm/%s.s" % name
        src = open(path).read() if matched and os.path.exists(path) else ""
        fs = [(max(a, s), min(b, e)) for a, b in funcs if a < e and b > s]
        items = []
        for a, b in fs:
            sym = names.get(a)
            if not sym or (src and not re.search(r"\b%s\b" % sym, src)):
                sym = "sub_%08X" % a   # the symbol the source actually uses
            items.append({"name": sym, "size": b - a, "fuzzy_match_percent": 100.0 if matched else 0.0,
                          "address": a - BASE, "metadata": {"virtual_address": a}})
        size = e - s
        m = measures(size, size if matched else 0, len(fs), len(fs) if matched else 0)
        cat = category(s)
        units.append({"name": name, "measures": m,
                      "sections": [{"name": ".text", "size": size, "fuzzy_match_percent": m["fuzzy_match_percent"],
                                    "address": s - BASE}],
                      "functions": items,
                      "metadata": {"complete": matched, "source_path": path, "progress_categories": [cat]}})
        cats[cat].append(m)

    labels = {"game": "Game code", "gax": "GAX sound engine", "lib": "Libraries and veneers"}
    report = {"version": 2, "measures": total([m for v in cats.values() for m in v]), "units": units,
              "categories": [{"id": c, "name": labels[c], "measures": total(cats[c])} for c in cats]}
    json.dump(report, open(args.output, "w"), indent=1)
    m = report["measures"]
    print("%s: %d units, code %d/%d bytes (%.2f%%), functions %d/%d" % (
        VERSION, len(units), m["matched_code"], m["total_code"], m["matched_code_percent"],
        m["matched_functions"], m["total_functions"]))
    for c in report["categories"]:
        print("  %-5s %6.2f%%  %d/%d functions" % (c["id"], c["measures"]["matched_code_percent"],
                                                  c["measures"]["matched_functions"], c["measures"]["total_functions"]))


if __name__ == "__main__":
    main()
