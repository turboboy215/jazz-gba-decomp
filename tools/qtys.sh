#!/bin/sh
# tools/qtys.sh file.c [BLOCK]: local-alloc's quantities per basic block, in allocation order, with
# priority and the hard reg each got (env OPT adds flags). Needs a debug old_agbcc: clone pret/agbcc,
# `git apply tools/agbcc-jazz.patch tools/agbcc-ladebug.patch`, `make -C gcc old -j1` (10 s), and point
# LA_CC1 at gcc/old_agbcc (default /tmp/agbcc/gcc/old_agbcc). Its code is identical to the normal build.
# Blocks with exactly 3 qtys use block_alloc's hand sort, which compares qty *numbers* 0/1 twice, so
# the order is [0,1,2], [2,1,0] or [0,2,1], never the priority order (docs/region_a.md, 2026-11-11).
F=$(realpath "$1")
R=$(cd "$(dirname "$0")/.." && pwd); cd "$R"
CC=${LA_CC1:-/tmp/agbcc/gcc/old_agbcc}
arm-none-eabi-cpp -nostdinc -I include -I tools/agbcc/include "$F" | LA_DEBUG=1 "$CC" -mthumb-interwork -O2 -fno-merge-blocks -fdelete-dead-after-reload -fgcse-no-const -fno-strict-aliasing -fcombine-givs-fix -fgcse-insert-before-copy -fgiv-keep-after-exit -fgcse-const-in-loops -fold-base-reg-class -fcprop-const-fix -fcprop-single-set $OPT -o /dev/null 2>&1 >/dev/null | grep "^b${2:-[0-9]*} "
