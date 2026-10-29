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
