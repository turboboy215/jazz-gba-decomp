#!/bin/sh
# decomp-permuter compile script: permuter_compile.sh in.c -o out.o  (CC1 env picks agbcc/old_agbcc)
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
CC1="${CC1:-$ROOT/tools/agbcc/bin/old_agbcc}"
# GAX (OPT has -fprologue-bugfix) takes no game-code flags, as in check_func.py and the Makefile
case " ${OPT} " in *" -fprologue-bugfix "*) GAMEFLAGS="" ;; *) GAMEFLAGS="-fgcse-no-const -fno-strict-aliasing -fcombine-givs-fix -fgcse-insert-before-copy -fgiv-keep-after-exit -fgcse-const-in-loops -fold-base-reg-class" -fcprop-const-fix -fcprop-single-set ;; esac
TMP=$(mktemp -d)
arm-none-eabi-cpp -nostdinc -I "$ROOT/include" -I "$ROOT/tools/agbcc/include" "$1" \
  | "$CC1" -mthumb-interwork -Wimplicit -Wparentheses -O2 -fhex-asm -fno-merge-blocks -fdelete-dead-after-reload ${GAMEFLAGS} ${OPT} -o "$TMP/f.s" || { rm -rf "$TMP"; exit 1; }
printf '\t.align 2, 0\n' >> "$TMP/f.s"
arm-none-eabi-as -mcpu=arm7tdmi -o "$3" "$TMP/f.s"; r=$?
rm -rf "$TMP"; exit $r
