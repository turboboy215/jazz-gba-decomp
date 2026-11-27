#include "global.h"
#include "actor.h"
#include "regionb.h"
void sub_082F8370(struct Shot *s)
{
    if (!sub_080006C4(&s->sprite))
        sub_082F4B78(s);
}
