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

#include "link.h"
u16 sub_080020C8(u16 keys)
{
    u16 r;
    u16 k = keys;
    r = k & 0xF0;
    if (k & 0x200) r |= gKeyMapL_03000D24;
    if (k & 0x100) r |= gKeyMapR_03000D26;
    if (k & 1) r |= gKeyMapA_03000D28;
    if (k & 2) r |= gKeyMapB_03000D2A;
    if (k & 4) r |= gKeyMapSelect_03000D2C;
    if (k & 8) r |= gKeyMapStart_03000D2E;
    return r;
}
