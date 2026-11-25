#include "actor.h"
#include "gax.h"
#include "global.h"
#include "link.h"
#include "main.h"
#include "map.h"
#include "multi_sio.h"
#include "oam.h"
#include "obj.h"
#include "resbank.h"
#include "scene.h"
#include "sprite.h"
#include "system.h"
#include "text.h"
#include "regionb.h"
#include "trigger.h"
void sub_08313054(struct Trigger *t)
{
    t->active = 0;
}

void sub_0831305C(void)
{
    s32 i;
    for (i = 0; i != MAX_TRIGGERS; i++) {
        struct Trigger *t = &gTriggers_03003F14[i];
        if (t->active)
            t->func(t);
    }
}
