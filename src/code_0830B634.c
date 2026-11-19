#include "global.h"
#include "system.h"
#include "sprite.h"
#include "text.h"
#include "link.h"
#include "obj.h"
#include "resbank.h"
#include "gax.h"
#include "main.h"

void sub_0830B634(void)
{
    if (gTitleScrolled_02007574)
        sub_0830A274();
    sub_0830A4AC();
    gPrevMenu_02007570 = &gMenuMain_02005C00;
    gCurMenu_0200756C = &gMenuNewGame_02006638;
    gUnk_03000D12 = 0;
    sub_08000604(&gSprites_02007648[0]);
    sub_08000604(&gSprites_02007648[1]);
    sub_08000604(&gSprites_02007648[2]);
    gCurMenu_0200756C->cursor = 0;
    sub_0830C5C0();
    gCurMenu_0200756C->cursor = 1;
    sub_0830C5C0();
    gCurMenu_0200756C->cursor = 2;
    sub_0830C5C0();
    gCurMenu_0200756C->cursor = 0;
    sub_0830A3B4();
    sub_08000408(&gSprites_02007648[0]);
    sub_08000408(&gSprites_02007648[1]);
    sub_08000408(&gSprites_02007648[2]);
    sub_08000680(&gCursorSprite_02007580, 1);
    sub_08000408(&gCursorSprite_02007580);
}

void sub_0830B704(void)
{
    if (gTitleScrolled_02007574)
        sub_0830A274();
    sub_0830A4AC();
    gPrevMenu_02007570 = &gMenuMain_02005C00;
    gCurMenu_0200756C = &gMenuLevelSelect_02005DB4;
    sub_0830A3B4();
}

void sub_0830B740(void)
{
    if (gTitleScrolled_02007574)
        sub_0830A274();
    sub_0830A4AC();
    gPrevMenu_02007570 = &gMenuNewGame_02006638;
    gCurMenu_0200756C = &gMenuDifficulty_02005F68;
    sub_08000680(&gCursorSprite_02007580, 1);
    gCurMenu_0200756C->cursor = 1;
    sub_0800060C(&gSprites_02007774[0]);
    sub_08000604(&gSprites_02007774[1]);
    sub_0800060C(&gSprites_02007774[2]);
    sub_0800060C(&gSprites_02007774[3]);
    sub_0830A3B4();
    sub_08000408(&gSprites_02007774[0]);
    sub_08000408(&gSprites_02007774[1]);
    sub_08000408(&gSprites_02007774[2]);
    sub_08000408(&gSprites_02007774[3]);
}

void sub_0830B7E0(void)
{
    if (gTitleScrolled_02007574)
        sub_0830A274();
    sub_0830A4AC();
    gPrevMenu_02007570 = &gMenuMain_02005C00;
    gCurMenu_0200756C = &gMenuContinue_020067EC;
    gUnk_03000D12 = 0;
    gCurMenu_0200756C->cursor = 0;
    sub_0830CD64();
    gCurMenu_0200756C->cursor = 1;
    sub_0830CD64();
    gCurMenu_0200756C->cursor = 2;
    sub_0830CD64();
    gCurMenu_0200756C->cursor = 0;
    sub_0830A3B4();
    sub_08000604(&gSprites_02007648[0]);
    sub_08000604(&gSprites_02007648[1]);
    sub_08000604(&gSprites_02007648[2]);
    sub_08000408(&gSprites_02007648[0]);
    sub_08000408(&gSprites_02007648[1]);
    sub_08000408(&gSprites_02007648[2]);
    sub_08000680(&gCursorSprite_02007580, 1);
    sub_08000408(&gCursorSprite_02007580);
}

void sub_0830B898(void)
{
    gTournament_030059BC = 0;
    sub_08002F28();
    if (gTitleScrolled_02007574)
        sub_0830A274();
    GAX_pause_music();
    sub_0830A4AC();
    gPrevMenu_02007570 = &gMenuMain_02005C00;
    gCurMenu_0200756C = &gMenuTournament_0200611C;
    sub_0830A3B4();
}

void sub_0830B8E4(void)
{
    if (gTitleScrolled_02007574)
        sub_0830A274();
    sub_0830A4AC();
    gPrevMenu_02007570 = gCurMenu_0200756C;
    gCurMenu_0200756C = &gMenu12_02007070;
    gUnk_03000D12 = 0;
    gUnk_03000D10 = 0;
    gCurMenu_0200756C->cursor = 0;
    sub_0830D948();
    sub_0830A3B4();
    sub_08000604(&gSprite_020075E4);
    sub_08000408(&gSprite_020075E4);
}

void sub_0830B94C(void)
{
    if (gTitleScrolled_02007574)
        sub_0830A274();
    sub_0830A4AC();
    gPrevMenu_02007570 = &gMenuMain_02005C00;
    gCurMenu_0200756C = &gMenuSettings_02006D08;
    gUnk_03000D12 = 0;
    gUnk_03000D10 = 0;
    gCurMenu_0200756C->cursor = 0;
    sub_0830DBFC();
    sub_0830A3B4();
}

void sub_0830B9A4(void)
{
    if (gTitleScrolled_02007574)
        sub_0830A274();
    sub_0830A4AC();
    gPrevMenu_02007570 = &gMenuLevelSelect_02005DB4;
    gCurMenu_0200756C = &gMenuLevelSettings_02006EBC;
    gUnk_03000D12 = 0;
    gUnk_03000D10 = 0;
    gCurMenu_0200756C->cursor = 0;
    sub_0830DBFC();
    sub_0830A3B4();
}

void sub_0830B9FC(void)
{
    if (gTitleScrolled_02007574)
        sub_0830A274();
    sub_0830A4AC();
    gPrevMenu_02007570 = &gMenuMultiPak_020062D0;
    gCurMenu_0200756C = &gMenuMultiPakSettings_020069A0;
    gUnk_03000D12 = 0;
    gUnk_03000D10 = 0;
    gCurMenu_0200756C->cursor = 0;
    sub_0830DBFC();
    sub_0830A3B4();
}

void sub_0830BA54(void)
{
    if (gTitleScrolled_02007574)
        sub_0830A274();
    sub_0830A4AC();
    gPrevMenu_02007570 = &gMenuSinglePak_02006484;
    gCurMenu_0200756C = &gMenuSinglePakSettings_02006B54;
    gUnk_03000D12 = 0;
    gUnk_03000D10 = 0;
    gCurMenu_0200756C->cursor = 0;
    sub_0830DBFC();
    sub_0830A3B4();
}

void sub_0830BAAC(void)
{
    if (gTournament_030059BC == 0) {
        sub_080034A4();
        if (gUnk_03000D12 & 2) {
            sub_080049D4(4, 14, 25, 0);
            return;
        }
    }
    GAX2_new(&gGaxParams_030046E0);
    gGaxParams_030046E0.debug = 0;
    gGaxParams_030046E0.mixing_rate = 0x5221;
    gGaxParams_030046E0.fx_data = gGaxFxData_083D1C5C;
    gGaxParams_030046E0.workmem = gGaxWorkmem_0300471C;
    gGaxParams_030046E0.workmem_size = 0x1000;
    GAX2_init(&gGaxParams_030046E0);
    GAX_set_fx_volume(-1, sub_08316810(gFxVolume_030059B8));
    GAX_pause_music();
    if (gTitleScrolled_02007574)
        sub_0830A274();
    sub_0830A4AC();
    gPrevMenu_02007570 = &gMenuTournament_0200611C;
    gCurMenu_0200756C = &gMenuSinglePak_02006484;
    sub_0830A3B4();
    gTournament_030059BC = 1;
}

/* castfirst */

/* v_then_p */

/* u16 t=R>>k */
void sub_0830BB74(void)
{
    u32 n;
    u8 again;
    u8 sel;
    struct LinkPacket *p;
    u16 v;
    u16 bits;

    if (sub_08003490() == 0) {
        sub_08002B50();
        sub_08002BA0((u32)sub_0830A020);
        if (LINK_SESSION(3) == 0) {
            sub_08002F28();
            return;
        }
    }
    if (sub_0800347C() == 0) {
        if (gTitleScrolled_02007574)
            sub_0830A274();
        sub_0830A4AC();
        gPrevMenu_02007570 = &gMenuTournament_0200611C;
        gCurMenu_0200756C = &gMenuMultiPak_020062D0;
        sub_0830A3B4();
        return;
    }
    again = 1;
    sub_08002058();
    switch (gUnk_02007561) {
    case 1:
        sub_08001FFC(1, 2);
        sub_08001FFC(2, 1);
        break;
    case 2:
        sub_08001FFC(8, 4);
        sub_08001FFC(4, 8);
        break;
    case 3:
        sub_08001FFC(1, 2);
        sub_08001FFC(2, 1);
        sub_08001FFC(8, 4);
        sub_08001FFC(4, 8);
        break;
    }
    sub_08004A1C();
    sub_0800436C();
    n = 0;
    while (gLinkRecv_03003BC4[0].data[0] != 120) {
        sub_0831A534(1, 7);
        sub_08002F64(&gLinkSend_03003C04, gLinkRecv_03003BC4);
        if ((++gUnk_030059C0 & 31) > 16)
            sub_080049D4(10, 12, 11, 0);
        else
            sub_08004914(10, 12, gStr_083DB4F0);
        if (++n > 120 || gUnk_030058A0 > 120) {
            sub_08316F10(1, 192, 10);
            while (sub_08316F50())
                sub_0831A54C();
            sub_08004D70();
            sub_08001A6C();
            *(vu16 *)0x04000050 = 0;
            *(vu16 *)0x04000008 = 0x1F01;
            *(vu16 *)0x04000000 = 0x1140;
            sub_08004A1C();
            *(vu16 *)0x05000000 = 0x6A80;
            sub_0800436C();
            sub_0831A54C();
            sub_08004914(0, 6, gStr_083DB4FC);
            sub_08004914(0, 13, gStr_083DB51C);
            sub_08004914(0, 14, gStr_083DB53C);
            for (;;)
                ;
        }
    }
    n = 0;
    if (gLinkRecv_03003BC4[0].data[0] != 222) do {
        sub_0831A534(1, 7);
        sub_08002F64(&gLinkSend_03003C04, gLinkRecv_03003BC4);
        if ((++gUnk_030059C4 & 31) > 16)
            sub_080049D4(10, 12, 11, 0);
        else
            sub_08004914(10, 12, gStr_083DB4F0);
        v = gLinkRecv_03003BC4[0].data[0]; /* load, then the pointer copy the bottom test reloads through */
        p = gLinkRecv_03003BC4;
        if (v != 120 && v != 222)
            n++;
        if (n > 60 || gUnk_030058A0 > 120) {
            sub_08316F10(1, 192, 10);
            while (sub_08316F50())
                sub_0831A54C();
            sub_08004D70();
            sub_08001A6C();
            *(vu16 *)0x04000050 = 0;
            *(vu16 *)0x04000008 = 0x1F01;
            *(vu16 *)0x04000000 = 0x1140;
            sub_08004A1C();
            *(vu16 *)0x05000000 = 0x6A80;
            sub_0800436C();
            sub_0831A54C();
            sub_08004914(0, 6, gStr_083DB4FC);
            sub_08004914(0, 13, gStr_083DB51C);
            sub_08004914(0, 14, gStr_083DB53C);
            for (;;)
                ;
        }
    } while (p->data[0] != 222);
    if (again) do {
        /* The do/while (0) (a macro in the original?) only weights gLinkRecv's refs by loop depth, so it
           outranks sel in global-alloc (r6 / r7, as in the ROM); the code is the same without it. */
        do {
            gMaxFrags_02007564 = gLinkRecv_03003BC4[0].data[2];
        } while (0);
        gUnk_0200755E = gLinkRecv_03003BC4[0].data[4];
        /* Item 0 is a plain `& 1`, the others go through the u16 temp: that keeps item 0's constant out of
           cse's class for the other seven (loop.c hoists theirs to r8, regmove ties item 0's to the result). */
        gItemOn_02007578[0] = gLinkRecv_03003BC4[0].data[3] & 1;
        bits = gLinkRecv_03003BC4[0].data[3] >> 1;
        gItemOn_02007578[1] = bits & 1;
        bits = gLinkRecv_03003BC4[0].data[3] >> 2;
        gItemOn_02007578[2] = bits & 1;
        bits = gLinkRecv_03003BC4[0].data[3] >> 3;
        gItemOn_02007578[3] = bits & 1;
        bits = gLinkRecv_03003BC4[0].data[3] >> 4;
        gItemOn_02007578[4] = bits & 1;
        bits = gLinkRecv_03003BC4[0].data[3] >> 5;
        gItemOn_02007578[5] = bits & 1;
        bits = gLinkRecv_03003BC4[0].data[3] >> 6;
        gItemOn_02007578[6] = bits & 1;
        bits = gLinkRecv_03003BC4[0].data[3] >> 7;
        gItemOn_02007578[7] = bits & 1;
        gRadar_02007569 = gLinkRecv_03003BC4[0].data[5] != 0;
        sub_08316F10(1, 192, 30);
        while (sub_08316F50())
            sub_0831A54C();
        sub_08313D78(gLinkRecv_03003BC4[0].data[1], gLinkRecv_03003BC4[0].data[2]);
        switch (LINK_GETUNK4()) {
        case 2:
            sub_0830E93C();
            break;
        case 3:
            sub_0830ECF4();
            break;
        case 4:
            sub_0830F0AC();
            break;
        }
        sel = 0;
        n = 0;
        do {
            sub_0831A54C();
            sub_08002F64(&gLinkSend_03003C04, gLinkRecv_03003BC4);
            n++;
            if (sel) {
                if ((n & 31) > 16) {
                    sub_080049D4(0, 0, 28, 0);
                    sub_080049D4(0, 1, 28, 0);
                } else {
                    sub_08004914(0, 0, gStr_083DB55C);
                    sub_08004914(0, 1, gStr_083DB57C);
                }
            } else {
                if ((n & 31) > 16)
                    sub_080049D4(10, 0, 11, 0);
                else
                    sub_08004914(10, 0, gStr_083DB4F0);
            }
            if (gLinkRecv_03003BC4[0].data[0] == 127)
                sel = 1;
        } while (gLinkRecv_03003BC4[0].data[0] != 222);
    } while (again);
}
