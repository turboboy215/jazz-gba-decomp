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

/* ---- Obj_Update 080046DC ---- 20 aligned-diff ops with OPT=-fno-gcse (27 before). 2026-10-26: the size/shape
 * mask is 0x01FF00FF (keeps only x and y; the old 0x3FFF3FFF was wrong), and `*(gOamBuffer + o->oam)`
 * loads o->oam before the table address as the ROM does. Left: the last three statements get the
 * table address in r2 and the ldrh temp in r3; the ROM has them the other way round. 2026-11-02: the ldrh
 * temps are reloads; see docs/region_a.md, "Register-only leftovers", for what was tried. */
void sub_080046DC(struct Obj *o)
{
    struct OamEntry *e;
    if (!o->visible) {
        (*(gOamBuffer_03000E58 + o->oam)).attr0 &= 0xFCFF;
        (*(gOamBuffer_03000E58 + o->oam)).attr0 |= 0x200;
        return;
    }
    *(u32 *)&(*(gOamBuffer_03000E58 + o->oam)) &= 0x01FF00FF;
    *(u32 *)&(*(gOamBuffer_03000E58 + o->oam)) |= (o->is8bpp << 13) | sub_08004654(o->w, o->h);
    if (o->sizeDirty) {
        sub_08004080(o->tile);
        o->tile = sub_08003FBC(o->w, o->h, o->gfx, o->is8bpp);
        (*(gOamBuffer_03000E58 + o->oam)).attr2 &= 0xFC00;
        (*(gOamBuffer_03000E58 + o->oam)).attr2 |= o->tile;
        o->sizeDirty = 0;
        o->gfxDirty = 0;
    } else if (o->gfxDirty) {
        sub_0800404C(o->tile, o->w, o->h, o->gfx, o->is8bpp);
        o->gfxDirty = 0;
    }
    if (o->palDirty) {
        (*(gOamBuffer_03000E58 + o->oam)).attr2 &= 0x0FFF;
        (*(gOamBuffer_03000E58 + o->oam)).attr2 |= o->palette << 12;
        o->palDirty = 0;
    }
    (*(gOamBuffer_03000E58 + o->oam)).attr0 &= 0xF3FF;
    if (o->mosaic)
        (*(gOamBuffer_03000E58 + o->oam)).attr0 |= 0x400;
    (*(gOamBuffer_03000E58 + o->oam)).attr1 |= (o->hflip << 12) | (o->vflip << 13);
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
/* ==== Session 2026-10-24: the rest of region A (bg scroll, OAM sort, link screens) ==== */

/* ---- Bg_DrawLevelScreen 08001720 ---- same structure; 784 vs 768 bytes. The ROM keeps more on the
 * stack (frame 100 vs 92), holds the constant 0 in r3 for the clamp stores and reloads the
 * unk54/unk34 addresses in the y-wrap loops. The map is drawn from 16x16 metatiles: cells[] (u16
 * per metatile, after the CellMap header) index the metatile table (ResBank tbl8 entry 0, +4),
 * 4 tiles each; tile bits 14-15 become the BG flip bits (0xC00), the rest goes through the IWRAM
 * glyph allocator with the layer's tileset (unk14) and first tile (unk24). */
void sub_08001720(struct ResBank *b, int layer, int x, int y)
{
    u8 *wrap = b->slots[layer];
    s32 w = b->ptrs[layer]->w * 8;
    s32 h = b->ptrs[layer]->h * 8;
    u16 *meta = (u16 *)((u8 *)sub_08001B94(b) + 4);
    u16 *cells = (u16 *)b->ptrs[layer]->data;
    s32 tx, ty, sx, sy;
    u16 *screen;
    int i, j;
    u32 mw, mh;

    b->unk54[layer * 2] = x;
    b->unk54[layer * 2 + 1] = y;
    b->unk34[layer * 2] = x;
    b->unk34[layer * 2 + 1] = y;
    if (wrap[0] == 0) {
        if (b->unk54[layer * 2] < 0)
            b->unk34[layer * 2] = b->unk54[layer * 2] = 0;
        if (b->unk54[layer * 2] >= w - 240)
            b->unk34[layer * 2] = b->unk54[layer * 2] = w - 241;
    } else {
        while (b->unk54[layer * 2] < 0)
            b->unk54[layer * 2] += w;
        while (b->unk54[layer * 2] >= w)
            b->unk54[layer * 2] -= w;
    }
    if (wrap[1] == 0) {
        if (b->unk54[layer * 2 + 1] < 0)
            b->unk34[layer * 2 + 1] = b->unk54[layer * 2 + 1] = 0;
        if (b->unk54[layer * 2 + 1] >= h - 160)
            b->unk34[layer * 2 + 1] = b->unk54[layer * 2 + 1] = h - 161;
    } else {
        while (b->unk54[layer * 2 + 1] < 0)
            b->unk54[layer * 2 + 1] += h;
        while (b->unk54[layer * 2 + 1] >= h)
            b->unk54[layer * 2 + 1] -= h;
    }
    while (b->unk34[layer * 2] < 0)
        b->unk34[layer * 2] += 256;
    while (b->unk34[layer * 2 + 1] < 0)
        b->unk34[layer * 2 + 1] += 256;
    b->unk34[layer * 2] &= 0xFF;
    b->unk34[layer * 2 + 1] &= 0xFF;
    *(vu16 *)(0x04000010 + layer * 4) = b->unk34[layer * 2];
    *(vu16 *)(0x04000012 + layer * 4) = b->unk34[layer * 2 + 1];

    tx = b->unk54[layer * 2] >> 3;
    ty = b->unk54[layer * 2 + 1] >> 3;
    sx = b->unk34[layer * 2] >> 3;
    sy = b->unk34[layer * 2 + 1] >> 3;
    if (sx < 0)
        sx += 32;
    if (sy < 0)
        sy += 32;
    screen = (u16 *)(0x0600F800 - layer * 0x800);
    mw = (u32)w >> 3;
    mh = (u32)h >> 3;
    for (i = 0; i < 21; i++) {
        int cx = sx, mx = tx;
        if (ty >= (int)mh)
            ty -= mh;
        for (j = 0; j < 31; j++) {
            u16 tile, *dst;
            if (mx >= (int)mw)
                mx -= mw;
            tile = meta[cells[(ty >> 1) * (mw >> 1) + (mx >> 1)] * 4 + (mx & 1) + (ty & 1) * 2];
            dst = &screen[sy * 32 + cx];
            sub_0831AE58(*dst);
            *dst = sub_0831AE48(tile & 0x3FFF, (u8 *)b->unk14[layer] + 4, b->unk24[layer]) | ((tile >> 4) & 0xC00);
            cx = (cx + 1) & 31;
            mx++;
        }
        sy = (sy + 1) & 31;
        ty++;
    }
}

/* ---- Oam_SetPosSorted 08003DEC ---- 284 vs 276 bytes. Unlink loop like Oam_Free (08003F00, matched
 * 2026-11-02 with a goto loop and `offset + base` sums; tried here with `o = idx * 8` and sums: 91 ops). The ROM keeps &gOamUsedHead in r5 and idx*8 in r3 for the whole function and
 * puts y << 24 back into y's register; this build needs one more callee-saved register.
 * -fno-gcse gives the right size (276) but worse allocation. */
void sub_08003DEC(u8 idx, s16 x, s16 y, u8 z) /* the ROM zero-extends x and y (u16); obj.h keeps s16 for the matching caller Obj_Update */
{
    u8 prev = 0xFF;
    u8 cur = gOamUsedHead_03001260;

    while (cur != 0xFF) {
        struct OamEntry *e = &gOamBuffer_03000E58[cur];
        if (e->unk7 >= z)
            break;
        prev = cur;
        cur = e->next;
    }
    if (idx != prev && idx != cur) {
        if (gOamUsedHead_03001260 == idx) {
            gOamUsedHead_03001260 = gOamBuffer_03000E58[idx].next;
        } else {
            u8 i = gOamUsedHead_03001260;
            while (i != 0xFF) {
                struct OamEntry *e = &gOamBuffer_03000E58[i];
                i = e->next;
                if (i == idx) {
                    e->next = gOamBuffer_03000E58[idx].next;
                    break;
                }
            }
        }
        gOamBuffer_03000E58[idx].next = cur;
        if (prev == 0xFF)
            gOamUsedHead_03001260 = idx;
        else
            gOamBuffer_03000E58[prev].next = idx;
    }
    gOamBuffer_03000E58[idx].unk7 = z;
    {
        int prio = 0, i;
        struct OamEntry *e;
        for (i = 0; i < 3; i++)
            if (z > gOamPrioThresholds_03001258[i])
                prio++;
        e = &gOamBuffer_03000E58[idx];
        e->attr2 = (e->attr2 & 0xF3FF) | (prio << 10);
        e->attr0 = (e->attr0 & 0xFF00) | (u8)y;
        e->attr1 = (e->attr1 & 0xFE00) | (x & 0x1FF);
    }
}

/* ---- Link_Exchange 08002F64 (was Link_Exchange) ---- per-frame packet exchange. 496 vs 488.
 * The ROM reloads b->unk10 / b->bufs[n+4] after every halfword store (as if type-based aliasing
 * were off) and uses one strength-reduced pointer for recv. Struct LinkPacket stores reproduce the
 * reloads but split the recv pointer into two givs (base, base+2). Closest so far: plain u16
 * pointers with the loads written through (u16 *volatile *) casts = 488 bytes, 89 diff lines
 * (only the source pointer is not strength-reduced). -fno-strict-aliasing behaves like the struct
 * version. */
void sub_08002F64(struct LinkPacket *send, struct LinkPacket *recv)
{
    int n = gUnk_03000D38.unk4;
    u32 ok;
    u32 i;

    LINK_SEND(0) = send->data[0];
    LINK_SEND(1) = send->data[1];
    LINK_SEND(2) = send->data[2];
    LINK_SEND(3) = send->data[3];
    LINK_SEND(4) = send->data[4];
    LINK_SEND(5) = send->data[5];
    LINK_SEND(6) = send->data[6];
    LINK_SEND(7) = send->data[7];
    ok = 1;
    while (n--) {
        recv[n].data[0] = LINK_RECV(n, 0);
        recv[n].data[1] = LINK_RECV(n, 1);
        recv[n].data[2] = LINK_RECV(n, 2);
        recv[n].data[3] = LINK_RECV(n, 3);
        recv[n].data[4] = LINK_RECV(n, 4);
        recv[n].data[5] = LINK_RECV(n, 5);
        recv[n].data[6] = LINK_RECV(n, 6);
        recv[n].data[7] = LINK_RECV(n, 7);
    }
    if (sub_0800347C() == 0 && (u16)(REG_SIOCNT & 4) != sub_0800347C())
        ok = 0;
    for (i = 0; i < sub_0800314C(); i++) {
        switch (i) {
        case 0:
            if (recv[0].data[0] == 0xFFFF)
                ok = 0;
            break;
        case 1:
            if (recv[1].data[0] == 0xFFFF)
                ok = 0;
            break;
        case 2:
            if (recv[2].data[0] == 0xFFFF)
                ok = 0;
            break;
        case 3:
            if (recv[3].data[0] == 0xFFFF)
                ok = 0;
            break;
        }
    }
    if (ok == 1)
        gUnk_03005894 = 0;
    else
        gUnk_03005894++;
    if (gUnk_03005894 >= 120) {
        sub_08316F10(1, 192, 10);
        while (sub_08316F50() != 0)
            sub_0831A54C();
        sub_08004D70();
        sub_08001A6C();
        *(vu16 *)0x04000050 = 0;
        *(vu16 *)0x04000008 = 0x1F01;
        *(vu16 *)0x04000000 = 0x1140;
        sub_08004A1C();
        *(vu16 *)0x05000000 = 0x6A80;
        sub_0800436C();
        sub_0831A54C();
        sub_08004914(0, 6, gUnk_083D31A0);
        sub_08004914(0, 13, gUnk_083D31C0);
        sub_08004914(0, 14, gUnk_083D31E0);
        for (;;)
            ;
    }
    if (gUnk_03000D38.unk0 == -1) {
        u8 *t = gUnk_03000D38.unkC;
        gUnk_03000D38.unkC = gUnk_03000D38.unk10;
        gUnk_03000D38.unk10 = t;
        if (gUnk_03000D38.unk5 == 0) {
            REG_SIOCNT |= 0x80;
            *(vu16 *)0x0400010E = 0xC0;
        }
    }
}

/* ---- Link_SerialIntr 08003298 ---- 23 aligned-diff ops with OPT="-fno-gcse -fno-strict-aliasing" (28 before;
 * the ROM reloads unk0 after each u16 store into bufs[n], i.e. no type-based aliasing). 2026-10-28: reading
 * unk0 into `idx` and taking `p = &gUnk_03000D38` only for the second loop (the ROM's `adds r3, r0, #0`
 * copy, `ldr r0, [r3, #8]` in loop 2). Writing loop 1 with two pointers set inside an `if (n--)` guard
 * (`bp = (u8 **)((n * 4 + 52) + (int)p)`, `mp = (vu16 *)(n * 2 + 0x04000120)`, `*bp--`, `*mp--`) gives
 * the ROM's loop-1 body exactly (decrements right after each access) but scores 25 overall. Left:
 * the ROM keeps -1 in r2 and copies it (and p) into r6/r5 before loop 1 (loop.c moving copies of
 * CSE'd constants), here -1 stays in one register. */
void sub_08003298(void)
{
    int n = gUnk_03000D38.unk4;
    s32 idx; struct LinkBuffers *p;

    if (gUnk_03000D38.unk5 == 0)
        *(vu16 *)0x0400010E = 0;
    if ((REG_SIOCNT & 0x40) && gUnk_03000D38.unk8 != 0 && LINK_CALLBACK(gUnk_03000D38)() == 0)
        return;
    idx = gUnk_03000D38.unk0; p = &gUnk_03000D38;
    if (idx > -1) {
        while (n--)
            ((u16 *)gUnk_03000D38.bufs[n])[gUnk_03000D38.unk0] = REG_SIOMULTI(n);
    } else {
        while (n--) {
            if (REG_SIOMULTI(n) != 0xDEAD && p->unk8 != 0 && LINK_CALLBACK(*p)() == 0)
                return;
        }
    }
    if (++gUnk_03000D38.unk0 <= 7) {
        REG_SIODATA8 = ((u16 *)gUnk_03000D38.unkC)[gUnk_03000D38.unk0];
        if (gUnk_03000D38.unk5 == 0) {
            REG_SIOCNT |= 0x80;
            *(vu16 *)0x0400010E = 0xC0;
        }
    } else {
        u8 *t;
        gUnk_03000D38.unk0 = -1;
        t = gUnk_03000D38.bufs[0]; gUnk_03000D38.bufs[0] = gUnk_03000D38.bufs[4]; gUnk_03000D38.bufs[4] = t;
        t = gUnk_03000D38.bufs[1]; gUnk_03000D38.bufs[1] = gUnk_03000D38.bufs[5]; gUnk_03000D38.bufs[5] = t;
        t = gUnk_03000D38.bufs[2]; gUnk_03000D38.bufs[2] = gUnk_03000D38.bufs[6]; gUnk_03000D38.bufs[6] = t;
        t = gUnk_03000D38.bufs[3]; gUnk_03000D38.bufs[3] = gUnk_03000D38.bufs[7]; gUnk_03000D38.bufs[7] = t;
        REG_SIODATA8 = 0xDEAD;
    }
    gUnk_030058A0 = 0;
}

/* ---- Link_Main 080034A4 ---- 3 diff lines: in `gUnk_03000D38.unk4 = 2` the ROM moves the
 * hoisted constant 2 (r8) to r0 and the address to r1, this build the other way round. Tried a
 * pointer, a key local, an extra else, u32 started. 2026-10-25: the RTL shows CSE replacing the
 * constant with the loop-hoisted HImode 2 from `gUnk_03000D12 & 2` (pseudo 88), so insn 534 is
 * a store of (subreg:QI 88) through the REG_EQUIV address; reload gives the address the first
 * reload reg. The ROM looks like a real copy insn (value pseudo local in r0). Casts on the key
 * test, -fno-gcse/-fno-strict-aliasing and agbcc do not change it. The multiboot master sends the client image:
 * header at 080053A0 (masterp), 0x13F40 bytes from 08005460, palette 4/4.
 * 2026-11-02: both are reloads; the address reload is numbered first, so it takes r0 (round-robin
 * spill regs). Reload analysis and more failed tries: docs/region_a.md, "Register-only leftovers". */
void sub_080034A4(void)
{
    u32 started;
    u32 i;

    sub_08002B50();
    gUnk_03000E0C.masterp = (const u8 *)0x080053A0;
    gUnk_03000E0C.server_type = 1;
    sub_080023B0(&gUnk_03000E0C);
    started = 0;
    do {
        sub_0831A54C();
        gUnk_0300589C = 1;
        for (i = 1; i < 4; i++)
            if (((gUnk_03000E0C.response_bit >> i) & 1) && ((gUnk_03000E0C.client_bit >> i) & 1))
                gUnk_0300589C++;
        sub_08002A30(gUnk_0300589C);
        if (gUnk_0300589C == 1)
            sub_08004914(4, 14, gUnk_083D3290);
        else
            sub_080049D4(4, 14, 25, 0);
        if (gUnk_03000E0C.client_bit & 14) {
            switch (gUnk_03000E0C.probe_count) {
            case 0:
                if ((++gUnk_030058A8 & 31) > 16) {
                    sub_080049D4(0, 15, 25, 0);
                    sub_080049D4(0, 16, 25, 0);
                } else {
                    sub_08004914(0, 15, gUnk_083D32A8);
                    sub_08004914(0, 16, gUnk_083D32C8);
                }
                break;
            case 0xD1:
                sub_080049D4(0, 16, 25, 0);
                sub_08004914(0, 15, gUnk_083D3250);
                sub_08004914(0, 16, gUnk_083D3270);
                break;
            }
        }
        if (started) {
            sub_080049D4(0, 16, 25, 0);
            sub_08004914(0, 15, gUnk_083D3250);
            sub_08004914(0, 16, gUnk_083D3270);
        }
        sub_08002094(&gUnk_03000D10, &gUnk_03000D12);
        if (gUnk_03000D12 & 2) {
            sub_08002A30(0);
            return;
        }
        if ((gUnk_03000D12 & 8) && gUnk_03000E0C.probe_count == 0 && gUnk_03000E0C.client_bit != 0) {
            started = 1;
            sub_08316824();
            if (gUnk_03000E0C.client_bit & 8)
                gUnk_03000D38.unk4 = 4;
            else if (gUnk_03000E0C.client_bit & 4)
                gUnk_03000D38.unk4 = 3;
            else if (gUnk_03000E0C.client_bit & 2)
                gUnk_03000D38.unk4 = 2;
            sub_080049D4(0, 15, 25, 0);
            sub_08002844(&gUnk_03000E0C, (const u8 *)0x08005460, 0x13F40, 4, 4);
        }
        sub_080023EC(&gUnk_03000E0C);
    } while (!sub_080028E4(&gUnk_03000E0C));
    sub_08002144();
    sub_08001FC8(0, sub_08001FF0);
    REG_RCNT = 0;
    REG_SIOCNT = 0;
    REG_SIODATA8 = 0;
    REG_SIOMULTI(0) = 0;
    REG_SIODATA8 = 0;
    REG_SIOMULTI(0) = 0;
    REG_SIOMULTI(0) = 0;
    REG_SIOMULTI(1) = 0;
    REG_SIOMULTI(2) = 0;
    REG_SIOMULTI(3) = 0;
    sub_0831A54C();
    sub_0831A54C();
    sub_0831A54C();
    sub_08002B50();
    REG_IME = 1;
    REG_RCNT = 0;
    *(vu16 *)0x0400010C = 0x83E0;
    REG_SIOCNT = 0x2000;
    REG_SIOCNT |= 0x4003;
    sub_0831A54C();
    sub_0831A54C();
    sub_08001FA0(6);
    sub_08001FC8(6, sub_08003298);
    gUnk_03000D38.unk5 = 0;
    gUnk_0300589C = 0;
    sub_08002A30(0);
    gUnk_03000D38.unk0 = -1;
    sub_08001FC8(0, sub_080033CC);
}
