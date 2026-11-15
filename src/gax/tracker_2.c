/*
 * GAX 3.01 tracker.c (part 2 of 2), 08319F30-08319F88 (built with agbcc -fprologue-bugfix; docs/gax.md).
 * GAXFx_open. Followed by GAXFx_render (asm/gax/GAXFx_render.s, C in nonmatching/tracker.c); the ARM resampler is asm/gax/tracker_asm.s.
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
