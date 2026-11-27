#include "global.h"
#include "regionb.h"
void sub_082EBF98(void)
{
    gRngSeed_030058CC = *(vu16 *)0x04000006 | (*(vu16 *)0x04000006 << 8) | (*(vu16 *)0x04000006 << 16) | (*(vu16 *)0x04000006 << 24);
}

s32 sub_082EBFC8(void)
{
    gRngSeed_030058CC = gRngSeed_030058CC * 0x19660D + 0x3C6EF35F;
    return gRngSeed_030058CC;
}
