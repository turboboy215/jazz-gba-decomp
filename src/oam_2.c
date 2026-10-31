/* oam_2.c: shadow OAM manager and the OBJ VRAM block allocator. One of several oam files: the functions between them
 * are still asm (near misses in src/nonmatching/region_a.c). */
#include "global.h"
#include "system.h"
#include "oam.h"

void CpuFastSet(const void *src, void *dst, u32 ctrl);

void sub_08003F70(void)
{
    u8 *t = gOamPrioThresholds_03001258;
    t[0] = 32;
    t[1] = 96;
    t[2] = 160;
    t[3] = 224;
}

void sub_08003F88(int i, u8 v) { gOamPrioThresholds_03001258[i] = v; }

void sub_08003F94(void)
{
    u32 zero = 0;
    vu32 *dma = REG_DMA3;
    dma[0] = (u32)&zero;
    dma[1] = (u32)gVramMap_03001268;
    dma[2] = 0x85000100;
    dma[2];
}

u16 sub_08003FBC(int w, int h, const void *src, int is8bpp)
{
    int n = h * w;
    int i, j;
    u8 *p, *q;
    u16 t;
    u32 ofs, sz;
    if (is8bpp)
        n <<= 1;
    for (i = 1024 - n; i >= 0; i -= n) {
        p = &gVramMap_03001268[i];
        if (*p == 0) {
            j = 0;
            if (j < n) {
                q = p;
            again:
                if (*q++ != 0)
                    goto next;
                if (++j < n)
                    goto again;
            }
            t = i;
            goto found;
        }
    next:;
    }
    return 0xFFFF;
found:
    *p = 1;
    ofs = t << 5;
    sz = n << 3;
    if (n > 1) {
        u8 v = 0xFF;
        u8 *q = p + 1;
        int k = n - 1;
        do {
            *q++ = v;
        } while (--k != 0);
    }
    CpuFastSet(src, (void *)(ofs + 0x06010000), sz & 0x1FFFFF);
    return t;
}

void sub_0800404C(u16 tile, int w, int h, const void *src, int is8bpp)
{
    int n = h * w;
    if (is8bpp)
        n <<= 1;
    CpuFastSet(src, (u8 *)0x06010000 + tile * 32, (n * 8) & 0x1FFFFF);
}

void sub_08004080(u16 tile)
{
    u16 i = tile;
    if (i != 0xFFFF) {
        gVramMap_03001268[i++] = 0;
        while (gVramMap_03001268[i] == 0xFF)
            gVramMap_03001268[i++] = 0;
    }
}
