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
#include "trigger.h"
#include "pickup.h"
#include "regionb.h"
u8 sub_08314310(struct Pickup **out)
{
    struct Pickup *p = gPickups_0300407C;
    u8 r;
    do {
        if (!p->active) {
            *out = p;
            r = 1;
            goto done;
        }
        p++;
    } while (p != &gPickups_0300407C[MAX_PICKUPS]);
    r = 0;
done:
    return r;
}
