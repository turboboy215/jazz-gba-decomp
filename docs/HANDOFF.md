# Session handoff: start here

This project runs over many sessions. A new session should read **only this file** first, then
open the doc for the task at hand. Don't re-derive what's recorded here.

## 1. Get the repo and toolchain (fresh cloud container)

The repo lives in the user's folder `C:\Users\Super\Documents\Research\Decomp\JazzGBARE\`:
`jazz-decomp\` (working tree; **`Makefile` is stored as `Makefile.txt`** because the file bridge refuses
to write `Makefile`) and `jazz-decomp.bundle` (full git history). The ROM is
`Jazz Jackrabbit (U).gba` in the same folder.

```sh
# stage jazz-decomp.bundle + the ROM from the user's folder, then:
git clone jazz-decomp.bundle jazz && cd jazz
cp "<staged>/Jazz Jackrabbit (U).gba" baserom.gba
sudo apt-get install -y binutils-arm-none-eabi gcc-arm-none-eabi bison flex libpng-dev
J=$PWD; git clone --depth 1 https://github.com/pret/agbcc /tmp/agbcc && (cd /tmp/agbcc && ./build.sh && ./install.sh "$J")
make -j8 compare                    # must print: jazz.gba: OK
```

If the bundle is older than the working tree (the user may have edited files), stage the changed files
over the clone. Optional: Ghidra 11.4.2 headless (GitHub release zip, JDK 21) to regenerate
`decomp/drafts/` (gitignored). The command is in `docs/reference/STRATEGY.md`, and
`tools/scripts/GbaSetup.py` is already adapted.

**Delivering back:** commit in git, then copy changed files to the user's `jazz-decomp\` folder with
the device bridge (max 50 per call; `Makefile` → `Makefile.txt`), and re-create `jazz-decomp.bundle`
with `git bundle create jazz-decomp.bundle --all`.

## 2. Key facts (verified, don't redo)

* ROM `AJJE`, SHA1 `9fb012b46350615cfa4dd0fc7d11fc21903d39e0`, 4 MiB.
* **Compiler: `old_agbcc -O2 -mthumb-interwork`** for game code (the default in Makefile and all tools).
  **GAX needs `agbcc -fprologue-bugfix`** (splits.txt flavour `bugfix`); several GAX functions don't match
  with `old_agbcc`.
* Code regions: A `080002E0-08012974` (live library `…-08005710`, then **orphaned dead block**
  `08005710-08012974` with a stale GAX copy: never decompile it unless asked); B `082E8470-0831AEB4`.
  Details: `docs/rom_map.md`.
* `AgbMain` `08312BF8` → `0830AAA8` (likely main loop). `IntrTable` `0300585C`; VBlank handler in IWRAM
  `0300087C`.
* GAX 3.01 live at `08317518-0831A528`, 43 functions + 6 ARM routines named in `names.txt`, `GAX_ram`
  pointer at `03000B0C`. Docs: `docs/gax.md`.
* libs: memcpy `0831A570`, memset `0831A5D4`, `__divsi3` `0831A820`, `__udivsi3` `0831AD00`,
  `__umodsi3` `0831AD78`, `_call_via_r0` `0831A7E4`, BIOS stubs `0831A528…`.
* Level table `083D39D8` (25 × 0x4C): song, tileset, palette, level data. Tilesets are raw 8bpp
  (`u16 count, u16 bpp`). Songs and level names: `docs/songs.md`.
* Text is plain ASCII with C `\n`; `docs/strings.tsv` (`tools/extract_strings.py`).
* Tournament (link) multiplayer: Battle / Capture The Flag, Single Pak multiboot (`docs/rom_map.md`).

## 3. Tools you'll use

| Command | Purpose |
|---|---|
| `make -j8 compare` | full byte-identical build check |
| `python3 tools/split.py [--verify]` | regenerate `asm/` from `decomp/functions.csv` + `splits.txt` + `names.txt` + `starts.txt` |
| `flock .decomp.lock python3 tools/claim.py` | next undecompiled function (skips the orphan block) |
| `python3 tools/check_func.py file.c ADDR` | compile one function and diff it against the ROM (env `CC1`, `OPT`, `END`, `EXTRA_INC`) |
| `sh tools/integrate_one.sh ADDR file.c Name` | add to `src/`, `make compare`, commit (use `ALLOW_ASM=1` only for GAX's DMA delay asm) |
| `python3 tools/progress.py` | % of live code in C |
| `python3 tools/gax_songs.py` | song + level table dump → `docs/songs_generated.md` |
| `CC1=tools/agbcc/bin/agbcc OPT=-fprologue-bugfix python3 tools/check_func.py f.c ADDR` | check a GAX function |
| `make nonmatching` | compile `src/gax/nonmatching.c` (not linked) |
| `python3 tools/xref_rom.py OTHER.gba` | find Jazz functions in another ROM (masked patterns) |

To name a function, add `ADDR Name # [sure|likely] evidence` to `names.txt`, then run `split.py`.

## 4. State and next tasks (update this section every session)

**State (2026-10-20):** GAX 3.01 is 38/43 functions in byte-matching C (`src/gax/`, built with
`agbcc -fprologue-bugfix`); the other 5 are written as equivalent C in `src/gax/nonmatching.c` (not
linked; `make nonmatching` compiles it) while the ROM keeps their asm. 3.14% of live code is in C.
`make compare` passes. Details, 3.01-vs-3.05A findings and matching notes: `docs/gax.md`.

Next, in order:
1. **Finish GAX matching**: `GAX2_calc_mem` 083175A8, `GAX2_init` 08317CD8, `GAXSync_render` 083192C0,
   `GAXTracker_generate_audio` 08319C60, `GAXFx_render` 08319F88. Start from `nonmatching.c`; the diffs are
   register allocation and (generate_audio) a 44-byte frame with `step` and `is_fx*4` spilled.
   Permuter: `OPT=-fprologue-bugfix python3 tools/permute.py ADDR file.c SECONDS` (needs
   `tools/decomp-permuter` clone + `tools/permuter-venv` with pycparser/toml/Levenshtein; both gitignored).
   After that, merge the per-range files into `gax.c`/`sync.c`/`output.c`/`tracker.c` and move GAX rodata
   to C (names in `symbols.txt`).
2. **Region A live library** (`080002E0-08005710`): small accessors. Name them as you go.
3. Disassemble the `.iwram` image (`083E085C`, VMA `03000000`) as an overlay.
4. Region B game code via the claim queue, starting from `AgbMain` / `0830AAA8`.
5. Data: level-record struct, tilemap format, palette CLUT mapping, multiboot image location.

**Tooling notes from this session:** GAX C files use the splits.txt 5th column `bugfix` (now sets
`CC1 := agbcc` too). Library names the compiler emits (`_call_via_rN`) are in `lib/aliases.s`. Data
symbols with readable names go in `symbols.txt` (`name 0xADDR`); unnamed ones use `name_XXXXXXXX`.

## 5. Conventions

* Commit messages end with the Co-Authored-By / Claude-Session trailers the session gives.
* No ROM bytes or assets in git (the logo and data come in through `.incbin`).
* Name confidence tags: `[sure]` (string or structural proof) / `[likely]` (call graph or order).
* Character names for graphics labelling: `docs/characters.md`.
* Treat the user's own observations (e.g. song usage from GSF rips) as ground truth and record them in the docs.
