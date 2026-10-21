#include "global.h"
#include "system.h"
#include "link.h"
void sub_080029F4(void)
{
    int i = 0;
    if (REG_SIOCNT & 0x80) {
        do {
            if (++i > 0x795C)
                break;
        } while (REG_SIOCNT & 0x80);
    }
    sub_080029DC(600);
}
