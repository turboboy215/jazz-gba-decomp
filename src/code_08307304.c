#include "global.h"
#include "actor.h"
#include "map.h"
#include "pickup.h"
#include "resbank.h"
#include "regionb.h"
#include "gax.h"
#include "main.h"
#include "scene.h"
#include "sprite.h"
#include "link.h"
void sub_08307304(struct Actor *a)
{
    sub_080006C4(&a->sprite);
    if (!sub_083020A8(&a->sprite, a->x >> 8, a->y >> 8)) {
        sub_08309D50(a);
        sub_08316920(a->flagId);
    }
}

void sub_0830733C(struct Actor *a)
{
    a->unk5 = 6;
    a->unk3C = 60;
    a->unk2 = 1;
    a->unk3 = 1;
    sub_080002E0(&a->sprite, (struct AnimBank *)0x081FAC80, 0, 0);
    a->unkD4 = sub_08309E78;
    a->unkC8 = sub_08307380;
}
