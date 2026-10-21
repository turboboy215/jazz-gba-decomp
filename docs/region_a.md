# Region A live library (080002E0-08005710)

Region A is Game Titan's engine library: everything the game code in region B calls for
sprites, collision, the level map, text, OAM/VRAM management, interrupts, keys and the serial
link. It is linked first, before the game objects. The orphaned block after it
(`08005710-08012974`) is unrelated dead code (see `docs/rom_map.md`).

**Status (2026-10-21):** 132 of 193 functions in byte-matching C (4,700 of 21,552 bytes; the
rest are mostly the large ones). 19 more are written as near-miss C in
`src/nonmatching/region_a.c` (`make nonmatching`). Every region A function has a name in
`names.txt`.

Headers: `include/sprite.h`, `map.h`, `actor.h`, `resbank.h`, `system.h`, `link.h`, `oam.h`,
`obj.h`, `text.h`. C still uses `sub_ADDR` names; the readable names are in `names.txt` (and in
comments next to the prototypes).

## Subsystems in address order

| Range | Subsystem | Notes |
|---|---|---|
| `080002E0-08000850` | **Sprite** (`struct Sprite`, 100 bytes) | Multi-layer animated sprite drawn from an `AnimBank`. Up to 12 layers, each backed by one hardware `Obj`. `delay`/`loopStart`/`loopEnd`/`palette[]` take `0xFFFF` = "use the animation data". |
| `08000850-08000C00` | **Map collision** | Pixel and 24.8 fixed-point coordinates, 8x8 tiles. Collision = tile & 15: 0 empty, 1-8 slopes (heights in `gUnk_083D1D80[type][x & 7]`), 9 = fill below a slope, 10 = solid. Tile bits 4-6 put a tile on a "layer" that only collides while flag bit `layer` of `0x03005858` is set (`GetFlag`). |
| `08000C00-08001280` | **Actor collision** | `struct Actor` (248 bytes, 8 at `0x02004400`): position at +0x34/+0x38, `Sprite` at +0x64. Hit tests use the sprite cels' rectangles. |
| `08001280-08001BCC` | **Resource bank** (`struct ResBank`) | Level resource file: header of u32 offsets to tables (palettes at +4, map at +8, ...), each table `{count, ofs[]}` relative to the file start. |
| `08001C88-08001DBC` | Font character maps | Two `char -> glyph` mappers (switch with a rodata jump table). |
| `08001DBC-08001EBC` | Flags and brightness | Flag byte `0x03005858` (set/toggle/get bit). Brightness 0-7 at `0x03005859` indexes `gUnk_083D2FD8[8][32]`, which remaps each 5-bit colour component (`Palette_SetFaded`, `Palette_CopyFaded`). |
| `08001F34-080020C8` | Interrupts and keys | `InitInterrupts` DMA-copies the IRQ dispatcher from `0x080001B0` to IWRAM `0x03000B10`. `IntrTable` at `0x0300585C`. `ReadKeys` soft-resets on A+B+Select+Start. Configurable key mapping: six u16 masks at `0x03000D24-0x03000D2E` (L, R, A, B, Select, Start). |
| `080023B0-080034A4` | **Serial link** (Tournament) | Port state (`struct LinkPort`), buffers at `0x03000D38` (`struct LinkBuffers`). VBlank handlers that print "LINK ERROR" and the blinking "Loading..." screen. `080029DC` is hand-written asm (delay loop that reads the PC to pick a cycle count) and stays asm. |
| `08003790-0800436C` | Second SIO driver | State at `0x03000970` / `0x03000AF0`, timer 3. Not decompiled yet. |
| `08003CF4-080040C8` | **OAM manager** | Shadow OAM at `0x03000E58`; attr3 is reused as free/used list links. Up to 4 y thresholds at `0x03001258` select the OBJ priority. OBJ VRAM allocator: a 1 KiB map at `0x03001268` (1 = block start, 0xFF = continuation), allocations taken from the top. |
| `0800436C-08004848` | **Hardware objects** (`struct Obj`, 24 bytes, 128 at `0x03001668`) | Each owns one OAM entry and one VRAM block; dirty flags for size, gfx, palette. Free list at `0x03002268`, heads `0x030022E8` / `0x030022EC`. |
| `08004848-08004E48` | **BG text** | `gTextCtx` at `0x030024F0`, 32x32 map in screenblock `bg`. `{P<n>}` tags set the palette. Glyph tiles are reference counted (`Glyph_*`, tables at `0x02002000-0x02003600`). |
| `08004E48-08005386` | **Linux `lib/vsprintf.c`** | `simple_strtoul`, `simple_strtol`, `skip_atoi`, `number`, `vsprintf` (Linux 2.x, almost verbatim; `strnlen` is `min(strlen(s), n)`). `_ctype_` is at `0x083E0648`. |
| `08005386-08005710` | sprintf wrapper + ARM code | Not looked at yet. |

## Hidden functions

Twelve functions are only reached through pointers or sit behind another function's literal
pool, so Ghidra missed them. They are now listed in `starts.txt`: `08001A40`, `08001B88`,
`08001C88`, `08001D0C`, `08001E30`, `08001E4C`, `08001FEC` (DummyIntrHandler), `08001FF0`
(DefaultVBlankHandler), `08003158`, `08004868`, `08004874`, `08004B68`. To find more, look for runs of
`.4byte` lines that decode as Thumb code (`push`, `bx lr`).

## Blockers

* **Switches.** This ROM keeps `switch` jump tables in `.rodata` (e.g. `083D1DD0` for
  `Font_CharToGlyph`). `check_func.py` links only `.text`, and the build has no C rodata at
  those addresses yet. So these stay asm until rodata is split: `08000AF8`, `08001C88`,
  `08001D0C`, `08005100` (vsprintf). Same problem as the GAX rodata.
* **Near misses** (`src/nonmatching/region_a.c`): mostly register allocation and block order.
  decomp-permuter on this 2-core container got nowhere in 6-minute runs (best scores around
  400), so it is not worth running on these without more CPU.

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
