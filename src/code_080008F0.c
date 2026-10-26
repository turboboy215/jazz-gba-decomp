#include "global.h"
#include "sprite.h"
#include "map.h"
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
