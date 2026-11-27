#include "global.h"
#include "actor.h"
#include "map.h"
#include "pickup.h"
#include "resbank.h"
#include "regionb.h"
void sub_082F7014(void *owner)
{
    struct Shot *s;
    if (sub_082F4B44(&s) == 1) {
        s->owner = owner;
        s->unk4 = 0;
        s->hasSprite = 0;
        s->callback = sub_082F7054;
        s->timer = 16;
    }
}
