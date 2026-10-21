#include "global.h"
#include "oam.h"
#include "obj.h"
void sub_08004508(struct Obj **pp)
{
    if (*pp) {
        sub_08003F00((*pp)->oam);
        sub_08004080((*pp)->tile);
        sub_080045FC((*pp)->id);
        *pp = NULL;
    }
}

void sub_08004534(struct Obj *o, int w, int h, int is8bpp, const void *gfx)
{
    if (w != o->w || h != o->h || is8bpp != o->is8bpp) {
        o->sizeDirty = 1;
        o->w = w;
        o->h = h;
        o->is8bpp = is8bpp;
    } else if (o->gfx != gfx)
        o->gfxDirty = 1;
    o->gfx = gfx;
}

void sub_0800456C(struct Obj *o, int pal)
{
    o->palette = pal & 15;
    o->palDirty = 1;
}

void sub_08004578(struct Obj *o, int hflip, int vflip)
{
    o->vflip = vflip & 1;
    o->hflip = hflip & 1;
}

void sub_08004584(struct Obj *o, int x, int y, int z)
{
    o->x = x;
    o->y = y;
    o->z = z;
    sub_08003DEC(o->oam, o->x, o->y, o->z);
}

void sub_080045A4(struct Obj *o, int dx, int dy, u8 dz)
{
    o->x += dx;
    o->y += dy;
    o->z += dz;
}

void sub_080045C4(struct Obj *o) { o->visible = 1; }

void sub_080045CC(struct Obj *o) { o->visible = 0; }

u8 sub_080045D4(void)
{
    u32 i = (u8)gObjFreeHead_030022E8;
    if (i != 255) {
        u8 *n = &gObjNext_03002268[i];
        gObjFreeHead_030022E8 = *n;
        *n = gObjUsedHead_030022EC;
        gObjUsedHead_030022EC = i;
    }
    return i;
}
