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

/* Text_PutChar: frees the glyph in the cell and draws character c with the current font. The
 * Glyph_Alloc result goes through a u16 local (the ROM zero-extends it before the orr). */
void sub_0800488C(int x, int y, u8 c)
{
    u16 *cell = (u16 *)((gTextCtx_030024F0.bg << 11) + 0x06000000);
    struct TextCtx *t;
    u16 v;
    cell += x + y * 32;
    if (cell != NULL) {
        if (sub_08004BA4(*cell))
            sub_08004CA0(*cell);
        else
            sub_0831AE58(*cell);
    }
    t = &gTextCtx_030024F0;
    if (t->font->type == 0) {
        v = sub_08004BD0(t->font->map(c), t->font->gfx, t->font->unk2);
        *cell = v | (t->palette << 12);
    } else
        *cell = sub_0831AE48(t->font->map(c), t->font->gfx, t->font->unk2);
}
