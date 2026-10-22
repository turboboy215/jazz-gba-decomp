/*
 * Region A functions that are decompiled but do not yet match byte-for-byte.
 * (Session 2026-10-22 added the second group, after Text_ParsePaletteTag/number: see the notes.)
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
#include "multi_sio.h"
#include <stdarg.h>
struct TilesetHdr { u16 count; u16 bpp; };
struct CellMap { u32 w; u32 h; u8 size; u8 pad[3]; u8 data[1]; };
struct CellTiles { u32 unk0; u8 size; u8 pad[3]; u8 data[1]; };
extern u16 gUnk_03002500, gUnk_03002504;
extern u16 gUnk_03000D30[MULTIBOOT_NCHILD];
int sub_08004EEC(const char **s);
u32 sub_08004F18(const char *s, u32 count);
extern const char gUnk_083D3384[];
#define MULTIBOOT_CLIENT_INFO 0x72
#define MULTIBOOT_CLIENT_DLREADY 0x73
#define isdigit(c) ((u8)((c) - '0') <= 9)

u16 sub_08000850(u32 x, u32 y);
void CpuFastSet(const void *src, void *dst, u32 ctrl);
void sub_083186FC(void);
void sub_0831881C(void);
void sub_08003C1C(void);
extern u32 gUnk_030058A0, gUnk_030058A8;
extern const char gUnk_083D3218[], gUnk_083D3224[], gUnk_083D3240[], gUnk_083D3250[], gUnk_083D3270[];
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

/* ---- Sprite_Init 080002E0 ---- register allocation: the ROM keeps i*4 in sl and spills anim; note the original bug (the failure loop clears objs[i], not objs[j]) */
u32 sub_080002E0(struct Sprite *s, struct AnimBank *bank, int anim, int frame)
{
    struct Anim *a = sub_0800079C(bank, anim);
    u32 i, j;
    s->bank = bank;
    s->tick = 0;
    s->flag1 = 0;
    sub_08000680(s, anim);
    sub_0800065C(s, frame);
    sub_08000730(s, ANIM_DEFAULT);
    sub_08000738(s, ANIM_DEFAULT);
    sub_08000734(s, ANIM_DEFAULT);
    sub_0800075C(s, ANIM_DEFAULT);
    sub_08000604(s);
    for (i = 0; i < a->layerCount; i++) {
        if (sub_080007AC(bank, anim, frame, i)->gfx != 0x3FFF) {
            struct CelGfx *g = sub_080007CC(bank, anim, frame, i);
            u8 bpp = g->is8bpp;
            if (!sub_08004408(&s->objs[i], g->w, g->h, bpp, g->data)) {
                for (j = i; j < SPRITE_MAX_LAYERS; j++)
                    s->objs[i] = NULL;
                sub_080005D4(s);
                return 0;
            }
        } else
            s->objs[i] = NULL;
    }
    for (; i < SPRITE_MAX_LAYERS; i++)
        s->objs[i] = NULL;
    return 1;
}

/* ---- Sprite_Draw 08000408 ---- same structure; register allocation (ROM keeps i in r8 and &objs[i], i*4 on the stack) */
u32 sub_08000408(struct Sprite *s)
{
    struct Anim *a = sub_08000644(s);
    u32 i, j;
    if (!s->visible) {
        for (i = 0; i < SPRITE_MAX_LAYERS; i++)
            if (s->objs[i] != NULL)
                sub_080045CC(s->objs[i]);
        return 1;
    }
    for (i = 0; i < a->layerCount; i++) {
        struct CelGfx *g = sub_08000614(s, i);
        struct AnimCel *c = sub_0800062C(s, i);
        if (c->gfx == 0x3FFF) {
            if (s->objs[i] != NULL) {
                sub_08004508(&s->objs[i]);
                s->objs[i] = NULL;
            }
            continue;
        }
        if (s->objs[i] == NULL) {
            if (!sub_08004408(&s->objs[i], g->w, g->h, g->is8bpp, g->data)) {
                for (j = i; j < SPRITE_MAX_LAYERS; j++)
                    s->objs[i] = NULL;
                sub_080005D4(s);
                return 0;
            }
        } else
            sub_08004534(s->objs[i], g->w, g->h, g->is8bpp, g->data);
        if (!g->is8bpp) {
            if (s->palette[i] == ANIM_DEFAULT)
                sub_0800456C(s->objs[i], g->palette);
            else
                sub_0800456C(s->objs[i], s->palette[i]);
        }
        sub_08004578(s->objs[i], c->hflip, c->vflip);
        sub_08004584(s->objs[i], s->x - c->x, s->y - c->y, (u8)s->z);
        s->objs[i]->mosaic = s->flag1;
        sub_080045C4(s->objs[i]);
    }
    for (; i < SPRITE_MAX_LAYERS; i++) {
        if (s->objs[i] != NULL) {
            sub_08004508(&s->objs[i]);
            s->objs[i] = NULL;
        }
    }
    return 1;
}

/* ---- ResBank_SetTileset 08001314 ---- 8 diff lines: the second search loop must post-increment the list pointer (ldmia) while k = j uses the old j */
void sub_08001314(struct ResBank *b, u8 slot, void *tiles)
{
    struct TilesetHdr *list[5];
    u32 ofs[5];
    u32 n, i, j;
    b->unk14[slot] = (u32)tiles;
    b->unk24[slot] = 0;
    n = 0;
    for (i = 0; i < 4; i++) {
        u8 dup = 0;
        for (j = 0; j < n;)
            if ((struct TilesetHdr *)b->unk14[i] == list[j++])
                dup = 1;
        if (b->unk14[i] != 0 && !dup)
            list[n++] = (struct TilesetHdr *)b->unk14[i];
    }
    ofs[0] = 0;
    for (i = 1; i < n; i++) {
        u32 m = 2;
        if (list[i - 1]->bpp == 4)
            m = 1;
        ofs[i] = ofs[i - 1] + list[i - 1]->count * m;
    }
    for (i = 0; i < 4; i++) {
        int k = -1;
        for (j = 0; j < n;)
            if ((struct TilesetHdr *)b->unk14[i] == list[j++])
                k = j - 1;
        if (k != -1)
            b->unk24[i] = ofs[k];
    }
}

/* ---- ResBank_GetCell 08001BCC ---- register allocation (x/y swapped, t->size in r4) */
u32 sub_08001BCC(struct ResBank *b, u32 x, u32 y)
{
    struct CellMap *m = sub_08001A30(b, 0);
    struct CellTiles *t = sub_08001BA0(b);
    u32 v;
    if (m->size == 1) {
        u8 *d = m->data;
        v = d[(y >> 1) * (m->w >> 1) + (x >> 1)];
    } else if (m->size == 2) {
        u16 *d = (u16 *)m->data;
        v = d[(y >> 1) * (m->w >> 1) + (x >> 1)];
    } else {
        u32 *d = (u32 *)m->data;
        v = d[(y >> 1) * (m->w >> 1) + (x >> 1)];
    }
    if (t->size == 1) {
        u8 *d = t->data;
        return d[v * 4 + (y & 1) * 2 + (x & 1)];
    } else if (t->size == 2) {
        u16 *d = (u16 *)t->data;
        return d[v * 4 + (y & 1) * 2 + (x & 1)];
    } else {
        u32 *d = (u32 *)t->data;
        return d[v * 4 + (y & 1) * 2 + (x & 1)];
    }
}

/* ---- Glyph_Alloc 08004BD0 ---- register allocation; the free-list heads are re-read after the compare */
u32 sub_08004BD0(u32 glyph, const u8 *gfx, u32 base)
{
    u16 g = glyph;
    u32 key = glyph + base;
    u32 t, tile;
    if (key == 0)
        return 0;
    t = gUnk_02002000[key];
    if (t != 0xFFFF) {
        tile = t;
        gUnk_02002800[tile]++;
        return tile;
    }
    if (gUnk_03002504 != t) {
        tile = gUnk_03002504;
        gUnk_03002504 = gUnk_02002800[tile];
    } else {
        u16 free = gUnk_03002504;
        if (gUnk_03002500 == free)
            return 0;
        tile = gUnk_03002500;
        gUnk_03002500 = gUnk_02002800[tile];
        gUnk_02002800[tile + 1] = free;
        gUnk_03002504 = tile + 1;
    }
    gUnk_02002800[tile] = 1;
    gUnk_02002000[key] = tile;
    gUnk_02003600[tile] = key;
    CpuFastSet(gfx + g * 32, (u8 *)0x06000000 + tile * 32, 8);
    return tile;
}

/* ---- Glyph_Free 08004CA0 ---- register allocation; 0xFFFF loaded late */
void sub_08004CA0(u32 cell)
{
    u32 t = cell & 0x3FF;
    u32 buddy, prev, cur;
    if (t == 0)
        return;
    if (--gUnk_02002800[t] != 0)
        return;
    gUnk_02002000[gUnk_02003600[t]] |= 0xFFFF;
    gUnk_02003600[t] |= 0xFFFF;
    buddy = t ^ 1;
    if (gUnk_02003600[buddy] == 0xFFFF) {
        prev = 0xFFFF;
        cur = gUnk_03002504;
        while (cur != buddy) {
            prev = cur;
            cur = gUnk_02002800[cur];
        }
        if (prev == 0xFFFF)
            gUnk_03002504 = gUnk_02002800[cur];
        else
            gUnk_02002800[prev] = gUnk_02002800[cur];
        t &= 0xFFFE;
        gUnk_02002800[t] = gUnk_03002500;
        gUnk_03002500 = t;
    } else {
        gUnk_02002800[t] = gUnk_03002504;
        gUnk_03002504 = t;
    }
}

/* ---- MultiBootMain 080023EC ---- pokeemerald src/multiboot.c MultiBootMain; this ROM keeps &mp->probe_target_bit in a fresh register per case (older library build) */
int sub_080023EC(struct MultiBootParam *mp)
{
    int i;
    int j;
    int k;

    if (sub_080028E4(mp))
    {
        return 0;
    }

    if (mp->check_wait > 15)
    {
        mp->check_wait--;
        return 0;
    }

output_burst:
    if (mp->sendflag)
    {
        mp->sendflag = 0;

        i = REG_SIOCNT & (0x80 | 0x40 | 0x30 | 0x08 | 0x04);
        if (i != 0x08)
        {
            sub_080023B0(mp);
            return i ^ 0x08;
        }
    }

    if (mp->probe_count >= 0xe0)
    {
        i = sub_080028F4(mp);
        if (i)
        {
            return i;
        }

        if (mp->server_type == 1
         && mp->probe_count > 0xe1
         && sub_080028E4(mp) == 0)
        {
            sub_080029F4();
            goto output_burst;
        }

        if (sub_080028E4(mp) == 0)
        {
            if (mp->handshake_timeout == 0)
            {
                sub_080023B0(mp);
                return 0x71;
            }
            mp->handshake_timeout--;
        }

        return 0;
    }

    switch (mp->probe_count)
    {
    case 0:
        k = 0x0e;
        for (i = MULTIBOOT_NCHILD; i != 0; i--)
        {
            if (REG_SIOMULTI(i) != 0xffff)
            {
                break;
            }
            k >>= 1;
        }

        k &= 0x0e;
        mp->response_bit = k;

        for (i = MULTIBOOT_NCHILD; i != 0; i--)
        {
            j = REG_SIOMULTI(i);
            if (mp->client_bit & (1 << i))
            {
                if (j != ((MULTIBOOT_CLIENT_INFO << 8) | (1 << i)))
                {
                    k = 0;
                    break;
                }
            }
        }

        mp->client_bit &= k;

        if (k == 0)
        {
            mp->check_wait = 15;
        }

        if (mp->check_wait)
        {
            mp->check_wait--;
        }
        else
        {
            if (mp->response_bit != mp->client_bit)
            {
                sub_08002820(mp);
                goto case_1;
            }
        }

    output_master_info:
        return sub_080027D4(mp, (0x62 << 8) | mp->client_bit);

    case_1:
    case 1:
        mp->probe_target_bit = 0;
        for (i = MULTIBOOT_NCHILD; i != 0; i--)
        {
            j = REG_SIOMULTI(i);
            if ((j >> 8) == MULTIBOOT_CLIENT_INFO)
            {
                gUnk_03000D30[i - 1] = j;
                j &= 0xff;
                if (j == (1 << i))
                {
                    mp->probe_target_bit |= j;
                }
            }
        }

        if (mp->response_bit != mp->probe_target_bit)
        {
            goto output_master_info;
        }

        mp->probe_count = 2;
        return sub_080027D4(mp, (0x61 << 8) | mp->probe_target_bit);

    case 2:
        for (i = MULTIBOOT_NCHILD; i != 0; i--)
        {
            if (mp->probe_target_bit & (1 << i))
            {
                j = REG_SIOMULTI(i);
                if (j != gUnk_03000D30[i - 1])
                {
                    mp->probe_target_bit ^= 1 << i;
                }
            }
        }
        goto output_header;

    case 0xd0:
        k = 1;
        for (i = MULTIBOOT_NCHILD; i != 0; i--)
        {
            j = REG_SIOMULTI(i);
            mp->client_data[i - 1] = j;
            if (mp->probe_target_bit & (1 << i))
            {
                if ((j >> 8) != MULTIBOOT_CLIENT_INFO
                 && (j >> 8) != MULTIBOOT_CLIENT_DLREADY)
                {
                    sub_080023B0(mp);
                    return 0x60;
                }
                if (j == gUnk_03000D30[i - 1])
                {
                    k = 0;
                }
            }
        }

        if (k == 0)
        {
            return sub_080027D4(mp, (0x63 << 8) | mp->palette_data);
        }

        mp->probe_count = 0xd1;

        k = 0x11;
        for (i = MULTIBOOT_NCHILD; i != 0; i--)
        {
            k += mp->client_data[i - 1];
        }
        mp->handshake_data = k;
        return sub_080027D4(mp, (0x64 << 8) | (k & 0xff));

    case 0xd1:
        for (i = MULTIBOOT_NCHILD; i != 0; i--)
        {
            j = REG_SIOMULTI(i);
            if (mp->probe_target_bit & (1 << i))
            {
                if ((j >> 8) != MULTIBOOT_CLIENT_DLREADY)
                {
                    sub_080023B0(mp);
                    return 0x60;
                }
            }
        }

        i = sub_0831A540(mp);

        if (i == 0)
        {
            mp->probe_count = 0xe0;
            mp->handshake_timeout = 400;
            return 0;
        }
        sub_080023B0(mp);
        mp->check_wait = 15 * 2;
        return 0x70;

    default:
        for (i = MULTIBOOT_NCHILD; i != 0; i--)
        {
            if (mp->probe_target_bit & (1 << i))
            {
                j = REG_SIOMULTI(i);
                if ((j >> 8) != (0x61 + 1 - (mp->probe_count >> 1))
                 || ((j & 0xff) != (1 << i)))
                {
                    mp->probe_target_bit ^= 1 << i;
                }
            }
        }

        if (mp->probe_count == 0xc4)
        {
            mp->client_bit = mp->probe_target_bit & 0x0e;
            mp->probe_count = 0;
            goto output_master_info;
        }

    output_header:
        if (mp->probe_target_bit == 0)
        {
            sub_080023B0(mp);
            return 0x50;
        }

        mp->probe_count += 2;
        if (mp->probe_count == 0xc4)
        {
            goto output_master_info;
        }
        i = sub_080027D4(mp,
            (mp->masterp[mp->probe_count - 4 + 1] << 8)
            | mp->masterp[mp->probe_count - 4]);

        if (i)
        {
            return i;
        }
        if (mp->server_type == 1)
        {
            sub_080029F4();
            goto output_burst;
        }
        return 0;
    }
}

/* ---- MultiBootHandShake 080028F4 ---- pokeemerald MultiBootHandShake; the ROM strength-reduces REG_SIOMULTI(i) in both loops */
int sub_080028F4(struct MultiBootParam *mp)
{
    int i, j;

#define send_data (mp->system_work[0])
#define must_data (mp->system_work[1])

    switch (mp->probe_count) {
    case_0xe0:
    case 0xe0:
        mp->probe_count = 0xe1;
        must_data = 0x0000;
        send_data = 0x100000;
        return sub_080027D4(mp, 0x0000);

    default:
        for (i = MULTIBOOT_NCHILD; i != 0; i--) {
            j = REG_SIOMULTI(i);
            if ((mp->client_bit & (1 << i))
                && j != must_data)
                goto case_0xe0;
        }
        mp->probe_count++;
        must_data = send_data & 0xffff;
        if (send_data == 0x0000) {
            must_data = mp->masterp[0xac] | (mp->masterp[0xad] << 8);
            send_data = must_data << 5;
        }
        send_data >>= 5;
    output_common:
        return sub_080027D4(mp, send_data);

    case 0xe7:
    case 0xe8:
        for (i = MULTIBOOT_NCHILD; i != 0; i--) {
            j = REG_SIOMULTI(i);
            if ((mp->client_bit & (1 << i)) && j != must_data) {
                sub_080023B0(mp);
                return 0x71;
            }
        }

        mp->probe_count++;
        if (mp->probe_count == 0xe9)
            return 0;

        send_data = mp->masterp[0xae] | (mp->masterp[0xaf] << 8);
        must_data = send_data;
        goto output_common;
    }

#undef send_data
#undef must_data
}

/* ---- MultiSioSendDataSet 080039F0 ---- 7 diff lines: checksum loop registers */
void sub_080039F0(void *sendp, u32 loadRequest)
{
    s32 checkSum = 0;
    s32 i;

    ((struct MultiSioPacket *)Ms.nextSendBufp)->loadRequest = loadRequest;
    ((struct MultiSioPacket *)Ms.nextSendBufp)->downloadSuccessFlag = gUnk_03000AF0.downloadSuccessFlag;
    ((struct MultiSioPacket *)Ms.nextSendBufp)->loadSuccessFlag = Ms.loadSuccessFlag;
    ((struct MultiSioPacket *)Ms.nextSendBufp)->frameCounter = Ms.sendFrameCounter;
    ((struct MultiSioPacket *)Ms.nextSendBufp)->recvErrorFlags = Ms.recvFlagsHistory ^ Ms.recvSuccessFlags;
    ((struct MultiSioPacket *)Ms.nextSendBufp)->checkSum = 0;
    sub_0831A52C(sendp, &Ms.nextSendBufp[2], 0x04000000 | (16 / 4));
    for (i = 0; i < sizeof(struct MultiSioPacket) / 2 - 2; i++)
        checkSum += Ms.nextSendBufp[i];
    ((struct MultiSioPacket *)Ms.nextSendBufp)->checkSum = ~checkSum - 12;
    Ms.sendReady = 1;
}

/* ---- MultiSioRecvDataCheck 08003A9C ---- register allocation (the ROM spills i - 1) */
u32 sub_08003A9C(void *recvp)
{
    s32 checkSum;
    u8 syncRecvFlag;
    s32 i, ii;
    struct MultiSioPacket *p;

    syncRecvFlag = MultiSioRecvBufChange();
    Ms.recvSuccessFlags = 0;
    Ms.loadSuccessFlag = 0;
    if (syncRecvFlag) {
        for (i = 3; i >= 0; i--) {
            u32 zero;
            p = &((struct MultiSioPacket *)Ms.recvCheckBufp)[i];
            checkSum = 0;
            for (ii = 0; ii < sizeof(struct MultiSioPacket) / 2 - 2; ii++)
                checkSum += ((u16 *)p)[ii];
            if ((s16)checkSum == -13) {
                Ms.recvSuccessFlags |= 1 << i;
                Ms.downloadSuccessFlags |= p->downloadSuccessFlag << i;
                sub_0831A52C(p->data, (u8 *)recvp + i * 16, 0x04000000 | (16 / 4));
            }
            zero = 0;
            sub_0831A52C(&zero, p->data, 0x05000000 | (16 / 4));
        }
    }
    Ms.recvFlagsHistory |= Ms.recvSuccessFlags;
    Ms.connectedFlags |= Ms.recvFlagsHistory;
    if (Ms.recvSuccessFlags & 1) {
        if (Ms.type == 8) {
            if ((Ms.recvSuccessFlags & 3) && Ms.recvSuccessFlags == Ms.connectedFlags)
                Ms.loadEnable = 1;
            if ((Ms.downloadSuccessFlags & 0xE) == (Ms.connectedFlags & 0xE))
                Ms.loadSuccessFlag = 1;
        } else
            Ms.loadSuccessFlag = p->loadSuccessFlag;
        Ms.loadRequest = p->loadRequest;
    }
    return Ms.recvSuccessFlags;
}
/* ---- Text_StrRev 08004A54 ---- 2 diff lines: the ROM decrements the dst pointer before incrementing src */
void sub_08004A54(char *dst, const char *src)
{
    int n = sub_08004A40(src);
    int i;
    if (n != 0) {
        for (i = 0; src[i]; i++)
            dst[n - 1 - i] = src[i];
        dst[n] = 0;
    }
}
/* ---- vsprintf 08005100 ---- Linux 2.0 lib/vsprintf.c; one extra dead `ands r0, r3` before the int/unsigned
 * va_arg (the ROM keeps only the `movs r0, #2`). Jump tables at 083D338C (build with tools/jtbl.py). */
int sub_08005100(char *buf, const char *fmt, va_list args)
{
    int len;
    unsigned long num;
    int i, base;
    char *str;
    const char *s;

    int flags;          /* flags to number() */

    int field_width;    /* width of output field */
    int precision;      /* min. # of digits for integers; max
                           number of chars for from string */
    int qualifier;      /* 'h', 'l', or 'L' for integer fields */

    for (str = buf; *fmt; ++fmt) {
        if (*fmt != '%') {
            *str++ = *fmt;
            continue;
        }

        /* process flags */
        flags = 0;
    repeat:
        ++fmt;          /* this also skips first '%' */
        switch (*fmt) {
        case '-': flags |= LEFT; goto repeat;
        case '+': flags |= PLUS; goto repeat;
        case ' ': flags |= SPACE; goto repeat;
        case '#': flags |= SPECIAL; goto repeat;
        case '0': flags |= ZEROPAD; goto repeat;
        }

        /* get field width */
        field_width = -1;
        if (isdigit(*fmt))
            field_width = sub_08004EEC(&fmt);
        else if (*fmt == '*') {
            ++fmt;
            /* it's the next argument */
            field_width = va_arg(args, int);
            if (field_width < 0) {
                field_width = -field_width;
                flags |= LEFT;
            }
        }

        /* get the precision */
        precision = -1;
        if (*fmt == '.') {
            ++fmt;
            if (isdigit(*fmt))
                precision = sub_08004EEC(&fmt);
            else if (*fmt == '*') {
                ++fmt;
                /* it's the next argument */
                precision = va_arg(args, int);
            }
            if (precision < 0)
                precision = 0;
        }

        /* get the conversion qualifier */
        qualifier = -1;
        if (*fmt == 'h' || *fmt == 'l' || *fmt == 'L') {
            qualifier = *fmt;
            ++fmt;
        }

        /* default base */
        base = 10;

        switch (*fmt) {
        case 'c':
            if (!(flags & LEFT))
                while (--field_width > 0)
                    *str++ = ' ';
            *str++ = (unsigned char) va_arg(args, int);
            while (--field_width > 0)
                *str++ = ' ';
            continue;

        case 's':
            s = va_arg(args, char *);
            if (!s)
                s = gUnk_083D3384;

            len = sub_08004F18(s, precision);

            if (!(flags & LEFT))
                while (len < field_width--)
                    *str++ = ' ';
            for (i = 0; i < len; ++i)
                *str++ = *s++;
            while (len < field_width--)
                *str++ = ' ';
            continue;

        case 'p':
            if (field_width == -1) {
                field_width = 2 * sizeof(void *);
                flags |= ZEROPAD;
            }
            str = sub_08004F38(str,
                (unsigned long) va_arg(args, void *), 16,
                field_width, precision, flags);
            continue;

        case 'n':
            if (qualifier == 'l') {
                long *ip = va_arg(args, long *);
                *ip = (str - buf);
            } else {
                int *ip = va_arg(args, int *);
                *ip = (str - buf);
            }
            continue;

        case '%':
            *str++ = '%';
            continue;

        /* integer number formats - set up the flags and "break" */
        case 'o':
            base = 8;
            break;

        case 'X':
            flags |= LARGE;
        case 'x':
            base = 16;
            break;

        case 'd':
        case 'i':
            flags |= SIGN;
        case 'u':
            break;

        default:
            *str++ = '%';
            if (*fmt)
                *str++ = *fmt;
            else
                --fmt;
            continue;
        }
        if (qualifier == 'l')
            num = va_arg(args, unsigned long);
        else if (qualifier == 'h') {
            num = (unsigned short) va_arg(args, int);
            if (flags & SIGN)
                num = (short) num;
        } else if (flags & SIGN)
            num = va_arg(args, int);
        else
            num = va_arg(args, unsigned int);
        str = sub_08004F38(str, num, base, field_width, precision, flags);
    }
    *str = '\0';
    return str - buf;
}

/* ---- Sio32MultiLoadMain 08004164 ---- SA2 sio32_multi_load.c adapted (block 0x4000, timeout 0x4A frames);
 * with -fno-gcse only the &gSio32MultiLoadArea register kept for case 4 differs. Jump table at 083D3320. */
#define Sio gUnk_03000AF0
u32 sub_08004164(u32 *progressCounterp)
{
    s32 dataCounter, dataCounterBak;

    switch (Sio.state) {
    case 0:
        if (Sio.type || Sio.frameCounter)
            Sio.state = 1;
        break;
    case 1:
        if (Sio.type == 1) {
            if (Sio.frameCounter < 6)
                break;
        } else
            REG_SIOCNT = 0x1000;
        *(vu32 *)0x04000120 = 0;
        REG_IF = 0x80 | 0x40;
        if (Sio.type == 1) {
            REG_SIOCNT |= 0x80;
            REG_TM3 = 0xF318 | ((0x40 | 0x80) << 16);
            REG_IME = 0;
            REG_IE |= 0x40;
            REG_IME = 1;
        } else {
            REG_SIOCNT |= 0x4000 | 0x80;
            REG_IME = 0;
            REG_IE |= 0x80;
            REG_IME = 1;
        }
        Sio.frameCounter = 0;
        Sio.state = 2;
        break;
    case 2:
        dataCounter = Sio.dataCounter;
        dataCounterBak = dataCounter;
        if (dataCounter > 0x4000 / 4)
            dataCounter = 0x4000 / 4;
        else if (dataCounter < 0)
            dataCounter = 0;
        if (progressCounterp)
            *progressCounterp = dataCounter;
        if (Sio.type != 1) {
            while (Sio.checkSumCounter < dataCounter)
                Sio.checkSumTmp += ((s32 *)Sio.datap)[Sio.checkSumCounter++];
            if (dataCounterBak > 0x4000 / 4)
                if ((Sio.checkSum += Sio.checkSumTmp) == -1)
                    Sio.downloadSuccessFlag = 1;
        }
        if (dataCounterBak > 0x4000 / 4 || Sio.frameCounter == 0x4A)
            Sio.state = 3;
        break;
    case 3:
        REG_IME = 0;
        REG_IE &= ~(0x80 | 0x40);
        REG_IME = 1;
        REG_SIOCNT = 0x1000;
        *(vu32 *)0x04000128 = 0x2000;
        *(vu32 *)0x04000128 = 0x2000 | 3;
        *(volatile unsigned long long *)0x04000120 = 0;
        if (Sio.type)
            REG_TM3 = 0;
        REG_IF = 0x80 | 0x40;
        if (!Sio.type)
            return 1;
        Sio.frameCounter = 0;
        Sio.state = 4;
        break;
    case 4:
        if (Sio.frameCounter >= 3)
            return 1;
        break;
    }
    ++Sio.frameCounter;
    return 0;
}
