#ifndef GUARD_GAX_H
#define GUARD_GAX_H
/*
 * Shin'en GAX Sound Engine 3.01 (Sep 13 2002) as linked into Jazz Jackrabbit: the public API, what
 * the game calls (GAX v3 manual). The engine's internals are in gax_internal.h (src/gax/ only).
 *
 * Layouts follow the shinen-gax-decomp project (3.05A) and the official GAX v3 manual; every
 * offset marked "3.01" has been confirmed by a matching function in this ROM. See docs/gax.md.
 *
 * Functions are defined as sub_XXXXXXXX (the split tooling keys on that), and the
 * macros below give them their GAX names.
 */
#include "global.h"

typedef u8 b8;

/* ---- public API types (GAX v3 manual) --------------------------------------------------- */

#define GAX_DEFAULT         (~0)
#define GAX_REVERB          1
#define GAX_FX_REVERB       2
#define GAX_LOWPASS_FILTER  4
#define GAX_STOP_ON_SONGEND 8
#define GAX_NO_JINGLES      16
#define GAX_HALFRATE_FX     32
#define GAX_SPEECH          64

typedef struct GAXReverb {
    u32 delay;
    u32 decay;
} GAXReverb;

typedef struct GAXChannelInfo {
    u8 instrument;
    u8 pad[3];               /* 3.01: 4 bytes per channel (GAX_play clears 64 bytes) */
} GAXChannelInfo;

/* 3.01: no speed_adjust (added in 3.05), so everything after volume is 4 bytes earlier. */
typedef struct GAXParams {
    u8 *workmem;            /* 0x00 */
    u32 workmem_size;       /* 0x04 */
    u16 mixing_rate;        /* 0x08 */
    u16 fx_mixing_rate;     /* 0x0A */
    u16 filter_depth;       /* 0x0C */
    u16 flags;              /* 0x0E */
    u16 fx_channels;        /* 0x10 */
    u16 volume;             /* 0x12 */
    GAXReverb reverb[3];    /* 0x14 */
    const void *fx_data;    /* 0x2C (3.01) */
    const void *song_data;  /* 0x30 (3.01) */
    GAXChannelInfo *channel_info; /* 0x34 */
    b8 debug;               /* 0x38 */
    b8 is_songend;          /* 0x39 */
    b8 is_jingleend;        /* 0x3A */
    u8 mixermode;           /* 0x3B */
} GAXParams;                /* 0x3C */

typedef struct GAXFXParams {
    u16 fxid;               /* 0x00 */
    u16 fxch;               /* 0x02 */
    s32 prio;               /* 0x04 */
    u32 note;               /* 0x08 */
    u16 volume;             /* 0x0C */
} GAXFXParams;

/* ---- public functions (live copy, see names.txt) ----------------------------------------- */

#define GAX2_calc_mem        sub_083175A8
#define GAX2_new             sub_083177CC
#define GAX2_init            sub_08317CD8
#define GAX2_jingle          sub_083185D0
#define GAX_irq              sub_083186FC
#define GAX_play             sub_0831881C
#define GAX_fx               sub_083189D0
#define GAX_fx_ex            sub_08318AB0
#define GAX2_fx              sub_08318BB4
#define GAX_fx_status        sub_08318C5C
#define GAX_set_music_volume sub_08318CA4
#define GAX2_new_fx          sub_08318FB4
#define GAX_get_free_mem     sub_08318FE8
#define GAX_pause            sub_08318FF8
#define GAX_resume           sub_08319078
#define GAX_pause_music      sub_083190E0
#define GAX_resume_music     sub_083190F0
#define GAX_fx_note          sub_08319100
#define GAX_stop_fx          sub_08319148
#define GAX_set_fx_volume    sub_083191AC
#define GAX_stop             sub_08319214

void GAX2_calc_mem(GAXParams *params);
void GAX2_new(GAXParams *params);
b8 GAX2_init(GAXParams *params);
void GAX2_new_fx(GAXFXParams *fxparams);
b8 GAX2_jingle(const void *jingle);
void GAX_irq(void);
void GAX_play(void);
u32 GAX_fx(u32 fxid);
u32 GAX_fx_ex(u32 fxid, s32 fxch, s32 prio, s32 note);
u32 GAX2_fx(const GAXFXParams *fxparams);
u32 GAX_fx_status(s32 fxch);
void GAX_fx_note(s32 fxch, s32 note);
void GAX_stop_fx(s32 fxch);
void GAX_set_music_volume(s32 ch, u32 vol);
void GAX_set_fx_volume(s32 fxch, u32 vol);
u32 GAX_get_free_mem(void);
void GAX_pause(void);
void GAX_resume(void);
void GAX_pause_music(void);
void GAX_resume_music(void);
void GAX_stop(void);

#endif
