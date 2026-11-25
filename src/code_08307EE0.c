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
void sub_08307EE0(u8 *a0)
{
    sub_08000704((a0 + 100));
    sub_08307E84(a0);
    *(s32 *)(a0 + 52) = (*(s32 *)(a0 + 52) + *(s32 *)(a0 + 64));
    *(s32 *)(a0 + 56) = (*(s32 *)(a0 + 56) + *(s32 *)(a0 + 68));
    sub_08307EC0(a0, *(s32 *)(a0 + 64), *(s32 *)(a0 + 68));
}
