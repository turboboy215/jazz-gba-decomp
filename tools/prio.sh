#!/bin/sh
# tools/prio.sh file.c [MINREG]: global-alloc's view of each pseudo (refs, live_length, priority),
# lowest priority last. When two pseudos get swapped registers compared with the ROM, the one with
# the higher priority is allocated first (priority = floor_log2(refs) * refs * size / live_length;
# refs inside a loop count loop_depth times, which a do { } while (0) can change).
# Uses the game-code flags; for GAX: CC1=tools/agbcc/bin/agbcc OPT=-fprologue-bugfix GAX=1 sh tools/prio.sh f.c
R=$(cd "$(dirname "$0")/.." && pwd); D=$R/build/prio; mkdir -p "$D"
F=$(realpath "$1"); MIN=${2:-0}
CC1=${CC1:-$R/tools/agbcc/bin/old_agbcc}; case $CC1 in /*) ;; *) CC1=$R/$CC1;; esac
if [ -n "$GAX" ]; then FL="-mthumb-interwork -O2"; else
FL="-mthumb-interwork -O2 -fno-merge-blocks -fdelete-dead-after-reload -fgcse-no-const -fno-strict-aliasing -fcombine-givs-fix -fgcse-insert-before-copy -fgiv-keep-after-exit -fgcse-const-in-loops -fold-base-reg-class"; fi
arm-none-eabi-cpp -nostdinc -I "$R/include" -I "$R/tools/agbcc/include" "$F" > "$D/a.i" && (cd "$D" && "$CC1" $FL $OPT -dg a.i -o a.s) || exit 1
python3 - "$D/a.i.greg" "$MIN" <<'P'
import re, sys
t = open(sys.argv[1]).read(); lo = int(sys.argv[2])
rows = []
for m in re.finditer(r'^Register (\d+), refs = (\d+), live_length = (\d+), size = (\d+)', t, re.M):
    r, refs, ll, sz = map(int, m.groups())
    if r >= lo and refs > 0 and ll > 0:
        rows.append(((refs.bit_length() - 1) * refs * sz / ll, r, refs, ll))
for p, r, refs, ll in sorted(rows, reverse=True):
    print('%4d refs=%-3d live=%-4d prio=%.4f' % (r, refs, ll, p))
P
