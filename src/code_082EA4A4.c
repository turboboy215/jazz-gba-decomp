#include "global.h"
#include "regionb.h"
void sub_082EA4A4(void)
{
    gRngSeed_030058BC = *(vu16 *)0x04000006 | (*(vu16 *)0x04000006 << 8) | (*(vu16 *)0x04000006 << 16) | (*(vu16 *)0x04000006 << 24);
}

s32 sub_082EA4D4(void)
{
    gRngSeed_030058BC = gRngSeed_030058BC * 0x19660D + 0x3C6EF35F;
    return gRngSeed_030058BC;
}
