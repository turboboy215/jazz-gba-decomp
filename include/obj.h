#ifndef GUARD_OBJ_H
#define GUARD_OBJ_H

#include "global.h"

/* Region A hardware sprite objects (0800436C-08004848): 128 slots of 24 bytes, each owning an
 * OAM shadow entry and a block of OBJ VRAM. Sprite (sprite.h) layers point at these. */
struct Obj {
    u8 id;          /* +0x00 slot index */
    u8 oam;         /* +0x01 OAM shadow index */
    u16 tile;       /* +0x02 first OBJ tile */
    s16 x;          /* +0x04 */
    s16 y;          /* +0x06 */
    u8 z;           /* +0x08 depth, used for OAM ordering */
    u8 w;           /* +0x09 width in tiles */
    u8 h;           /* +0x0A height in tiles */
    u8 visible;     /* +0x0B */
    u8 palette;     /* +0x0C */
    u8 is8bpp;      /* +0x0D */
    u8 sizeDirty;   /* +0x0E realloc VRAM + reupload */
    u8 gfxDirty;    /* +0x0F reupload */
    u8 palDirty;    /* +0x10 */
    u8 hflip;       /* +0x11 */
    u8 vflip;       /* +0x12 */
    u8 mosaic;      /* +0x13 */
    const void *gfx;/* +0x14 */
};

extern struct Obj gObjs_03001668[128];
extern u8 gObjNext_03002268[128];
extern u32 gObjFreeHead_030022E8;
extern u32 gObjUsedHead_030022EC;

void sub_0800436C(void);
void sub_080043B4(void);
u8 sub_08004408(struct Obj **pp, int w, int h, int is8bpp, const void *gfx);
void sub_08004508(struct Obj **pp);
void sub_08004534(struct Obj *o, int w, int h, int is8bpp, const void *gfx);
void sub_0800456C(struct Obj *o, int pal);
void sub_08004578(struct Obj *o, int hflip, int vflip);
void sub_08004584(struct Obj *o, int x, int y, int z);
void sub_080045A4(struct Obj *o, int dx, int dy, u8 dz);
void sub_080045C4(struct Obj *o);
void sub_080045CC(struct Obj *o);
u8 sub_080045D4(void);
void sub_080045FC(u8 id);
u32 sub_08004654(u32 w, int h);
void sub_080046DC(struct Obj *o);
void sub_0800481C(struct Obj *o);
void sub_08003D54(void);
void sub_08003DEC(u8 oam, s16 x, s16 y, u8 z);

#endif
