#include "global.h"
#include "regionb.h"
void sub_082EDCFC(void)
{
    gRngSeed_030058DC = *(vu16 *)0x04000006 | (*(vu16 *)0x04000006 << 8) | (*(vu16 *)0x04000006 << 16) | (*(vu16 *)0x04000006 << 24);
}

s32 sub_082EDD2C(void)
{
    gRngSeed_030058DC = gRngSeed_030058DC * 0x19660D + 0x3C6EF35F;
    return gRngSeed_030058DC;
}
