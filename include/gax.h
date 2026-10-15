#ifndef GUARD_GAX_H
#define GUARD_GAX_H
/*
 * Shin'en GAX Sound Engine 3.01 (Sep 13 2002) as linked into Jazz Jackrabbit.
 * Layouts are the subset verified by matching functions; field names follow the
 * shinen-gax-decomp project (3.05A), see docs/gax.md.
 */
#include "global.h"

#define REG_SOUNDCNT_H (*(vu16 *)0x04000082)
#define REG_SOUNDCNT_X (*(vu16 *)0x04000084)
#define REG_FIFO_A     (*(vu16 *)0x040000A0)
#define REG_FIFO_B     (*(vu16 *)0x040000A4)
#define REG_DMA1CNT_H  (*(vu16 *)0x040000C6)
#define REG_DMA2CNT_H  (*(vu16 *)0x040000D2)
#define REG_TM0CNT     (*(vu32 *)0x04000100)
#define REG_TM1CNT     (*(vu32 *)0x04000104)

#define SOUND_A_RIGHT_OUTPUT 0x0100
#define SOUND_A_LEFT_OUTPUT  0x0200
#define SOUND_B_RIGHT_OUTPUT 0x1000
#define SOUND_B_LEFT_OUTPUT  0x2000

#define DMA_DEST_FIXED 0x0040
#define DMA_REPEAT     0x0200
#define DMA_32BIT      0x0400
#define DMA_ENABLE     0x8000

enum { GAX_PLAYING = 0, GAX_RESUMED = 0, GAX_PAUSED = 2 };

typedef struct GAX_player {
    u8 unk00[0x12];
    u8 is_playing;           /* 0x12 */
} GAX_player;

typedef struct GAX_playback_buffer GAX_playback_buffer;

struct GAX_RAM {
    u32 signature;           /* 0x00 'GAX3' */
    void *params;            /* 0x04 */
    void *fx_data;           /* 0x08 */
    void *fx_channels;       /* 0x0C */
    u32 num_fx_channels;     /* 0x10 */
    u32 *speech_unk;         /* 0x14 */
    GAX_player *replayer[2]; /* 0x18 */
    u32 mix_buffer_id;       /* 0x20 */
    GAX_playback_buffer *buf_header_dma1; /* 0x24 */
    GAX_playback_buffer *buf_header_dma2; /* 0x28: non-NULL when FX use a second DMA stream */
    u8 unk2C[0x54 - 0x2C];
    u32 irq_state;           /* 0x54: 0 stopped/paused, 1 starting, 2 running */
    u8 volboost_level;       /* 0x58 */
    u8 unk59;
    u8 playback_state;       /* 0x5A: GAX_PAUSED / GAX_RESUMED (music only) */
};

/* IWRAM 0x03000B0C: pointer to the engine's work RAM (set by GAX2_init) */
extern struct GAX_RAM *gGAXRam_03000B0C;
#define GAX_ram gGAXRam_03000B0C

/* 'mov r3, r3; nop; nop; nop' DMA stop delay. The original library has these as inline asm. */
#define GAX_DMA_DELAY() asm volatile("mov r3, r3\n\tnop\n\tnop\n\tnop")

#endif
