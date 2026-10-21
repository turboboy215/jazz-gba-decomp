#include "global.h"
#include "resbank.h"
#include "system.h"
void sub_08002058(void)
{
    sub_08001FFC(1, 1);
    sub_08001FFC(2, 2);
    sub_08001FFC(0x200, 0x200);
    sub_08001FFC(0x100, 0x100);
    sub_08001FFC(4, 4);
    sub_08001FFC(8, 8);
}

void sub_08002094(u16 *held, u16 *pressed)
{
    u16 keys = 0x3FF ^ REG_KEYINPUT;
    *pressed = keys & ~*held;
    *held = keys;
    if ((keys & 15) == 15)
        sub_0831A554(0xFF);
}
