#include "global.h"
#include "system.h"
#include "gax.h"
#include "main.h"
#include "text.h"
#include "link.h"
#include "resbank.h"

void sub_083126F0(void)
{
    *(vu16 *)0x04000204 = 0x4014;
    sub_08001F34();
    *(vu16 *)0x04000200 = 0x2001;
    *(vu16 *)0x04000004 = 8;
    *(vu16 *)0x04000208 = 1;
}

void sub_08312730(void)
{
    u32 i;

    sub_08004D70();
    sub_08001A6C();
    *(vu16 *)0x04000008 = 0x1F00;
    *(vu16 *)0x04000000 = 0x100;
    sub_08004848(&gFont_083D2048, 31);
    sub_08001EBC(gFont_083D2048.pal, (u16 *)0x05000000, 240, 16);
    sub_08004880(15);
    sub_08004914(1, 1, gStr_083DF104);
    sub_08004914(1, 2, gStr_083DF124);
    sub_08004914(1, 3, gStr_083DF140);
    sub_08004914(1, 5, gStr_083DF160);
    sub_08004914(1, 6, gStr_083DF180);
    sub_08004914(1, 8, gStr_083DF198);
    sub_08004914(1, 9, gStr_083DF180);
    sub_08004914(1, 11, gStr_083DF1B4);
    sub_08004914(1, 12, gStr_083DF1D4);
    sub_08004914(1, 13, gStr_083DF1F0);
    sub_08004914(1, 14, gStr_083DF210);
    sub_08004914(1, 15, gStr_083DF228);
    sub_08004914(1, 16, gStr_083DF244);
    sub_08004914(5, 18, gStr_083DF260);
    for (i = 0; i <= 179; i++)
        sub_0831A54C();
    sub_08316F10(1, 0xC0, 20);
    while (sub_08316F50())
        sub_0831A54C();
}

void sub_08312864(void)
{
    u16 pressed = 0, held = 0;
    struct SlotCfg cfg1, cfg3;
    u32 i;
    u8 skip = 0;

    /* Jaleco */
    sub_08004D70();
    sub_08001A6C();
    sub_08001280(&gBgBank_0300398C, &gRes_08043230);
    sub_080012F4(&gBgBank_0300398C, 0, 0);
    sub_08001314(&gBgBank_0300398C, 0, gTiles_0821A090);
    sub_080012C0(&gBgBank_0300398C, 0);
    cfg1.a = 1;
    cfg1.b = 1;
    cfg1.c = 1;
    cfg1.d = 0;
    sub_08001A48(&gBgBank_0300398C, 0, (u8 *)&cfg1);
    sub_08001720(&gBgBank_0300398C, 0, 0, 0);
    *(vu16 *)0x04000008 = 0x1F80;
    *(vu16 *)0x04000000 = 0x100;
    sub_08316F10(0, 0xC0, 20);
    while (sub_08316F50()) {
        sub_0831A54C();
        sub_08002094(&held, &pressed);
        if (held & 11)
            skip = 1;
    }
    for (i = 0; i <= 179; i++) {
        sub_0831A54C();
        sub_08002094(&held, &pressed);
        if ((held & 11) || skip)
            break;
    }
    sub_08316F10(1, 0xC0, 20);
    while (sub_08316F50())
        sub_0831A54C();

    /* Epic Games */
    skip = 0;
    sub_08004D70();
    sub_08001A6C();
    sub_08001280(&gBgBank_0300398C, &gRes_080448A0);
    sub_080012F4(&gBgBank_0300398C, 0, 0);
    sub_08001314(&gBgBank_0300398C, 0, gTiles_0821F2E0);
    sub_080012C0(&gBgBank_0300398C, 0);
    sub_08001720(&gBgBank_0300398C, 0, 0, 0);
    sub_08316F10(0, 0xC0, 20);
    while (sub_08316F50()) {
        sub_0831A54C();
        sub_08002094(&held, &pressed);
        if (held & 11)
            skip = 1;
    }
    for (i = 0; i <= 179; i++) {
        sub_0831A54C();
        sub_08002094(&held, &pressed);
        if ((held & 11) || skip)
            break;
    }
    sub_08316F10(1, 0xC0, 20);
    while (sub_08316F50())
        sub_0831A54C();

    /* Game Titan / Shin'en */
    skip = 0;
    sub_08004D70();
    sub_08001A6C();
    sub_08001280(&gBgBank_0300398C, &gRes_08043D20);
    sub_080012F4(&gBgBank_0300398C, 0, 0);
    sub_08001314(&gBgBank_0300398C, 0, gTiles_082259C0);
    sub_080012F4(&gBgBank_0300398C, 1, 1);
    sub_08001314(&gBgBank_0300398C, 1, gTiles_08228DD0);
    sub_080012F4(&gBgBank_0300398C, 2, 2);
    sub_08001314(&gBgBank_0300398C, 2, gTiles_08229260);
    sub_080012C0(&gBgBank_0300398C, 0);
    cfg3.a = 1;
    cfg3.b = 1;
    cfg3.c = 1;
    cfg3.d = 0;
    sub_08001A48(&gBgBank_0300398C, 0, (u8 *)&cfg3);
    cfg3.a = 1;
    cfg3.b = 1;
    cfg3.c = 1;
    cfg3.d = 1;
    sub_08001A48(&gBgBank_0300398C, 1, (u8 *)&cfg3);
    cfg3.a = 1;
    cfg3.b = 1;
    cfg3.c = 1;
    cfg3.d = 2;
    sub_08001A48(&gBgBank_0300398C, 2, (u8 *)&cfg3);
    sub_08001720(&gBgBank_0300398C, 0, 0, -160);
    sub_08001720(&gBgBank_0300398C, 1, 0, 0);
    sub_08001720(&gBgBank_0300398C, 2, 0, 0);
    *(vu16 *)0x04000008 = 0x1F80;
    *(vu16 *)0x0400000A = 0x1E81;
    *(vu16 *)0x0400000C = 0x1D82;
    *(vu16 *)0x04000000 = 0x700;
    sub_08316F10(0, 0xC0, 20);
    while (sub_08316F50())
        sub_0831A54C();
    for (i = 0; i <= 39; i++) {
        sub_0831A54C();
        sub_08001404(&gBgBank_0300398C, 0, 0, 4);
        sub_08001404(&gBgBank_0300398C, 1, 0, -4);
    }
    for (i = 0; i <= 239; i++) {
        sub_0831A54C();
        sub_08002094(&held, &pressed);
        if ((held & 11) || skip)
            break;
    }
    sub_08316F10(1, 0xC0, 20);
    while (sub_08316F50())
        sub_0831A54C();
}
