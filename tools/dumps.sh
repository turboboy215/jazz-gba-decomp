#!/bin/sh
# tools/dumps.sh file.c [outdir]: compile with the game-code flags (+ env OPT) and keep the RTL dumps
# (-dg greg, -dl lreg, -dG gcse, -dL loop, -dc combine, -dR sched2... whatever DUMPS lists; default "gGlLc")
F=$(realpath "$1"); O=${2:-build/dumps}
R=$(cd "$(dirname "$0")/.." && pwd); cd "$R"; mkdir -p "$O"; O=$(realpath "$O")
arm-none-eabi-cpp -nostdinc -I include -I tools/agbcc/include "$F" > $O/a.i && (cd $O && $R/tools/agbcc/bin/old_agbcc -mthumb-interwork -O2 -fno-merge-blocks -fdelete-dead-after-reload -fgcse-no-const -fno-strict-aliasing -fcombine-givs-fix -fgcse-insert-before-copy -fgiv-keep-after-exit -fgcse-const-in-loops -fold-base-reg-class -fcprop-const-fix -fcprop-single-set $OPT -d${DUMPS:-gGlLc} a.i -o a.s)
ls $O
