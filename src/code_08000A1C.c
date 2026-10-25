#include "global.h"
#include "sprite.h"
#include "map.h"
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
