#!/bin/sh
# Build pret/agbcc with tools/agbcc-jazz.patch and install it into tools/agbcc.
# Usage: sh tools/build_agbcc.sh [agbcc source dir, default /tmp/agbcc]
# The patch only adds two flags, both used for all Jazz C (see docs/STRATEGY.md):
#   -fno-merge-blocks           skip the Cygnus merge_blocks pass (flow.c)
#   -fdelete-dead-after-reload  let jump.c's delete_computation delete dead feeder insns after
#                               reload, i.e. undo the Cygnus gcc/13233 change (vsprintf)
# Without the flags the compilers behave exactly as pret's.
set -e
J=$(cd "$(dirname "$0")/.." && pwd)
SRC=${1:-/tmp/agbcc}
[ -d "$SRC" ] || git clone --depth 1 https://github.com/pret/agbcc "$SRC"
cd "$SRC"
if ! grep -q flag_delete_dead_after_reload gcc/jump.c; then patch -p1 < "$J/tools/agbcc-jazz.patch"; fi
./build.sh
./install.sh "$J"
