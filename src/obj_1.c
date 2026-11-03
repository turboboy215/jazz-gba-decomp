/* obj_1.c: hardware objects (struct Obj): one OAM entry and one VRAM block each. One of several obj files: the functions between them
 * are still asm (near misses in src/nonmatching/region_a.c). */
#include "global.h"
#include "link.h"
#include "multi_sio.h"
#include "oam.h"
#include "obj.h"

#define Sio gUnk_03000AF0

/* Obj_InitAll: links the 128 hardware objects into the free list and resets OAM and OBJ VRAM.
 * Library code built with -fno-gcse (the ROM loads the list head addresses after the loop). */
void sub_0800436C(void)
{
    u32 i, j;
    for (i = 0; i < 128; i = j) {
        j = i + 1;
        if (j != 128) gObjNext_03002268[i] = j; else gObjNext_03002268[i] |= 0xFF;
    }
    gObjFreeHead_030022E8 = 0;
    gObjUsedHead_030022EC = 255;
    sub_08003CF4();
    sub_08003F94();
}

void sub_080043B4(void)
{
    u32 i = gObjUsedHead_030022EC;
    if (i != 255) {
        sub_080046DC(&gObjs_03001668[i]);
        while (gObjNext_03002268[i] != 255) {
            i = gObjNext_03002268[i];
            sub_080046DC(&gObjs_03001668[i]);
        }
    }
    sub_08003D54();
}

u8 sub_08004408(struct Obj **pp, int w, int h, int is8bpp, const void *gfx)
{
    u32 id = sub_080045D4();
    u32 ret;
    if (id == 255) {
        *pp = NULL;
        return 0;
    }
    *pp = &gObjs_03001668[id];
    sub_0800481C(*pp);
    (*pp)->id = id;
    (*pp)->gfx = gfx;
    (*pp)->w = w;
    (*pp)->h = h;
    (*pp)->is8bpp = is8bpp;
    { u8 oa = sub_08003DC0(); (*pp)->oam = oa; }
    if ((*pp)->oam == 255) {
        sub_080045FC((*pp)->id);
        *pp = NULL;
        return 0;
    }
    { u32 sz = sub_08004654(w, h); *(u32 *)&gOamBuffer_03000E58[(*pp)->oam] = (is8bpp << 13) | (0x200 | sz); }
    (*pp)->tile = sub_08003FBC(w, h, gfx, is8bpp);
    if ((*pp)->tile == 0xFFFF) {
        sub_08003F00((*pp)->oam);
        sub_080045FC((*pp)->id);
        *pp = NULL;
        ret = 0;
        goto out;
    }
    gOamBuffer_03000E58[(*pp)->oam].attr2 &= 0xFC00;
    gOamBuffer_03000E58[(*pp)->oam].attr2 |= (*pp)->tile & 0x3FF;
    ret = 1;
out:
    return ret;
}

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
