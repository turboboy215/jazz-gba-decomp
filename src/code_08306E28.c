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
void sub_08306E28(struct Actor *a)
{
    a->unkE6 = 0;
    a->unkE8 = 0;
    a->unkEC = 0;
    a->unkF0 = 2;
    a->unkF4 = 0;
    a->unkF5 = 0;
    a->unkF6 = 0;
}

void sub_08306E54(void)
{
    gRngSeed_03005938 = *(vu16 *)0x04000006 | (*(vu16 *)0x04000006 << 8) | (*(vu16 *)0x04000006 << 16) | (*(vu16 *)0x04000006 << 24);
}

s32 sub_08306E84(void)
{
    gRngSeed_03005938 = gRngSeed_03005938 * 0x19660D + 0x3C6EF35F;
    return gRngSeed_03005938;
}
