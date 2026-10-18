# Native PC port plan

The goal is a native build of Jazz Jackrabbit (GBA) for Windows, Linux and macOS, made from the
decompiled C rather than through emulation.

## Approach: "decomp + platform layer"

A matching decompilation gives C that compiles for the GBA. That same C is compiled a second time
with a modern compiler (clang/gcc/MSVC) for the host and linked against a **platform layer**
(`port/`) that stands in for GBA hardware. This is the approach used by the
sm64/pokeemerald/zelda3 ports: the game code stays the source of truth, and `#ifdef PLATFORM_PC` limits
are kept small and local.

```
src/*.c (game, decompiled)  ──►  agbcc  ──► jazz.gba   (make compare)
            │
            └──────────────►  clang  ──► jazz_pc     (+ port/*.c, SDL2)
```

## What the platform layer must provide

| GBA feature | Used by Jazz for | PC replacement |
|---|---|---|
| Memory-mapped I/O (`0x04000000`) | display control, BG scroll, DMA, timers, keypad, sound | `#define REG_x` → fields of a `struct GbaIo` in host RAM, plus hooks when written (DMA trigger, IF acknowledge) |
| VRAM / OAM / palette | tiles, tilemaps, sprites | host arrays, plus a **software PPU** (modes 0–2, affine BGs, OBJ, windows, blending) that renders 240×160 each frame. Start from a proven reference such as mGBA's renderer or the PPU in the zelda3/sm64-port style ports |
| DMA0–3 | memcpy, HBlank effects, sound FIFO | immediate copies; HBlank DMA is applied per scanline inside the PPU |
| Interrupts (VBlank, HBlank, timers) | `IntrTable` at `0300585C`, GAX timing | the main loop calls the VBlank handler once per frame; HBlank and timer callbacks come from the PPU or audio thread |
| BIOS SWIs (`0831A528…`) | CpuSet/CpuFastSet, LZ77, Div, Sqrt, VBlankIntrWait | plain C implementations (LZ77 decompress, etc.) |
| IWRAM code (`.iwram`, VBlank handler, veneer targets) | speed-critical routines | the decompiled C, called directly |
| EWRAM / IWRAM variables at fixed addresses | globals (`gUnk_0300xxxx`) | real C globals after Phase 2/3 naming. Raw-address accesses must be gone before the port works |
| ROM data (`.incbin` regions) | graphics, levels, text, music | loaded from the user's own ROM at startup (no assets in the repo). Code that uses pointers into ROM gets a `ROM_PTR(x)` translation, or the data is extracted to files by a tool |
| GAX sound engine | music + SFX | see `docs/gax.md` "Plan": host-compiled GAX C plus a C version of the ARM mixer, output through SDL audio at the song's mixing rate |
| Save (SRAM/EEPROM/flash) | progress | a file on disk |
| Link cable (multiplayer strings exist: "Waiting for players…") | multiplayer | stub at first; local split-screen or netplay later |

## Milestones

1. **Matching decomp at a high percentage**, with all globals and structs named: the port can't start while the
   code still says `*(u16 *)0x03001234`.
2. `port/` skeleton: SDL2 window, 240×160 framebuffer ×N scale, keypad mapping, frame pacing at 59.73 Hz.
3. Software PPU that passes title-screen and first-level visual checks against an emulator capture.
4. GAX on the host: play title music, then SFX.
5. Boot to the title screen, then play level 1, then full game.
6. Enhancements, all optional and behind flags: widescreen (more BG columns), higher internal frame rate,
   remappable controls.

## Rules for port work

* The GBA build must keep matching. Port changes go behind `#ifdef PLATFORM_PC` or in `port/`.
* Don't put assets in the repo. The port reads `baserom.gba` (SHA1-checked) at startup.
* Hardware access in game code goes through the existing register macros, so one header switch retargets it.

## Do this now to make the port easier later

* While naming, record **struct layouts** in headers (not as `u8 *` offsets). The port depends on it.
* Mark every function that touches hardware registers in its comment (`/* hw: BG0HOFS */`), so
  `tools/` can later list what the platform layer must cover.
* Keep pointer-sized fields typed as pointers. On 64-bit hosts any `u32` that holds a pointer breaks,
  so keep a list in `docs/PC_PORT.md` of structs with packed pointer fields.

---

# Other targets: PlayStation (PS1)

A PS1 build is a second consumer of the same decompiled C. It needs the same groundwork as the PC
port (named structs, no raw addresses, a platform layer), so **design `port/` as a platform API
(gfx / audio / input / storage / link) with one backend per target**: `port/sdl/` for PC and `port/psx/` for PS1.

| Area | GBA original | PS1 approach | Effort |
|---|---|---|---|
| CPU / compiler | ARM7TDMI, Thumb, old_agbcc | R3000A 33 MHz, PSY-Q `ccpsx` (GCC 2.x) or the open PSn00bSDK. Both CPUs are little-endian. **MIPS faults on unaligned loads**, so audit any `u8 *` → `u16/u32` casts the matching C needs (ARM rotates instead) | medium |
| Memory | 4 MB ROM, memory-mapped | 2 MB RAM, 1 MB VRAM, data on CD. The ROM can't stay resident: load per scene/level from CD (the level table at `083D39D8` gives natural load units). ROM pointers go through a `ROM_PTR()` relocation table built by an extractor tool | **high** |
| Background layers | text BGs, 8bpp (256-colour) tiles, 256-colour palettes, scroll registers | upload each tileset to VRAM as an 8-bit CLUT texture page, then draw visible map cells as `SPRT_8` / 16×16 textured sprites per frame (ordering table per layer). Palettes become CLUTs. 240×160 fits a 320×240 (or 256×240) screen centred, or shows more of the level | medium |
| Sprites (OAM) | up to 128 OBJ, 4/8bpp, flips | GPU textured quads; flips via UV/negative size | low–medium |
| Effects | windows, alpha blending, mosaic, HBlank scroll tricks | GPU semi-transparency modes cover the common blends; HBlank per-line effects need per-strip draws; find out what Jazz actually uses first | depends |
| Audio (GAX) | software mixer, ~21 kHz PCM through DMA FIFOs | **(a) bring-up:** run the decompiled GAX C mixer on the R3000 and stream PCM to an SPU voice (or the CD-XA/SPU streaming buffer). Simple and accurate, but CPU-heavy. **(b) final:** convert GAX instruments to **VAG (ADPCM)** in SPU RAM (512 KB) and write a small GAX sequencer that drives SPU voices: note on/off, pitch register for portamento/vibrato, volume envelope and ADSR for GAX volume envelopes, perf lists on the tick. Much cheaper at runtime; needs a converter tool (`tools/gax2psx.py`) built on `tools/gax_songs.py` | **high** |
| Input | 10 buttons | digital pad (D-pad, ×○□△, L1/R1, Start/Select) | low |
| Save | SRAM/EEPROM | memory card (one block) | low |
| Tournament (link cable) | SIO, 2–4 GBAs, Single Pak multiboot | split-screen (2 players, or 4 with a multitap) is the natural PS1 replacement; a serial-cable link is possible but niche | medium |

PS1 notes:

* **SDK legality:** the PSY-Q SDK can't be redistributed. Keep it out of the repo and point the build at a
  local install (`PSYQ_DIR`). Supporting PSn00bSDK as well gives other people a free toolchain.
* **Order:** finish the PC port first. It shakes out every hardware dependency with fast iteration and a
  debugger. PS1 then mostly means writing `port/psx/` and the asset/CD packer.
* The GAX → SPU converter is the most PS1-specific piece of work. Crash Bandicoot XS's PC port (GAX 2.01D,
  GPLv3) shows how a host-side GAX mixer can be structured; use it as reference only.
