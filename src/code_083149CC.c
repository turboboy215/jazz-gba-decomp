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
void sub_083149CC(void)
{
    s32 i;
    for (i = 0; i != MAX_PICKUPS; i++) {
        struct Pickup *p = &gPickups_0300407C[i];
        if (p->active) {
            if (!sub_08003490()) {
                if (sub_083020A8(&p->sprite, p->x >> 8, p->y >> 8) || p->unk4) {
                    sub_0831488C(p);
                } else {
                    if (p->unk3)
                        sub_08316920(p->id);
                    sub_08314454(p);
                }
            } else {
                sub_0831488C(p);
            }
        }
    }
}

void sub_08314A3C(void)
{
    s32 i;
    for (i = 0; i != MAX_PICKUPS; i++) {
        struct Pickup *p = &gPickups_0300407C[i];
        if (p->active) {
            if (sub_083020A8(&p->sprite, p->x >> 8, p->y >> 8) && (!p->unk4 || p->unkC <= 0)) {
                sub_08000604(&p->sprite);
                sub_08000704(&p->sprite);
                sub_08000684(&p->sprite, (p->x >> 8) - gUnk_030038CC.unk08, (p->y >> 8) - gUnk_030038CC.unk0C, p->z);
            } else {
                sub_0800060C(&p->sprite);
            }
            sub_08000408(&p->sprite);
        }
    }
}

u8 sub_08314AC4(s32 id, struct Pickup **out)
{
    struct Pickup *p = gPickups_0300407C;
    do {
        if (p->active && p->id == id) {
            *out = p;
            return 1;
        }
        p++;
    } while (p <= &gPickups_0300407C[MAX_PICKUPS - 1]);
    return 0;
}
