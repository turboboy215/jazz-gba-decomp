#include "global.h"
#include "actor.h"
#include "regionb.h"
u8 sub_082EF82C(struct Actor *a)
{
    return *(s16 *)((u8 *)a + 0x5A) == 0;
}
