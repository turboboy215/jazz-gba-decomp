#!/bin/sh
# Set up the toolchain in a fresh Linux x86-64 container:
#   sh tools/setup_toolchain.sh [path/to/agbcc-prebuilt-linux-x64.tar.gz]
# With the prebuilt archive (kept in the user's JazzGBARE folder) it unpacks tools/agbcc in seconds,
# if the archive was built from the current tools/agbcc-jazz.patch (PATCH_SHA1 stamp). Otherwise it
# builds agbcc from source (tools/build_agbcc.sh, ~10 min) and writes a new archive to
# build/agbcc-prebuilt-linux-x64.tar.gz to copy back to the user's folder.
set -e
J=$(cd "$(dirname "$0")/.." && pwd)
cd "$J"
if ! command -v arm-none-eabi-as >/dev/null 2>&1 || ! command -v arm-none-eabi-cpp >/dev/null 2>&1; then
    sudo apt-get update -q >/dev/null
    sudo apt-get install -y -q binutils-arm-none-eabi gcc-arm-none-eabi >/dev/null
fi
want=$(sha1sum tools/agbcc-jazz.patch | cut -d' ' -f1)
if [ -n "$1" ] && [ -f "$1" ]; then
    rm -rf tools/agbcc
    tar -xzf "$1" -C tools
    if [ "$(cat tools/agbcc/PATCH_SHA1 2>/dev/null)" = "$want" ] && tools/agbcc/bin/old_agbcc -fdelete-dead-after-reload -fno-merge-blocks -fgcse-no-const -fcombine-givs-fix -o /dev/null /dev/null 2>/dev/null; then
        echo "toolchain: prebuilt agbcc unpacked (patch $want)"
        exit 0
    fi
    echo "toolchain: prebuilt archive is stale or does not run; building from source"
    rm -rf tools/agbcc
fi
sudo apt-get install -y -q bison flex libpng-dev >/dev/null
rm -rf /tmp/agbcc
sh tools/build_agbcc.sh
echo "$want" > tools/agbcc/PATCH_SHA1
mkdir -p build
tar -czf build/agbcc-prebuilt-linux-x64.tar.gz -C tools agbcc
echo "toolchain: built from source; copy build/agbcc-prebuilt-linux-x64.tar.gz to the user's JazzGBARE folder"
