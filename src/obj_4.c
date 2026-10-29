/* obj_4.c: hardware objects (struct Obj): one OAM entry and one VRAM block each. One of several obj files: the functions between them
 * are still asm (near misses in src/nonmatching/region_a.c). */
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
