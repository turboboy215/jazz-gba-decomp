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
s32 sub_082F29F4(u8 *a0)
{
    s32 x = sub_082FB250(*(u8 **)(a0 + 96));
    return *(s32 *)(a0 + 72) + x;
}
