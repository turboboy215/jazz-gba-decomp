#include "global.h"
#include "sprite.h"
#include "map.h"
#include "actor.h"
#include "resbank.h"
void CpuFastSet(const void *src, void *dst, u32 ctrl);
void sub_08001DBC(u8 v) { gUnk_03005858 = v; }

u32 sub_08001DC8(int bit, u8 v)
{
    u8 *f = &gUnk_03005858;
    int one = 1;
    int m = one << bit;
    *f = (*f & ~m) | (v << bit);
    return ((m & *f) >> bit) & one;
}

u32 sub_08001DF4(int bit)
{
    u8 *f = &gUnk_03005858;
    int m = 1 << bit;
    int t = m ^ *f;
    *f = t;
    return ((m & t) >> bit) & 1;
}

u8 sub_08001E18(int bit)
{
    u8 *f = &gUnk_03005858;
    int one = 1;
    return ((one << bit) & *f) >> bit & one;
}

u8 sub_08001E30(int d)
{
    gUnk_03005859 += d;
    if (gUnk_03005859 > 7)
        gUnk_03005859 = 7;
}

void sub_08001E4C(int d)
{
    int t = gUnk_03005859 - d;
    if (t <= 0)
        t = 0;
    gUnk_03005859 = t;
}

void sub_08001E60(u32 v)
{
    if (v <= 7)
        gUnk_03005859 = v;
}

void sub_08001E70(u16 *pal, int idx, u16 color)
{
    u16 *d = &pal[idx];
    const u8 *t = gUnk_083D2FD8;
    const u8 *r = &t[(color & 31) + gUnk_03005859 * 32];
    const u8 *g = &t[((color >> 5) & 31) + gUnk_03005859 * 32];
    const u8 *b = &t[((color >> 10) & 31) + gUnk_03005859 * 32];
    *d = (*g << 5) | *r | (*b << 10);
}
