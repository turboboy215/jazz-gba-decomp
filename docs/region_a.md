# Region A live library (080002E0-080053A0)

Region A is Game Titan's engine library: everything the game code in region B calls for
sprites, collision, the level map, text, OAM/VRAM management, interrupts, keys and the serial
link. It is linked first, before the game objects. What follows it (`080053A0-080193A0`) is the
Single Pak multiboot client image that `Link_Main` sends to the other GBAs, a separate program
(see `docs/rom_map.md`).

**Status (2026-10-28):** every function is written in C. 169 of 190 are byte-matching (13,340 of
20,672 bytes); 20 are near-miss C in `src/nonmatching/region_a.c` (`make nonmatching`), each
with a note on what is left; `MultiBootWaitCycles` stays hand-written asm. Every function has a
name in `names.txt`. (The three functions at `08005480-080055E0` counted before belong to the
client image, so the total went from 193 to 190.) Matched 2026-10-25: Sio32MultiLoadMain,
Bg_UpdateScroll, ResBank_GetCell, Map_SnapToSlope, Map_OnSlope. Matched 2026-10-26:
ResBank_SetSlot, MultiSioSendDataSet, Oam_Flush, Map_HitCeiling, Map_HitWall, Text_PutChar,
Obj_InitAll. Matched 2026-10-28: ResBank_SetTileset, Palette_CopyFaded, Text_ParsePaletteTag,
Text_StrRev (the "address giv" problem, solved, see the matching notes), MultiBootHandShake and
Link_SendClientData (they need `-fno-merge-blocks`, now the default, see `docs/STRATEGY.md`);
closer: VramMap_Alloc (44 to 2 aligned-diff ops), Link_SerialIntr (28 to 23 with
`OPT="-fno-gcse -fno-strict-aliasing"`).

**The OAM/Obj manager is `-fno-gcse` code.** Oam_Flush and Obj_InitAll only match with it, and
Oam_Init, Oam_Free, Obj_FreeSlot and Obj_Update get much closer (62, 72, 54, 46 aligned-diff ops
with gcse; 7, 27, 25, 20 without). Check every remaining near miss in `08003CF4-08004848` with
`OPT=-fno-gcse` first. Scores per function: `python3 tools/nm_explode.py` writes one
`work/ADDR_Name.c` per near miss, then `Q=1 [OPT=...] python3 tools/adiff.py ADDR work/ADDR_Name.c`;
`python3 tools/nm_replace.py ADDR [file.c]` replaces (or with no file, deletes) one section of
`src/nonmatching/region_a.c`.

Two Nintendo libraries are linked into region A, so their code is known from other decomps:
* **libmultiboot** `080023B0-08002A30`: `MultiBootInit/Main/Send/StartProbe/StartMaster/
  CheckComplete/HandShake/WaitCycles/WaitSendDone`. Same source as pret/pokeemerald
  `src/multiboot.c` (`struct MultiBootParam` in `include/link.h`). Init, Send, StartProbe,
  StartMaster, CheckComplete, WaitSendDone match; Main and HandShake are near misses (this
  build allocates registers differently).
* **MultiSio + Sio32MultiLoad** `08003790-0800436C`: Nintendo's multi-play sample library, an
  older revision of SAT-R/sa2 `src/multi_sio.c` / `src/sio32_multi_load.c` (16-byte blocks,
  24-byte packets, one receive counter, Sio32 block 0x4000, timeout 0x4A frames).
  `include/multi_sio.h`. `gMultiSioArea` = `0x03000970`, `gSio32MultiLoadArea` = `0x03000AF0`,
  `MultiSioRecvBufChange` = `0831711C` (called through a pointer). MultiSioMain and
  Sio32MultiLoadInit only match with `-fno-gcse` (splits.txt flavour `nogcse`).

Headers: `include/sprite.h`, `map.h`, `actor.h`, `resbank.h`, `system.h`, `link.h`, `oam.h`,
`obj.h`, `text.h`. C still uses `sub_ADDR` names; the readable names are in `names.txt` (and in
comments next to the prototypes).

## Subsystems in address order

| Range | Subsystem | Notes |
|---|---|---|
| `080002E0-08000850` | **Sprite** (`struct Sprite`, 100 bytes) | Multi-layer animated sprite drawn from an `AnimBank`. Up to 12 layers, each backed by one hardware `Obj`. `delay`/`loopStart`/`loopEnd`/`palette[]` take `0xFFFF` = "use the animation data". |
| `08000850-08000C00` | **Map collision** | Pixel and 24.8 fixed-point coordinates, 8x8 tiles. Collision = tile & 15: 0 empty, 1-8 slopes (heights in `gUnk_083D1D80[type][x & 7]`), 9 = fill below a slope, 10 = solid. Tile bits 4-6 put a tile on a "layer" that only collides while flag bit `layer` of `0x03005858` is set (`GetFlag`). |
| `08000C00-08001280` | **Actor collision** | `struct Actor` (248 bytes, 8 at `0x02004400`): position at +0x34/+0x38, `Sprite` at +0x64. `struct Shot` (projectiles?): position at +0x14/+0x18, `Sprite` at +0x28, only layer 0 tested. Hit tests use the cel graphics' rectangles (`struct CelGfx` rx/ry/rw/rh). Original bugs kept: `Actor_HitActor` uses `rx` for the second actor's top, the non-flipped right edge is `left + rw` but the flipped one `x + w*8 - rx`. |
| `08001280-08001BCC` | **Resource bank** (`struct ResBank`) | Level resource file: header of u32 offsets to tables (palettes at +4, map at +8, ...), each table `{count, ofs[]}` relative to the file start. Per BG layer: map (`ptrs[]`, `struct CellMap`), tileset (`unk14[]`), first glyph tile (`unk24[]`), scroll register value (`unk34[layer*2..+1]`, 0-255) and world scroll position (`unk54[]`), wrap flags (`slots[layer][0..1]`: 0 = clamp to the map, else wrap). `Bg_UpdateScroll` moves in steps of at most 8 px and streams the new edge column/row through the IWRAM veneers `0831AE68-AE98`; `Bg_DrawLevelScreen` redraws all 31x21 visible tiles from 16x16 metatiles (`cells[]` -> 4 tile words in the tbl8 table; bits 14-15 = flip). |
| `08001C88-08001DBC` | Font character maps | Two `char -> glyph` mappers (switch; jump tables at `083D1DD0`/`083D1EC8`). Font 2 is case-insensitive, unknown characters give 37. |
| `08001DBC-08001EBC` | Flags and brightness | Flag byte `0x03005858` (set/toggle/get bit). Brightness 0-7 at `0x03005859` indexes `gUnk_083D2FD8[8][32]`, which remaps each 5-bit colour component (`Palette_SetFaded`, `Palette_CopyFaded`). |
| `08001F34-080020C8` | Interrupts and keys | `InitInterrupts` DMA-copies the IRQ dispatcher from `0x080001B0` to IWRAM `0x03000B10`. `IntrTable` at `0x0300585C`. `ReadKeys` soft-resets on A+B+Select+Start. Configurable key mapping: six u16 masks at `0x03000D24-0x03000D2E` (L, R, A, B, Select, Start). |
| `080023B0-08002A30` | **libmultiboot** (Nintendo) | Single Pak download. `MultiBootWaitCycles` `080029DC` is hand-written asm in the library and stays asm. `MultiBoot_required_data` = `0x03000D30`. |
| `08002A30-080034A4` | **Link screens** (Tournament) | Player icons (`Sprites_DrawAll`, 4 `struct Sprite` at `0x03003A34`), buffers at `0x03000D38` (`struct LinkBuffers`), VBlank handlers that print "LINK ERROR" and the blinking "Loading..." screen. See *Tournament link flow* below. |
| `08003790-0800436C` | **MultiSio + Sio32MultiLoad** (Nintendo) | Multi-play transfer (timer 3, sync word 0xFEFE) and the 32-bit multi-load. `MultiSioVSync` `08003C1C` runs once per frame. |
| `08003CF4-080040C8` | **OAM manager** | Shadow OAM at `0x03000E58`; attr3 is reused as free/used list links (`next` +6, z +7). The used list is sorted by z (`Oam_SetPosSorted`); the OBJ priority is the number of the 3 thresholds at `0x03001258` that z exceeds. OBJ VRAM allocator: a 1 KiB map at `0x03001268` (1 = block start, 0xFF = continuation), allocations taken from the top. |
| `0800436C-08004848` | **Hardware objects** (`struct Obj`, 24 bytes, 128 at `0x03001668`) | Each owns one OAM entry and one VRAM block; dirty flags for size, gfx, palette. Free list at `0x03002268`, heads `0x030022E8` / `0x030022EC`. |
| `08004848-08004E48` | **BG text** | `gTextCtx` at `0x030024F0`, 32x32 map in screenblock `bg`. `{P<n>}` tags set the palette. Glyph tiles are reference counted (`Glyph_*`, tables at `0x02002000-0x02003600`). |
| `08004E48-08005398` | **Linux `lib/vsprintf.c`** | `simple_strtoul`, `simple_strtol`, `skip_atoi`, `strnlen` (`min(strlen(s), n)`), `number`, `vsprintf` (Linux 2.0, verbatim; tables at `083D338C`, `"<NULL>"` at `083D3384`), `sprintf` `08005384`. `_ctype_` is at `0x083E0648`. |
| `08005398-080053A0` | data | 8 bytes (`00FF00FF` x2) at the end of the library. The multiboot client image starts at `080053A0`. |

## Tournament link flow (Single Pak)

1. `Link_Main` (`080034A4`) is the Tournament entry. It is the multiboot master: it shows "Waiting
   for players...", counts clients from `response_bit`/`client_bit`, and on Start sends the client
   image (header `080053A0`, `0x13F40` bytes from `08005460`; `LinkBuffers.unk4` = 2-4 players
   from the client bits). B cancels.
2. `Link_SendClientData` (`08002144`) then runs a MultiSio handshake and sends the 11
   Sio32MultiLoad blocks of `0x4000` bytes listed at `083D30D8` (`0x080193A0 + n*0x4000`), with the
   IRQ handlers in IWRAM (`MultiSioIntr` at `030004ED`, `Sio32MultiLoadIntr` at `030005F9`).
   State machine in `0x03000914` (0-5), status flags in `0x03000910`, block index `0x03000960`.
3. `Link_Main` then switches the SIO to multi-player mode (115200 bps, IRQ), installs
   `Link_SerialIntr` and `VBlank_LinkError` and returns to the game.

The multi-cartridge path is `Link_Session` (`08002C04`): wait for the partners (the
`LinkBuffers.unk8` callback can cancel), the parent drives timer 3, `Link_HandshakeIntr`
(`08003168`) counts players answering `0xDEAD` and the parent sends 20 on Start ("PRESS START TO
BEGIN"), children time out after 120 frames ("PLEASE WAIT"). Both sides then exchange `111` sync
words through `Link_Exchange`.

In game, each player sends an 8-halfword packet per frame (`struct LinkPacket`): `Link_Exchange`
(`08002F64`) copies the outgoing one into `unk10` and the received ones (`bufs[4..7]`) to the
caller, and after 120 frames with a missing partner (`0xFFFF`) fades the screen to
black (`Fade_Start(1, 0xC0, 10)`, `08316F10`), shows "LINK ERROR / PLEASE TURN OFF ALL SYSTEMS / AND TRY AGAIN" and
hangs. `Link_SerialIntr` (`08003298`) moves one halfword per player per serial IRQ into `bufs[0..3]`
(index `unk0`, -1 = idle `0xDEAD` words) and swaps `bufs[0-3]`/`bufs[4-7]` after 8.

## Hidden functions

Twelve functions are only reached through pointers or sit behind another function's literal
pool, so Ghidra missed them. They are now listed in `starts.txt`: `08001A40`, `08001B88`,
`08001C88`, `08001D0C`, `08001E30`, `08001E4C`, `08001FEC` (DummyIntrHandler), `08001FF0`
(DefaultVBlankHandler), `08003158`, `08004868`, `08004874`, `08004B68`. To find more, look for runs of
`.4byte` lines that decode as Thumb code (`push`, `bx lr`).

## Blockers and build features

* **Switches (solved 2026-10-22).** Region A keeps `switch` jump tables in `.rodata`; agbcc puts
  them inline (as GAX does, so GAX files skip this). `tools/jtbl.py` (run by the Makefile and `check_func.py`) moves them to `.rodata`
  and turns back agbcc's `b<cc>; b @long jump` pairs that only existed because of the inline
  table (it keeps those that agbcc's own range rule, target - branch in [-252, 254], makes long).
  Splits.txt kind `rodata` (`START END rodata FILE`) places `FILE.o(.rodata)` at that ROM address;
  `batch_check.py` takes `//@ ADDR Name rodata=TABLE # ...` and `add_funcs.py` carves the row out
  of the `asm rodata` block. Done for Map_GetSlopeDir, both font maps, MultiBootStartMaster.
  vsprintf (2-byte near miss) and Sio32MultiLoadMain wait in `src/nonmatching/region_a.c`.
* **Data inside a function's range**: `//@ ADDR Name end=ADDR # ...` (sprintf).
* **`-fno-gcse` flavour** (`nogcse` in splits.txt, `OPT=-fno-gcse` for check/integrate): needed
  by MultiSioMain, Sio32MultiLoadInit and Glyph_InitCache. Library code; try it when a function
  re-loads a global's address after a branch where agbcc keeps it in a register.
* **Type-based aliasing off?** `Link_SerialIntr` and `Link_Exchange` reload struct fields after
  every halfword store through a pointer, which agbcc at `-O2` (strict aliasing is on there) does
  not do. `Link_SerialIntr` gets the ROM's size with `OPT="-fno-gcse -fno-strict-aliasing"`;
  `Link_HandshakeIntr` matches with `-fno-gcse`, `Link_Session` with anything. If more of this
  file shows the pattern, try a `nogcse`+`-fno-strict-aliasing` flavour for the link object
  (the Makefile has no such flavour yet).
* **Near misses** (`src/nonmatching/region_a.c`): mostly register allocation and block order.
  decomp-permuter on the 2-core container got nowhere in 6-minute runs, so it is not worth
  running on these without more CPU.

## Matching notes (agbcc/old_agbcc, found in this region)

* `if (c) return A; return B;` puts B on the fall-through path and A after it. If the ROM falls
  through into A, write the opposite condition.
* An extra `adds rX, rY, #0` copy of a narrow parameter before its last use goes away if you copy
  the parameter into a local first (`u16 k = key;` in `SetKeyMapping` and `MapKeys`).
* Offset-table lookups (`ResBank_*`) only match with the table pointer in a local:
  `u32 *t = (u32 *)((u8 *)d + d->tbl4); return (u8 *)d + t[i + 1];`.
* A function whose `u8` return value the ROM never re-truncates (`u32 i` in `Oam_Alloc` and
  `Obj_AllocSlot`): keep the local as `u32` and return it from a `u8` function.
* Callers re-truncate narrow return values (`lsls/lsrs` after `bl`). When the ROM truncates
  only at one use, declare the callee `u32` and cast there (`Text_PutChar`).
* `CpuFastSet`/`CpuSet` and other BIOS calls: call them by name (`lib/aliases.s`) or as `sub_0831A5xx`.
* After a byte store, the compiler reloads `*pp` (a char store can alias anything). After a word
  store it reloads only if the stored type can alias the pointer's type (`Obj_Create`).
* Font maps: `u8 c = c_;` copy of the parameter, range tests written `c >= 'A' && c <= 'Z'`, and
  `default: return K;` inside the switch.
* A loop over a fixed array of sprites whose ROM has no entry test (do-while shape): index it
  (`for (i = 0; i < 4; i++) f(&arr[i])`), not with a pointer compared to `&arr[3]`.
* Return-1 block placed right after an early check (`b ...; movs r0,#1; b end`): split
  `if (a && b) { loop }` into `if (!a) return 0; if (!b) return 0;`.
* Call arguments computed in the wrong order around a stack argument: compute it into a local
  first (`b = t + g->rh;` in Actor_HitPoint).
* `while (n--)` gives the ROM's `subs; cmp rX, #-1; bne` countdown loops (Link_Exchange,
  Link_SerialIntr).
* A two-value compare chain (`cmp #0; beq; cmp #0xD1; beq; b`) is a `switch` with two cases,
  not `if/else if` (Link_Main's probe_count).
* A parameter that the ROM copies into another register at entry and then reuses as a
  temporary: the original reused the parameter as a local and looped on a copy
  (Bg_UpdateScroll: `rx = dx`, then `dx` = clamped step).
* Checksum loops with `bls` (unsigned) bounds come from `i < sizeof(struct X) / 2 - 2` with a
  signed `i` (Nintendo sample code).
* **`x << 1` instead of `x * 2` in array indexes** changes pseudo order and stack slots:
  Bg_UpdateScroll only matches with `b->unk34[layer << 1]`, ResBank_GetCell with
  `(v << 2) + ((y & 1) << 1)`. Try it whenever a near miss is stack-slot or register order only
  (`work/shift.py`-style rewrite of every `* 2/4/8`).
* **One local reused for two values**: ResBank_GetCell keeps both header sizes in r4 because the
  original had one `u8 size` assigned twice (`size = m->size; ... size = t->size;`).
* **Unmasked bool results**: the ROM tests `Coll_IsSlope` (08000978) without `lsls/lsrs #24`, so
  it returns `int`, not `u8` (Map_SnapToSlope matched once the prototype changed; the callee is
  unchanged).
* **`return 1` block after the fall-through `return 0`** (`bne ret1; movs r0, #0; b end; ret1:`):
  write a chain of early returns, `if (!a) return 0; if (b) return 1; if (!c) return 0; ...`
  (Map_OnSlope).
* **A register copy of a global's address kept for a later case** (`ldr r0, =X; ldrb r1, [r0, #1];
  adds r3, r0, #0`): read the field into a local first, then set a pointer local and use it
  where the ROM uses the copy (`state = Sio.state; p = &Sio; switch (state) ... p->frameCounter`,
  Sio32MultiLoadMain).
* **Checksum/copy loops through a pointer** (`ldr r1, [r4, #28]` before the loop, `ldrh; adds r1, #2`
  right after the load): `for (i = 0, p = m->buf; i < n; i++) { u16 v = *p++; sum += v; }`. The
  `u16 v` temp puts the add after the pointer increment. If the ROM keeps a global's address in a
  register across the loop, take a struct pointer local (`m = &Ms`) just before the loop and use
  it after it (MultiSioSendDataSet).
* **A constant the ROM materialises inside a loop** (`movs r4, #224; lsls r4, #19` every
  iteration) while other constants are hoisted: loop.c only hoists a register set once. Set the
  pointer, then advance it (`o = OAM_HW; o += j; o->attr0 = 0x200;`), so the 0x07000000 reg is set
  twice (Oam_Flush). loop.c's budget is `threshold = 2 * 13 = 26` (no call) or 13 (with a call),
  minus 3 per moved invariant, against the loop's insn count; `old_agbcc -dL` prints the decisions.
* **Operand order of an add** (`adds r4, r1, r4` vs `adds r4, r4, r1`) follows pseudo numbers: put the
  sum in a new local and write the operands in the ROM's order (`px = (x >> 8) + ofsX`,
  Map_HitCeiling). An `if/else` assignment instead of `v = a; if (c) v = b;` and an inline `(y >> 8)`
  instead of a local fixed Map_HitWall.
* **A narrow call result the ROM zero-extends before an `orr`**: assign it to a `u16` local first
  and store in each arm (`v = Glyph_Alloc(...); *cell = v | (pal << 12);`, Text_PutChar).
* **Byte-wise stores through `b + i*4`** with the 0x74 field offset added per store: a struct
  pointer offset by the slot, `p = (struct ResBank *)((u8 *)b + i * 4); p->slots[0][k] = ...`
  (ResBank_SetSlot).
* **A fresh `movs rX, #31` for one mask while the others use a hoisted 31**: make that mask QImode,
  `(u8)(c & 31)` (Palette_CopyFaded). `(u16)c >> 5` on an `int c` gives the `lsls #16; lsrs #21` pair.
* **Pointer increments right after the access (the old "address givs" problem, solved 2026-10-28).**
  When the ROM increments a pointer right after its load/store (`ldrb; adds r1, #1`, `ldmia r3!`) while
  the loop counter's `++` stays at the end, the original used a **separate induction variable** for the
  access. loop.c only puts a reduced giv's increment next to its use for an address giv that is not
  combined into a register giv (never the case for `base[i]` here), so the increment lands where the
  biv is incremented. Either give the access its own index incremented at the access,
  `list[m++]` with `j++` in the for (ResBank_SetTileset), `src[k++]` (Palette_CopyFaded); or use a user
  pointer set **inside the loop's guard**, after the entry test, as a giv init would be:
  `if (*src) { s = src; d = ...; do { *d = *s; d--; s++; } while (*s); }` (Text_StrRev, the order of
  `d--; s++;` is the order of the increments), `if (j < n) { q = p; do ... *q++ ... }` (VramMap_Alloc).
* **Giv init operand order**: the ROM's `adds r1, r3, r0` (n + sp) comes from a pointer set to
  `(char *)(n + (int)buf)`; `buf + n` gives `adds r1, r0, r3` (Text_ParsePaletteTag). For a base minus
  one, `char *e = dst - 1; d = (char *)(n + (int)e);` (Text_StrRev).
* **A u16 value used both masked and shifted** (Palette_CopyFaded): `u16 c = src[k++]; int ci = c;`,
  red from `c & 31` (the ROM's `movs r2, #31; ands r2, r1`), green/blue from `(u16)ci >> 5` / `>> 10`
  (the `lsls #16` + `lsrs` pairs).
* **A constant materialised before the inits of a following loop** (VramMap_Alloc's `movs r3, #255`
  before `adds r0, r5, #1; subs r1, r4, #1`): put it in a local first, `u8 v = 0xFF; u8 *q = p + 1;
  int k = n - 1; do *q++ = v; while (--k != 0);`. Values the ROM computes early (before a loop) come
  from locals assigned there (`ofs = t << 5; sz = n << 3;`).
* **Block order and `merge_blocks`**: if the ROM keeps a block in place and branches over it (an early
  `return` inside a loop, a `goto found` with the target after a `return`) where our build moves the
  block next to its only predecessor, that was merge_blocks. It is off now (`-fno-merge-blocks`).
* **Open problem, loops entered from an `else`** (Oam_Free, Obj_FreeSlot): the ROM loop is entered by
  `ldr base; b test` and laid out step, test, body. stmt.c's expand_end_loop moves the test and the body
  up to the `break` to the loop bottom (as the ROM shows), but then jump.c's
  `duplicate_loop_exit_test` copies that exit code in front of the loop, and loop.c sees "multiple
  entry points" and hoists nothing. The copy is refused only if the exit code has a CODE_LABEL, a call,
  a LOOP_BEG/LOOP_CONT note or more than 30 insns at expand time; ours have 25 and 27
  (`tools/exitcount.sh file.c sub_ADDR` counts them). So the original body was probably longer before
  CSE, or had a label in it. A statement expression with a local in the test stops the copy but adds a
  store-flag. (Old note: jump.c threads the else branch into the rotated loop's test.)
* **Register-only leftovers** (Oam_Init, Obj_Update, Link_Main, VramMap_Alloc's i/j swap): see each note.
