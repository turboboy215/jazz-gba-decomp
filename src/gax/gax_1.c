/*
 * GAX 3.01 gax.c (part 1 of 2), 08317518-08317CD8 (built with agbcc -fprologue-bugfix; docs/gax.md).
 * GAX_code2ram, GAX2_calc_mem, GAX2_new, GAX2_init_volboost/_song/_soundhw, GAX_open.
 * Followed by GAX2_init (asm/gax/GAX2_init.s, C in nonmatching/gax.c).
 */
#include "gax_internal.h"

extern const u8 GAX_default_song[];
extern const u16 GAX_table[13 * 2];
extern u8 GAXOutput_render_asm_0831A100[], GAXOutput_render_asm_end_0831A220[];
extern u8 GAXOutput_lowpass_asm_0831A220[], GAXOutput_lowpass_asm_end_0831A2EC[];
extern u8 GAXOutput_reverb_asm_0831A2EC[], GAXOutput_reverb_asm_end_0831A3E8[];
extern u8 GAXTracker_asm_0831A3FC[], GAXTracker_asm_end_0831A470[];
extern u8 GAXTracker_pingpong_asm_0831A470[], GAXTracker_pingpong_asm_end_0831A528[];

u8 *GAX_code2ram(u8 *startaddr, u8 *endaddr)
{
    s32 sz = endaddr - startaddr;
    u8 *out = GAX_alloc(sz);
    CpuSet(startaddr, out, ((sz / 4) & 0x1FFFFF) | (1 << 26));
    return out;
}

/*
 * Work memory needed by GAX2_init for these params (not called by Jazz). Matched 2026-11-16:
 *  - each rate search is its own block with a local `t = GAX_table` and its own counter `k`
 *    (as if an inline helper or macro): GCSE's PRE then makes the ROM's three copies of the
 *    table address, and the counter/pointer registers come out right;
 *  - the result is read through a byte offset (`i *= 4`), which puts the table first in the add;
 *  - `size` must be non-transparent between the searches and `size + 0x8C`, on the
 *    `fx_data == NULL` path only. The empty asm is a stand-in for whatever the original did
 *    there (it emits nothing); without it PRE hoists `size + 0x8C` into the first loop's preheader.
 */
void GAX2_calc_mem(GAXParams *params)
{
    u32 size = 0;
    u32 rate;
    u32 fxrate;
    u32 fxch;
    u32 rev;
    const GAXSongData *song;
    u32 i, j;
    u32 differ = 0;
    const u16 *table;
    if (params->song_data == NULL)
        params->song_data = GAX_default_song;
    if (params->mixing_rate == 0xFFFF) {
        rate = ((const GAXSongData *)params->song_data)->mixing_rate;
        song = params->song_data;
    } else {
        rate = params->mixing_rate;
        song = params->song_data;
    }
    {
        const u16 *t = GAX_table;
        u32 k;
        for (k = 0; k < 13; k++) {
            if (t[k * 2] >= rate) {
                i = k;
                goto found1;
            }
        }
        i = 12;
    found1:
        i *= 4;
        rate = *(const u16 *)((const u8 *)t + i);
    }
    if (params->fx_mixing_rate == 0xFFFF) {
        fxrate = song->fx_mixing_rate ? song->fx_mixing_rate : rate;
    } else {
        fxrate = params->fx_mixing_rate;
    }
    {
        const u16 *t = GAX_table;
        u32 k;
        for (k = 0; k < 13; k++) {
            if (t[k * 2] >= fxrate) {
                i = k;
                goto found2;
            }
        }
        i = 12;
    found2:
        i *= 4;
        fxrate = *(const u16 *)((const u8 *)t + i);
    }

    if ((const u8 *)song == GAX_default_song)
        rate = fxrate;
    if (fxrate != rate)
        differ = 1;
    if (params->fx_channels == 0xFFFF)
        fxch = song->fx_channels;
    else
        fxch = params->fx_channels;

    if (params->fx_data == NULL) {
        fxch = 0;
    asm("" : "+r"(size));
        params->fx_channels = 0;
    }
    { u32 t = size + 0x8C; size = t + GAX_ALIGN(fxch, 4); }
    size += fxch * sizeof(GAX_FX_channel);
    if (params->flags & GAX_SPEECH)
        size += 0x7A4;
    size += 8;
    if (differ)
        size += 8;
    size += ((((fxrate < rate) ? rate : fxrate) * 1000 / 59727) + 4) * 2;
    size += (rate * 1000 / 59727) * 2;
    if (differ)
        size += (fxrate * 1000 / 59727) * 2;
    if (!(params->flags & GAX_NO_JINGLES) && song->unkC4) {
        rev = song->unkBC;
        size += sizeof(GAX_player);
        size += song->unkC4 * sizeof(GAX_channel);
    } else {
        rev = song->unkC0;
    }
    if (rev) {
        size += (rev * rate / 1000) * 2;
        size = GAX_ALIGN(size, 4);
        size += GAXOutput_reverb_asm_end_0831A3E8 - GAXOutput_reverb_asm_0831A2EC;
    }
    if (params->flags & GAX_LOWPASS_FILTER)
        size += GAXOutput_lowpass_asm_end_0831A2EC - GAXOutput_lowpass_asm_0831A220;
    size += GAXOutput_render_asm_end_0831A220 - GAXOutput_render_asm_0831A100;
    size += GAXTracker_asm_end_0831A470 - GAXTracker_asm_0831A3FC;
    size += GAXTracker_pingpong_asm_end_0831A528 - GAXTracker_pingpong_asm_0831A470;
    size += sizeof(GAX_player);
    size += song->num_channels * sizeof(GAX_channel);
    params->workmem_size = size;
}

void GAX2_new(GAXParams *params)
{
    if (params == NULL) {
        GAX_ASSERT(GAX_str_GAX2_NEW, GAX_str_PARAMS_NULL);
        return;
    }
    GAX_memclr(params, sizeof(GAXParams));
    params->mixing_rate = -1;
    params->fx_mixing_rate = -1;
    params->filter_depth = 0;
    params->fx_channels = -1;
    params->volume = -1;
    params->debug = TRUE;
}

extern u8 GAXTracker_asm_0831A3FC[];
extern u8 GAXTracker_patch1_0831A450[];
extern u8 GAXTracker_patch2_0831A4CC[];
#define PATCH(lbl, o) (((u16 *)((u8 *)GAX_ram->gax_tracker_asm - (GAXTracker_asm_0831A3FC - (lbl))))[(o) / 2])
void GAX2_init_volboost(void)
{
    u16 volume = GAX_ram->replayer[GAX_ram->mix_buffer_id]->song_2->volume;
    if (volume > 512) {
        GAX_ram->volboost_level = 2;
        PATCH(GAXTracker_patch1_0831A450, 0) = PATCH(GAXTracker_patch2_0831A4CC, 0) = 0x90AB;
        PATCH(GAXTracker_patch1_0831A450, 4) = PATCH(GAXTracker_patch2_0831A4CC, 4) = 0xA0A8;
    } else if (volume > 256) {
        GAX_ram->volboost_level = 1;
        PATCH(GAXTracker_patch1_0831A450, 0) = PATCH(GAXTracker_patch2_0831A4CC, 0) = 0x912B;
        PATCH(GAXTracker_patch1_0831A450, 4) = PATCH(GAXTracker_patch2_0831A4CC, 4) = 0xA128;
    } else {
        GAX_ram->volboost_level = 0;
        PATCH(GAXTracker_patch1_0831A450, 0) = PATCH(GAXTracker_patch2_0831A4CC, 0) = 0x91AB;
        PATCH(GAXTracker_patch1_0831A450, 4) = PATCH(GAXTracker_patch2_0831A4CC, 4) = 0xA1A8;
    }
}

void GAX2_init_song(GAXSongData *song)
{
    s32 num_ch = song->num_channels;
    GAX_player *player;
    GAX_channel *ch;
    s32 i;
    u32 sum;

    player = (GAX_player *)GAX_alloc(sizeof(GAX_player));
    GAX_PLAYER() = player;
    ch = (GAX_channel *)GAX_alloc(num_ch * sizeof(GAX_channel));
    GAX_PLAYER()->channels = ch;
    GAX_PLAYER()->song_2 = song;
    for (i = 0; i < num_ch; i++)
        GAX_PLAYER()->channels[i].channel_index = i;
    if (GAX_ram->reverb_enabled) {
        sum = 0;
        GAX_PLAYER()->reverb_channels = song->reverb_channels;
        for (i = 0; i < 3; i++) {
            GAX_PLAYER()->reverb_delay[i] = song->reverb_delay[i] * GAX_ram->buf_header_dma1->mixrate / 1000 * 2;
            GAX_PLAYER()->reverb_decay[i] = song->reverb_decay[i];
            sum += song->reverb_decay[i];
        }
        GAX_PLAYER()->reverb_decay_sum = sum;
    }
    GAX2_init_volboost();
}

void GAX2_init_soundhw(void)
{
    int i;
    if (GAX_ram->buf_header_dma2 != NULL) {
        REG_DMA1CNT_H = DMA_ENABLE | DMA_DEST_FIXED | DMA_REPEAT | DMA_32BIT;
        GAX_DMA_DELAY();
        REG_DMA1CNT_H = DMA_DEST_FIXED | DMA_REPEAT | DMA_32BIT;
        REG_DMA2CNT_H = DMA_ENABLE | DMA_DEST_FIXED | DMA_REPEAT | DMA_32BIT;
        GAX_DMA_DELAY();
        REG_DMA2CNT_H = DMA_DEST_FIXED | DMA_REPEAT | DMA_32BIT;
        REG_DMA1CNT = 4;
        REG_DMA2CNT = 4;
        REG_SOUNDCNT_X = 0;
        REG_SOUNDCNT_H = 0xFB0C;
        for (i = 0; i < 8; i++) {
            REG_FIFO_A = 0;
            REG_FIFO_B = 0;
        }
        REG_DMA2DAD = REG_ADDR_FIFO_B;
        REG_DMA2SAD = GAX_ram->buffer_dma2;
    } else {
        REG_DMA1CNT_H = DMA_ENABLE | DMA_DEST_FIXED | DMA_REPEAT | DMA_32BIT;
        GAX_DMA_DELAY();
        REG_DMA1CNT_H = DMA_DEST_FIXED | DMA_REPEAT | DMA_32BIT;
        REG_DMA1CNT = 4;
        REG_SOUNDCNT_X = 0;
        REG_SOUNDCNT_H = 0xB04;
        for (i = 0; i < 8; i++)
            REG_FIFO_A = 0;
    }
    *(vu8 *)0x04000089 = 0x42;
    REG_DMA1DAD = REG_ADDR_FIFO_A;
    REG_DMA1SAD = GAX_ram->buffer_dma1;
}

void GAX_open(void)
{
    int i;
    GAXOutput_open(GAX_PLAYER());
    GAX_ram->current_buf = GAX_ram->buf_header_dma1;
    for (i = 0; i < GAX_PLAYER()->song_2->num_channels; i++) {
        GAXTracker_open(&GAX_PLAYER()->channels[i]);
        GAX_PLAYER()->channels[i].order = GAX_PLAYER()->song_2->order_lists[i];
    }
    GAXSync_open(GAX_PLAYER());
    GAX_PLAYER()->song = GAX_PLAYER()->song_2;
}
