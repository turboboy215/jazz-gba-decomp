/*
 * GAX 3.01 gax.c functions that are decompiled but do not yet match byte-for-byte.
 *
 * The ROM is still built from asm/ for these (see splits.txt). The C below is the current
 * best attempt: same control flow and data accesses as the original, with register
 * allocation / stack layout differences left. It is not linked into the matching build;
 * `make nonmatching` compiles it so it doesn't rot, and the PC/PS1 ports can use it.
 * When one matches, move it into its object's C file and drop it from here.
 */
#include "gax_internal.h"

/* ---- GAX2_init (08317CD8) ---- */

extern const u8 GAX_default_song[];
extern const u16 GAX_table[13 * 2];
extern const char *const GAX_copyright;
extern u8 GAXOutput_render_asm_0831A100[], GAXOutput_render_asm_end_0831A220[];
extern u8 GAXOutput_lowpass_asm_0831A220[], GAXOutput_lowpass_asm_end_0831A2EC[];
extern u8 GAXOutput_reverb_asm_0831A2EC[], GAXOutput_reverb_asm_end_0831A3E8[];
extern u8 GAXTracker_asm_0831A3FC[], GAXTracker_asm_end_0831A470[];
extern u8 GAXTracker_pingpong_asm_0831A470[], GAXTracker_pingpong_asm_end_0831A528[];
void GAXFx_open(GAX_FX_channel *fxch);

#define MEMCLR(dest_, size_) { \
    u8 *p_ = (u8 *)(dest_); \
    s32 n_ = (size_); \
    s32 al_, k_; \
    while ((u32)p_ & 3) { *p_++ = 0; n_--; } \
    zero = 0; \
    al_ = n_ & -32; \
    CpuFastSet(&zero, p_, ((al_ / 4) & 0x1FFFFF) | (1 << 24)); \
    { u8 *q_ = p_ + al_; for (k_ = 0; k_ < n_ - al_; k_++) *q_++ = 0; } \
}

b8 GAX2_init(GAXParams *params)
{
    const GAXSongData *song;
    const void *fx_data;
    u32 i = 0, j;
    u32 zero;
    u32 rev;
    u32 size;

    GAX_ram = (struct GAX_RAM *)params->workmem;
    if (params->song_data == NULL)
        params->song_data = GAX_default_song;
    fx_data = params->fx_data;
    if (fx_data == NULL)
        params->fx_channels = 0;
    if (params->mixing_rate == 0xFFFF)
        params->mixing_rate = ((const GAXSongData *)params->song_data)->mixing_rate;
    if (params->fx_mixing_rate == 0xFFFF && fx_data != NULL) {
        u16 r = ((const GAXSongData *)params->song_data)->fx_mixing_rate;
        if (r == 0)
            r = params->mixing_rate;
        params->fx_mixing_rate = r;
    }
    if (params->fx_channels == 0xFFFF)
        params->fx_channels = ((const GAXSongData *)params->song_data)->fx_channels;
    if (params->volume == 0xFFFF)
        params->volume = 255;

    for (j = 0; j < 13; j++)
        if (GAX_table[j * 2] >= params->mixing_rate) {
            i = j;
            goto found1;
        }
    i = 12;
found1:
    params->mixing_rate = GAX_table[i * 2];
    if (fx_data != NULL) {
        for (j = 0; j < 13; j++)
            if (GAX_table[j * 2] >= params->fx_mixing_rate) {
                i = j;
                goto found2;
            }
        i = 12;
    found2:
        params->fx_mixing_rate = GAX_table[i * 2];
    }
    if ((const u8 *)params->song_data == GAX_default_song)
        params->mixing_rate = params->fx_mixing_rate;
    if (params->fx_mixing_rate != params->mixing_rate && (params->flags & (GAX_HALFRATE_FX | GAX_FX_REVERB))) {
        if (params->debug)
            GAX_ASSERT(GAX_str_GAX2_INIT, GAX_str_FX_MIXING_RATE);
        return FALSE;
    }

    GAX_ram->scratch_mem = params->workmem + (GAX_ALIGN(params->fx_channels, 4) + 0x8C);
    GAX_ram->scratch_mem_size = params->workmem_size - 0x8C - GAX_ALIGN(params->fx_channels, 4);
    GAX_ram->signature = 0x47415833;
    GAX_ram->params = params;
    GAX_ram->irq_state = 0;
    GAX_ram->mix_buffer_id = 0;
    GAX_ram->reverb_enabled = FALSE;
    GAX_ram->playback_state = 0;
    GAX_ram->unk5B = 0;
    GAX_ram->irq_finished = TRUE;
    GAX_ram->fx_pitch = 0;
    GAX_ram->music_pitch = 0;
    for (i = 0; i < params->fx_channels; i++)
        GAX_ram->fx_indexes[i] = 0;
    if (params->fx_data != NULL) {
        GAX_ram->fx_data = (GAXSongData *)params->fx_data;
        GAX_ram->fx_channels = (GAX_FX_channel *)GAX_alloc(params->fx_channels * sizeof(GAX_FX_channel));
        GAX_ram->num_fx_channels = params->fx_channels;
    } else {
        GAX_ram->fx_data = NULL;
        GAX_ram->fx_channels = NULL;
        GAX_ram->num_fx_channels = 0;
    }
    GAX_ram->fx_reverb = FALSE;
    if ((params->flags & GAX_SPEECH) && params->fx_data != NULL)
        GAX_ram->speech_unk = (u32 *)GAX_alloc(0x7A4);
    GAX_ram->buf_header_dma1 = (GAX_playback_buffer *)GAX_alloc(sizeof(GAX_playback_buffer));
    if (GAX_ram->fx_data != NULL && params->fx_mixing_rate != params->mixing_rate)
        GAX_ram->buf_header_dma2 = (GAX_playback_buffer *)GAX_alloc(sizeof(GAX_playback_buffer));
    else
        GAX_ram->buf_header_dma2 = NULL;
    params->mixermode = GAX_ram->buf_header_dma2 != NULL;

    for (j = 0; j < 13; j++)
        if (GAX_table[j * 2] >= params->mixing_rate) {
            i = j;
            goto found3;
        }
    i = 12;
found3:
    GAX_ram->buf_header_dma1->unused = 8;
    GAX_ram->buf_header_dma1->update = TRUE;
    GAX_ram->buf_header_dma1->mixrate = GAX_table[i * 2];
    GAX_ram->buf_header_dma1->timer_reload = GAX_ram->buf_header_dma1->mixrate * 1000 / 59727;
    GAX_ram->timer_reload_dma1 = GAX_table[i * 2 + 1];
    if (GAX_ram->buf_header_dma2 != NULL) {
        for (j = 0; j < 13; j++)
            if (GAX_table[j * 2] >= params->fx_mixing_rate) {
                i = j;
                goto found4;
            }
        i = 12;
    found4:
        GAX_ram->buf_header_dma2->unused = 8;
        GAX_ram->buf_header_dma2->update = TRUE;
        GAX_ram->buf_header_dma2->mixrate = GAX_table[i * 2];
        GAX_ram->buf_header_dma2->timer_reload = GAX_ram->buf_header_dma2->mixrate * 1000 / 59727;
        GAX_ram->timer_reload_dma2 = GAX_table[i * 2 + 1];
    }
    /* tamper check: a modified copyright string detunes the music */
    if (GAX_copyright[2] != 'X' || GAX_copyright[1] != 'A' || GAX_copyright[0] != 'G')
        GAX_ram->timer_reload_dma1 <<= 1;

    if (GAX_ram->buf_header_dma2 != NULL) {
        u16 a = GAX_ram->buf_header_dma1->timer_reload;
        u16 b = GAX_ram->buf_header_dma2->timer_reload;
        size = ((a > b ? a : b) + 4) * 2;
    } else {
        size = (GAX_ram->buf_header_dma1->timer_reload + 4) * 2;
    }
    GAX_ram->mix_buffer = GAX_alloc(size);
    GAX_ram->buffer_half = 0;
    GAX_ram->buffer_dma1 = (u32)GAX_alloc(GAX_ram->buf_header_dma1->timer_reload * 2);
    MEMCLR((void *)GAX_ram->buffer_dma1, GAX_ram->buf_header_dma1->timer_reload * 2);
    if (GAX_ram->buf_header_dma2 != NULL) {
        GAX_ram->buffer_dma2 = (u32)GAX_alloc(GAX_ram->buf_header_dma2->timer_reload * 2);
        MEMCLR((void *)GAX_ram->buffer_dma2, GAX_ram->buf_header_dma2->timer_reload * 2);
    }

    song = params->song_data;
    if (!(params->flags & GAX_NO_JINGLES) && song->unkC4)
        rev = song->unkBC;
    else
        rev = song->unkC0;
    if (rev) {
        GAX_ram->reverb_enabled = TRUE;
        rev = rev * GAX_ram->buf_header_dma1->mixrate / 1000;
        GAX_ram->reverb_buf = GAX_alloc(rev * 2);
        GAX_ram->reverb_buf_size = rev * 2;
        MEMCLR(GAX_ram->reverb_buf, rev * 2);
        GAX_ram->reverb_asm = GAX_code2ram(GAXOutput_reverb_asm_0831A2EC, GAXOutput_reverb_asm_end_0831A3E8);
    }
    if (params->flags & GAX_LOWPASS_FILTER)
        GAX_ram->lowpass_asm = GAX_code2ram(GAXOutput_lowpass_asm_0831A220, GAXOutput_lowpass_asm_end_0831A2EC);
    else
        GAX_ram->lowpass_asm = NULL;
    GAX_ram->render_asm = GAX_code2ram(GAXOutput_render_asm_0831A100, GAXOutput_render_asm_end_0831A220);
    GAX_ram->gax_tracker_asm = GAX_code2ram(GAXTracker_asm_0831A3FC, GAXTracker_asm_end_0831A470);
    GAX_ram->gax_pingpong_asm = GAX_code2ram(GAXTracker_pingpong_asm_0831A470, GAXTracker_pingpong_asm_end_0831A528);
    GAX_ram->filt_depth = 0;
    GAX2_init_song((GAXSongData *)params->song_data);
    GAX_ram->jingle_mem = GAX_ram->scratch_mem;
    GAX_ram->jingle_mem_size = GAX_ram->scratch_mem_size;
    GAX_open();
    if (GAX_ram->buf_header_dma2 != NULL)
        GAX_ram->current_buf = GAX_ram->buf_header_dma2;
    for (i = 0; i < GAX_ram->num_fx_channels; i++)
        GAXFx_open(&GAX_ram->fx_channels[i]);
    GAX2_init_soundhw();
    GAX_ram->irq_state = 1;
    GAX_PLAYER()->stop_on_songend = (params->flags >> 3) & 1;
    GAX_ram->params->is_songend = FALSE;
    GAX_ram->params->is_jingleend = FALSE;
    if ((params->flags & GAX_FX_REVERB) && ((const GAXSongData *)params->song_data)->reverb_channels)
        GAX_ram->fx_reverb = TRUE;
    else
        GAX_ram->fx_reverb = FALSE;
    return TRUE;
}
