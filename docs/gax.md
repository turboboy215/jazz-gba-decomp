# GAX Sound Engine in Jazz Jackrabbit

Jazz Jackrabbit links Shin'en's **GAX Sound Engine 3.01** as a prebuilt library (`libgax.a`).

* Version strings: `"GAX Sound Engine 3.01 (Sep 13 2002) \xa9 Shin'en Multimedia. Code: B.Wodok"` and
  `"GAX ENGINE V3.01 Sep 13 2002"`. The credits also say `AUDIO ENGINE: GAX v3.0`.
* There are **two copies** in the ROM. The **live** one is at `08317518-0831A528`, in region B. The
  second one is at `0800F23C-08012190`, inside the Single Pak multiboot client image that is sent to the
  other GBAs (it was first taken for dead code; see `rom_map.md`). That second copy is
  why gaxtapper/foobar2000 play silence
  ([gaxtapper#17](https://github.com/loveemu/gaxtapper/issues/17)): its workaround patches ROM
  0xF2CC (`orphan_GAX2_calc_mem`) so the scanner skips to the live copy. `tools/xref_rom.py baserom.gba`
  shows that the client's copy has the same code as the live one, apart from addresses.
* Reference material:
  * `shinen-gax-decomp`: WIP C decomp of **3.05A** (Aug 2004). Names follow it wherever a function's
    identity is established.
  * `shinen-gax-python`: format and replayer docs, `find_gax.py` signatures, song scanner.
  * **`GAX v3.chm`**: Shin'en's official GAX v3 manual, from the *SpongeBob SquarePants Movie* source
    (kept locally in the JazzGBARE folder, not in the repo). It has the API reference, `GAXParams`, and
    the version history below. It names the size estimator **`GAX2_calc_mem`** (gaxtapper calls it
    `GAX2_estimate`).
  * **[CrashBandicootXS-decomp](https://github.com/Almamu/CrashBandicootXS-decomp)**: a complete matching
    decomp with GAX **2.01D** (the generation before 3.x), plus a PC port with a C version of the ARM
    mixer (`platform/pc/src/gax_dsp.c`) and an mGBA GAX trace tool for checking audio. It is
    **GPLv3**: use it as reference, don't copy code into this repo. Its 2.x engine is structured
    differently (handler layouts), so it helps with idioms more than with code.

## Decompilation status (2026-11-15)

**40 of 43 functions are in C and byte-matching**; the build is `jazz.gba: OK`.

* **Compiler: `agbcc -fprologue-bugfix`** for every GAX file (splits.txt flavour `bugfix`, which now also
  switches `CC1` to `agbcc`). `old_agbcc` gets several GAX functions wrong (e.g. `GAX2_new_fx`), so the
  library was built separately from the game code, the same way Crash XS's GAX was.
* **Layout (2026-11-15): one file per original GAX object**, as in Shin'en's library and the
  shinen-gax-decomp project (`gax.c`, `sync.c`, `output.c`, `tracker.c`, `output_asm.s`,
  `tracker_asm.s`; the signature hits below confirm the same order in this ROM). A module that still has
  an asm near miss inside it is split into numbered parts around it; when the near miss matches, its
  parts merge (e.g. `gax_1.c` + `GAX2_calc_mem` + `gax_2.c`). Headers: `include/gax.h` is the public
  API the game calls; `include/gax_internal.h` (registers, song/player/channel structs, `GAX_RAM`,
  internal functions) is for `src/gax/` only.

| File | Range | Contents |
|---|---|---|
| `src/gax/gax_1.c` | 08317518-083175A8 | gax.c: `GAX_code2ram` |
| `asm/gax/GAX2_calc_mem.s` | 083175A8-083177CC | gax.c: `GAX2_calc_mem` (near miss) |
| `src/gax/gax_2.c` | 083177CC-08317CD8 | gax.c: `GAX2_new`, `GAX2_init_volboost`, `GAX2_init_song`, `GAX2_init_soundhw`, `GAX_open` |
| `asm/gax/GAX2_init.s` | 08317CD8-083185D0 | gax.c: `GAX2_init` (near miss) |
| `src/gax/gax_3.c` | 083185D0-0831928C | gax.c: `GAX2_jingle` ... `GAX_stop` (most of the public API, assert screen, `GAX_clear_mem`) |
| `src/gax/sync.c` | 0831928C-0831938C | sync.c: `GAXSync_open`, `GAXSync_render` |
| `src/gax/output.c` | 0831938C-08319584 | output.c: `GAXOutput_render`, `GAXOutput_open`, `GAXOutput_stream` |
| `src/gax/tracker_1.c` | 08319584-08319C60 | tracker.c: `GAXTracker_open/render/process_step/process_perflist/process_envelope/process_frame` |
| `asm/gax/GAXTracker_generate_audio.s` | 08319C60-08319F30 | tracker.c: `GAXTracker_generate_audio` (near miss) |
| `src/gax/tracker_2.c` | 08319F30-0831A0F4 | tracker.c: `GAXFx_open`, `GAXFx_render` |
| `asm/gax/output_asm.s` | 0831A0F4-0831A3E8 | 12 bytes of `0x00FF00FF` filler, then ARM: `GAXOutput_render_asm`, `_lowpass_asm`, `_reverb_asm` (copied to RAM) |
| `asm/gax/tracker_asm.s` | 0831A3E8-0831A528 | ARM: `GAX_umulhi`, `GAXTracker_asm`, `GAXTracker_pingpong_asm` (copied to RAM) |
| `src/gax/nonmatching/gax.c`, `tracker.c` | (not linked) | the 3 near misses as equivalent C, by module (`make nonmatching` compiles them) |

* **Still asm** (C written, not yet matching; register allocation / stack layout differences only):
  `GAX2_calc_mem` (083175A8), `GAX2_init` (08317CD8, 2,296 bytes),
  `GAXTracker_generate_audio` (08319C60). The decomp-permuter setup works
  (`OPT=-fprologue-bugfix python3 tools/permute.py ADDR file.c SECONDS`; since 2026-11-16
  `tools/permuter_compile.sh` leaves out the game-code flags for `-fprologue-bugfix`, as check_func does);
  see "Matching notes". Scores (aligned-diff ops, 2026-11-16): `GAX2_calc_mem` 21 (was 45),
  `GAXTracker_generate_audio` 86 (was 87, frame layout now right), `GAX2_init` 417.
* The ARM routines that `GAX2_init` copies to RAM stay asm (they are hand-written ARM in the original).

## Version history (from the official manual)

| Version | Date | Change relevant to Jazz (3.01) |
|---|---|---|
| 3.0 | 16 Jul 2002 | engine overhaul: "fast mixer" removed, `gax0_objects` → `gax0_package`; `GAX_HALFRATE_FX` disabled |
| **3.01**, 3.02, 3.02a/b | 2002 | speech-decompression fix, NULL-pointer writes removed, reverb fixes. **Jazz = 3.01 (13 Sep 2002)** |
| 3.03 | 27 Feb 2003 | `GAX_backup_fx` / `GAX_restore_fx` added. This explains why Jazz has neither |
| 3.03a | 5 Mar 2003 | reverb bugfix |
| 3.04 | 30 Jun 2003 | sample banks > 1 MB |
| 3.05 | 13 Aug 2003 | `GAXParams.speed_adjust` added. **Struct layout differs from 3.01** |

## GAXParams as used by Jazz (`AgbMain`, params at IWRAM `030046E0`)

3.01 has no `speed_adjust`, so everything after `volume` sits 4 bytes earlier than in 3.05 (confirmed
by `GAX2_init`, `GAX2_calc_mem` and the assert checks of `params->debug` at +0x38).

| Off | Field | Jazz value |
|---|---|---|
| 0x00 | `u8 *workmem` | `0300471C` (IWRAM) |
| 0x04 | `u32 workmem_size` | 0x1000 |
| 0x08 | `u16 mixing_rate` | 21025 |
| 0x0A | `u16 fx_mixing_rate` | default |
| 0x0C | `u16 filter_depth` | |
| 0x0E | `u16 flags` | |
| 0x10 | `u16 fx_channels` | |
| 0x12 | `u16 volume` | |
| 0x14 | `GAXReverb reverb[3]` | |
| 0x2C | `const void *fx_data` | `083D1C5C` (FX bank) |
| 0x30 | `const void *song_data` | `0835F2E4` ("spacelevel") |
| 0x34 | `GAXChannelInfo *channel_info` | 4 bytes per channel in 3.01 (`GAX_play` clears 64 bytes) |
| 0x38 | `b8 debug` | 0 (assert screen disabled) |
| 0x39 | `b8 is_songend`, 0x3A `is_jingleend`, 0x3B `mixermode` | outputs |

The full set of internal structures (`struct GAX_RAM`, `GAX_player`, `GAX_channel`, `GAX_FX_channel`,
`GAXSongData`, `GAX_instrument`, `GAX_volenv`, `GAX_perfstep`, `GAX_wave_param`) is in
`include/gax.h`, with offsets that matching functions confirmed.

## What 3.01 does differently from 3.05A (found while matching)

* **Copyright tamper check.** After setting up the timers, `GAX2_init` reads the copyright string through
  the `GAX_copyright` pointer (`083DFBB8`) and checks that it starts with `"GAX"`. If it doesn't, it
  doubles `timer_reload_dma1`, so a ROM with the credit removed plays its music at the wrong pitch.
* **Reverb channels.** `GAXSongData+0xA0` is the number of channels mixed *before* the reverb pass.
  `GAXOutput_render` renders channels `[0, n)`, runs the reverb routine on the mix buffer, then
  renders `[n, num_channels)`. With `GAX_FX_REVERB`, FX are mixed before the reverb too.
* **Song header.** `+0x20` holds one order-list pointer per channel (up to 32); `+0xA4` three reverb
  delays (ms, scaled by the mixing rate into samples × 2), `+0xB0` three decays, and `+0xBC/C0/C4` the
  buffer sizes that `GAX2_calc_mem` reads.
* **Instrument layout** (`GAX_instrument`): the vibrato bytes are at +8/+9/+10 (wait, depth, speed),
  the envelope pointer at +0x0C, perf list speed/length at +0x10/+0x11, perf list at +0x14, wave params
  at +0x18 (24 bytes each).
* **Modulation window.** Wave modulation sweeps a window of `mod_size` between `min` and `max`; a wave
  without modulation but with `min < max` is a plain loop, and `pingpong` picks the ping-pong
  resampler (`GAXTracker_pingpong_asm`).
* **Perf list** commands 5 (goto step) and 6 (repeat) share a counter in `GAX_channel+0x16`.
* **No speed adjust** in `GAXSync_render`: the speed timer is just `speed - 1`.
* **FX channels** reuse fields of `GAX_FX_channel`: `fxfreq` (+0x4B) is the note to trigger
  (1 = note off), `fxid` (+0x4C, low byte) the instrument in the FX bank, `fxnote` (+0x49) a pitch offset,
  `fxvol` (+0x48) the volume; `GAXFx_render` consumes them once and clears them.
* **Mixing pitch** per output: `GAX_ram->music_pitch`/`fx_pitch` (`+0x40/+0x44`) are
  `0x100000000 / mixrate`, computed once by `GAXTracker_open` / `GAXFx_open`.
* Not present in 3.01, compared with 3.05A: `GAX_backup_fx`, `GAX_restore_fx` and the speech decoder
  (its `GAX_SPEECH` branches are still there; `speech_unk` stays NULL in Jazz).

## Object layout of the live copy

Signature hits (from `shinen-gax-python/libs/gax_constants.py`): gax.o @ `08317518`, sync.o @
`0831928C`, tracker.o @ `08319584`, output_asm.o @ `0831A100`, tracker_asm.o @ `0831A3E8`.
The 3.05A signatures for **output.o and speech.o do not hit**. In 3.01 the output functions
(`GAXOutput_*`) sit between sync.o and tracker.o, and their code differs from 3.05A. Speech (GSM) decoding
is not linked, though its assert string is.

## Functions (live copy)

Confidence: **sure** means proven by an assert string or exact structure; **likely** means call-graph/order
evidence. **C** = byte-matching C in `src/gax/`; **nm** = C in `src/gax/nonmatching/`, ROM still from asm (`asm/gax/`).

| Address | Name | Conf. | Status | Evidence / notes |
|---|---|---|---|---|
| 08317518 | `GAX_code2ram` | sure | C | "GAX2_INIT"/"OUT OF MEMORY" + CpuSet; copies ARM blocks to RAM |
| 083175A8 | `GAX2_calc_mem` | sure | nm | manual name; **not called by Jazz** |
| 083177CC | `GAX2_new` | sure | C | "GAX2_NEW"/"PARAMS ARG IS NULL" |
| 08317874 | `GAX2_init_volboost` | sure | C | patches two ARM instructions of the tracker RAM copy per volume level |
| 08317970 | `GAX2_init_song` | sure | C | allocates player + channels, copies the reverb setup |
| 08317B40 | `GAX2_init_soundhw` | sure | C | SOUNDCNT_X/H, SOUNDBIAS, FIFO A/B, DMA1/2 |
| 08317C3C | `GAX_open` | sure | C | calls GAXOutput_open, GAXTracker_open, GAXSync_open |
| 08317CD8 | `GAX2_init` | sure | nm | "WHEN USING DIFFERENT FX_MIXING_RATE…"; 2,296 bytes |
| 083185D0 | `GAX2_jingle` | sure | C | "GAX2_JINGLE"/"GAX_NO_JINGLE FLAG IS SET" |
| 083186FC | `GAX_irq` | sure | C | `'GAX3'` signature check, "GAX_PLAY HAS NOT FINISHED BEFORE GAX_IRQ" |
| 0831881C | `GAX_play` | sure | C | channel-info clear, GAXSync_render, GAXOutput_stream |
| 083189D0 | `GAX_fx` | sure | C | "GAX_FX"/"YOU TRIED TO PLAY A SPEECH FX…"; **~125 call sites** in game code |
| 08318AB0 | `GAX_fx_ex` | sure | C | only callee of GAX2_fx |
| 08318BB4 | `GAX2_fx` | sure | C | "GAX2_FX"/"FXPARAMS ARG IS NULL"/"FXPARAMS->FXID IS GAX_DEFAULT" |
| 08318C5C | `GAX_fx_status` | sure | C | returns `GAX_ram->fx_indexes[fxch]` |
| 08318CA4 | `GAX_set_music_volume` | sure | C | `AgbMain` calls `(-1, vol)` |
| 08318D38 | `GAX_ASSERT_PRINT` | sure | C | font blitter for the assert screen |
| 08318DE8 | `GAX_ASSERT` | sure | C | "FUNCTION NAME:" screen; inline `swi 0x13` (HuffUnComp) and `swi 0` |
| 08318F50 | `GAX_clear_mem` | sure | C | CpuFastSet-based |
| 08318FB4 | `GAX2_new_fx` | sure | C | "GAX2_NEW_FX"/"FXPARAMS ARG IS NULL" |
| 08318FE8 | `GAX_get_free_mem` | sure | C | was hidden in the literal pool of GAX2_new_fx (now in `starts.txt`) |
| 08318FF8 | `GAX_pause` | sure | C | DMA stop with `mov r3,r3; nop×3` delays |
| 08319078 | `GAX_resume` | sure | C | FIFO clears + SOUNDCNT_H on |
| 083190E0 | `GAX_pause_music` | sure | C | |
| 083190F0 | `GAX_resume_music` | sure | C | |
| 08319100 | `GAX_fx_note` | sure | C | unused by Jazz |
| 08319148 | `GAX_stop_fx` | sure | C | `-1` = all channels |
| 083191AC | `GAX_set_fx_volume` | sure | C | `AgbMain` calls `(-1, vol)` |
| 08319214 | `GAX_stop` | sure | C | |
| 0831928C | `GAXSync_open` | sure | C | sync.o signature |
| 083192C0 | `GAXSync_render` | sure | C | step/pattern sequencer |
| 0831938C | `GAXOutput_render` | sure | C | channels before/after reverb, FX, reverb call |
| 08319518 | `GAXOutput_open` | sure | C | |
| 08319520 | `GAXOutput_stream` | sure | C | clear, render, then the ARM render routine |
| 08319584 | `GAXTracker_open` | sure | C | tracker.o signature |
| 083195E8 | `GAXTracker_render` | sure | C | step/perflist/frame/generate |
| 0831967C | `GAXTracker_process_step` | sure | C | pattern data decoder and effects 1/2/3/7/A/B/C/D/F, EDx delay |
| 083198B4 | `GAXTracker_process_perflist` | sure | C | perf list (instrument macro) commands 1/2/5/6/A/B/C/F |
| 08319A20 | `GAXTracker_process_envelope` | sure | C | volume envelope with sustain and loop |
| 08319AE4 | `GAXTracker_process_frame` | sure | C | envelope, vibrato, modulation, slides, tone portamento |
| 08319C60 | `GAXTracker_generate_audio` | sure | nm | pitch → frequency, volume, calls the ARM resampler |
| 08319F30 | `GAXFx_open` | sure | C | |
| 08319F88 | `GAXFx_render` | sure | C | FX trigger + same per-frame path as tracker channels |

**ARM routines** (hand-written, kept as asm). `GAX2_init` copies them into the work memory with
`GAX_code2ram`; `GAX2_calc_mem` sizes them from the same start/end pairs:

| Address | Name | RAM copy |
|---|---|---|
| 0831A100-0831A220 | `GAXOutput_render_asm` | `GAX_ram+0x68`, called by `GAXOutput_stream` |
| 0831A220-0831A2EC | `GAXOutput_lowpass_asm` | `+0x70`, only with `GAX_LOWPASS_FILTER` |
| 0831A2EC-0831A3E8 | `GAXOutput_reverb_asm` | `+0x6C`, only when the song has reverb |
| 0831A3E8-0831A3FC | `GAX_umulhi` | not copied; called in place (`umull`, returns the high word) |
| 0831A3FC-0831A470 | `GAXTracker_asm` | `+0x60`; `GAX2_init_volboost` patches it at +0x54/+0xD0 |
| 0831A470-0831A528 | `GAXTracker_pingpong_asm` | `+0x64` |

## How the game uses GAX

* `GAX2_new` + `GAX2_init`: 13 call sites (title, each level/scene loader, `AgbMain`).
* `GAX_irq` + `GAX_play`: driven from region A `080033CC` and from IWRAM code.
* `GAX_fx`: ~125 call sites (sound effects). Also used: `GAX_stop_fx`, `GAX_pause_music`/`GAX_resume_music`,
  `GAX_set_music_volume`/`GAX_set_fx_volume`, `GAX_fx_status`, `GAX_stop`.
* RAM state: `GAX_ram` pointer lives at IWRAM `03000B0C` (every GAX function loads it).

## Matching notes (things that made functions match)

* `GAX_alloc` (scratch allocator) and `GAX_memclr` (byte + CpuFastSet clear) are **static inline
  functions** in the original, not macros: the constant sizes stay in a register for the compare
  (`movs r0,#76; cmp r0,r1`), and the parameters are copied into locals first. Both are in `gax.h`.
  In `GAX2_init`, though, the three clears share one stack slot, so there it's a block macro with a
  function-scope zero variable.
* Table searches are `for (j...) if (...) { i = j; goto found; } i = 12; found:`.
* Calls through the RAM copies are plain function-pointer casts (`_call_via_r1`). `GAX_umulhi` is called
  through the constant address `0x0831A3E8`, with a third argument (`is_fx * 4`).
* `GAX_ASSERT` has inline asm for HuffUnComp that saves r0/r1 into r7/r8 (and clobbers r7 without saving
  it, as in Crash XS); `p` is a `register ... asm("r0")` variable.
* `irq_state` is `volatile` (GAX_irq re-reads it).
* `GAXSync_render` (matched 2026-11-12) needs most of the body to go through a *second pointer* to
  the player (`p = player` after the first two loads): CSE then treats the early and late reads
  of `speed_buf` as different, which is what the ROM shows. The last 6 instructions came from the
  step block: one `speed_timer = t - 1` store (two stores put the u8 store's zero constant before the
  `subs`), then `step` read into an `int` through `(s16)` *before* `speed = t` (a plain `p->step >= n`
  or an `s16` temp lets the copy float above the `ldrsh`).
* `GAXFx_render` (matched 2026-11-15) needed three things. (1) The ROM re-reads `fxfreq` after the
  `unknown_delay` check: CSE carries the condition's value across that join unless the body reads it
  into its own `u8 freq` (and tests `freq`). (2) `GAX_ram` and `fx_data` are loaded *before* the
  `if (instr)` test, into locals (`ram`, `data`; `instr` is a `u32`). (3) The note block
  (`freq == 1` / `freq > 1`) sits in a `do { } while (0)`. Without it, global-alloc's priorities for
  the `&fxfreq` (7 refs / 120 insns) and `&fxid` (4 / 66) address pseudos nearly tie and `&fxid` wins
  r7; the loop doubles the weight of the refs inside it. **General trick: when two pseudos land in
  swapped registers, compare their `refs`/`live_length` in the `-dg` dump (`tools/prio.sh`), and
  try a `do { } while (0)` around the code that should weigh more.** A `const` pointer for `ch`
  instead of the `#define ch (&fx->fxch)` macro breaks the allocation.
* **GCSE's PRE hoists anything anticipatable into a loop preheader** (2026-11-16). This agbcc's LCM is
  node-based (`lcm.c`, Muchnick) and computes delayedness as a least fixpoint, so delay never passes a
  loop header: an expression that every path computes later (a `params->` load, `size + 0x8C`) gets
  inserted at the end of the block in front of the *first* loop on the way, with a copy into a new
  "reaching" pseudo. `-dG` shows it as `PRE/HOIST: end of bb N ... copying expression E`. The ROM has the
  `params->fx_mixing_rate/fx_channels/fx_data/flags` loads hoisted that way in `GAX2_calc_mem`, but not
  `size + 0x8C`. To keep an expression in place, one of its operands must be set somewhere between the
  loop and the use (an empty `asm("" : "+r"(x))` works and emits nothing). Same mechanism explains the
  loads hoisted above `GAXTracker_generate_audio`'s shift loop.
* PRE also explains *several registers holding one constant*: the first computing insn keeps its own
  pseudo and gets a copy into the reaching reg after it; later occurrences become copies of the reaching
  reg. In `GAX2_calc_mem` the ROM has `GAX_table` in r5 (found1), r9 (reaching) and r3 (loop 2), which
  needs `table = GAX_table` before the first search and a mix of `table` / `GAX_table` uses
  (`src/gax/nonmatching/gax.c`).
* `GAXTracker_generate_audio`: `freq = (s32)GAX_freqtable[pitch] >> shift` (asrs); `step` lives in an
  expand-time stack slot at sp+0 *below* `args` (sp+4), which a `volatile s32 step` declared first
  reproduces (frame 44 bytes like the ROM); `args.src` is written and read through `args`, the other
  fields through `a`. Left: which values spill (the ROM spills `is_fx * 4` to sp+40 and keeps `is_fx` in
  sl) and the two pingpong-branch stores of `wave_position` that our build cross-jumps into one.
* `GAX2_fx`'s defaults need the reference decomp's temporaries; `GAX2_init_volboost` needs chained
  assignments with `asm_base - (start - label)` offsets.

## Plan for the GAX part of the decomp

1. Match the last 4 functions (permuter, or more source-shape guessing; the `src/gax/nonmatching/`
   versions are the starting point). As each matches, merge its module's numbered parts into one file
   (`gax_1.c` + `gax_2.c` + `gax_3.c` -> `gax.c`; `tracker_1.c` + `tracker_2.c` -> `tracker.c`): one
   splits.txt line, `tools/split.py`, `make compare`.
2. Move the GAX rodata (strings, `GAX_table`, `GAX_freqtable`, `GAX_vibtable`, font) out of
   `asm/rodata.s` into C. The names are already in `symbols.txt`.
3. Port matched 3.01 functions back to the 3.05A decomp project as documentation of the older revision.
4. For the PC port, GAX is replaced: either (a) compile the decompiled GAX C for the host plus a C
   rewrite of the six ARM routines, or (b) feed the song/FX data to a host replayer such as
   `shinen-gax-python`'s `gax_replayer.py` logic ported to C. (a) is now realistic: all 43 functions
   exist in C, and only the ARM routines (about 1 KB) need rewriting.
