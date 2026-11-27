#include "global.h"
#include "actor.h"
#include "map.h"
#include "pickup.h"
#include "resbank.h"
#include "regionb.h"
void sub_08307380(struct Actor *a)
{
    sub_080006C4(&a->sprite);
    if (!sub_083020A8(&a->sprite, a->x >> 8, a->y >> 8)) {
        sub_08309D50(a);
        sub_08316920(a->flagId);
    }
}
