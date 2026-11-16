/*
 * GAX 3.01 tracker.c (part 2 of 2), 08319F30-0831A0F4 (built with agbcc -fprologue-bugfix; docs/gax.md).
 * GAXFx_open, GAXFx_render. The ARM mixer and resampler are asm/gax/output_asm.s and asm/gax/tracker_asm.s.
 */
#include "gax_internal.h"

void GAXFx_open(GAX_FX_channel *fxch)
{
    GAXTracker_open(&fxch->fxch);
    fxch->fxfreq = 0;
    fxch->fxnote = 0;
    fxch->fxvol = 0;
    *(u8 *)&fxch->fxid = 0;
    fxch->nofixedfreq = FALSE;
    fxch->fxch.unk1 = GAX_ram->unk5B;
    fxch->fxch.channel_index = -1;
    if (GAX_ram->fx_pitch == 0)
        GAX_ram->fx_pitch = 0x100000000ULL / GAX_ram->current_buf->mixrate;
}

void GAXTracker_process_perflist(GAX_channel *ch);
void GAXTracker_process_frame(GAX_channel *ch);
b8 GAXTracker_generate_audio(GAX_channel *ch, GAX_player *player, GAXSongData *song, b8 is_fx);

/*
 * Matching notes: the note block sits in a do { } while (0) and reads fxfreq into its own u8
 * (the ROM re-reads fxfreq after the unknown_delay check, and the loop weighting gives the
 * fxfreq address r7 over the fxid address); GAX_ram and fx_data are loaded before testing instr.
 */
#define ch (&fx->fxch)
b8 GAXFx_render(GAX_FX_channel *fx, GAX_player *player)
{
    u32 instr;
    GAX_instrument *ins;
    GAXChannelInfo *ci;
    GAXSongData *data;
    struct GAX_RAM *ram;
    u8 freq;

    if (player->unknown_delay)
        ch->instrument = NULL;
    if (player->is_playing && (fx->fxfreq == 1 || (fx->fxfreq != 0 && *(u8 *)&fx->fxid != 0))
        && !player->unknown_delay) {
        do {
            freq = fx->fxfreq;
            if (freq == 1) {
                if (ch->instrument && ch->instrument->volume_envelope->sustain_point == 0xFF) {
                    ch->semitone_pitch = -30000;
                    ch->wave_porta_val = 0;
                    ch->priority = 1 << 31;
                    ch->instrument = NULL;
                }
                ch->is_note_off = TRUE;
            } else if (freq > 1) {
                ch->cur_pitch = (freq - 2) << 5;
                ch->is_note_off = FALSE;
            }
        } while (0);
        instr = *(u8 *)&fx->fxid;
        ram = GAX_ram;
        data = ram->fx_data;
        if (instr) {
            ins = data->instrument_data[instr];
            ch->instrument = ins;
            ch->volenv_timer = 0;
            ch->vibtable_index = 0;
            ch->vibrato_wait = ins->vibrato_wait;
            ch->cur_perfstep = 0;
            ch->perflist_timer = 0;
            ch->perfstep_loop = 0;
            ch->instrument_volume = 255;
            ch->is_note_off = FALSE;
            ch->toneporta_lerp = 0;
            ch->target_pitch = 0;
            ch->perfstep_speed = ins->perfstep_speed;
            if (ins->blank) {
                ch->instrument = NULL;
            } else {
                ci = ram->params->channel_info;
                if (ci != NULL && ch->channel_index >= 0)
                    ci[ch->channel_index].instrument = instr;
            }
        }
        if (fx->fxfreq > 1)
            ch->cur_pitch += fx->fxnote;
        ch->instrument_volume = fx->fxvol;
        ch->vol_slide_val = 0;
        ch->porta_val = 0;
        *(u8 *)&fx->fxid = 0;
        fx->fxnote = 0;
        fx->fxfreq = 0;
    }
    if (ch->instrument != NULL && ch->perflist_timer == 0) {
        if (ch->perfstep_speed == 0)
            goto frame;
        GAXTracker_process_perflist(ch);
        ch->perflist_timer = ch->perfstep_speed - 1;
    } else {
        ch->perflist_timer--;
    }
frame:
    GAXTracker_process_frame(ch);
    if (fx->nofixedfreq)
        ch->is_fixed = FALSE;
    if (ch->ignore)
        return FALSE;
    return GAXTracker_generate_audio(ch, player, GAX_ram->fx_data, TRUE);
}
#undef ch
