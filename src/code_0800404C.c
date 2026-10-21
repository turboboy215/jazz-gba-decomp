#include "global.h"
#include "system.h"
#include "oam.h"
void CpuFastSet(const void *src, void *dst, u32 ctrl);
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
