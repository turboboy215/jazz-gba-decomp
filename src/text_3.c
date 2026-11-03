/* text_3.c: BG text layer: printing, {P<n>} palette tags, reference-counted glyph tiles. One of several text files: the functions between them
 * are still asm (near misses in src/nonmatching/region_a.c). */

#include "global.h"
#include "text.h"
extern u16 gUnk_02002000[], gUnk_02002800[], gUnk_02003600[];
extern u16 gUnk_03002500, gUnk_03002504;
void sub_08004CA0(u32 cell)
{
    u32 t = cell & 0x3FF;
    u32 buddy, prev, cur, e;
    u16 *hp;
    if (t == 0)
        return;
    { u32 v = gUnk_02002800[t] - 1; gUnk_02002800[t] = v; if ((u16)v != 0) return; }
    gUnk_02002000[gUnk_02003600[t]] = gUnk_02002000[gUnk_02003600[t]] | 0xFFFF;
    gUnk_02003600[t] = gUnk_02003600[t] | 0xFFFF;
    buddy = t ^ 1;
    if (gUnk_02003600[buddy] == 0xFFFF) {
        prev = 0xFFFF;
        cur = gUnk_03002504;
        hp = &gUnk_03002504;
        while (cur != buddy) {
            prev = cur;
            cur = gUnk_02002800[cur];
        }
        if (prev == 0xFFFF)
            *hp = gUnk_02002800[cur];
        else
            gUnk_02002800[prev] = gUnk_02002800[cur];
        gUnk_02002800[e = t & 0xFFFE] = gUnk_03002500;
        gUnk_03002500 = e;
    } else {
        gUnk_02002800[t] = gUnk_03002504;
        gUnk_03002504 = t;
    }
}

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
