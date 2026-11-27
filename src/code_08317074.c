#include "global.h"
#include "map.h"
#include "link.h"
#include "regionb.h"
void sub_08317074(void)
{
    *(vu16 *)0x04000050 = 0xFF;
    *(vu16 *)0x04000054 = 16;
    sub_0831A54C();
}
