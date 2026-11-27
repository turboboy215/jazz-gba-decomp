#include "global.h"
#include "regionb.h"
void sub_082EB340(void)
{
    gRngSeed_030058C4 = *(vu16 *)0x04000006 | (*(vu16 *)0x04000006 << 8) | (*(vu16 *)0x04000006 << 16) | (*(vu16 *)0x04000006 << 24);
}

s32 sub_082EB370(void)
{
    gRngSeed_030058C4 = gRngSeed_030058C4 * 0x19660D + 0x3C6EF35F;
    return gRngSeed_030058C4;
}
