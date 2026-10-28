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
byte-identical with it off. `tools/agbcc-no-merge-blocks.patch` adds `-fno-merge-blocks` to both
agbcc builds (default unchanged); the Makefile and the tools pass it for all C.

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
uses `ALLOW_ASM=1 tools/integrate_one.sh ...`. List of files that use it: `src/code_08318FF8.c`,
`src/code_08319214.c`.

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
