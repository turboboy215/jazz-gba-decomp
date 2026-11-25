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

**Delivering back:** commit in git, then copy changed files to **both** `jazz-decomp\` and `jazz-decomp-git\`
(the user's GitHub Desktop clone, which they commit and push from; it has the real `Makefile` and `.github\`). List
deleted or renamed files for the user to delete by hand (the bridge cannot delete). Copy them to the user's `jazz-decomp\` folder with
the device bridge (max 50 per call; `Makefile` → `Makefile.txt`), and re-create `jazz-decomp.bundle`
with `git bundle create jazz-decomp.bundle --all`.

## 2. Key facts (verified, don't redo)

* ROM `AJJE`, SHA1 `9fb012b46350615cfa4dd0fc7d11fc21903d39e0`, 4 MiB.
* **Compiler: `old_agbcc -O2 -mthumb-interwork -fno-merge-blocks -fdelete-dead-after-reload -fgcse-no-const
  -fno-strict-aliasing -fcombine-givs-fix -fgcse-insert-before-copy -fgiv-keep-after-exit -fgcse-const-in-loops
  -fold-base-reg-class -fcprop-const-fix -fcprop-single-set`** for game code (the
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
| `python3 tools/nm_explode.py [src/nonmatching/region_b.c]` | one `work/ADDR_Name.c` per near miss (default `region_a.c`; check_func needs one function per file) |
| `python3 tools/nm_replace.py ADDR [file.c]` | replace that near miss's section (file starts with its `/* ---- Name ADDR ----` comment), or delete it after a match. Run it **after** `integrate_one.sh` reports `verified 1/1`: add_funcs rejects any file containing the word "asm", comments included |
| `old_agbcc ... -dL file.i` | loop.c dump (`file.i.loop`): invariants moved / "not desirable", givs combined, "multiple entry points" |
| `sh tools/integrate_one.sh ADDR file.c Name` | add to `src/`, `make compare`, commit (use `ALLOW_ASM=1` only for GAX's DMA delay asm) |
| `python3 tools/progress.py` | % of live code in C |
| `python3 tools/gax_songs.py` | song + level table dump → `docs/songs_generated.md` |
| `CC1=tools/agbcc/bin/agbcc OPT=-fprologue-bugfix python3 tools/check_func.py f.c ADDR` | check a GAX function |
| `make nonmatching` | compile the near misses: `src/gax/nonmatching/*.c`, `src/nonmatching/region_*.c` (not linked) |
| `python3 tools/xref_rom.py OTHER.gba` | find Jazz functions in another ROM (masked patterns) |
| `RODATA=TABLE python3 tools/check_func.py f.c ADDR` | function with a `switch` whose jump table is at TABLE (also compares the table) |
| `//@ ADDR Name rodata=TABLE # ...` / `end=ADDR` | batch_check section options: jump table address / function followed by data |
| `tools/jtbl.py file.s` | run by the Makefile and check_func: moves agbcc's inline jump tables to `.rodata` |
| `sh tools/prio.sh file.c [MINREG]` | global-alloc refs / live length / priority per pseudo: why two values got swapped registers (`GAX=1 CC1=... OPT=-fprologue-bugfix` for GAX) |
| `python3 tools/vadiff.py ADDR file.c` | like variants.py, but prints the aligned-diff count per variant (each written to `build/vad_N.c`) |
| `sh tools/dumps.sh file.c [dir]` | keep the RTL dumps (`DUMPS=gGlLc` default: greg, gcse, lreg, loop, combine) in `build/dumps` |
| `LA_CC1=... sh tools/qtys.sh file.c [BLOCK]` | local-alloc's qtys per block in allocation order (needs a debug old_agbcc built with `tools/agbcc-ladebug.patch`, 10 s, see the script) |
| `OPT=... sh tools/loopinfo.sh file.c` | loop.c's insn count per pass and which invariants it moves or calls "not desirable" (see the Oam_Init budget note in `docs/region_a.md`) |
| `python3 tools/lift.py --scan LO HI` / `tools/lift.py ADDR...` | draft C for straight-line Thumb functions (calls with constant args, global/pointer loads and stores, params, call results); unliftable ones are listed on stderr with the reason. `tools/lift_arity.txt` = known callee arities. Most of what it can do is done (session 10) |
| `python3 tools/lift_decls.py work.c work.err` | prototypes/externs a draft uses that no `include/*.h` declares; **append** them to `include/regionb.h` (never regenerate that header: integrated code depends on it) |
| `python3 tools/scripts/ghidra_drafts.py ...` then `python3 tools/clean_drafts.py` | Ghidra decompiler drafts for every asm function → `decomp/drafts/clean/ADDR.c` (pool values, names, a0..aN). Needs PyGhidra; setup lines at the top of the script (~2 min) |
| `sh tools/exitcount.sh file.c sub_ADDR` | insns in a loop's exit code at expand time (jump.c copies it in front of the loop unless > 30, a label, a call or a loop note) |

To name a function, add `ADDR Name # [sure|likely] evidence` to `names.txt`, then run `split.py`.

## 4. State and next tasks (update this section every session)

**State (2026-11-24, session 10):** **31.0% of live code in C (was 19.7%)**, ByteMatch report 632/1282 functions;
`make compare` passes; compiler and prebuilt archive unchanged. Changed approach: instead of compiler work on
the Link_Results near misses, bulk-matched the easy region-B code. (1) `tools/lift.py` lifted **~310 straight-line
functions** (the cutscene dialogue pages `082FB...-08301...`, scene helpers, setters) which `batch_check` verified;
(2) by hand from Ghidra drafts: the **trigger system** `08312CA4-08313088` (16, `include/trigger.h`) and the **pickup
pool** `0300407C` (5 + 2 near misses, `include/pickup.h`). New headers: `scene.h` (scene state 02007978, page
callback 03005A40), `regionb.h` (drafted prototypes, sort into subsystems later), `trigger.h`, `pickup.h`.
`struct Actor` (actor.h) gained fields; **the player `gPlayer_0300250C` is a `struct Actor`**; `030038CC` is a
camera struct (`unk08/unk0C` = camera x/y, used by Pickup_DrawAll). ~20 missed starts added to `starts.txt`
(empty `bx lr` functions after dialogue pages, trigger inits, camera setters). Tricks that worked, all new tips
material: a shared `zero` variable (`a = zero = 0; b = zero;`) for one zero register used by stores of
different widths; `u8 r; ... goto done; ... done: return r;` to put a search loop's found-block first;
`&p->sprite` repeated at each call instead of a `struct Sprite *s` local (register order); `if (visible ||
p->unk4) update; else free;` ordering follows the ROM's branch layout. Near misses added to
`src/nonmatching/region_b.c`: Pickup_ClearAll 083142F8 (base+2 folding), Pickup_Create 08314338 (u8 stack args
read with ldrb). `083073B8` stays asm: it returns GetFlag's value unnarrowed, but GetFlag is declared `u8`.
Harmless: `section does not have enough alignment` assembler warnings from split asm files.

**State (2026-11-23, session 9):** 19.7% of live code in C (no new match); `make compare` passes; compiler and
prebuilt archive unchanged. **Link_Results3's k loop is solved in an experiment** (its comment, item 2): the ROM
moves the while loop's `&gLinkSend` out of the while loop on loop pass 1 (r5), which needs the loop's insn count
≤ 28 (threshold 13, -3 per move, life 4). New compiler candidate **`tools/agbcc-dtd-test.patch`** (on top of the
jazz + givcombine patches, env `JZ_DTD=1`: one more dead-insn sweep before loop; clean on the matched set, also
prints the move threshold in `-dL` dumps) removes 2 of the 3 extra insns; the third is only removed by a fakematch
(`<< 24` on the u8 `sub_080006C4` test). With both plus the wait loop counted by `j`, Link_Results3 and Link_Results4
are at **9 ops** (pairs loop only), Link_Results2 at 22. Pairs loop diagnosed (STRATEGY 2026-11-23): the ROM's
`adds r1, #8` is the auto-inc placement of an uncombined address giv; the egcs "single-use DEST_REG giv is not a
combine target" rule gives it but breaks resbank_1.c's sub_08001314. Near-miss sources are unchanged (still `i`,
plain test; they score 32 with JZ_GIVLIFE=3 as before). Test compiler: patch a pret/agbcc clone with the three patches in
order, `make -C gcc old -j1`.

**State (2026-11-20, session 8):** 19.7% of live code in C (no new match); `make compare` passes; compiler and
prebuilt archive unchanged. Moved to the 3/4-player copies, now named **`Link_Results3` (0830ECF4) /
`Link_Results4` (0830F0AC)** and added as near misses at the end of `src/nonmatching/region_b.c` (99 ops each with
the stock compiler). Their frag loop is a plain `for` with three draw copies, and the ROM reduces the x three
times while combining the `&spr[i]` givs: a **compiler candidate** (identical givs combine only with a zero
constant addend; `docs/STRATEGY.md`, tip T435) takes both to **32 ops** with every matched function unchanged. It
is an env-switched test patch, not a flag: `tools/agbcc-givcombine-test.patch` on top of the jazz patch, build
with `make -C gcc old -j1` (seconds), run with `JZ_GIVLIFE=3 CC1=<tree>/gcc/old_agbcc`. Everything through the sort
then matches; what is left (pairs-loop schedule, k-loop `&gLinkSend` hoisting) is **byte-identical to Link_Results2's
items 2 and 3**, so those are not knock-ons of its sort. One fix there gives three functions.

**State (2026-11-19, session 7):** 19.7% of live code in C (no new match); `make compare` passes; compiler and
prebuilt archive unchanged. **ByteMatch progress tracking added:** `tools/objdiff_report.py` (rewritten: undecompiled
asm gaps and GAX near misses count as unmatched, categories game/gax/lib, names from names.txt), committed function
table `tools/report_funcs.json` (refreshed automatically when the ROM is present; **commit it when `make report`
says it changed**), `.github/workflows/progress.yml` (artifact `AJJE_report` on pushes to master), README badges.
Current report: 19.42% code, 294/1231 functions (slightly below progress.py, which leaves the asm near misses out).
`Link_Results2`: still 45; the sort's x problem is diagnosed further in its comment (why x isn't a giv, why every
giv form combines x and y, and a failed express_from_1 compiler test). Next for it: find what kept the ROM's x/y
address givs apart, or move on to `Link_MultiPakStart` / the 3-4 player copies.

**State (2026-11-19, session 6):** 19.7% of live code is in C (no new match); `make compare` passes; compiler and the
prebuilt agbcc archive unchanged. Session 6 took **`Link_Results2` (0830E93C) from 83 to 45 ops**: the whole frag-bar
loop and everything before it now match (tip T434). The label in front of the zero case's `i++` comes from a
redundant `else if (gFrags[i] == 0)`, with `i++` written in both paths; the pairs loop has its own counter `j`.
Open (its comment in `src/nonmatching/region_b.c` lists what was tried): the sort helper's `x = &pairs[b - 1]` is
expanded as `fp+192` then `+= b*8` (set twice, so not a giv) while the ROM reduced it to its own register; a
`c = b - 1` index makes it a giv but then x and y combine and the loop reverses. The k loop's register choice is
probably a knock-on. Next look: loop.c `combine_givs_p` / `express_from` for why the ROM kept x and y apart.
Scratch generators for this session's variant sweeps were not kept; `tools/vadiff.py` is enough.

**State (2026-11-18, session 5):** 19.7% of live code is in C; `make compare` passes; compiler and the prebuilt
agbcc archive unchanged. Session 5 matched **`Link_ClientStart` (0830BB74)**, now in `src/code_0830B634.c` (which
runs 0830B634-0830C034 with `code_0830BFAC.c` joined in). Three fixes, all in `docs/region_b.md` and tips
T432/T433: the bit-mask unpacking (item 0 as `R & 1`, items 1-7 through a `u16` temp so cse keeps two
constant classes), the second wait loop as `v = ...data[0]; p = gLinkRecv;`, and a `do { } while (0)` around
`gMaxFrags = ...` that lifts gLinkRecv's global-alloc priority over `sel` (they were 0.2133 / 0.2143).
Looked at `Link_MultiPakStart` after it: today's tricks don't apply (its comment has the REG_EQUIV flag problem).
Session 4 worked only on `Link_Results2` (0830E93C): **96 to 83 ops**, and the cause of the
rest is now known (its comment in `src/nonmatching/region_b.c` has the details, tips T430/T431 in
`docs/matching_tips.md`). (1) The frag-bar loop needs biv_count 2 at loop time (two `i++`, cross-jumped into one
later) plus a referenced label in front of the C path's `i++`; a dummy `goto next` proves it (58 ops, the whole
first half then matches), but the natural source of that label is still open. (2) The sort matches its shape with
an inline swap helper and literal 2s; only the helper's `x = &pairs[b - 1]` is not reduced (set twice).
Session 3 (2026-11-17): Region B `Link_PostMatch` (0830B318), `Menu_NewGameSlot` (0830C5C0),
`Menu_ContinueSlot` (0830CD64) matched; **`0830C034-0830E93C` is one C file / one rodata block** (the
original translation unit). Near misses added: `Link_MultiPakStart` 0830AF0C (43 ops), `Link_ClientStart`
0830BB74 (matched in session 5), `Link_Results2` 0830E93C (now 83). The link match flow is written up in `docs/region_b.md`
("The link match flow"). `tools/jtbl.py` keeps long jumps that agbcc's estimate makes long without the
table (`docs/STRATEGY.md`, 2026-11-17). `MultiBootMain` is 19 ops with `OPT=-fcprop-fix` and `client_bit`
read as volatile. Note: `tools/nm_replace.py` only edits `region_a.c` (hard-coded); for region B, replace the
section by hand.

Next (session 10 note: the user wants matched code; bulk work on the easy region-B functions paid off far
more than the Link_Results compiler hunt, so keep going there first):

0. **Region B with the Ghidra drafts** (regenerate them first, see the tools table; `decomp/drafts` is
   gitignored). Work in clusters that share a struct: `0830F464`/`0830F5C8` (menu pages), `08314464`/`0831488C`
   (pickup update/collect, `pickup.h`), the scene loop `083152C4-08316734` (`scene.h`), the object code in
   `082E8470-08309F28` (many 38/36-byte pairs per object type: start with one type and reuse its struct).
   Preamble for scratch files: `work/allh.c` style (every include/*.h except gax_internal.h, then regionb.h).

1. **Region B menus, the rest:** near misses `Link_Results2/3/4`, `Link_MultiPakStart` (each comment says what is
   open). Link_Results3 (its comment, items 1 and 2) has two open questions, both with a test compiler: (a) the
   28th insn: why the ROM's while loop is one insn shorter than ours after JZ_DTD (the u8 test's QI copy +
   ashift + lshiftrt + tst is the suspect; `-dG`/`-dL` dumps of `work/` variants), and (b) the pairs-loop
   combine rule: what separates Link_Results3's single-use DEST_REG givs 965/975 from resbank_1.c
   sub_08001314's (108/176/272/403). When Link_Results3 matches, turn the candidates into flags
   (`-fcombine-givs-ncav`, the dead-insn sweep, ...) in agbcc-jazz.patch, new prebuilt archive, copy it back;
   Link_Results4 then needs the same source changes. The "%d" literal
   (083DC6A0) is the menu TU's next string, so these belong at the end of `code_0830C034.c` (its rodata extends
   that file's block). Then who builds the menu pages,
   `08312CA4`, `0830F464`, `0830F5C8`; then the claim queue. `0830AE38-0830B634` (Menu_StartNewGame,
   0830AF0C, Link_PostMatch) and `0830B634.c` are probably the same TU too: the "Press Start..." strings at
   083DB494 come right after `0830AF0C`'s turn in the rodata, and `Link_PostMatch` reuses them, so once
   0830AF0C matches, merge 08309F28-0830C034 the same way and turn the gStr_ externs into literals.
2. **GAX matching.** Layout by original module (`docs/gax.md`, "Layout"; near misses in `asm/gax/` and
   `src/gax/nonmatching/`; public `include/gax.h`, internals `include/gax_internal.h`). Read the PRE notes
   and the GAX2_calc_mem note in `docs/gax.md` first. GAX2_init (355): its comment in
   `src/gax/nonmatching/gax.c` lists what's open; work top-down, the first ~95 instructions now match.
   GAXTracker_generate_audio (86): spill choice (`is_fx * 4` to sp+40) and two cross-jumped stores.
   When one matches, merge its module's parts. Score with
   `CC1=tools/agbcc/bin/agbcc OPT=-fprologue-bugfix python3 tools/adiff.py ADDR work.c` on a file holding
   `#include "gax_internal.h"` plus the function. GAX keeps its jump tables inline.
3. Region A near misses (`docs/region_a.md`): Obj_Update needs a 4th local-alloc qty in its last block
   (`tools/qtys.sh`); Glyph_Alloc's notes.
4. Disassemble the `.iwram` image (`083E085C`, VMA `03000000`) as an overlay. It has the map tile
   lookup and BG streaming routines reached through the veneers at `0831AE38-0831AEA8`, and the
   MultiSio/Sio32 IRQ handlers (`030004EC`, `030005F8`).
5. Data: level-record struct, tilemap format (now partly known: `struct CellMap` + 16x16 metatiles,
   see `docs/region_a.md`), palette CLUT mapping, what the 11 client data blocks hold.
6. **Renaming pass (later; the user wants it after the steps above, 2026-11-15).** C still uses
   `sub_ADDR` / `gUnk_ADDR`; `names.txt` holds the names (asm aliases only). Apply the `[sure]` names
   first with `tools/rename.py` (it also records data names in `symbols.txt`), then `[likely]` ones the
   user confirms; struct `unk` fields with the skill's `name-fields-*` workflows. Names don't change
   bytes, so `make compare` must still pass.

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
