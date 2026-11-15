#include "global.h"
#include "system.h"
#include "gax.h"
#include "main.h"

void sub_083126F0(void)
{
    *(vu16 *)0x04000204 = 0x4014;
    sub_08001F34();
    *(vu16 *)0x04000200 = 0x2001;
    *(vu16 *)0x04000004 = 8;
    *(vu16 *)0x04000208 = 1;
}
