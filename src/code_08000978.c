#include "global.h"
#include "sprite.h"
#include "map.h"
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
