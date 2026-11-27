#include "global.h"
#include "actor.h"
#include "regionb.h"
#include "map.h"
#include "pickup.h"
#include "resbank.h"
void sub_082F88F0(struct Shot *s)
{
    if (!sub_080006C4(&s->sprite))
        sub_082F4B78(s);
}

void sub_082F890C(void *owner)
{
    struct Shot *s;
    if (sub_082F4B44(&s) == 1) {
        s->owner = owner;
        s->unk4 = 0;
        s->hasSprite = 0;
        s->callback = sub_082F894C;
        s->timer = 5;
    }
}
