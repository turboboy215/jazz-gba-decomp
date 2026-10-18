# ROM map: Jazz Jackrabbit (USA)

| | |
|---|---|
| File | `Jazz Jackrabbit (U).gba`, 4 MiB (4,194,304 bytes) |
| SHA1 | `9fb012b46350615cfa4dd0fc7d11fc21903d39e0` |
| Header | title `JAZZJACKRABB`, code `AJJE`, maker `0A` (Jaleco) |
| Developer | Game Titan (2002); audio by Shin'en (GAX Sound Engine 3.01) |
| Toolchain | GNU ld + **old_agbcc**-compatible GCC 2.9x Thumb code; Jeff Frohwein-style `crt0.S` (devkitadv era) |

All addresses are GBA bus addresses (ROM = 0x08000000 + file offset).

## Layout (link order)

| Range | Size | What | Build file(s) |
|---|---|---|---|
| `08000000-080000C0` | 0xC0 | Cartridge header (Nintendo logo is `.incbin`'d, never stored in the repo) | `asm/header.s` |
| `080000C0-080002E0` | 0x220 | `crt0`: ARM entry, mode/stack setup, section copies, `__MultipleInterrupts` IRQ dispatcher (ARM) | `asm/crt0.s` |
| `080002E0-08005710` | ~21 KB | **Region A, live**: low-level engine library: sprite/animation accessors, OAM/BG/palette helpers, interrupt table helpers, sound IRQ glue. Called ~3,000 times from region B | `asm/code_08000000.s` |
| `08005710-08012974` | ~53 KB | **Orphaned block (dead code)**: a self-contained, internally linked code image from an *older build* of the game plus its own copy of GAX 3.01 and libgcc/newlib. Nothing live reaches it | `asm/orphan_*.s` |
| `08012974-082E8470` | ~2.8 MB | Graphics, tiles, maps, level data, sound banks, (orphan's GAX tables at the start) | `data/data_08012974.s` |
| `082E8470-0831AEB4` | ~203 KB | **Region B, live**: game code, live GAX 3.01, BIOS SWI stubs, newlib, libgcc, ld interworking veneers | `asm/code_082E0000.s` … `code_08310000.s` |
| `0831AEB4-083E085C` | ~790 KB | `.rodata`: tables, pointer tables, **all game text** (see `docs/strings.tsv`), GAX copyright/assert strings | `asm/rodata.s` |
| `083E085C-083E1140` | 0x8E4 | `.iwram` load image → `03000000-030008E4` (fast code: VBlank handler, routines reached through veneers) | `asm/iwram_image.s` |
| `083E1140-083E1348` | 0x208 | `.data` load image → `03005858-03005A60` (includes `IntrTable` at `0300585C`) | `asm/data_image.s` |
| `083E1348-083E9978` | 0x8630 | `.ewram` load image → `02000000-02008630` | `asm/ewram_image.s` |
| `083E9978-08400000` | | `0xFF` padding | `asm/rom_padding.s` |

Code totals: 1,539 functions found (Ghidra + fixes). **228,980 bytes of live code** count toward progress;
the orphaned block is excluded.

## crt0 (0x080000C0)

Frohwein `crt0.S` with multiple-interrupt support:

1. IRQ mode SP = `03007FA0`, System mode SP = `03007C00`; `03007FFC` (BIOS IRQ vector) = `080001B0`.
2. Clear EWRAM `02000000` (0x40000) and IWRAM `03000000` (0x7BF0).
3. Copy `.data` `083E1140 → 03005858..03005A60`, `.iwram` `083E085C → 03000000..030008E4`,
   `.ewram` `083E1348 → 02000000..02008630` (IWRAM/EWRAM overlay sections are empty).
4. `bx` to `AgbMain` (`08312BF8`, Thumb) with LR = `080000C8` (restart).

`080001B0` is the ARM IRQ dispatcher: it walks `IE & IF` bit by bit and calls
`IntrTable[n]` (`0300585C`) in System mode.

## Interrupts

`IntrTable` is initialised from `.data`: entry 0 (VBlank) = `DefaultVBlankHandler` (`08001FF0`),
entries 1-12 = `DummyIntrHandler` (`08001FEC`). `AgbMain` installs the real VBlank handler, at
IWRAM `0300087C` (Thumb), with `SetIntrHandler(0, 0x0300087D)`. GAX's `GAX_irq`/`GAX_play` are
called from region A (`080033CC`) and through long pointers in the IWRAM image (`083E10FC`, `083E110C`).

## Veneers (0x0831AE38-0x0831AEB4)

Eight ld-generated Thumb→IWRAM long-call veneers (`push {r0}; ldr r0,=target; mov ip,r0; pop {r0}; bx ip`):

| Veneer | Target (IWRAM) |
|---|---|
| 0831AE38 | 0300031D |
| 0831AE48 | 030006C1 |
| 0831AE58 | 03000779 |
| 0831AE68 | 030000BD |
| 0831AE78 | 03000001 |
| 0831AE88 | 030001ED |
| 0831AE98 | 03000059 |
| 0831AEA8 | 030004A1 |

## Library code (region B tail)

| Address | Symbol |
|---|---|
| 0831A528-0831A550 | BIOS SWI stubs: CpuFastSet, CpuSet, Div, IntrWait, LZ77UnCompWram, MultiBoot, Sqrt, VBlankIntrWait |
| 0831A554 | soft reset (RegisterRamReset + SoftReset) |
| 0831A570 / 5D4 / 62C / 68C / 6D8 | newlib memcpy, memset, strcmp, strlen, strncpy |
| 0831A754 / 780 / 7C8 | libgcc `__do_global_dtors`, `__do_global_ctors`, `__main` (called first in AgbMain) |
| 0831A7E4 | `_call_via_r0` … `_call_via_lr` (4 bytes apart) |
| 0831A820 / 8B4 / 8B8 / 92C / AD00 / AD78 | `__divsi3`, `__div0`, `__muldi3`, 64-bit division, `__udivsi3`, `__umodsi3` |

libgcc is built without interworking (`mov pc, lr` returns). These names are in `lib/aliases.s`
territory: the C compiler emits them by name, and `tools/check_func.py` resolves them.

## The orphaned block (0x08005710-0x08012974)

This is what makes tools such as gaxtapper find an "invalid" GAX copy
([gaxtapper issue #17](https://github.com/loveemu/gaxtapper/issues/17)).

Evidence that it is a stale image from an older link, not live code:

* Reachability: walking `bl` edges and code pointers from `AgbMain`, crt0 and the
  interrupt table reaches **none** of its ~330 functions. Three apparent hits are a coincidental data word
  (`0800AD00`) and its callee.
* It is internally consistent. Its `bl`s land on its own function starts, and it has its own GAX 3.01
  (gax.o `0800F23C`, sync.o `08010FB0`, tracker.o `080112A8`, output_asm `08011E20`,
  tracker_asm `08012108`), its own newlib/libgcc (`_call_via_r0` at `08012324`, `__udivsi3` at
  `080127CC`), and its own IWRAM veneers.
* Its veneers target a **different IWRAM layout** (`03000369`, `03000421`, `030000BD`, `03000001`,
  `030001ED`, `03000059`, `0300031D`) and expects different EWRAM variable addresses (e.g. `0200D5D4`,
  `02011EEC`). That fits gaxtapper's observation that its GAX "switch table" jumps into EWRAM: it was
  linked against memory contents that this build doesn't have.
* GAX function bodies are 82–100% byte-identical to the live copy; the remaining differences are
  relocations. Offset live − orphan = `0x003082DC`. The live names, `orphan_`-prefixed, are applied in `names.txt`.

The likely cause is that the developers' ROM build appended or kept a previous binary blob (for
example a leftover object or a padded image section). It is emitted as labelled asm so the ROM still
matches, but it is **excluded from progress** and from decompilation (`tools/claim.py` skips it
unless `ORPHAN=1`). It has no value for the PC port.

## Text

The game stores its text as plain NUL-terminated ASCII in `.rodata`. This covers dialogue (`\n` line
breaks), menus, multiplayer strings with `printf` formats (`"Player%d got roasted"`), debug strings
(`"Testing Dialog Box."`), and the credits as fixed 30-column lines around `083D86A0`.
`tools/extract_strings.py` regenerates `docs/strings.tsv` (837 strings).

## Multiplayer ("Tournament")

The main menu's **TOURNAMENT** option is link-cable multiplayer for 2–4 players:

* Modes **Battle** (Max Frags 5–25) and **Capture The Flag**. Strings include "Player%d captured your flag",
  "Fragged by Player %d", "Player1: Frags %d Deaths %d", "Player%d got roasted", "LINK ERROR",
  "Waiting for players...", "PLEASE WAIT WHILE PLAYER 1…".
* Maps include "SINGLE PAK 3/4 MULTIPLAYER MAP", "CASTLE 3 MULTIPLAYER MAP" and "WASTELAND 1/2". *Single Pak*
  maps go with the BIOS `MultiBoot` stub (`0831A540`): player 1 sends a program to cartridge-less units.
  The multiboot image's location in the ROM is still to be found (look for the MultiBoot parameter block
  passed to `0831A540`).
* For the PC port this means: the SIO (serial) registers must be emulated, or the
  multiplayer layer replaced with local split-screen or netplay (`docs/PC_PORT.md`).

## Level table and graphics

See `docs/songs.md`: 25 level records at `083D39D8`, 0x4C bytes each (song, tileset, palette,
level data). Tilesets are raw 8bpp: `u16 count, u16 bpp=8`, then tiles. BG palettes are 256 colours.
