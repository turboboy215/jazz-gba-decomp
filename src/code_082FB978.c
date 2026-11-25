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
void sub_082FB978(s32 a0, u8 *a1, s32 a2)
{
    s32 zero;
    *(s32 *)(a1 + 16) = a2;
    zero = 0;
    *(u8 *)(a1 + 1) = a0;
    *(u8 *)a1 = zero;
    *(u8 *)(a1 + 2) = zero;
    *(u16 *)(a1 + 4) = zero;
    *(s32 *)(a1 + 20) = zero;
    *(u8 *)(a1 + 8) = 0;
    *(u8 *)(a1 + 11) = 0;
    *(u8 *)(a1 + 9) = 0;
    *(u8 *)(a1 + 10) = 0;
    *(u16 *)(a1 + 6) = zero;
    *(u8 *)(a1 + 13) = 0;
    *(u8 *)(a1 + 12) = 0;
    *(u8 *)(a1 + 14) = 0;
}

void sub_082FB99C(u8 *a0)
{
    *(u8 *)a0 = 0;
    *(u8 *)(a0 + 13) = 0;
    *(u8 *)(a0 + 12) = 0;
    *(u8 *)(a0 + 14) = 0;
}
