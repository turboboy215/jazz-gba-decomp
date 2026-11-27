#include "global.h"
#include "actor.h"
#include "gax.h"
#include "main.h"
#include "scene.h"
#include "sprite.h"
#include "link.h"
#include "regionb.h"
void sub_083071BC(struct Actor *a)
{
    a->unk5 = 5;
    a->unk3C = 38;
    a->unk2 = 1;
    a->unk3 = 1;
    sub_080002E0(&a->sprite, (struct AnimBank *)0x081F4CB0, 0, 0);
    a->unkD4 = sub_08309E78;
    a->unkC8 = sub_08307244;
}

void sub_08307200(struct Actor *a)
{
    a->unk5 = 5;
    a->unk3C = 42;
    a->unk2 = 1;
    a->unk3 = 1;
    sub_080002E0(&a->sprite, (struct AnimBank *)0x081F4CB0, 1, 0);
    a->unkD4 = sub_08309E78;
    a->unkC8 = sub_08307244;
}
