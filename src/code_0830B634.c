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
