#ifndef GUARD_GAX_H
#define GUARD_GAX_H
/*
 * Shin'en GAX Sound Engine 3.01 (Sep 13 2002) as linked into Jazz Jackrabbit.
 *
 * Layouts follow the shinen-gax-decomp project (3.05A) and the official GAX v3 manual; every
 * offset marked "3.01" has been confirmed by a matching function in this ROM. See docs/gax.md.
 *
 * Functions are defined as sub_XXXXXXXX (the split tooling keys on that), and the
 * macros below give them their GAX names.
 */
#include "global.h"

typedef u8 b8;

/* ---- hardware -------------------------------------------------------------------------- */

#define REG_IME        (*(vu16 *)0x04000208)
#define REG_DISPCNT    (*(vu16 *)0x04000000)
#define REG_BG0CNT     (*(vu16 *)0x04000008)
#define REG_KEYINPUT   (*(vu16 *)0x04000130)
#define REG_SOUNDCNT_H (*(vu16 *)0x04000082)
#define REG_SOUNDCNT_X (*(vu16 *)0x04000084)
#define REG_SOUNDBIAS_H (*(vu16 *)0x04000088)
#define REG_FIFO_A     (*(vu16 *)0x040000A0)
#define REG_FIFO_B     (*(vu16 *)0x040000A4)
#define REG_DMA1SAD    (*(vu32 *)0x040000BC)
#define REG_DMA1DAD    (*(vu32 *)0x040000C0)
#define REG_DMA1CNT    (*(vu32 *)0x040000C4)
#define REG_DMA1CNT_H  (*(vu16 *)0x040000C6)
#define REG_DMA2SAD    (*(vu32 *)0x040000C8)
#define REG_DMA2DAD    (*(vu32 *)0x040000CC)
#define REG_DMA2CNT    (*(vu32 *)0x040000D0)
#define REG_DMA2CNT_H  (*(vu16 *)0x040000D2)
#define REG_DMA3CNT_H  (*(vu16 *)0x040000DE)
#define REG_TM0CNT     (*(vu32 *)0x04000100)
#define REG_TM0CNT_L   (*(vu16 *)0x04000100)
#define REG_TM1CNT     (*(vu32 *)0x04000104)
#define REG_TM1CNT_L   (*(vu16 *)0x04000104)
#define REG_ADDR_FIFO_A 0x040000A0
#define REG_ADDR_FIFO_B 0x040000A4

#define SOUND_A_RIGHT_OUTPUT 0x0100
#define SOUND_A_LEFT_OUTPUT  0x0200
#define SOUND_B_RIGHT_OUTPUT 0x1000
#define SOUND_B_LEFT_OUTPUT  0x2000
#define SOUND_MASTER_ENABLE  0x0080

#define DMA_DEST_FIXED  0x0040
#define DMA_DEST_RELOAD 0x0060
#define DMA_REPEAT      0x0200
#define DMA_32BIT       0x0400
#define DMA_START_SPECIAL 0x3000
#define DMA_ENABLE      0x8000

/* BIOS (lib stubs at 0831A528...) */
void CpuSet(const void *src, void *dest, u32 control);
void CpuFastSet(const void *src, void *dest, u32 control);
void SoftReset(void);

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

/* ---- internal types --------------------------------------------------------------------- */

typedef struct GAX_order GAX_order;
typedef struct GAX_instrument GAX_instrument;

typedef struct GAXSongData {
    u8    num_channels;              /* 0x00 */
    u16   num_steps_per_pattern;     /* 0x02 */
    u16   num_patterns_per_channel;  /* 0x04 */
    u16   loop_point;                /* 0x06 */
    u16   volume;                    /* 0x08 */
    void *track_data;                /* 0x0C */
    GAX_instrument **instrument_data; /* 0x10 */
    void *waveform_data;             /* 0x14 */
    u16   mixing_rate;               /* 0x18 */
    u16   fx_mixing_rate;            /* 0x1A */
    u8    fx_channels;               /* 0x1C */
    u8    pad1D[3];
    GAX_order *order_lists[32];      /* 0x20: per-channel order list (3.01) */
    u32   reverb_channels;           /* 0xA0: channels [0, n) are mixed before the reverb pass */
    u32   reverb_delay[3];           /* 0xA4: ms, scaled by the mixing rate */
    u32   reverb_decay[3];           /* 0xB0 */
    u32   unkBC, unkC0, unkC4;       /* 0xBC: buffer sizes (see 3.05A GAX2_calc_mem) */
} GAXSongData;

struct GAX_order {
    u16 sequence_offset;
    s8  transpose;
    u8  pad3;
};

typedef struct GAX_wave_param {
    s16 tune;
    b8  modulation;
    b8  pingpong;
    u32 init;
    s32 min;
    s32 max;
    s32 mod_size;
    u16 mod_step;
    u16 mod_speed;
} GAX_wave_param;

typedef struct GAX_volenv_point {
    u16 x;                   /* time in frames */
    s16 lerp;                /* volume slope to this point, 8.8 */
    u8  volume;
    u8  pad[3];
} GAX_volenv_point;

typedef struct GAX_volenv {
    u8 point_count;
    u8 sustain_point;        /* 0xFF = none */
    u8 loop_start;           /* 0xFF = none */
    u8 loop_end;             /* 0xFF = none */
    GAX_volenv_point points[1];
} GAX_volenv;

/* 3.01 layout (differs from 3.05A in the vibrato bytes) */
typedef struct GAX_perfstep {
    u8  note;                /* 0 = none, else note + 2 */
    b8  fixed;               /* note is absolute, not relative to the played note */
    u8  wave_idx;            /* 0 = keep, else wave slot + 1 */
    u8  pad;
    u16 commands[2];         /* (fx_type << 8) | fx_param */
} GAX_perfstep;

struct GAX_instrument {
    b8  blank;               /* 0x00 */
    u8  waves[4];            /* 0x01 */
    u8  unk5, unk6, unk7;
    u8  vibrato_wait;        /* 0x08 */
    u8  vibrato_depth;       /* 0x09 */
    u8  vibrato_speed;       /* 0x0A */
    u8  unkB;
    const GAX_volenv *volume_envelope; /* 0x0C */
    u8  perfstep_speed;      /* 0x10 */
    u8  perfstep_count;      /* 0x11 */
    u16 unk12;
    const struct GAX_perfstep *perflist; /* 0x14 */
    GAX_wave_param wave_params[4]; /* 0x18 */
};

typedef struct GAX_channel {
    b8  ignore;              /* 0x00 */
    u8  unk1;
    b8  empty_track;
    u8  rle_delay;
    u8  waveslot_idx;        /* 0x04 */
    s8  wave_direction;
    b8  enable_modulation;
    s8  modulate_direction;
    u8  modulate_timer;      /* 0x08 */
    s8  vibrato_wait;
    u8  volenv_volume;
    u8  wave_volume;
    u8  mixing_volume;       /* 0x0C */
    s8  channel_index;       /* 0x0D */
    s16 semitone_pitch;      /* 0x0E */
    s16 vibrato_pitch;       /* 0x10 */
    u8  perfstep_speed;      /* 0x12 */
    b8  is_fixed;
    u8  instrument_volume;   /* 0x14 */
    u8  perflist_timer;
    u8  perfstep_loop;       /* 0x16: perf list repeat counter (fx 5/6) */
    b8  is_note_off;
    s16 vol_slide_val;       /* 0x18 */
    s16 porta_val;
    s16 wave_vol_slide_val;  /* 0x1C */
    s16 wave_porta_val;
    s16 target_pitch;        /* 0x20 */
    s16 toneporta_lerp;
    s16 delay_frames;        /* 0x24 */
    u16 cur_perfstep;
    u16 volenv_timer;        /* 0x28 */
    u16 vibtable_index;
    GAX_instrument *instrument; /* 0x2C */
    u8 *sequence;            /* 0x30 */
    GAX_order *order;        /* 0x34 */
    s32 wave_position;       /* 0x38 */
    s32 modulate_position;   /* 0x3C */
    s32 priority;            /* 0x40 */
    s16 cur_pitch;           /* 0x44 */
    u8  next_semitone;       /* 0x46 */
    u8  next_instrument;     /* 0x47 */
} GAX_channel;               /* 0x48 */

typedef struct GAX_FX_channel {
    GAX_channel fxch;        /* 0x00 */
    u8  fxvol;               /* 0x48 */
    u8  fxnote;              /* 0x49 */
    b8  nofixedfreq;         /* 0x4A */
    u8  fxfreq;              /* 0x4B: 1 = stop request (GAX_stop_fx) */
    u32 fxid;                /* 0x4C */
} GAX_FX_channel;            /* 0x50 (3.01) */

typedef struct GAX_player {
    GAXSongData *song;       /* 0x00 */
    u32 timer_backup;        /* 0x04 */
    u32 first_timer;         /* 0x08 */
    u16 pattern;             /* 0x0C */
    s16 step;                /* 0x0E */
    u16 speed_buf;           /* 0x10 */
    b8  is_playing;          /* 0x12 */
    u8  unknown_delay;
    u8  speed_timer;         /* 0x14 */
    b8  step_finished;
    b8  pattern_finished;
    u8  global_volume;       /* 0x17 */
    b8  stop_on_songend;     /* 0x18 */
    b8  songend;             /* 0x19 */
    b8  skip_pattern;
    b8  unk1B;
    u16 new_step_idx;        /* 0x1C */
    u16 unk1E;
    GAX_channel *channels;   /* 0x20 */
    GAXSongData *song_2;     /* 0x24 */
    u32 reverb_channels;     /* 0x28: copy of GAXSongData.reverb_channels; start of the reverb args */
    u32 reverb_delay[3];     /* 0x2C: in samples * 2 */
    u32 reverb_decay[3];     /* 0x38 */
    u32 reverb_decay_sum;    /* 0x44 */
    u32 timer;               /* 0x48 */
} GAX_player;                /* 0x4C */

typedef struct GAX_playback_buffer {
    u8  unused;
    b8  update;
    u16 mixrate;             /* 0x02 */
    u16 timer_reload;        /* 0x04: also the half-buffer size in bytes */
} GAX_playback_buffer;

#define MAX_FX_CHANNELS 8

struct GAX_RAM {
    u32 signature;           /* 0x00 'GAX3' */
    GAXParams *params;       /* 0x04 */
    GAXSongData *fx_data;    /* 0x08 */
    GAX_FX_channel *fx_channels; /* 0x0C */
    u32 num_fx_channels;     /* 0x10 */
    u32 *speech_unk;         /* 0x14 */
    GAX_player *replayer[2]; /* 0x18: [0] song, [1] jingle */
    u32 mix_buffer_id;       /* 0x20: index into replayer[] */
    GAX_playback_buffer *buf_header_dma1; /* 0x24 */
    GAX_playback_buffer *buf_header_dma2; /* 0x28: non-NULL when FX use a second DMA stream */
    GAX_playback_buffer *current_buf;     /* 0x2C */
    u32 buffer_dma1;         /* 0x30 */
    u32 buffer_dma2;         /* 0x34 */
    void *mix_buffer;        /* 0x38 */
    u16 timer_reload_dma1;   /* 0x3C */
    u16 timer_reload_dma2;   /* 0x3E */
    u32 music_pitch;         /* 0x40 */
    u32 fx_pitch;            /* 0x44 */
    u32 buffer_half;         /* 0x48: which half of the double buffer is being filled */
    u8 *reverb_buf;          /* 0x4C */
    u32 reverb_buf_size;     /* 0x50 */
    vu32 irq_state;          /* 0x54: 0 stopped/paused, 1 starting, 2 running */
    u8  volboost_level;      /* 0x58 */
    b8  fx_reverb;           /* 0x59: GAX_FX_REVERB requested and the song has reverb */
    u8  playback_state;      /* 0x5A: GAX_PAUSED / GAX_RESUMED (music only) */
    u8  unk5B;
    b8  reverb_enabled;      /* 0x5C: song (or jingle) has a reverb buffer */
    b8  irq_finished;        /* 0x5D */
    u8  buf_id;              /* 0x5E */
    u8  unk5F;
    u8 *gax_tracker_asm;     /* 0x60: RAM copies of the ARM routines (GAX_code2ram) */
    u8 *gax_pingpong_asm;    /* 0x64 */
    u8 *render_asm;          /* 0x68 */
    u8 *reverb_asm;          /* 0x6C */
    u8 *lowpass_asm;         /* 0x70: NULL unless GAX_LOWPASS_FILTER */
    u16 filt_depth;          /* 0x74 */
    u16 dc_correction_val;   /* 0x76 */
    u8 *jingle_mem;          /* 0x78: work memory left after the song (for GAX2_jingle) */
    u32 jingle_mem_size;     /* 0x7C */
    u8 *scratch_mem;         /* 0x80 */
    u32 scratch_mem_size;    /* 0x84 */
    u8  fx_indexes[4];       /* 0x88: really [fx_channels], see GAX2_init */
};                           /* 0x8C + ALIGN(fx_channels, 4) - 4 */

enum { GAX_PLAYING = 0, GAX_RESUMED = 0, GAX_PAUSED = 2 };

/* IWRAM 0x03000B0C: pointer to the engine's work RAM (set by GAX2_init) */
extern struct GAX_RAM *gGAXRam_03000B0C;
#define GAX_ram gGAXRam_03000B0C

/* ---- functions (live copy, see names.txt) ------------------------------------------------ */

#define GAX_code2ram         sub_08317518
#define GAX2_calc_mem        sub_083175A8
#define GAX2_new             sub_083177CC
#define GAX2_init_volboost   sub_08317874
#define GAX2_init_song       sub_08317970
#define GAX2_init_soundhw    sub_08317B40
#define GAX_open             sub_08317C3C
#define GAX2_init            sub_08317CD8
#define GAX2_jingle          sub_083185D0
#define GAX_irq              sub_083186FC
#define GAX_play             sub_0831881C
#define GAX_fx               sub_083189D0
#define GAX_fx_ex            sub_08318AB0
#define GAX2_fx              sub_08318BB4
#define GAX_fx_status        sub_08318C5C
#define GAX_set_music_volume sub_08318CA4
#define GAX_ASSERT_PRINT     sub_08318D38
#define GAX_ASSERT           sub_08318DE8
#define GAX_clear_mem        sub_08318F50
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
#define GAXSync_open         sub_0831928C
#define GAXSync_render       sub_083192C0
#define GAXOutput_render     sub_0831938C
#define GAXOutput_open       sub_08319518
#define GAXOutput_stream     sub_08319520
#define GAXTracker_open      sub_08319584
#define GAXTracker_render    sub_083195E8
#define GAXTracker_process_step     sub_0831967C
#define GAXTracker_process_perflist sub_083198B4
#define GAXTracker_process_envelope sub_08319A20
#define GAXTracker_process_frame    sub_08319AE4
#define GAXTracker_generate_audio   sub_08319C60
#define GAXFx_open           sub_08319F30
#define GAXFx_render         sub_08319F88

void GAX_ASSERT(const char *fn, const char *msg);

/* public API used by the game (region B) */
void GAX2_new(GAXParams *params);
b8 GAX2_init(GAXParams *params);
void GAX_set_music_volume(s32 ch, u32 vol);
void GAX_set_fx_volume(s32 fxch, u32 vol);
u32 GAX_fx(u32 fxid);
void GAXOutput_open(GAX_player *player);
void GAXTracker_open(GAX_channel *ch);
void GAXSync_open(GAX_player *player);
void GAX2_init_volboost(void);
void GAX2_init_song(GAXSongData *song);
void GAX2_init_soundhw(void);
void GAX_open(void);
u32 GAXSync_render(GAX_player *player, u32 timer);
void GAXOutput_stream(GAX_player *player, u32 dest);
u8 *GAX_code2ram(u8 *startaddr, u8 *endaddr);
void GAX_ASSERT_PRINT(int x, int y, const char *string);
void GAX_clear_mem(u32 dest, u32 size);
u32 GAX_fx_ex(u32 fxid, s32 fxch, s32 prio, s32 note);

/* 'mov r3, r3; nop; nop; nop' DMA stop delay. The original library has these as inline asm. */
#define GAX_DMA_DELAY() asm volatile("mov r3, r3\n\tnop\n\tnop\n\tnop")

#define GAX_ALIGN(a, b) (u32)(((u32)(a) + (b)) & -(b))

/* Allocate from the work memory given to GAX2_init (inlined everywhere in the original). */
#define GAX_ALLOC(sz) ({ \
    u8 *out_; \
    u8 *scratch_ = GAX_ram->scratch_mem; \
    if ((u32)scratch_ & 3) { \
        u32 pad_ = GAX_ALIGN(scratch_, 4) - (u32)scratch_; \
        GAX_ram->scratch_mem = (u8 *)GAX_ALIGN(scratch_, 4); \
        GAX_ram->scratch_mem_size -= pad_; \
    } \
    if (GAX_ram->params->debug && (sz) > GAX_ram->scratch_mem_size) \
        GAX_ASSERT(GAX_str_GAX2_INIT, GAX_str_OUT_OF_MEMORY); \
    GAX_ram->scratch_mem_size -= (sz); \
    out_ = GAX_ram->scratch_mem; \
    GAX_ram->scratch_mem += (sz); \
    out_; \
})

#define GAX_PLAYER() (GAX_ram->replayer[GAX_ram->mix_buffer_id])

/* ---- rodata (still in asm/rodata.s; names in symbols.txt) -------------------------------- */

extern const char GAX_str_GAX2_INIT[];          /* "GAX2_INIT" */
extern const char GAX_str_OUT_OF_MEMORY[];      /* "OUT OF MEMORY" */
extern const char GAX_str_GAX2_NEW[];           /* "GAX2_NEW" */
extern const char GAX_str_PARAMS_NULL[];        /* "PARAMS ARG IS NULL" */
extern const char GAX_str_GAX2_NEW_FX[];        /* "GAX2_NEW_FX" */
extern const char GAX_str_FXPARAMS_NULL[];      /* "FXPARAMS ARG IS NULL" */
extern const char GAX_str_FX_MIXING_RATE[];     /* "WHEN USING DIFFERENT FX_MIXING_RATE, ..." */
extern const char GAX_str_GAX2_JINGLE[];        /* "GAX2_JINGLE" */
extern const char GAX_str_NO_JINGLE[];          /* "GAX_NO_JINGLE FLAG IS SET" */
extern const char GAX_str_GAX_IRQ[];            /* "GAX_IRQ" */
extern const char GAX_str_PLAY_NOT_FINISHED[];  /* "GAX_PLAY HAS NOT FINISHED BEFORE GAX_IRQ. ..." */
extern const char GAX_str_GAX_FX[];             /* "GAX_FX" */
extern const char GAX_str_SPEECH_FX[];          /* "YOU TRIED TO PLAY A SPEECH FX ..." */
extern const char GAX_str_GAX2_FX[];            /* "GAX2_FX" */
extern const char GAX_str_FXID_DEFAULT[];       /* "FXPARAMS->FXID IS GAX_DEFAULT" */
extern const char GAX_str_FUNCTION_NAME[];      /* "FUNCTION NAME:" */

static inline u8 *GAX_alloc(u32 sz)
{
    u8 *out;
    u8 *scratch = GAX_ram->scratch_mem;
    if ((u32)scratch & 3) {
        u32 pad = GAX_ALIGN(scratch, 4) - (u32)scratch;
        GAX_ram->scratch_mem = (u8 *)GAX_ALIGN(scratch, 4);
        GAX_ram->scratch_mem_size -= pad;
    }
    if (GAX_ram->params->debug && sz > GAX_ram->scratch_mem_size)
        GAX_ASSERT(GAX_str_GAX2_INIT, GAX_str_OUT_OF_MEMORY);
    GAX_ram->scratch_mem_size -= sz;
    out = GAX_ram->scratch_mem;
    GAX_ram->scratch_mem += sz;
    return out;
}

/* Inlined byte/CpuFastSet clear (GAX2_new, GAX2_jingle, GAX_play). */
static inline void GAX_memclr(void *dest_, s32 size_)
{
    u8 *p = dest_;
    s32 size = size_;
    s32 aligned, i;
    u32 zero;
    while ((u32)p & 3) {
        *p++ = 0;
        size--;
    }
    zero = 0;
    aligned = size & -32;
    CpuFastSet(&zero, p, ((aligned / 4) & 0x1FFFFF) | (1 << 24));
    {
        u8 *q = p + aligned;
        for (i = 0; i < size - aligned; i++)
            *q++ = 0;
    }
}

#endif
