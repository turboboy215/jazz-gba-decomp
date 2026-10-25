#include "global.h"
#include "sprite.h"
#include "map.h"
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
