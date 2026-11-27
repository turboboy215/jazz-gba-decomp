#include "global.h"
#include "regionb.h"
void sub_082E931C(void)
{
    gRngSeed_030058B4 = *(vu16 *)0x04000006 | (*(vu16 *)0x04000006 << 8) | (*(vu16 *)0x04000006 << 16) | (*(vu16 *)0x04000006 << 24);
}

s32 sub_082E934C(void)
{
    gRngSeed_030058B4 = gRngSeed_030058B4 * 0x19660D + 0x3C6EF35F;
    return gRngSeed_030058B4;
}
