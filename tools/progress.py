#!/usr/bin/env python3
"""Report % of code bytes (CODE_REGIONS, excluding the ORPHAN block) implemented in src/*.c.

Ranges marked `asm` in splits.txt (handwritten code, header) are excluded from the total.
  tools/progress.py            # print % done + ETA at the average rate so far
  tools/progress.py --record   # also append a timestamped row to progress_history.csv
"""
import datetime, os, sys
sys.path.insert(0, os.path.dirname(__file__))
from split import BASE, CODE_REGIONS, ORPHAN, load_splits

HIST = "progress_history.csv"
splits = load_splits()
def overlap(a, b, lo, hi):
    return max(0, min(b, hi) - max(a, lo))
live = [(lo, hi) for lo, hi in CODE_REGIONS]
total = sum(hi - lo for lo, hi in live) - (ORPHAN[1] - ORPHAN[0])
total -= sum(overlap(s, e, lo, hi) for s, e, k, _ in splits if k == "asm" for lo, hi in live
             if not (ORPHAN[0] <= s < ORPHAN[1]))
c = sum(e - s for s, e, k, _ in splits if k == "c" and not (ORPHAN[0] <= s < ORPHAN[1]))
now = datetime.datetime.now().replace(microsecond=0)

if "--record" in sys.argv:
    new = not os.path.exists(HIST)
    with open(HIST, "a") as f:
        if new:
            f.write("time,c_bytes,total_bytes\n")
        f.write("%s,%d,%d\n" % (now.isoformat(), c, total))

line = "code decompiled to C: %d / %d bytes (%.2f%%)" % (c, total, 100.0 * c / total)
if os.path.exists(HIST):
    rows = [l.strip().split(",") for l in open(HIST).readlines()[1:] if l.strip()]
    t0, c0 = datetime.datetime.fromisoformat(rows[0][0]), int(rows[0][1])
    elapsed = (now - t0).total_seconds()
    if c > c0 and elapsed > 0:
        rate = (c - c0) / elapsed  # bytes per second, averaged since first record
        eta = now + datetime.timedelta(seconds=(total - c) / rate)
        line += "; rate %.0f bytes/hour; ETA %s" % (rate * 3600, eta.strftime("%Y-%m-%d %H:%M"))
    else:
        line += "; ETA: not enough history yet"
print(line)
