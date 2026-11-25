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
void sub_082EA2C0(u8 *a0)
{
    *(u8 *)(a0 + 1) = 0;
    sub_080005D4((a0 + 100));
    *(u16 *)(a0 + 224) = 255;
}
