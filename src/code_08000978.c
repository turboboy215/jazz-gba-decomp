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
