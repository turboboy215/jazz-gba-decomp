/*
 * Region A functions that are decompiled but do not yet match byte-for-byte.
 *
 * The ROM is still built from asm/ for these. Each is the closest attempt so far: same
 * control flow and data accesses as the original, with register allocation, block order
 * or stack layout differences left (see docs/region_a.md for what each one needs).
 * It is not linked into the matching build; `make nonmatching` compiles it so it doesn't
 * rot, and the PC/PS1 ports can use it. When one matches, move it to its src/ file
 * (tools/add_funcs.py) and delete it here.
 */
#include "global.h"
#include "sprite.h"
#include "map.h"
#include "actor.h"
#include "resbank.h"
#include "system.h"
#include "link.h"
#include "oam.h"
#include "obj.h"
#include "text.h"
#include <stdarg.h>

u16 sub_08000850(u32 x, u32 y);
void CpuFastSet(const void *src, void *dst, u32 ctrl);
void sub_083186FC(void);
void sub_0831881C(void);
void sub_08003C1C(void);
extern u32 gUnk_030058A0, gUnk_030058A8;
extern const char gUnk_083D3218[], gUnk_083D3224[], gUnk_083D3240[], gUnk_083D3250[], gUnk_083D3270[];
struct Unk03000970 { u8 unk0; u8 unk1[5]; u8 unk6; };
extern struct Unk03000970 gUnk_03000970;
extern u32 gUnk_03000910, gUnk_03000914;
#define REG_TM3CNT (*(vu32 *)0x0400010C)
#define REG_IF (*(vu16 *)0x04000202)
void sub_0831A52C(const void *src, void *dst, u32 ctrl); /* CpuSet */
int sub_0831A68C(const char *s); /* strlen */
extern const u8 gUnk_083E0648[]; /* newlib _ctype_ */
#define CTYPE(c) ((gUnk_083E0648 + 1)[(u8)(c)])
extern u16 gUnk_02002000[];
extern u16 gUnk_02002800[];
extern u16 gUnk_02003600[];
extern const char gUnk_083D3334[]; /* "0123456789abcdefghijklmnopqrstuvwxyz" */
extern const char gUnk_083D335C[]; /* "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ" */
#define ZEROPAD 1
#define SIGN    2
#define PLUS    4
#define SPACE   8
#define LEFT    16
#define SPECIAL 32
#define LARGE   64
#define do_div(n, base) ({ int __res; __res = ((unsigned long)n) % (unsigned)base; n = ((unsigned long)n) / (unsigned)base; __res; })

/* ---- Map_IsTileBit10 08000898 ---- */
u8 sub_08000898(u32 x, int y)
{
    u8 r;
    if (y > 0) {
        r = 0;
        if (sub_08000850(x, y) & 0x400)
            r = 1;
    } else
        r = 0;
    return r;
}

/* ---- Map_HitCeiling 08000900 ---- */
u8 sub_08000900(int x, int y, int dy, int ofsX, int ofsY, int width)
{
    int tx;
    if (ofsX == 0) ofsX = -1;
    if (ofsY == 0) ofsY = -1;
    if (width == 0) width = 1;
    if (sub_080008F0(dy) != 1) {
        tx = x >> 8;
        ofsX += tx;
        ofsY += (y + dy) >> 8;
        if (ofsY >= 0) {
            for (; ofsX < tx + width; ofsX += 8)
                if (sub_080008BC(ofsX, ofsY) == COLL_SOLID)
                    return 1;
        }
    }
    return 0;
}

/* ---- Map_HitWall 08000990 ---- */
u8 sub_08000990(int x, int y, int dx, int left, int top, int right, int height)
{
    int ofs, tx, ty, ty0;
    if (left == 0) left = -1;
    if (top == 0) top = -1;
    if (right == 0) right = 1;
    if (height == 0) height = 1;
    ofs = left;
    if (sub_080008F0(dx) == 1)
        ofs = right;
    tx = ((x + dx) >> 8) + ofs;
    ty0 = y >> 8;
    for (ty = ty0 + top; ty < ty0 + height; ty += 8)
        if (ty >= 0 && sub_080008BC(tx, ty) == COLL_SOLID)
            return 1;
    return 0;
}

/* ---- Map_OnSlope 08000A1C ---- */
u8 sub_08000A1C(int x, int y, int checkBelow)
{
    int tx = x >> 8;
    u32 ty = y >> 8;
    if (ty <= gUnk_0300398C.layer->height * 8 - 8) {
        if (sub_08000978(sub_080008BC(tx, ty)))
            return 1;
        if (checkBelow) {
            ty += 8;
            if (sub_08000978(sub_080008BC(tx, ty)))
                return 1;
        }
    }
    return 0;
}

/* ---- Map_SnapToSlope 08000A70 ---- */
void sub_08000A70(int *px, int *py, int checkBelow)
{
    int tx = *px >> 8;
    int ty = *py >> 8;
    u16 t = sub_080008BC(tx, ty);
    if (!sub_08000978(t)) {
        if (!checkBelow)
            return;
        ty += 8;
        t = sub_080008BC(tx, ty);
        if (!sub_08000978(t))
            return;
    }
    while (t == COLL_SLOPE_FILL) {
        ty -= 8;
        t = sub_080008BC(tx, ty);
    }
    ty = ((ty + 8) & ~7) - 1;
    ty -= gUnk_083D1D80[t][tx & 7];
    *py = ty << 8;
}

/* ---- ResBank_SetSlot 08001A48 ---- */
void sub_08001A48(struct ResBank *b, int i, u8 *src)
{
    u8 *s = (u8 *)b + i * 4;
    s[0x74] = src[0];
    s[0x75] = src[1];
    s[0x77] = src[3];
    s[0x76] = src[2];
}

/* ---- Palette_CopyFaded 08001EBC ---- */
void sub_08001EBC(const u16 *src, u16 *dst, int ofs, int count)
{
    int i;
    u16 *d = dst + ofs;
    for (i = 0; i != count; i++) {
        u16 c = *src++;
        const u8 *t = gUnk_083D2FD8;
        const u8 *r = &t[(c & 31) + gUnk_03005859 * 32];
        const u8 *g = &t[((c >> 5) & 31) + gUnk_03005859 * 32];
        const u8 *b = &t[((c >> 10) & 31) + gUnk_03005859 * 32];
        *d++ = (*g << 5) | *r | (*b << 10);
    }
}

/* ---- Link_Send8 080027D4 ---- */
u32 sub_080027D4(struct LinkPort *p, u16 data)
{
    u32 st = REG_SIOCNT & 0x8C;
    if (st != 8) {
        sub_080023B0(p);
        return st ^ 8;
    }
    REG_SIODATA8 = data;
    REG_SIOCNT = 0x83;
    p->unk48 = 1;
    return 0;
}

/* ---- Oam_Init 08003CF4 ---- */
void sub_08003CF4(void)
{
    u8 i;
    for (i = 0; i < 128;) {
        struct OamEntry *e = &gOamBuffer_03000E58[i];
        OAM_HW[i].attr0 = 0x200;
        e->attr0 = 0x200;
        i++;
        if (i == 128)
            e->next |= 0xFF;
        else
            e->next = i;
        e->unk7 = 0;
    }
    gOamFreeHead_0300125C = 0;
    gOamUsedHead_03001260 = 255;
    gUnk_03001264 = 0;
    sub_08003F70();
}

/* ---- Oam_Flush 08003D54 ---- */
void sub_08003D54(void)
{
    u8 i = gOamUsedHead_03001260;
    u8 n = 0;
    u8 j;
    while (i != 255) {
        struct OamEntry *e = &gOamBuffer_03000E58[i];
        sub_0831A52C(e, &OAM_HW[n], 3);
        i = e->next;
        n++;
    }
    if (gUnk_03001264 > n)
        for (j = n; j < gUnk_03001264; j++)
            OAM_HW[j].attr0 = 0x200;
    gUnk_03001264 = n;
}

/* ---- Oam_Free 08003F00 ---- */
void sub_08003F00(u8 idx)
{
    u8 j = gOamUsedHead_03001260;
    struct OamEntry *e;
    if (idx == 255)
        return;
    if (j == idx)
        gOamUsedHead_03001260 = gOamBuffer_03000E58[idx].next;
    else {
        while (j != 255) {
            e = &gOamBuffer_03000E58[j];
            if (e->next == idx) {
                e->next = gOamBuffer_03000E58[idx].next;
                break;
            }
            j = e->next;
        }
    }
    e = &gOamBuffer_03000E58[idx];
    e->attr0 = 0x200;
    e->unk7 = 0;
    e->next = gOamFreeHead_0300125C;
    gOamFreeHead_0300125C = idx;
}

/* ---- VramMap_Alloc 08003FBC ---- */
u16 sub_08003FBC(int w, int h, const void *src, int is8bpp)
{
    int n = h * w;
    int i, j;
    u8 *p;
    u16 t;
    if (is8bpp)
        n <<= 1;
    for (i = 1024 - n; i >= 0; i -= n) {
        p = &gVramMap_03001268[i];
        if (*p == 0) {
            for (j = 0; j < n; j++)
                if (p[j] != 0)
                    goto next;
            t = i;
            goto found;
        }
    next:;
    }
    return 0xFFFF;
found:
    *p = 1;
    if (n > 1) {
        u8 *q = p + 1;
        int k = n - 1;
        do {
            *q++ = 0xFF;
        } while (--k != 0);
    }
    CpuFastSet(src, (u8 *)0x06010000 + t * 32, (n * 8) & 0x1FFFFF);
    return t;
}

/* ---- Obj_InitAll 0800436C ---- */
void sub_0800436C(void)
{
    u32 i = 0, j;
loop:
    j = i + 1;
    if (j == 128)
        gObjNext_03002268[i] |= 0xFF;
    else
        gObjNext_03002268[i] = j;
    i = j;
    if (i <= 127)
        goto loop;
    gObjFreeHead_030022E8 = 0;
    gObjUsedHead_030022EC = 255;
    sub_08003CF4();
    sub_08003F94();
}

/* ---- Obj_Create 08004408 ---- */
u8 sub_08004408(struct Obj **pp, int w, int h, int is8bpp, const void *gfx)
{
    u8 id = sub_080045D4();
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
    (*pp)->oam = sub_08003DC0();
    if ((*pp)->oam == 255) {
        sub_080045FC((*pp)->id);
        *pp = NULL;
        return 0;
    }
    *(u32 *)&gOamBuffer_03000E58[(*pp)->oam] = (is8bpp << 13) | 0x200 | sub_08004654(w, h);
    (*pp)->tile = sub_08003FBC(w, h, gfx, is8bpp);
    if ((*pp)->tile == 0xFFFF) {
        sub_08003F00((*pp)->oam);
        sub_080045FC((*pp)->id);
        *pp = NULL;
        return 0;
    }
    gOamBuffer_03000E58[(*pp)->oam].attr2 &= 0xFC00;
    gOamBuffer_03000E58[(*pp)->oam].attr2 |= (*pp)->tile & 0x3FF;
    return 1;
}

/* ---- Obj_FreeSlot 080045FC ---- */
void sub_080045FC(u8 id)
{
    u32 h = gObjUsedHead_030022EC;
    u8 j = gObjUsedHead_030022EC;
    if (id == 255)
        return;
    if (h == id)
        gObjUsedHead_030022EC = gObjNext_03002268[id];
    else {
        for (; j != 255; j = gObjNext_03002268[j]) {
            if (gObjNext_03002268[j] == id) {
                gObjNext_03002268[j] = gObjNext_03002268[id];
                break;
            }
        }
    }
    gObjNext_03002268[id] = gObjFreeHead_030022E8;
    gObjFreeHead_030022E8 = id;
}

/* ---- Obj_Update 080046DC ---- */
void sub_080046DC(struct Obj *o)
{
    struct OamEntry *e;
    if (!o->visible) {
        gOamBuffer_03000E58[o->oam].attr0 &= 0xFCFF;
        gOamBuffer_03000E58[o->oam].attr0 |= 0x200;
        return;
    }
    *(u32 *)&gOamBuffer_03000E58[o->oam] &= 0x3FFF3FFF;
    *(u32 *)&gOamBuffer_03000E58[o->oam] |= (o->is8bpp << 13) | sub_08004654(o->w, o->h);
    if (o->sizeDirty) {
        sub_08004080(o->tile);
        o->tile = sub_08003FBC(o->w, o->h, o->gfx, o->is8bpp);
        gOamBuffer_03000E58[o->oam].attr2 &= 0xFC00;
        gOamBuffer_03000E58[o->oam].attr2 |= o->tile;
        o->sizeDirty = 0;
        o->gfxDirty = 0;
    } else if (o->gfxDirty) {
        sub_0800404C(o->tile, o->w, o->h, o->gfx, o->is8bpp);
        o->gfxDirty = 0;
    }
    if (o->palDirty) {
        gOamBuffer_03000E58[o->oam].attr2 &= 0x0FFF;
        gOamBuffer_03000E58[o->oam].attr2 |= o->palette << 12;
        o->palDirty = 0;
    }
    gOamBuffer_03000E58[o->oam].attr0 &= 0xF3FF;
    if (o->mosaic)
        gOamBuffer_03000E58[o->oam].attr0 |= 0x400;
    gOamBuffer_03000E58[o->oam].attr1 |= (o->hflip << 12) | (o->vflip << 13);
}

/* ---- Text_PutChar 0800488C ---- */
void sub_0800488C(int x, int y, u8 c)
{
    u16 *cell = (u16 *)((gTextCtx_030024F0.bg << 11) + 0x06000000);
    struct TextCtx *t;
    cell += x + y * 32;
    if (cell != NULL) {
        if (sub_08004BA4(*cell))
            sub_08004CA0(*cell);
        else
            sub_0831AE58(*cell);
    }
    t = &gTextCtx_030024F0;
    if (t->font->type == 0)
        *cell = (u16)sub_08004BD0(t->font->map(c), t->font->gfx, t->font->unk2) | (t->palette << 12);
    else
        *cell = sub_0831AE48(t->font->map(c), t->font->gfx, t->font->unk2);
}

/* ---- Text_ParsePaletteTag 08004B14 ---- */
int sub_08004B14(const char *s)
{
    char buf[12];
    int n = 0;
    if (*s != 'P' && *s != 'p')
        return 0;
    if (*s++ != '}') {
        u8 c;
        do {
            c = *s++;
            buf[n++] = c;
        } while (c != '}');
    }
    buf[n - 1] = 0;
    gTextCtx_030024F0.palette = sub_08004A8C(buf);
    return 1;
}

/* ---- number 08004F38 ---- */
char *sub_08004F38(char *str, long num, int base, int size, int precision, int type)
{
    char c, sign, tmp[66];
    const char *digits = gUnk_083D3334;
    int i;

    if (type & LARGE)
        digits = gUnk_083D335C;
    if (type & LEFT)
        type &= ~ZEROPAD;
    if (base < 2 || base > 36)
        return 0;
    c = (type & ZEROPAD) ? '0' : ' ';
    sign = 0;
    if (type & SIGN) {
        if (num < 0) {
            sign = '-';
            num = -num;
            size--;
        } else if (type & PLUS) {
            sign = '+';
            size--;
        } else if (type & SPACE) {
            sign = ' ';
            size--;
        }
    }
    if (type & SPECIAL) {
        if (base == 16)
            size -= 2;
        else if (base == 8)
            size--;
    }
    i = 0;
    if (num == 0)
        tmp[i++] = '0';
    else while (num != 0)
        tmp[i++] = digits[do_div(num, base)];
    if (i > precision)
        precision = i;
    size -= precision;
    if (!(type & (ZEROPAD + LEFT)))
        while (size-- > 0)
            *str++ = ' ';
    if (sign)
        *str++ = sign;
    if (type & SPECIAL) {
        if (base == 8)
            *str++ = '0';
        else if (base == 16) {
            *str++ = '0';
            *str++ = digits[33];
        }
    }
    if (!(type & LEFT))
        while (size-- > 0)
            *str++ = c;
    while (i < precision--)
        *str++ = '0';
    while (i-- > 0)
        *str++ = tmp[i];
    while (size-- > 0)
        *str++ = ' ';
    return str;
}
