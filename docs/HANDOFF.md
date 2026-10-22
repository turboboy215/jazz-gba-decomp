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
* Region A links two Nintendo libraries: libmultiboot `080023B0-08002A30` (= pret/pokeemerald
  `src/multiboot.c`) and MultiSio + Sio32MultiLoad `08003790-0800436C` (older revision of SAT-R/sa2
  `src/multi_sio.c`, `src/sio32_multi_load.c`). Code from those decomps is the starting point.
* Region A (and probably the game code) keeps jump tables in the ROM rodata, not after the code:
  `tools/jtbl.py` handles it (see below). GAX keeps them inline (`JTBL := true` for its files).

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
| `RODATA=TABLE python3 tools/check_func.py f.c ADDR` | function with a `switch` whose jump table is at TABLE (also compares the table) |
| `//@ ADDR Name rodata=TABLE # ...` / `end=ADDR` | batch_check section options: jump table address / function followed by data |
| `OPT=-fno-gcse` (check, batch_check, integrate) | `nogcse` flavour for library code (MultiSio, Sio32MultiLoad, Glyph_InitCache) |
| `tools/jtbl.py file.s` | run by the Makefile and check_func: moves agbcc's inline jump tables to `.rodata` |

To name a function, add `ADDR Name # [sure|likely] evidence` to `names.txt`, then run `split.py`.

## 4. State and next tasks (update this section every session)

**State (2026-10-22):** 6.7% of live code is in C; `make compare` passes.
* GAX 3.01: 38/43 functions in byte-matching C (`src/gax/`, built with `agbcc -fprologue-bugfix`).
  The other 5 are in `src/gax/nonmatching.c`. Details: `docs/gax.md`.
* Region A: 149/193 functions in byte-matching C (8.6 of 21.6 KB), 31 near misses with notes in
  `src/nonmatching/region_a.c`, every function named. Subsystems, globals, the two Nintendo
  libraries, build features and matching notes: `docs/region_a.md`. Headers
  `include/{sprite,map,actor,resbank,system,link,multi_sio,oam,obj,text}.h`.
* Rodata split is done: switch tables can live in C (splits.txt kind `rodata`).

Next, in order:
1. **Region A, not yet written in C** (biggest first): `Bg_UpdateScroll` 08001404,
   `Bg_DrawLevelScreen` 08001720 (both use ResBank `unk34/unk54` scroll pairs and `slots[i][0..1]`
   wrap flags), the link screens `Link_ConnectScreen` 08002144, `Link_Session` 08002C04,
   `Link_EnterGame` 08002F64, `08003168`, `Link_SerialIntr` 08003298, `Link_Main` 080034A4,
   `Oam_SetPosSorted` 08003DEC, and `08005398-08005710` (data, ARM code at 08005480, Thumb
   080055C8/080055D6). Workflow: scratch file of `//@ ADDR Name # evidence` sections,
   `tools/batch_check.py work.c`, `tools/batch_check.py --integrate work.c`; `tools/variants.py`
   for alternatives; `work/`-style helpers: disassemble with literal-pool values
   (`arm-none-eabi-objdump -D -b binary -marmv4t -M force-thumb`).
2. **Near misses**: `src/nonmatching/region_a.c` (31). Closest: vsprintf (one dead `ands`),
   Text_StrRev (2 lines), ResBank_SetTileset (8), MultiSioSendDataSet (7),
   Sio32MultiLoadMain (only one register with `-fno-gcse`).
3. **Finish GAX matching**: `GAX2_calc_mem` 083175A8, `GAX2_init` 08317CD8, `GAXSync_render`
   083192C0, `GAXTracker_generate_audio` 08319C60, `GAXFx_render` 08319F88 (start from
   `src/gax/nonmatching.c`). GAX keeps its jump tables inline (jtbl.py is skipped for the `bugfix`
   flavour and for `OPT=-fprologue-bugfix`); `-fno-gcse` is worth a try.
4. Disassemble the `.iwram` image (`083E085C`, VMA `03000000`) as an overlay. It has the map tile
   lookup and BG streaming routines reached through the veneers at `0831AE38-0831AEA8`.
5. Region B game code via the claim queue, starting from `AgbMain` / `0830AAA8`.
6. Data: level-record struct, tilemap format, palette CLUT mapping, multiboot image location.

**Tooling notes:** `tools/integrate_one.sh` commit trailers point at the session that last edited
it, so update them. decomp-permuter (`tools/permute.py ... --old` for region A) is too slow on
the 2-core container for these functions. `src/` region A files are still split per integration
run (`code_<addr>.c`); merge them into subsystem files (sprite.c, oam.c, ...) when a range is
fully in C. A C file with a `rodata` row must stay on its own (add_funcs.py does this).

## 5. Conventions

* Commit messages end with the Co-Authored-By / Claude-Session trailers the session gives.
* No ROM bytes or assets in git (the logo and data come in through `.incbin`).
* Name confidence tags: `[sure]` (string or structural proof) / `[likely]` (call graph or order).
* Character names for graphics labelling: `docs/characters.md`.
* Treat the user's own observations (e.g. song usage from GSF rips) as ground truth and record them in the docs.
