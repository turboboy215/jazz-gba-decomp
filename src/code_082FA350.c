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
void sub_082FA350(s32 a0)
{
    *(s32 *)(a0 + 140) = sub_082FA770;
    sub_080003FC((a0 + 40), 0x8176790);
    sub_080006AC((a0 + 40));
}
