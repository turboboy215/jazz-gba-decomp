#!/bin/sh
# tools/loopinfo.sh file.c: loop.c pass insn counts and which invariants it moves (env OPT)
F=$(realpath "$1")
R=$(cd "$(dirname "$0")/.." && pwd); cd "$R"
d=$(mktemp -d); arm-none-eabi-cpp -nostdinc -I include -I tools/agbcc/include "$F" > $d/a.i && (cd $d && $R/tools/agbcc/bin/old_agbcc -mthumb-interwork -O2 -fno-merge-blocks -fdelete-dead-after-reload -fgcse-no-const -fno-strict-aliasing -fcombine-givs-fix -fgcse-insert-before-copy -fgiv-keep-after-exit $OPT -dL a.i -o a.s 2>/dev/null); grep -E 'Loop from|moved|desirable' $d/a.i.loop | sed -E 's/Loop from [0-9]+ to [0-9]+: //; s/regno [0-9]+ //; s/move-insn savings 1//' | paste -sd' '; rm -rf $d
