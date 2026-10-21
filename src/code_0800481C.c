#include "global.h"
#include "obj.h"
#include "text.h"
#include <stdarg.h>
void sub_0800481C(struct Obj *o)
{
    o->oam = 255;
    o->tile = 0xFFFF;
    o->visible = 0;
    o->x = 0;
    o->y = 0;
    o->z = 0;
    o->palDirty = 0;
    o->gfxDirty = 0;
    o->gfx = NULL;
    o->w = 0;
    o->h = 0;
    o->is8bpp = 0;
    o->palette = 0;
    o->mosaic = 0;
}

void sub_08004848(struct Font *font, u8 bg)
{
    struct TextCtx *t = &gTextCtx_030024F0;
    t->font = font;
    t->bg = bg;
    t->buf = gTextBuf_030022F0;
    t->unk4 = 0x200;
    t->palette = 0;
}

void sub_08004868(struct Font *font) { gTextCtx_030024F0.font = font; }

void sub_08004874(u8 bg) { gTextCtx_030024F0.bg = bg; }

void sub_08004880(u8 pal) { gTextCtx_030024F0.palette = pal; }
