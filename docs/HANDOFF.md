# Session handoff: start here

This project runs over many sessions. A new session should read **only this file** first, then
open the doc for the task at hand. Don't re-derive what's recorded here.

## 1. Get the repo and toolchain (fresh cloud container)

The repo lives in the user's folder `C:\Users\Super\Documents\Research\Decomp\JazzGBARE\`:
`jazz-decomp\` (working tree; **`Makefile` is stored as `Makefile.txt`** because the file bridge refuses
to write `Makefile`) and `jazz-decomp.bundle` (full git history). The ROM is
`Jazz Jackrabbit (U).gba` in the same folder. **The compiler is already built:**
`agbcc-prebuilt-linux-x64.tar.gz` in the same folder holds `tools/agbcc` (Linux x86-64, built from
pret/agbcc + `tools/agbcc-jazz.patch`, stamped with the patch's SHA1). Don't rebuild agbcc.

```sh
# stage jazz-decomp.bundle, the ROM and agbcc-prebuilt-linux-x64.tar.gz from the user's folder, then:
git clone jazz-decomp.bundle jazz && cd jazz
cp "<staged>/Jazz Jackrabbit (U).gba" baserom.gba
sh tools/setup_toolchain.sh "<staged>/agbcc-prebuilt-linux-x64.tar.gz"   # seconds; installs binutils too
make -j8 compare                    # must print: jazz.gba: OK
```

`setup_toolchain.sh` only builds from source (~10 min) if the archive is missing, stale (the patch
changed) or does not run. It then writes `build/agbcc-prebuilt-linux-x64.tar.gz`: **copy that back to the
user's folder** so the next session has it. The same applies whenever `tools/agbcc-jazz.patch` changes.

If the bundle is older than the working tree (the user may have edited files), stage the changed files
over the clone. Optional: Ghidra 11.4.2 headless (GitHub release zip, JDK 21) to regenerate
`decomp/drafts/` (gitignored). The command is in `docs/reference/STRATEGY.md`, and
`tools/scripts/GbaSetup.py` is already adapted.

**Delivering back:** commit in git, then copy changed files to the user's `jazz-decomp\` folder with
the device bridge (max 50 per call; `Makefile` → `Makefile.txt`), and re-create `jazz-decomp.bundle`
with `git bundle create jazz-decomp.bundle --all`.

## 2. Key facts (verified, don't redo)

* ROM `AJJE`, SHA1 `9fb012b46350615cfa4dd0fc7d11fc21903d39e0`, 4 MiB.
* **Compiler: `old_agbcc -O2 -mthumb-interwork -fno-merge-blocks -fdelete-dead-after-reload -fgcse-no-const
  -fno-strict-aliasing -fcombine-givs-fix -fgcse-insert-before-copy -fgiv-keep-after-exit -fgcse-const-in-loops
  -fold-base-reg-class`** for game code (the
  default in Makefile and all tools). All but `-fno-strict-aliasing` come from our patch
  (`tools/agbcc-jazz.patch`); stock pret agbcc rejects them. The ROM's
  compiler was a GCC snapshot from before several Cygnus changes. Details in `docs/STRATEGY.md`, including how
  to test a new compiler idea in minutes. **When a near miss resists, suspect the compiler:** that found
  all nine flags. **GAX needs `agbcc -fprologue-bugfix`** with only the first two (splits.txt flavour `bugfix`,
  objects.mk empties `GAMEFLAGS`); several GAX functions don't match with `old_agbcc`, and it breaks with the new flags.
* Code regions: A `080002E0-08012974` (live library `…-080053A0`, then the **Single Pak multiboot
  client image** `080053A0-080193A0`, a separate program with its own GAX copy that `Link_Main`
  sends to the other GBAs; the splitter still calls it `ORPHAN`; don't decompile it unless asked);
  B `082E8470-0831AEB4`. Client data blocks `080193A0-080453A0` (11 x 0x4000). Details: `docs/rom_map.md`.
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
| `flock .decomp.lock python3 tools/claim.py` | next undecompiled function (skips the client image) |
| `python3 tools/disasm.py START [END] [--arm]` | readable disassembly of a ROM range: literal values, names, string previews, pools as `.word` |
| `python3 tools/check_func.py file.c ADDR` | compile one function and diff it against the ROM (env `CC1`, `OPT`, `END`, `EXTRA_INC`) |
| `python3 tools/adiff.py ADDR file.c` | the same check as an aligned diff: only the real edits and their count (`Q=1`: count only) |
| `python3 tools/nm_explode.py` | one `work/ADDR_Name.c` per near miss in `src/nonmatching/region_a.c` (check_func needs one function per file) |
| `python3 tools/nm_replace.py ADDR [file.c]` | replace that near miss's section (file starts with its `/* ---- Name ADDR ----` comment), or delete it after a match. Run it **after** `integrate_one.sh` reports `verified 1/1`: add_funcs rejects any file containing the word "asm", comments included |
| `old_agbcc ... -dL file.i` | loop.c dump (`file.i.loop`): invariants moved / "not desirable", givs combined, "multiple entry points" |
| `sh tools/integrate_one.sh ADDR file.c Name` | add to `src/`, `make compare`, commit (use `ALLOW_ASM=1` only for GAX's DMA delay asm) |
| `python3 tools/progress.py` | % of live code in C |
| `python3 tools/gax_songs.py` | song + level table dump → `docs/songs_generated.md` |
| `CC1=tools/agbcc/bin/agbcc OPT=-fprologue-bugfix python3 tools/check_func.py f.c ADDR` | check a GAX function |
| `make nonmatching` | compile `src/gax/nonmatching.c` (not linked) |
| `python3 tools/xref_rom.py OTHER.gba` | find Jazz functions in another ROM (masked patterns) |
| `RODATA=TABLE python3 tools/check_func.py f.c ADDR` | function with a `switch` whose jump table is at TABLE (also compares the table) |
| `//@ ADDR Name rodata=TABLE # ...` / `end=ADDR` | batch_check section options: jump table address / function followed by data |
| `tools/jtbl.py file.s` | run by the Makefile and check_func: moves agbcc's inline jump tables to `.rodata` |
| `python3 tools/vadiff.py ADDR file.c` | like variants.py, but prints the aligned-diff count per variant (each written to `build/vad_N.c`) |
| `OPT=... sh tools/loopinfo.sh file.c` | loop.c's insn count per pass and which invariants it moves or calls "not desirable" (see the Oam_Init budget note in `docs/region_a.md`) |
| `sh tools/exitcount.sh file.c sub_ADDR` | insns in a loop's exit code at expand time (jump.c copies it in front of the loop unless > 30, a label, a call or a loop note) |

To name a function, add `ADDR Name # [sure|likely] evidence` to `names.txt`, then run `split.py`.

## 4. State and next tasks (update this section every session)

**State (2026-11-10):** 10.49% of live code is in C; `make compare` passes.
* GAX 3.01: 38/43 functions in byte-matching C (`src/gax/`, built with `agbcc -fprologue-bugfix`).
  The other 5 are in `src/gax/nonmatching.c` (2026-10-31 scores with the current flags: GAXSync_render 7,
  GAX2_calc_mem 45, GAXFx_render 42, GAXTracker_generate_audio 87, GAX2_init 417). Details: `docs/gax.md`.
* Region A (`080002E0-080053A0`): **every function is in C**. 181/190 byte-matching, 8 near misses with
  notes in `src/nonmatching/region_a.c`, `MultiBootWaitCycles` stays asm.
  2026-11-10: two more compiler differences (`-fgcse-const-in-loops`, `-fold-base-reg-class`, see
  `docs/STRATEGY.md`) matched **Link_Main**. Method (loop budget arithmetic, inner-loop lifetimes):
  `docs/region_a.md` "Findings of 2026-11-10". Subsystems, the Tournament link flow, globals, matching
  notes: `docs/region_a.md`. Headers `include/{sprite,map,actor,resbank,system,link,multi_sio,oam,obj,text}.h`.
* Rodata split is done: switch tables can live in C (splits.txt kind `rodata`).
* Compiler experiments: `docs/STRATEGY.md` "How to test a compiler idea". In practice: clone pret/agbcc,
  `git apply tools/agbcc-jazz.patch`, `make -C gcc old -j1` (under a minute), add a getenv switch, compile
  every `src/*.c` (game code) with it, run `tools/jtbl.py` on each `.s`, and compare per function with
  `build/src/*.s` (ignore the Makefile's trailing `.align 2, 0`). Any changed function rules the idea out.
  Regenerate the patch with `git diff > tools/agbcc-jazz.patch` in that tree, then `sh tools/setup_toolchain.sh`
  rebuilds (~10 min) and writes a new prebuilt archive to copy back.

Next, in order:
1. **Region A near misses** (`src/nonmatching/region_a.c`, 8). Score them with
   `python3 tools/nm_explode.py` then `Q=1 python3 tools/adiff.py ADDR work/ADDR_Name.c`. Aligned diff ops
   (2026-11-10): Obj_Update 20, Link_SerialIntr 23, Glyph_Alloc 23, number 57, Sprite_Draw 80 (78 before
   `-fold-base-reg-class`, a stack-spill shuffle), MultiBootMain 100, Oam_SetPosSorted 108, Bg_DrawLevelScreen 249.
   Leads:
   * Read the dumps first (`-dG`, `-dL`, `-dg`, see `docs/region_a.md`): all three recent matches were found that way.
   * Obj_Update has no PRE insertions, so its register swap has another cause. A 40-minute permuter run found nothing.
   * Link_SerialIntr's PRE-shaped copies of `&gUnk_03000D38` still don't appear with `-fgcse-const-in-loops`
     (still 23). Check where they would come from now that PRE of constants in loops is known to be real.
   * Glyph_Alloc: see its 2026-11-10 note (the else arm stores the loaded head, r7). A permuter run found nothing.
   * Sprite_Draw: its `0x3FFF` arm recomputes `i*4 + 52 + s` like Sprite_Init's else; the first loop's `ldmia`
     resisted the obvious rewrites.
   * Re-try old "tried and failed" notes in `src/nonmatching/region_a.c`: most predate the new flags.
2. **Finish GAX matching** (scores above): start with GAXSync_render (7). GAX keeps its jump tables inline
   (jtbl.py is skipped for the `bugfix` flavour and for `OPT=-fprologue-bugfix`).
3. Disassemble the `.iwram` image (`083E085C`, VMA `03000000`) as an overlay. It has the map tile
   lookup and BG streaming routines reached through the veneers at `0831AE38-0831AEA8`, and the
   MultiSio/Sio32 IRQ handlers (`030004EC`, `030005F8`).
4. Region B game code via the claim queue, starting from `AgbMain`. The boot/title/menu functions
   are mapped to what the user sees in `docs/boot_sequence.md` (`0830AAA8` is `MainMenu`).
5. Data: level-record struct, tilemap format (now partly known: `struct CellMap` + 16x16 metatiles,
   see `docs/region_a.md`), palette CLUT mapping, what the 11 client data blocks hold.

**Workflow** for a batch of functions: a scratch file (`work/*.c`, gitignored) with a preamble of
`#include`s and one `//@ ADDR Name # [sure|likely] evidence` section per function;
`tools/batch_check.py work.c` checks them, `tools/batch_check.py --integrate work.c` adds the matches
`tools/variants.py ADDR file.c` compares
alternatives separated by `//%` lines (it passes `OPT`/`RODATA` through); `tools/disasm.py` to read
the target.

**Tooling notes:** `tools/integrate_one.sh` commit trailers point at the session that last edited
it, so update them. decomp-permuter (`tools/permute.py ... --old` for region A; clone it into `tools/decomp-permuter` and
make `tools/permuter-venv` with pycparser, toml, Levenshtein) is slow on the 2-core container, but on small
functions its best outputs can hint at the fix (VramMap_Alloc: "use j again later" pointed at j's priority). **`src/` is organised by subsystem (2026-10-28)** for region A:
`sprite`, `map`, `actor`, `resbank`, `font`, `system`, `link`, `multiboot`, `multi_sio`, `oam`,
`sio32_multi_load`, `obj`, `text`, `vsprintf` (ranges in `tools/subsystems.py`). A subsystem whose
near misses are still asm is split into contiguous parts (`oam_1.c`, `oam_2.c`, ...; the parts must
stay separate because the asm sits between them). add_funcs.py names new files from that table,
extends a file only within its subsystem, and joins the next part when a
match fills the gap between two parts. GAX is in `src/gax/`; region B still gets `code_<addr>.c` files.

## 5. Conventions

* Commit messages end with the Co-Authored-By / Claude-Session trailers the session gives.
* No ROM bytes or assets in git (the logo and data come in through `.incbin`).
* Name confidence tags: `[sure]` (string or structural proof) / `[likely]` (call graph or order).
* Character names for graphics labelling: `docs/characters.md`.
* Treat the user's own observations (e.g. song usage from GSF rips) as ground truth and record them in the docs.
