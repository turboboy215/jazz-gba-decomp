# Jazz Jackrabbit GBA: decompilation strategy and findings

This file is the project's running log. The generic pipeline (claim queue, `check_func`, bandit, permuter,
header unification, naming) comes from the `gba-matching-decomp` skill and is described in
`docs/reference/STRATEGY.md` (the Medabots AX log) and `docs/reference/matching_tips.md`.
This file records what is **specific to Jazz Jackrabbit**.

## Goals

1. **Matching decompilation**: C that rebuilds `baserom.gba` byte-for-byte (`make compare`).
2. **Labels and documentation**: names for functions, data and structs, plus docs on every subsystem.
3. **Native PC port** ("recompiled"): the same game logic built for a host, with a GBA hardware
   abstraction layer (see `docs/PC_PORT.md`).

## Compiler identification (done)

**Everything tested matches `old_agbcc -O2 -mthumb-interwork` (pret's GCC 2.9 build), with no
`-fprologue-bugfix`.** Evidence:

| Function | Source | old_agbcc | agbcc |
|---|---|---|---|
| `0800068C` (region A accessor) | hand-written C | **MATCH** | differs (register allocation) |
| `080006C4` (region A anim tick) | hand-written C | **MATCH** | - |
| `08319078` `GAX_resume` | 3.05A decomp C | **MATCH** | differs (108 vs 104 bytes) |
| `08318FF8` `GAX_pause`, `08319214` `GAX_stop`, `083190E0/F0` | 3.05A decomp C | MATCH | MATCH |

So Game Titan's code was built with old_agbcc. GAX functions also match with `agbcc -fprologue-bugfix`,
which gives the same output as old_agbcc there. The region A accessor `0800068C` rules out every agbcc variant for the game code.
The Makefile, `check_func.py`, `add_funcs.py`, `use_headers.py` and `permuter_compile.sh` all default to
`old_agbcc`. Tell-tale signs: leaf functions return with a bare `bx lr`; `pop {rX}; bx rX` returns;
narrow parameters are **not** re-truncated in the callee (Game Titan's prototypes take `int`, and
`s8`/`s16` are sign-extended in the body); `add rD, rS, #0` moves.

**No `merge_blocks` (2026-10-28).** pret's agbcc runs a Cygnus pass, `merge_blocks` (flow.c, called
after the first jump pass and after CSE at `-O2`), that moves a block next to its only predecessor.
The ROM's compiler did not: `MultiBootHandShake` and `Link_SendClientData` match only with the pass
off, VramMap_Alloc's block order needs it off too, and the whole ROM (GAX included) still builds
byte-identical with it off. `tools/agbcc-jazz.patch` adds `-fno-merge-blocks` to both
agbcc builds (default unchanged); the Makefile and the tools pass it for all C.

**Dead feeders deleted after reload (2026-10-31).** pret's jump.c has another Cygnus change
(`/* CYGNUS LOCAL amylaar / gcc/13233 */ if (! reload_completed)` in `delete_computation`) that stops
it from deleting the insns that fed a deleted compare once reload has run. The ROM's compiler did
delete them: in vsprintf a cross-jumped `if (flags & SIGN)` (both arms `va_arg(args, int)`) leaves
only `movs r0, #2` (the `ands r0, r3` was deleted with the `cmp`, its input was not). The same patch
adds `-fdelete-dead-after-reload`, which skips that check; vsprintf matches with it and the whole ROM
stays byte-identical with it on, so the Makefile and the tools pass it for all C. Both findings say
the ROM's compiler was a GCC snapshot from before those Cygnus changes, not pret's exact tree.

**Three more differences, game code only (2026-11-03).** GAX keeps stock gcse and strict aliasing and no
giv fix: 8 of its matched functions break with the first two flags, so Shin'en's library really was
built separately. The Makefile keeps them in `GAMEFLAGS`, which objects.mk empties for GAX.
* **`-fgcse-no-const`**: gcse's PRE leaves constant pool loads alone, except symbol+offset ones
  (`_ctype_+1` in simple_strtoul must still be PRE'd). Our patch adds the check to `want_to_gcse_p`.
  This replaces the per-object `nogcse` flavour: all 8 of those objects match without `-fno-gcse`, and
  expressions like `key * 2` are still PRE'd, which `-fno-gcse` could not give (Glyph_Alloc's `mov ip, r1`
  before the `cmp` is PRE's copy at the end of a block).
* **`-fno-strict-aliasing`**: nothing matched depends on strict aliasing, and the link code needs it off.
* **`-fcombine-givs-fix`**: pret's `combine_givs` subtracts from its benefit table with the sort position
  `j` instead of the giv index `i` (fixed in later gcc). With the bug Link_Exchange gets two recv givs.

Tested and **ruled out** the same day, each against all matched functions: no if/else block swap in
jump.c (15 matched functions break), refs not weighted by loop depth (19 break), dropping conditional
address givs and PRE of only `gUnk_03000D38` (nothing breaks, nothing improves), `-fno-gcse-no-const` for
everything (the nogcse objects break). The rule behind `-fgcse-no-const` is only a fit: Link_SerialIntr
and Link_Main still show a PRE-like copy of `&gUnk_03000D38` that it does not reproduce.

**How to test a compiler idea (minutes, worth doing).** Build `make -C gcc old -j1` (parallel make fails)
in a patched pret/agbcc tree, then compile every `src/*.c` with `CC1=.../old_agbcc` and compare each
function's asm against `build/src/*.s`: a real difference has to keep all matched functions identical.
A getenv switch in the compiler makes the experiment one line; turn it into a flag if it holds up.

**Two more differences, game code only (2026-11-09).** Both found by reading the dumps of a near miss
(`-dG` gcse, `-dL` loop, `-dg` greg) instead of guessing at reload, and both keep every matched function identical:
* **`-fgcse-insert-before-copy`** (gcse.c `insert_insn_end_bb`): when a block ends in a register-to-register
  copy, PRE puts its new insn **in front of** that copy, not after it. MultiSioRecvDataCheck's
  `subs r1, r4, #1; str r1, [sp, #4]; mov r1, r8` is PRE's `i - 1` placed before `q = p`; after the copy,
  r1 is busy and reload takes r7. This was the "reload round-robin" lead; reload itself is stock
  (no-round-robin and reversed spill order both break 16-20 functions).
* **`-fgiv-keep-after-exit`** (loop.c `strength_reduce`): givs found past a jump out of the loop (an
  in-loop `return`/`break`) and not run every iteration still take part in combining and in the
  reduction order, but their own insns are not rewritten to the reduced register. Sprite_Init's `else`
  arm recomputes `s->objs + i*4` from `i` (`lsls r0, r4, #2; adds r1, r5, #0; adds r1, #52`) while the
  other arm uses the reduced registers; with the plain `s->objs[i] = NULL` it matches. A narrower rule
  (register givs only) and a skip-the-giv rule were also clean on the matched set; skipping gets 4 ops
  because the giv order changes. Keep this in mind if a later function disagrees.

Ruled out on 2026-11-09: reload without round-robin (`i = -1` in `allocate_reload_reg`, 16 break), spill_regs
in reverse order (20 break), PRE inserting before *any* final insn (1 breaks), `-fno-gcse-no-const` again
with the new flags (12 break).

**Two more, game code only (2026-11-10), both found on Link_Main** (matched with them; every other matched
function is unchanged with either flag):
* **`-fgcse-const-in-loops`** (gcse.c `pre_delete`): `-fgcse-no-const` was only a fit. The ROM's PRE does
  handle constant pool loads, but only when the redundant load is inside a loop **and** every insertion PRE
  needs is inside a loop too. Link_Main's `&gUnk_0300589C` after the player-count loop gets three copies
  inside that loop (end of bb 2, 3, 4). They vanish later, but at loop.c time they make the inner loop 3 insns
  longer, and a register used in an inner loop lives to that loop's end: `&gUnk_03000E0C`'s lifetime goes
  28 → 31, enough for pass 1 to move it (`7 * 2 * 31 >= 2 * 210`), which leaves pass 2 the budget to hoist
  `&gUnk_03000D38` (`13 * 3 * 5 >= 189`). The plain rule (loop depth of the redundant load only) is also
  clean on the matched set but puts Oam_SetPosSorted's near miss at 120 (from 108): its insertions land in
  bb 0/1, outside the loop.
* **`-fold-base-reg-class`** (thumb.h `MODE_BASE_REG_CLASS`): byte/halfword addresses reload into
  BASE_REGS like every other mode. pret's thumb.h gives QImode/HImode addresses LO_REGS, the value's own
  class, so reloads sort by number and the address (pushed first) takes the first spill reg. With BASE_REGS
  (class 4 > LO_REGS 2) `reload_reg_class_lower` puts the value first: Link_Main's `mov r0, r8; ldr r1, =x;
  strb r0, [r1, #4]`. MODE_BASE_REG_CLASS looks like one of the later Cygnus changes.

Ruled out on 2026-11-10: full Morel-Renvoise PRE (egcs 1.1's `compute_pre_ppinout`) instead of LCM
(21 break even with `-fgcse-no-const`); PRE of constant pool loads only where they are partially available
(11 break).

libgcc in this ROM is built **without interworking** (`mov pc, lr`). newlib is ordinary.

C++? Many tiny out-of-line accessors (`strh r1,[r0,#8]; bx lr`) look like C++ methods, but there is no
RTTI, no vtable-shaped tables found yet, and `__main` / `__do_global_ctors` run an empty ctor list. Treat
the code as C until proven otherwise. old_agbcc has no C++ front end. If C++ shows up, the plan is
to write equivalent C (method → function taking `this`); that usually produces identical code.

## ROM structure findings

See `docs/rom_map.md`. In short:

* Two code regions: **A** = `080002E0-08012974` and **B** = `082E8470-0831AEB4`, with 2.8 MB of data between them.
* **Multiboot client image** `080053A0-080193A0` (code to `08012974`): the program `Link_Main` sends
  to the other GBAs in Single Pak Tournament mode, with its own GAX copy. First taken for dead code
  from an older build ("orphaned block", `ORPHAN` in the tools). Kept as asm and excluded from
  progress and claims.
* `.iwram` (0x8E4 bytes of code), `.data` and `.ewram` load images follow `.rodata`. They are currently
  `.incbin`; disassembling `.iwram` as an overlay (VMA `03000000`) is a TODO.

## Splitter changes (tools/split.py)

* `CODE_REGIONS` / `ORPHAN` replace the single `CODE_END`. Gaps between regions become `data/*.s`.
* `--verify` compares with **`bl` offsets masked**. A size shift anywhere changes every later `bl`, and
  the original tool then demoted 600+ innocent functions. On a size mismatch it now demotes only
  the first real divergence and rebuilds. Result: **27 of 1,539 functions raw** (was 967).
* The Thumb-2 second-half re-decode also filters post-v4T mnemonics (`revsh` inside the GAX ARM blocks).
* `starts.txt` accepts `ADDR arm` for ARM-mode starts (the GAX ARM mixer blocks).
* `names.txt` (`ADDR NAME # comment`) emits alias labels (`.thumb_set NAME, sub_ADDR`) and a comment
  line in the asm, and uses `bl NAME` while the callee is still asm. C keeps `sub_ADDR`
  names until Phase 3 renames.

## Inline asm exception

GAX's DMA stop sequence `mov r3, r3; nop; nop; nop` comes from inline asm in Shin'en's own
source and can't come from C. `include/gax.h` wraps it as `GAX_DMA_DELAY()`, and integration of such files
uses `ALLOW_ASM=1 tools/integrate_one.sh ...`. It is used in `src/gax/gax_083185D0.c` (GAX_pause 08318FF8, GAX_stop 08319214).

## Work order (recommended)

1. **GAX library first**: about 40 functions with a reference decomp, and four are already matched. That
   validates the GAX struct layout, which the PC port needs early.
2. **Region A live library** (`080002E0-080053A0`, 190 functions, all in C, 151 matching, see
   `docs/region_a.md`): small, heavily used accessors.
   Naming them makes every caller in region B readable.
3. **Region B game code** in address order through the claim queue. `AgbMain` (`08312BF8`) never returns:
   it initialises, then calls `0830AAA8`, which looks like the scene/main loop. Start the naming pass there.
4. **IWRAM image**: disassemble as an overlay. It holds the VBlank handler (`0300087C`) and the eight
   veneer targets.
5. Multiboot client image: a separate program (linked at `0x02000000`); a project of its own,
   only needed for Single Pak multiplayer in a port.

## Agent workflow notes

The skill's multi-agent `workflows/*.js` scripts need the Workflow tool. Without it, the same loop runs
with `tools/claim.py` → write C (start from `decomp/drafts/ADDR.c`) → `tools/check_func.py` →
`tools/integrate_one.sh`. Project notes every agent needs:

- Compiler: old_agbcc (default in all tools). Don't try agbcc/`-fprologue-bugfix` first, except for the
  GAX library (`08317518-0831A100`), which is built with `agbcc -fprologue-bugfix`.
- memcpy=0831A570, memset=0831A5D4, strcmp=0831A62C, strlen=0831A68C, strncpy=0831A6D8,
  `__divsi3`=0831A820, `__udivsi3`=0831AD00, `__umodsi3`=0831AD78, `_call_via_r0`=0831A7E4
  (there is no `__modsi3`: signed `%` should be checked when first seen).
- GAX work RAM pointer: `gGAXRam_03000B0C` (`include/gax.h`).
- Interrupt table: `IntrTable` at `0300585C`, `SetIntrHandler` = `08001FC8`.
- Region A functions are tiny accessors on a few struct types (sprite/animation objects).
  Prototypes take `int` for narrow arguments. Struct layouts and globals: `docs/region_a.md`
  and `include/*.h`. For many small functions at once use `tools/batch_check.py`.

## Log

- 2026-11-09: two compiler flags for game code (`-fgcse-insert-before-copy`, `-fgiv-keep-after-exit`, above).
  MultiSioRecvDataCheck and Sprite_Init match; region A 180/190, 9 near misses; 10.16% of live code in C.
  The "reload round-robin" lead was PRE placement; reload is stock.
- 2026-11-03: three compiler flags for game code (above), `nogcse` flavour retired. Link_Exchange,
  Glyph_Free, Obj_Create match; region A 178/190, 11 near misses. MultiSioRecvDataCheck 95 to 8,
  Sprite_Init 39 to 9.
- 2026-10-24: region A finished in C: Link_Session and Link_HandshakeIntr (nogcse) match;
  Bg_UpdateScroll, Bg_DrawLevelScreen, Oam_SetPosSorted, Link_SendClientData, Link_Exchange,
  Link_SerialIntr, Link_Main as near misses (38 in total). `Link_Main` showed that the "orphaned
  block" is the Single Pak multiboot client image (`080053A0`, 0x14000 bytes) plus 11 Sio32 data
  blocks at `080193A0`; ORPHAN moved to `080053A0` (live total 228,100 bytes). The link code
  reloads struct fields after halfword stores, as if built with `-fno-strict-aliasing`.
  New `tools/disasm.py`. BG layer scroll/metatile format, `struct LinkPacket`, link flow documented.

- 2026-10-22: region A to 149/193 matching (actor collision, Bg_InitControl, link screen icons,
  font maps, Map_GetSlopeDir, sprintf, glyph cache init). Identified Nintendo libmultiboot
  (= pokeemerald multiboot.c) and MultiSio/Sio32MultiLoad (older than SA2's) in region A.
  Rodata split: `tools/jtbl.py` + splits.txt kind `rodata` (jump tables in the ROM rodata),
  `nogcse` flavour, batch_check `rodata=`/`end=` options. 13 more near misses parked.
- 2026-10-21: region A pass: 132/193 functions matching (sprite/anim accessors, map collision,
  resource bank, flags/brightness, interrupts/keys, link helpers, OAM + OBJ VRAM manager,
  hardware objects, BG text, Linux vsprintf helpers), 19 near misses in
  `src/nonmatching/region_a.c`, all of region A named, 12 hidden function starts. New
  `docs/region_a.md`, `tools/batch_check.py`, `tools/variants.py`.
- 2026-10-17: song/level tables (`docs/songs.md`, `tools/gax_songs.py`), cleaned `strings.tsv`
  (game text only, junk filtered, song titles moved out), 8bpp tileset header format, GAX manual
  version history and `GAXParams` offsets, Crash XS (GAX 2.01D) referenced, PS1 port notes,
  `docs/HANDOFF.md` for multi-session work.
- 2026-10-15: project start. ROM identified, compiler = old_agbcc, ROM map and orphan block found,
  splitter ported to multi-region, byte-identical all-asm build, GAX 3.01 mapped (41 functions
  named), text catalogue, 7 functions in C (2 region A, 5 GAX).
