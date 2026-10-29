/* resbank_1.c: level resource bank (palettes, maps, tilesets) and BG scrolling. One of several resbank files: the functions between them
 * are still asm (near misses in src/nonmatching/region_a.c). */
#include "global.h"
#include "sprite.h"
#include "map.h"
#include "actor.h"
#include "resbank.h"
#include "system.h"

void CpuFastSet(const void *src, void *dst, u32 ctrl);

void sub_08001280(struct ResBank *b, struct ResHeader *data)
{
    u32 i;
    b->data = data;
    for (i = 0; i < 8; i++) {
        b->unk34[i] = 0;
        b->unk54[i] = 0;
        b->unk24[i] = 0;
        b->unk14[i] = 0;
    }
    b->unk84 = sub_08001A30(b, 0);
    b->unk88 = (u8 *)sub_08001BA0(b) + 8;
}

void sub_080012C0(struct ResBank *b, int i)
{
    struct ResHeader *d = b->data;
    u32 *t = (u32 *)((u8 *)d + d->tbl4);
    sub_08001EBC((const u16 *)((u8 *)d + t[i + 1]), (u16 *)0x05000000, 0, 256);
}

void *sub_080012E4(struct ResBank *b, int i) {
    struct ResHeader *d = b->data;
    u32 *t = (u32 *)((u8 *)d + d->tbl4);
    return (u8 *)d + t[i + 1];
}

void sub_080012F4(struct ResBank *b, u8 slot, u8 i)
{
    struct ResHeader *d = b->data;
    u32 *t = (u32 *)((u8 *)d + d->tbl12);
    void *e = (u8 *)d + t[i + 1];
    b->ptrs[slot] = e;
}

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

/* ---- ResBank_SetTileset 08001314 ---- 8 diff lines: the second search loop must post-increment the list pointer (ldmia) while k = j uses the old j.
 * 2026-10-25: `struct TilesetHdr **p = list; for (j = 0; j < n; j++) if (unk14[i] == *p++) ...`
 * in both loops gets ldmia and j++ in place (4 lines left): the ROM sets p (`mov r3, sp`) after
 * the hoisted unk14[i] load, as a strength-reduced giv would be, but plain list[j] loses ldmia. */
/* ResBank_SetTileset: the search loops index the list with a second counter (list[m++]) so the
 * address giv is incremented right after the load (ldmia); j++ stays at the loop end. */
void sub_08001314(struct ResBank *b, u8 slot, void *tiles)
{
    struct TilesetHdr *list[5];
    u32 ofs[5];
    u32 n, i, j;
    u32 m;
    b->unk14[slot] = (u32)tiles;
    b->unk24[slot] = 0;
    n = 0;
    for (i = 0; i < 4; i++) {
        u8 dup = 0;
        for (j = 0, m = 0; j < n; j++)
            if ((struct TilesetHdr *)b->unk14[i] == list[m++])
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
        for (j = 0, m = 0; j < n; j++)
            if ((struct TilesetHdr *)b->unk14[i] == list[m++])
                k = j;
        if (k != -1)
            b->unk24[i] = ofs[k];
    }
}

void sub_08001404(struct ResBank *b, int layer, int dx, int dy)
{
    int rx = dx, ry = dy;
    u8 *wrap = b->slots[layer];
    struct CellMap *m = b->ptrs[layer];
    s32 w = m->w * 8;
    s32 h = m->h * 8;

    while (rx != 0 || ry != 0) {
        s32 tx = b->unk34[layer << 1] >> 3;
        s32 ty = b->unk34[(layer << 1) + 1] >> 3;

        if (rx > 8)
            dx = 8;
        else if (rx < -8)
            dx = -8;
        else
            dx = rx;
        if (ry > 8)
            dy = 8;
        else if (ry < -8)
            dy = -8;
        else
            dy = ry;

        if (tx != (b->unk34[layer << 1] + dx) >> 3) {
            if (dx > 0)
                sub_0831AE98(b, layer, 0);
            else if (dx < 0)
                sub_0831AE98(b, layer, 30);
        }
        b->unk54[layer << 1] += dx;
        b->unk34[layer << 1] += dx;
        if (wrap[0] == 0) {
            if (b->unk54[layer << 1] < 0)
                b->unk34[layer << 1] = b->unk54[layer << 1] = 0;
            if (b->unk54[layer << 1] >= w - 240)
                b->unk34[layer << 1] = b->unk54[layer << 1] = w - 241;
        } else {
            while (b->unk54[layer << 1] < 0)
                b->unk54[layer << 1] += w;
            while (b->unk54[layer << 1] >= w)
                b->unk54[layer << 1] -= w;
        }
        while (b->unk34[layer << 1] < 0)
            b->unk34[layer << 1] += 256;
        b->unk34[layer << 1] &= 0xFF;
        if (tx != b->unk34[layer << 1] >> 3) {
            if (dx > 0)
                sub_0831AE88(b, layer, 30);
            else if (dx < 0)
                sub_0831AE88(b, layer, 0);
        }

        if (ty != (b->unk34[(layer << 1) + 1] + dy) >> 3) {
            if (dy > 0)
                sub_0831AE78(b, layer, 0);
            else if (dy < 0)
                sub_0831AE78(b, layer, 20);
        }
        b->unk54[(layer << 1) + 1] += dy;
        b->unk34[(layer << 1) + 1] += dy;
        if (wrap[1] == 0) {
            if (b->unk54[(layer << 1) + 1] < 0)
                b->unk34[(layer << 1) + 1] = b->unk54[(layer << 1) + 1] = 0;
            if (b->unk54[(layer << 1) + 1] >= h - 160)
                b->unk34[(layer << 1) + 1] = b->unk54[(layer << 1) + 1] = h - 161;
        } else {
            while (b->unk54[(layer << 1) + 1] < 0)
                b->unk54[(layer << 1) + 1] += h;
            while (b->unk54[(layer << 1) + 1] >= h)
                b->unk54[(layer << 1) + 1] -= h;
        }
        while (b->unk34[(layer << 1) + 1] < 0)
            b->unk34[(layer << 1) + 1] += 256;
        b->unk34[(layer << 1) + 1] &= 0xFF;
        if (ty != b->unk34[(layer << 1) + 1] >> 3) {
            if (dy > 0)
                sub_0831AE68(b, layer, 20);
            else if (dy < 0)
                sub_0831AE68(b, layer, 0);
        }

        if (rx > 8)
            rx -= 8;
        else if (rx < -8)
            rx += 8;
        else
            rx = 0;
        if (ry > 8)
            ry -= 8;
        else if (ry < -8)
            ry += 8;
        else
            ry = 0;
    }
    *(vu16 *)(0x04000010 + layer * 4) = b->unk34[layer << 1];
    *(vu16 *)(0x04000012 + layer * 4) = b->unk34[(layer << 1) + 1];
}
