/*
 * GAX 3.01 output.c, 0831938C-08319584 (built with agbcc -fprologue-bugfix; docs/gax.md).
 * GAXOutput_render, GAXOutput_open, GAXOutput_stream: mixing and reverb set-up; the ARM mixers are asm/gax/output_asm.s.
 */
#include "gax_internal.h"

typedef struct ReverbArgs {
    u32 size;
    void *mix_buffer;
    u8 *reverb_buf;
    u32 reverb_buf_size;
    u32 *reverb;
    u32 dc_in;
    u32 dc_out;
} ReverbArgs;
b8 GAXTracker_render(GAX_channel *ch, GAX_player *player);
b8 GAXFx_render(GAX_FX_channel *fxch, GAX_player *player);
b8 GAXOutput_render(GAX_player *player)
{
    b8 rendered = FALSE;
    u32 i;
    s32 j;

    if (GAX_ram->buf_id <= 1 && GAX_ram->playback_state == GAX_RESUMED) {
        for (i = 0; i < player->song_2->reverb_channels; i++)
            rendered |= GAXTracker_render(&player->channels[i], player);
    }
    if (GAX_ram->fx_reverb) {
        for (i = 0; i < GAX_ram->num_fx_channels; i++)
            rendered |= GAXFx_render(&GAX_ram->fx_channels[i], player);
    }
    if (GAX_ram->buf_id <= 1) {
        if (player->song_2->reverb_channels) {
            ReverbArgs args;
            args.size = GAX_ram->current_buf->timer_reload * GAX_ram->current_buf->update * 2;
            args.mix_buffer = GAX_ram->mix_buffer;
            args.reverb_buf = GAX_ram->reverb_buf;
            args.reverb_buf_size = GAX_ram->reverb_buf_size;
            args.reverb = &player->reverb_channels;
            args.dc_in = GAX_ram->dc_correction_val;
            GAX_ram->dc_correction_val += 0x100;
            args.dc_out = GAX_ram->dc_correction_val;
            ((void (*)(ReverbArgs *))GAX_ram->reverb_asm)(&args);
        }
        if (GAX_ram->buf_id <= 1 && GAX_ram->playback_state == GAX_RESUMED) {
            for (j = player->song_2->reverb_channels; j < player->song_2->num_channels; j++)
                rendered |= GAXTracker_render(&player->channels[j], player);
        }
    }
    if (!GAX_ram->fx_reverb && (GAX_ram->buf_id == 0 || GAX_ram->buf_id == 2)) {
        for (i = 0; i < GAX_ram->num_fx_channels; i++)
            rendered |= GAXFx_render(&GAX_ram->fx_channels[i], player);
    }
    if (GAX_ram->playback_state == 1)
        GAX_ram->playback_state = GAX_RESUMED;
    return rendered;
}

void GAXOutput_open(GAX_player *player)
{
    player->timer = 1;
}

typedef struct RenderArgs {
    void *mix_buffer;
    u32 dest;
    u32 size;
    u32 dc_correction_val;
} RenderArgs;
b8 GAXOutput_render(GAX_player *player);
void GAXOutput_stream(GAX_player *player, u32 dest)
{
    u32 size = GAX_ram->current_buf->timer_reload * GAX_ram->current_buf->update;
    GAX_ram->dc_correction_val = 0;
    GAX_clear_mem((u32)GAX_ram->mix_buffer, size << 1);
    if (GAXOutput_render(player)) {
        RenderArgs args;
        args.mix_buffer = GAX_ram->mix_buffer;
        args.dest = dest;
        args.size = size;
        args.dc_correction_val = GAX_ram->dc_correction_val;
        ((void (*)(RenderArgs *))GAX_ram->render_asm)(&args);
    } else {
        GAX_clear_mem(dest, size);
    }
}
