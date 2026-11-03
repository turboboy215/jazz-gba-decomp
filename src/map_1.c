/* map_1.c: level map tiles and tile collision (slopes, walls, ceilings). One of several map files: the functions between them
 * are still asm (near misses in src/nonmatching/region_a.c). */
#include "global.h"
#include "sprite.h"
#include "map.h"
#include "actor.h"
#include "resbank.h"
u16 sub_08000850(u32 x, u32 y) { return sub_0831AEA8(&gUnk_0300398C, x >> 3, y >> 3); }

u16 sub_08000870(u32 x, u32 y) { return (sub_08000850(x, y) & 0x70) >> 4; }

u16 sub_08000884(u32 x, u32 y) { return (sub_08000850(x, y) & 0x380) >> 7; }

u16 sub_08000850(u32 x, u32 y);

/* Map_IsTileBit10: the caller sees Map_GetTile as returning int (no zero-extend of the result; the
 * original probably had no prototype in scope), tests the bit through a byte-sized temporary compared
 * with `> 0` (a signed compare: jump.c's store-flag pass leaves it alone and combine only turns it into
 * `!= 0` later, from the temporary's zero-extend) and sets r = 0 after the call. */

u8 sub_08000898(u32 x, int y)
{
    u8 r;
    int m, t;

    if (y > 0) {
        t = ((int (*)(u32, u32))sub_08000850)(x, y);
        r = 0;
        m = (u8)((t & 0x400) >> 8);
        if (m > 0)
            r = 1;
        return r;
    }
    return 0;
}

void CpuFastSet(const void *src, void *dst, u32 ctrl);
struct Unk030038CC { u8 unk0[0x18]; int unk18; u32 unk1C; int unk20; };
extern struct Unk030038CC gUnk_030038CC;

u16 sub_080008BC(int x, int y)
{
    u16 l = sub_08000870(x, y);
    if (l != 0 && !sub_08001E18(l))
        return 0;
    return sub_08000850(x, y) & 15;
}

int sub_080008F0(int v)
{
    if (v < 0)
        return -1;
    return 1;
}

/* Map_HitCeiling: tests the tile row above a moving box for solid tiles. The sums go into new
 * locals with the shifted coordinate first (operand order follows the pseudo numbers). */
u8 sub_08000900(int x, int y, int dy, int ofsX, int ofsY, int width)
{
    int px, py;
    if (ofsX == 0) ofsX = -1;
    if (ofsY == 0) ofsY = -1;
    if (width == 0) width = 1;
    if (sub_080008F0(dy) == 1) return 0;
    px = (x >> 8) + ofsX;
    py = ((y + dy) >> 8) + ofsY;
    if (py < 0) return 0;
    for (; px < (x >> 8) + width; px += 8)
        if (sub_080008BC(px, py) == COLL_SOLID)
            return 1;
    return 0;
}

int sub_08000978(u16 coll)
{
    u8 r = 0;
    if ((u16)(coll - 1) <= 8)
        r = 1;
    return r;
}

/* Map_HitWall: tests the tile column beside a moving box for solid tiles (ofs picks the left or
 * right edge by the direction of dx). */
u8 sub_08000990(int x, int y, int dx, int left, int top, int right, int height)
{
    int ofs, tx, ty;
    if (left == 0) left = -1;
    if (top == 0) top = -1;
    if (right == 0) right = 1;
    if (height == 0) height = 1;
    if (sub_080008F0(dx) == 1)
        ofs = right;
    else
        ofs = left;
    tx = ((x + dx) >> 8) + ofs;
    for (ty = (y >> 8) + top; ty < (y >> 8) + height; ty += 8)
        if (ty >= 0 && sub_080008BC(tx, ty) == COLL_SOLID)
            return 1;
    return 0;
}

u8 sub_08000A1C(int x, int y, int checkBelow)
{
    int tx = x >> 8;
    u32 ty = y >> 8;
    if (!(ty <= gUnk_0300398C.layer->height * 8 - 8))
        return 0;
    if (sub_08000978(sub_080008BC(tx, ty)))
        return 1;
    if (!checkBelow)
        return 0;
    ty += 8;
    if (sub_08000978(sub_080008BC(tx, ty)))
        return 1;
    return 0;
}

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

u32 sub_08000AF8(int x, int y)
{
    u16 t = sub_080008BC(x, y);
    if (x <= gUnk_030038CC.unk20 || x >= gUnk_030038CC.unk18)
        return 0;
    if (t == COLL_SLOPE_FILL) {
        y -= 8;
        t = sub_080008BC(x, y);
    }
    switch (t) {
    case 9:
        return 4;
    case 1:
    case 2:
        return 1;
    case 3:
    case 5:
    case 6:
        return 3;
    case 4:
    case 7:
    case 8:
        return 2;
    }
    return 0;
}
