#include "gax.h"

void GAXSync_open(GAX_player *player)
{
    player->first_timer = 0;
    player->timer_backup = 0;
    player->is_playing = FALSE;
    player->unknown_delay = 0;
    player->stop_on_songend = FALSE;
    player->songend = FALSE;
    player->pattern = -1;
    player->step = 20000;
    player->speed_timer = 0;
    player->speed_buf = 6;
    player->global_volume = 255;
    player->step_finished = FALSE;
    player->pattern_finished = FALSE;
    player->skip_pattern = FALSE;
    player->new_step_idx = 0;
}

/* Step/pattern sequencer. `step` is a u16 compared as signed through an int read after the
   speed_timer store, and most of the body goes through a second pointer to the player (`p`):
   both are needed for the ROM's order (docs/gax.md). */
u32 GAXSync_render(GAX_player *player, u32 timer)
{
    GAXSongData *song;
    u16 speed;
    u8 speed_timer;
    GAX_player *p;
    u8 speed_lo;

    if (player->timer_backup != timer && player->is_playing) {
        speed_lo = player->speed_buf;
        speed = player->speed_buf;
        p = player;
        speed_timer = p->speed_timer;
        if (speed_lo != 0 && (p->songend = 0, (s32)(speed_timer << 24) <= 0)) {
            u16 t;
            int step;

            if (p->skip_pattern) {
                p->skip_pattern = 0;
                p->step = p->song->num_steps_per_pattern;
                song = p->song;
            } else {
                p->step++;
                song = p->song;
            }
            if ((p->speed_buf >> 8) != 0)
                p->speed_buf = (p->speed_buf >> 8) | ((p->speed_buf & 0xFF) << 8);
            t = p->speed_buf;
            p->speed_timer = t - 1;
            step = (s16)p->step;
            speed = t;
            if (step >= song->num_steps_per_pattern) {
                p->step = 0;
                p->new_step_idx = 0;
                p->pattern_finished = 1;
                p->pattern++;
                if ((s16)p->pattern >= song->num_patterns_per_channel) {
                    if (p->stop_on_songend) {
                        p->is_playing = 0;
                        p->speed_buf = 0;
                    }
                    p->songend = 1;
                    p->pattern = song->loop_point;
                    speed = p->speed_buf;
                }
            } else {
                p->pattern_finished = 0;
            }
            p->step_finished = 1;
        } else {
            p->speed_timer = speed_timer - 1;
            p->step_finished = 0;
        }
        if ((speed & 0xFF) == 0)
            p->songend = 1;
        p->timer_backup = timer;
        if (p->first_timer == 0)
            p->first_timer = timer;
        if (p->unknown_delay)
            p->unknown_delay--;
    }
    return 0;
}
