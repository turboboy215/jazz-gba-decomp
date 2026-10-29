/* text_2.c: BG text layer: printing, {P<n>} palette tags, reference-counted glyph tiles. One of several text files: the functions between them
 * are still asm (near misses in src/nonmatching/region_a.c). */
#include "global.h"
#include "text.h"

void CpuFastSet(const void *src, void *dst, u32 ctrl);
extern u16 gUnk_02002000[]; /* key -> tile, 0xFFFF = not cached */
extern u16 gUnk_02002800[]; /* tile -> reference count, or next free tile */
extern u16 gUnk_02003600[]; /* tile -> key */
extern u16 gUnk_03002500;   /* free list of tile pairs */
extern u16 gUnk_03002504;   /* free list of single tiles */
extern u16 gUnk_02000000[];
extern u16 gUnk_03002502;

void sub_08004D70(void)
{
    u32 i;
    for (i = 0; i <= 0xFFF; i++)
        gUnk_02000000[i] |= 0xFFFF;
    for (i = 0; i <= 0x3FF; i++)
        gUnk_02002000[i] |= 0xFFFF;
    for (i = 0; i <= 0x6FF; i++)
        gUnk_02003600[i] |= 0xFFFF;
    for (i = 0; i <= 0x6FF; i += 2)
        gUnk_02002800[i] = i + 2;
    gUnk_02002800[0x3FE] |= 0xFFFF;
    gUnk_02002800[0x6FE] |= 0xFFFF;
    gUnk_03002500 = 2;
    gUnk_03002502 = 0x400;
    gUnk_03002504 = 0xFFFF;
    for (i = 0; i < 32; i++)
        ((u16 *)0x06000000)[i] = 0;
}
