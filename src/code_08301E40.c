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
void sub_08301E40(s32 a0)
{
    gUnk_030038CC.unk18 = a0;
}

void sub_08301E4C(s32 a0)
{
    gUnk_030038CC.unk20 = a0;
}

void sub_08301E58(s32 a0)
{
    gUnk_030038CC.unk1C = a0;
}

void sub_08301E64(s32 a0)
{
    gUnk_030038CC.unk24 = a0;
}

void sub_08301E70(void)
{
    gUnk_030038CC.unk24 = gUnk_030038CC.unk0C;
    gUnk_030038CC.unk18 = gUnk_030038CC.unk20 = gUnk_030038CC.unk08;
    gUnk_030038CC.unk1C = gUnk_030038CC.unk0C;
}
