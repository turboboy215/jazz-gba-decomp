#include "global.h"
#include "actor.h"
#include "regionb.h"
void sub_082F4B78(struct Shot *s)
{
    if (s->active) {
        s->active = 0;
        if (s->hasSprite)
            sub_080005D4(&s->sprite);
    }
}

void sub_082F4B98(void)
{
    struct Shot *s = gShots_030028FC;
    do {
        sub_082F4B78(s);
        s++;
    } while (s <= &gShots_030028FC[MAX_SHOTS - 1]);
}

void sub_082F4BBC(void)
{
    u32 i;
    for (i = 0; i < MAX_SHOTS; i++) {
        struct Shot *s = &gShots_030028FC[i];
        if (s->active == 1)
            s->callback(s);
    }
}
