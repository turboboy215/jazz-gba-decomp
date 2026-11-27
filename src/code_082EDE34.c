#include "global.h"
#include "actor.h"
#include "map.h"
#include "pickup.h"
#include "resbank.h"
#include "regionb.h"
u8 sub_082EDE34(struct Actor *a)
{
    if (sub_083020A8(&a->sprite, a->x >> 8, a->y >> 8))
        return *(s16 *)((u8 *)a + 0x5A) <= 0;
    return 0;
}
