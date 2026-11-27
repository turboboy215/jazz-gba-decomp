#include "global.h"
#include "actor.h"
#include "map.h"
#include "pickup.h"
#include "resbank.h"
#include "regionb.h"
void sub_082F9674(struct Shot *s)
{
    s->unk4 = 1;
    if (!sub_080006C4(&s->sprite))
        sub_082F4B78(s);
}
