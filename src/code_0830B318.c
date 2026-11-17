#include "global.h"
#include "system.h"
#include "sprite.h"
#include "text.h"
#include "link.h"
#include "obj.h"
#include "resbank.h"
#include "gax.h"
#include "main.h"

void sub_0830B318(void)
{
    u8 *extra = sub_083152BC();
    u8 again;
    u32 i;

    switch (gUnk_0200755F) {
    case 2:
        if (extra[0] == 0) {
            GAX_fx(6);
            return;
        }
        break;
    case 3:
        if (extra[1] == 0) {
            GAX_fx(6);
            return;
        }
        break;
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
    do {
        gLinkSend_03003C04.data[0] = 222;
        gLinkSend_03003C04.data[1] = gUnk_0200755F;
        gLinkSend_03003C04.data[2] = gMaxFrags_02007564;
        gLinkSend_03003C04.data[3] = LINK_GETUNK4();
        gLinkSend_03003C04.data[4] = gUnk_02007560;
        sub_0831A54C();
        sub_08002F64(&gLinkSend_03003C04, gLinkRecv_03003BC4);
    } while (gLinkRecv_03003BC4[0].data[0] != 222);

    if (again) do {
        sub_08316F10(1, 192, 3);
        while (sub_08316F50())
            sub_0831A54C();
        sub_08313D78(gUnk_0200755F, gLinkRecv_03003BC4[0].data[2]);
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
        i = 0;
        do {
            i++;
            if ((i & 31) > 16) {
                sub_080049D4(0, 0, 30, 0);
                sub_080049D4(0, 1, 30, 0);
            } else {
                sub_08004914(0, 0, gStr_083DB494);
                sub_08004914(0, 1, gStr_083DB4B4);
            }
            sub_08002094(&gUnk_03000D10, &gUnk_03000D12);
            sub_0831A54C();
            gLinkSend_03003C04.data[0] = 120;
            sub_08002F64(&gLinkSend_03003C04, gLinkRecv_03003BC4);
        } while (!(gUnk_03000D12 & 10));
        if (gUnk_03000D12 & 2) {
            sub_08316F10(1, 192, 3);
            while (sub_08316F50())
                sub_0831A54C();
            sub_0830A638();
            gPrevMenu_02007570 = &gMenuMain_02005C00;
            gCurMenu_0200756C = &gMenuMain_02005C00;
            sub_0830A140();
            gTitleScrolled_02007574 = 0;
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
            gPrevMenu_02007570 = &gMenuTournament_0200611C;
            gCurMenu_0200756C = &gMenuSinglePak_02006484;
            sub_0830A324();
            gCurMenu_0200756C->cursor = 0;
            *(vu16 *)0x04000050 = 0x442;
            *(vu16 *)0x04000052 = 0x303;
            *(vu16 *)0x0400000A = 0x1E82;
            sub_08000604(&gCursorSprite_02007580);
            again = 0;
        } else {
            do {
                gLinkSend_03003C04.data[0] = 222;
                gLinkSend_03003C04.data[1] = gUnk_0200755F;
                gLinkSend_03003C04.data[2] = gMaxFrags_02007564;
                gLinkSend_03003C04.data[3] = LINK_GETUNK4();
                gLinkSend_03003C04.data[4] = gUnk_02007560;
                sub_0831A54C();
                sub_08002F64(&gLinkSend_03003C04, gLinkRecv_03003BC4);
            } while (gLinkRecv_03003BC4[0].data[0] != 222);
        }
    } while (again);
}
