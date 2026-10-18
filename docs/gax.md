# GAX Sound Engine in Jazz Jackrabbit

Jazz Jackrabbit links Shin'en's **GAX Sound Engine 3.01** as a prebuilt library (`libgax.a`).

* Version strings: `"GAX Sound Engine 3.01 (Sep 13 2002) \xa9 Shin'en Multimedia. Code: B.Wodok"` and
  `"GAX ENGINE V3.01 Sep 13 2002"`. The credits also say `AUDIO ENGINE: GAX v3.0`.
* There are **two copies** in the ROM. The **live** one is at `08317518-0831A528`, in region B. The
  **orphaned** one is at `0800F23C-08012190`, part of the dead block; see `rom_map.md`. That second copy is
  why gaxtapper/foobar2000 play silence
  ([gaxtapper#17](https://github.com/loveemu/gaxtapper/issues/17)): its workaround patches ROM
  0xF2CC (`orphan_GAX2_estimate`) so the scanner skips to the live copy.
* Reference material:
  * `shinen-gax-decomp`: WIP C decomp of **3.05A** (Aug 2004). Names follow it wherever a function's
    identity is established.
  * `shinen-gax-python`: format and replayer docs, `find_gax.py` signatures, song scanner.
  * **`GAX v3.chm`**: Shin'en's official GAX v3 manual, from the *SpongeBob SquarePants Movie* source
    (kept locally in the JazzGBARE folder, not in the repo). It has the API reference, `GAXParams`, and
    the version history below.
  * **[CrashBandicootXS-decomp](https://github.com/Almamu/CrashBandicootXS-decomp)**: a complete matching
    decomp with GAX **2.01D** (the generation before 3.x), plus a PC port with a C version of the ARM
    mixer (`platform/pc/src/gax_dsp.c`) and an mGBA GAX trace tool for checking audio. It is
    **GPLv3**: use it as reference, don't copy code into this repo.

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

| Off | Field | Jazz value |
|---|---|---|
| 0x00 | `u8 *workmem` | `0300471C` (IWRAM) |
| 0x04 | `u32 workmem_size` | 0x1000 |
| 0x08 | `u16 mixing_rate` | 21025 |
| 0x0A–0x13 | `fx_mixing_rate, filter_depth, flags, fx_channels, volume` (3.05 order) | left at `GAX2_new` defaults |
| 0x14–0x2B | `reverb[3]` (3.01 has no `speed_adjust`, so 3 × 8 bytes, *inferred*) | |
| 0x2C | `const void *fx_data` | `083D1C5C` (FX bank) |
| 0x30 | `const void *song_data` | `0835F2E4` ("spacelevel") |
| 0x34 | `GAXChannelInfo *channel_info` | |
| 0x38 | `b8 debug` | 0 (assert screen disabled) |

## Object layout of the live copy

Signature hits (from `shinen-gax-python/libs/gax_constants.py`): gax.o @ `08317518`, sync.o @
`0831928C`, tracker.o @ `08319584`, output_asm.o @ `0831A100`, tracker_asm.o @ `0831A3E8`.
The 3.05A signatures for **output.o and speech.o do not hit**. In 3.01 the output functions
(`GAXOutput_*`) sit between sync.o and tracker.o, and their code differs from 3.05A. Speech (GSM) decoding
is not linked, though its assert string is.

## Functions (live copy)

Confidence: **sure** means proven by an assert string or exact structure; **likely** means call-graph/order evidence.

| Address | Name | Conf. | Evidence / notes |
|---|---|---|---|
| 08317518 | `GAX_code2ram` | sure | "GAX2_INIT"/"OUT OF MEMORY" + CpuSet; copies ARM blocks to RAM |
| 083175A8 | `GAX2_estimate` | likely | gaxtapper's name; **not called by Jazz**; uses the ARM block at 0831A470 |
| 083177CC | `GAX2_new` | sure | "GAX2_NEW"/"PARAMS ARG IS NULL" |
| 08317874 | `GAX2_init_volboost` | likely | called by init_song and by GAX_play's song-end path |
| 08317970 | `GAX2_init_song` | likely | two OOM asserts, as in 3.05A |
| 08317B40 | `GAX2_init_soundhw` | sure | SOUNDCNT_X/H, SOUNDBIAS, FIFO A/B, DMA1/2 |
| 08317C3C | `GAX_open` | sure | calls GAXSync_open, GAXOutput_open, GAXTracker_open |
| 08317CD8 | `GAX2_init` | sure | "WHEN USING DIFFERENT FX_MIXING_RATE…"; 2,296 bytes incl. tail fragments 08318542/083185BC |
| 083185D0 | `GAX2_jingle` | sure | "GAX2_JINGLE"/"GAX_NO_JINGLE FLAG IS SET" |
| 083186FC | `GAX_irq` | sure | `'GAX3'` signature check, "GAX_PLAY HAS NOT FINISHED BEFORE GAX_IRQ" |
| 0831881C | `GAX_play` | sure | CpuFastSet channel-info clear, GAXSync_render, GAXOutput_stream |
| 083189D0 | `GAX_fx` | sure | "GAX_FX"/"YOU TRIED TO PLAY A SPEECH FX…"; **~125 call sites** in game code |
| 08318AB0 | `GAX_fx_ex` | likely | only callee of GAX2_fx |
| 08318BB4 | `GAX2_fx` | sure | "GAX2_FX"/"FXPARAMS ARG IS NULL"/"FXPARAMS->FXID IS GAX_DEFAULT" |
| 08318C5C | `GAX_fx_status` | likely | returns per-channel byte at +0x88 |
| 08318CA4 | `GAX_set_music_volume` | likely | `AgbMain` calls `(-1, vol)` |
| 08318D38 | `GAX_ASSERT_PRINT` | likely | font blitter for the assert screen |
| 08318DE8 | `GAX_ASSERT` | sure | "FUNCTION NAME:" screen; sets DISPCNT/BG regs |
| 08318F50 | `GAX_clear_mem` | likely | CpuFastSet-based |
| 08318FB4 | `GAX2_new_fx` | sure | "GAX2_NEW_FX"/"FXPARAMS ARG IS NULL" |
| 08318FF8 | `GAX_pause` | likely | SOUNDCNT_H off, DMA stop with `mov r3,r3; nop×3` delays (exactly 3.05A) |
| 08319078 | `GAX_resume` | likely | FIFO clears + SOUNDCNT_H on (Ghidra missed it; in `starts.txt`) |
| 083190E0 | `GAX_pause_music` | likely | |
| 083190F0 | `GAX_resume_music` | likely | |
| 08319100 | `GAX_fx_note` | likely | unused by Jazz |
| 08319148 | `GAX_stop_fx` | likely | `-1` = all channels |
| 083191AC | `GAX_set_fx_volume` | likely | `AgbMain` calls `(-1, vol)` |
| 08319214 | `GAX_stop` | sure | same structure as 3.05A `GAX_stop` |
| 0831928C | `GAXSync_open` | sure | sync.o signature |
| 083192C0 | `GAXSync_render` | likely | |
| 0831938C | `GAXOutput_render` | likely | |
| 08319518 | `GAXOutput_open` | likely | 8 bytes |
| 08319520 | `GAXOutput_stream` | likely | calls clear_mem + render, then the RAM mixer through `_call_via_r1` |
| 08319584 | `GAXTracker_open` | sure | tracker.o signature |
| 083195E8 | `GAXTracker_render` | likely | calls step/perflist/frame/generate |
| 0831967C | `GAXTracker_process_step` | likely | |
| 083198B4 | `GAXTracker_process_perflist` | likely | |
| 08319A20 | `GAXTracker_process_envelope` | likely | only called by process_frame |
| 08319AE4 | `GAXTracker_process_frame` | likely | |
| 08319C60 | `GAXTracker_generate_audio` | likely | calls the RAM mixer |
| 08319F30 | `GAXFx_open` | likely | |
| 08319F88 | `GAXFx_render` | likely | |

**ARM blocks** that `GAX_code2ram` copies into RAM are referenced as start/end pairs from
`GAX2_init` and `GAX2_estimate`: `0831A100`, `0831A220`, `0831A2EC` (output_asm.o: render, reverb and
lowpass, order still to be confirmed), `0831A3E8` (tracker_asm), `0831A3FC` (pingpong), and an
extra block `0831A470-0831A528`.

Not present in 3.01, compared with 3.05A: `GAX_backup_fx`, `GAX_restore_fx` (no "GAX_RESTORE_FX" string)
and the speech decoder.

## How the game uses GAX

* `GAX2_new` + `GAX2_init`: 13 call sites (title, each level/scene loader, `AgbMain`).
* `GAX_irq` + `GAX_play`: driven from region A `080033CC` and from IWRAM code.
* `GAX_fx`: ~125 call sites (sound effects). Also used: `GAX_stop_fx`, `GAX_pause_music`/`GAX_resume_music`,
  `GAX_set_music_volume`/`GAX_set_fx_volume`, `GAX_fx_status`, `GAX_stop`.
* RAM state: `GAX_ram` pointer lives at IWRAM `03000B0C` (every GAX function loads it).

## Plan for the GAX part of the decomp

1. Compiler: `GAX_resume` matches with `old_agbcc` **or** `agbcc -fprologue-bugfix` (not plain
   `agbcc`). The Crash XS project reports the latter for GAX 2.01D and 3.05A. The game code
   (`0800068C`) matches **only** with `old_agbcc`, so `old_agbcc` stays the default. Switch a GAX file
   to `agbcc -fprologue-bugfix` (splits.txt flavour `bugfix`) only if a GAX function turns up that needs it.
   Done: `GAX_pause`, `GAX_resume`, `GAX_pause_music`, `GAX_resume_music`, `GAX_stop` are in `src/`.
2. Keep the GAX ARM blocks (`output_asm`, `tracker_asm`) as asm. They are hand-written ARM in the
   original library too.
3. Port matched 3.01 functions back to the 3.05A decomp project as documentation of the older revision.
4. For the PC port, GAX is replaced: either (a) compile the decompiled GAX C for the host plus a C
   rewrite of the ARM mixer, or (b) feed the song/FX data to a host replayer such as
   `shinen-gax-python`'s `gax_replayer.py` logic ported to C. (a) is accurate by construction; (b) is
   faster to get running.
