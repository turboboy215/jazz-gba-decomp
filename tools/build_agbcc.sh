#!/bin/sh
# Build pret/agbcc with tools/agbcc-no-merge-blocks.patch (adds -fno-merge-blocks) and install it
# into tools/agbcc. Usage: sh tools/build_agbcc.sh [agbcc source dir, default /tmp/agbcc]
# The patch only adds a flag; without -fno-merge-blocks the compilers behave exactly as pret's.
set -e
J=$(cd "$(dirname "$0")/.." && pwd)
SRC=${1:-/tmp/agbcc}
[ -d "$SRC" ] || git clone --depth 1 https://github.com/pret/agbcc "$SRC"
cd "$SRC"
if ! grep -q flag_merge_blocks gcc/flow.c; then patch -p1 < "$J/tools/agbcc-no-merge-blocks.patch"; fi
./build.sh
./install.sh "$J"
