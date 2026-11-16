/*
 * GAX 3.01 tracker.c functions that are decompiled but do not yet match byte-for-byte.
 *
 * The ROM is still built from asm/ for these (see splits.txt). The C below is the current
 * best attempt: same control flow and data accesses as the original, with register
 * allocation / stack layout differences left. It is not linked into the matching build;
 * `make nonmatching` compiles it so it doesn't rot, and the PC/PS1 ports can use it.
 * When one matches, move it into its object's C file and drop it from here.
 */
#include "gax_internal.h"

/* ---- GAXTracker_generate_audio (08319C60) ---- */

extern const u32 GAX_freqtable[12 * 32];
/* 0831A3E8: ARM helper returning the high word of a 32x32 multiply (umull); called through a
   constant address, hence _call_via_r3 in the original. */
typedef struct GAX_wave {
    const u8 *data;
    u32 length;
} GAX_wave;
typedef struct MixArgs {
    const u8 *src;
    void *mix_buffer;
    u32 count;
    s32 pos;
    s32 loop_len;
    u32 volume;
    s32 step;
} MixArgs;
b8 GAXTracker_generate_audio(GAX_channel *ch, GAX_player *player, GAXSongData *song, b8 is_fx)
{
    GAX_instrument *ins = ch->instrument;
    const GAX_wave *wave;
    s32 pitch;
    s32 freq;
    u32 vol;
    u32 vb;
    s32 step;
    b8 looped;
    s32 end;
    MixArgs args;
    MixArgs *a;
    u32 ofs;
    u8 volenv, wavevol, instvol, mixvol, global;

    if (ins == NULL || ch->semitone_pitch == -30000 || ch->waveslot_idx > 3)
        return FALSE;
    wave = (const GAX_wave *)((u8 *)song->waveform_data + ins->waves[ch->waveslot_idx] * 8);
    if (wave->data == NULL)
        return FALSE;
    pitch = ch->semitone_pitch + ch->vibrato_pitch;
    if (!ch->is_fixed) {
        pitch += ch->cur_pitch;
        if (!is_fx)
            pitch += ch->order[(s16)player->pattern].transpose << 5;
    }
    pitch += ch->instrument->wave_params[ch->waveslot_idx].tune;
    if (pitch > 0xEF1)
        pitch = 0xEF1;
    if (pitch < 0)
        pitch = 0;
    if (pitch > 0xD7F) {
        freq = GAX_freqtable[pitch - 0xD80] << 1;
    } else {
        s32 shift = 0;
        pitch -= 0xC00;
        while (pitch < 0) {
            pitch += 384;
            shift++;
        }
        freq = GAX_freqtable[pitch] >> shift;
    }
    volenv = ch->volenv_volume;
    wavevol = ch->wave_volume;
    instvol = ch->instrument_volume;
    mixvol = ch->mixing_volume;
    global = player->global_volume;
    ofs = is_fx * 4;
    a = &args;
    vol = ((((volenv * wavevol >> 8) * instvol >> 8) * mixvol >> 8) * global) >> 8;
    if (!is_fx)
        vol = (song->volume * vol) >> 8;
    vb = GAX_ram->volboost_level;
    vol >>= vb;
    GAX_ram->dc_correction_val += vol << vb;
    step = ((u32 (*)(u32, u32, u32))0x0831A3E8)(freq, *(u32 *)((u8 *)&GAX_ram->music_pitch + ofs), ofs);
    looped = FALSE;
    if (!ch->instrument->wave_params[ch->waveslot_idx].modulation
        && ch->instrument->wave_params[ch->waveslot_idx].min < ch->instrument->wave_params[ch->waveslot_idx].max)
        looped = TRUE;
    end = wave->length << 11;
    a->mix_buffer = GAX_ram->mix_buffer;
    a->count = GAX_ram->current_buf->timer_reload;
    a->volume = vol;
    a->step = step;
    if (looped) {
        end = ch->instrument->wave_params[ch->waveslot_idx].max << 11;
        a->loop_len = (ch->instrument->wave_params[ch->waveslot_idx].max - ch->instrument->wave_params[ch->waveslot_idx].min) << 11;
    }
    if (ch->enable_modulation) {
        end = (ch->modulate_position + ch->instrument->wave_params[ch->waveslot_idx].mod_size) << 11;
        a->loop_len = ch->instrument->wave_params[ch->waveslot_idx].mod_size << 11;
    }
    a->src = wave->data + (end >> 11);
    a->pos = ch->wave_position - end;
    if (!looped && !ch->enable_modulation)
        a->loop_len = (a->src - ((const GAX_wave *)song->waveform_data)->data) << 11;
    if (!ch->enable_modulation && looped && ch->instrument->wave_params[ch->waveslot_idx].pingpong) {
        a->step *= ch->wave_direction;
        ((void (*)(MixArgs *))GAX_ram->gax_pingpong_asm)(a);
        if (a->step < 0) {
            ch->wave_direction = -1;
            ch->wave_position = a->pos + end - a->loop_len;
        } else {
            ch->wave_direction = 1;
            ch->wave_position = a->pos + end;
        }
        return TRUE;
    }
    ((void (*)(MixArgs *))GAX_ram->gax_tracker_asm)(a);
    ch->wave_position = a->pos + end;
    if (ch->wave_position < 0) {
        ch->semitone_pitch = -30000;
        ch->wave_porta_val = 0;
        if (ch->perfstep_speed == 0)
            ch->priority = 1 << 31;
    }
    return TRUE;
}
