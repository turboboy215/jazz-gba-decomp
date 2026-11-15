#include "global.h"
#include "system.h"
#include "sprite.h"
#include "text.h"
#include "link.h"
#include "obj.h"
#include "resbank.h"
#include "gax.h"
#include "main.h"

u8 sub_0830A000(void)
{
    if (sub_08309FF4())
        return gUnk_02007560;
    return gUnk_0200755E;
}

u32 sub_0830A020(void)
{
    if (gUnk_03000D38.unk5 == -1) {
        sub_08004914(4, 14, gStr_083DB35C);
        if (gUnk_03000D12 & 2)
            goto cancel;
    }
    return 1;
cancel:
    sub_080049D4(4, 14, 22, 0);
    return 0;
}

void sub_0830A06C(void)
{
    u32 i;
    s16 n;

    *(vu16 *)0x04000050 = 0x442;
    *(vu16 *)0x04000052 = 0x303;
    *(vu16 *)0x0400000A = 0x1E82;
    for (i = 0; i <= 59; i++) {
        sub_0831A54C();
        sub_08000604(&gTitleSprite_02007904);
        sub_08000408(&gTitleSprite_02007904);
        sub_080043B4();
    }
    for (i = 0; i <= 59; i++) {
        sub_0831A54C();
        sub_080006C4(&gTitleSprite_02007904);
        sub_08000408(&gTitleSprite_02007904);
        sub_080043B4();
    }
    for (n = 95; n > 0; n--) {
        if (sub_08003490()) {
            gLinkSend_03003C04.data[0] = 120;
            sub_08002F64(&gLinkSend_03003C04, gLinkRecv_03003BC4);
        }
        sub_0831A54C();
        sub_08001404(&gBgBank_0300398C, 2, -5, 0);
        sub_080006C4(&gTitleSprite_02007904);
        sub_08000408(&gTitleSprite_02007904);
        sub_080043B4();
    }
    gTitleScrolled_02007574 = 1;
}

void sub_0830A140(void)
{
    s16 n;

    sub_0800065C(&gTitleSprite_02007904, 16);
    sub_08000408(&gTitleSprite_02007904);
    sub_080043B4();
    for (n = 5; n > 0; n--) {
        if (sub_08003490()) {
            gLinkSend_03003C04.data[0] = 120;
            sub_08002F64(&gLinkSend_03003C04, gLinkRecv_03003BC4);
        }
        sub_08001404(&gBgBank_0300398C, 2, -95, 0);
    }
    gTitleScrolled_02007574 = 1;
}

void sub_0830A1B0(void)
{
    s16 n;

    *(vu16 *)0x04000050 = 0x442;
    *(vu16 *)0x04000052 = 0x303;
    *(vu16 *)0x0400000A = 0x1E82;
    for (n = 25; n > 0; n--) {
        sub_08000684(&gTitleSprite_02007904, -(n * 5) + 5, 0, 128);
        sub_08000408(&gTitleSprite_02007904);
        sub_080043B4();
        if (sub_08003490()) {
            gLinkSend_03003C04.data[0] = 120;
            sub_08002F64(&gLinkSend_03003C04, gLinkRecv_03003BC4);
        }
        sub_0831A54C();
        sub_080006C4(&gTitleSprite_02007904);
        sub_08000408(&gTitleSprite_02007904);
        sub_080043B4();
        sub_08001404(&gBgBank_0300398C, 2, -19, 0);
        sub_08001404(&gBgBank_0300398C, 1, -2, 0);
    }
    gTitleScrolled_02007574 = 1;
}

void sub_0830A274(void)
{
    s16 n;
    struct Sprite *spr;

    *(vu16 *)0x04000050 = 0x442;
    *(vu16 *)0x04000052 = 0x303;
    *(vu16 *)0x0400000A = 0x1E82;
    for (n = 25, spr = &gTitleSprite_02007904; n > 0; n--) {
        sub_08000684(spr, (n - 25) * 5, 0, 128);
        sub_08000408(spr);
        sub_080043B4();
        if (sub_08003490()) {
            gLinkSend_03003C04.data[0] = 120;
            sub_08002F64(&gLinkSend_03003C04, gLinkRecv_03003BC4);
        }
        sub_0831A54C();
        sub_08001404(&gBgBank_0300398C, 2, 19, 0);
        sub_08001404(&gBgBank_0300398C, 1, 2, 0);
    }
    gTitleScrolled_02007574 = 0;
}

void sub_0830A324(void)
{
    s16 n;

    for (n = 5; n > 0; n--) {
        if (sub_08003490()) {
            gLinkSend_03003C04.data[0] = 120;
            sub_08002F64(&gLinkSend_03003C04, gLinkRecv_03003BC4);
        }
        sub_08000684(&gTitleSprite_02007904, (n - 25) * 5, 0, 128);
        sub_08000408(&gTitleSprite_02007904);
        sub_080043B4();
        sub_08001404(&gBgBank_0300398C, 2, 95, 0);
        sub_08001404(&gBgBank_0300398C, 1, 10, 0);
    }
    gTitleScrolled_02007574 = 0;
}

void sub_0830A3B4(void)
{
    s16 n;
    u8 i;

    if (sub_08309FF4() == 0)
        GAX_fx(28);
    sub_0800060C(&gCursorSprite_02007580);
    sub_08000408(&gCursorSprite_02007580);
    sub_0831A54C();
    sub_080043B4();
    sub_08004A1C();
    for (n = 30; n >= 0; n--) {
        if (sub_08003490()) {
            gLinkSend_03003C04.data[0] = 120;
            sub_08002F64(&gLinkSend_03003C04, gLinkRecv_03003BC4);
        }
        sub_0831A54C();
        sub_08004914(n + 1, 1, gCurMenu_0200756C->title);
        if (strcmp(gPrevMenu_02007570->title, gCurMenu_0200756C->title) != 0) {
            sub_08004914(n + 14, 19, gStr_083DB374);
            sub_08004914(n + 12, 19, gStr_083DB384);
        }
        for (i = 0; i < gCurMenu_0200756C->count; i++)
            sub_08004914(gCurMenu_0200756C->items[i].x - n, gCurMenu_0200756C->items[i].y,
                         gCurMenu_0200756C->items[i].label);
    }
    sub_08000604(&gCursorSprite_02007580);
    sub_08004A1C();
}

void sub_0830A4AC(void)
{
    s16 n;
    u8 i;

    if (sub_08309FF4() == 0)
        GAX_fx(29);
    sub_0800060C(&gSprite_020075E4);
    sub_08000408(&gSprite_020075E4);
    sub_0800060C(&gSprites_02007648[0]);
    sub_0800060C(&gSprites_02007648[1]);
    sub_0800060C(&gSprites_02007648[2]);
    sub_08000408(&gSprites_02007648[0]);
    sub_08000408(&gSprites_02007648[1]);
    sub_08000408(&gSprites_02007648[2]);
    sub_0800060C(&gSprites_02007774[0]);
    sub_0800060C(&gSprites_02007774[1]);
    sub_0800060C(&gSprites_02007774[2]);
    sub_0800060C(&gSprites_02007774[3]);
    sub_08000408(&gSprites_02007774[0]);
    sub_08000408(&gSprites_02007774[1]);
    sub_08000408(&gSprites_02007774[2]);
    sub_08000408(&gSprites_02007774[3]);
    sub_08000680(&gCursorSprite_02007580, 0);
    sub_0800060C(&gCursorSprite_02007580);
    sub_08000408(&gCursorSprite_02007580);
    sub_0831A54C();
    sub_080043B4();
    sub_08004A1C();
    for (n = 0; n <= 30; n++) {
        sub_0831A54C();
        if (sub_08003490()) {
            gLinkSend_03003C04.data[0] = 120;
            sub_08002F64(&gLinkSend_03003C04, gLinkRecv_03003BC4);
        }
        sub_08004914(1 - n, 1, gCurMenu_0200756C->title);
        if (strcmp(gPrevMenu_02007570->title, gCurMenu_0200756C->title) != 0) {
            sub_08004914(14 - n, 19, gStr_083DB374);
            sub_08004914(12 - n, 19, gStr_083DB384);
        }
        for (i = 0; i < gCurMenu_0200756C->count; i++)
            sub_08004914(gCurMenu_0200756C->items[i].x + n, gCurMenu_0200756C->items[i].y,
                         gCurMenu_0200756C->items[i].label);
    }
    sub_08004A1C();
    sub_08000604(&gCursorSprite_02007580);
}

void sub_0830A638(void)
{
    struct SlotCfg c1, c2, c3;
    u32 i;

    sub_08004D70();
    sub_08001A6C();
    sub_08001280(&gBgBank_0300398C, &gRes_08044E70);
    sub_080012C0(&gBgBank_0300398C, 0);
    sub_080012F4(&gBgBank_0300398C, 1, 0);
    sub_08001314(&gBgBank_0300398C, 1, gTiles_08222830);
    c1.a = 1;
    c1.b = 1;
    c1.c = 1;
    c1.d = 1;
    sub_08001A48(&gBgBank_0300398C, 1, (u8 *)&c1);
    sub_08001720(&gBgBank_0300398C, 1, 0, 0);
    sub_080012F4(&gBgBank_0300398C, 2, 1);
    sub_08001314(&gBgBank_0300398C, 2, gTiles_08222830);
    c2.a = 1;
    c2.b = 1;
    c2.c = 1;
    c2.d = 2;
    sub_08001A48(&gBgBank_0300398C, 2, (u8 *)&c2);
    sub_08001720(&gBgBank_0300398C, 2, 480, 0);
    sub_080012F4(&gBgBank_0300398C, 3, 2);
    sub_08001314(&gBgBank_0300398C, 3, gTiles_08222830);
    c3.a = 1;
    c3.b = 1;
    c3.c = 1;
    c3.d = 3;
    sub_08001A48(&gBgBank_0300398C, 3, (u8 *)&c3);
    sub_08001720(&gBgBank_0300398C, 3, -10, 0);
    sub_08001A8C(&gBgBank_0300398C);
    *(vu16 *)0x04000008 = 0x1F01;
    *(vu16 *)0x04000000 = 0x1F40;
    sub_08001E60(gBrightness_02007567);
    sub_08001EBC(sub_080012E4(&gBgBank_0300398C, 0), (u16 *)0x05000000, 0, 240);
    sub_08004848(&gFont_083D2048, 31);
    sub_08001EBC(gFont_083D2048.pal, (u16 *)0x05000000, 240, 16);
    sub_08004880(15);
    sub_0800436C();

    sub_080002E0(&gCursorSprite_02007580, &gAnims_080B2350, 0, 0);
    sub_08000684(&gCursorSprite_02007580, 11, 40, 128);
    sub_0800060C(&gCursorSprite_02007580);
    sub_08000408(&gCursorSprite_02007580);

    sub_080002E0(&gSprite_020075E4, &gAnims_08108230, 0, 0);
    sub_08000684(&gSprite_020075E4, 1, 3, 128);
    sub_0800060C(&gSprite_020075E4);
    sub_0800075C(&gSprite_020075E4, 1);
    sub_08000408(&gSprite_020075E4);

    sub_080002E0(&gSprites_02007648[0], &gAnims_081FB770, 3, 0);
    sub_080002E0(&gSprites_02007648[1], &gAnims_081FB770, 4, 0);
    sub_080002E0(&gSprites_02007648[2], &gAnims_081FB770, 5, 0);
    sub_08000684(&gSprites_02007648[0], 20, 54, 127);
    sub_08000684(&gSprites_02007648[1], 20, 86, 127);
    sub_08000684(&gSprites_02007648[2], 20, 118, 127);
    sub_0800060C(&gSprites_02007648[0]);
    sub_0800060C(&gSprites_02007648[1]);
    sub_0800060C(&gSprites_02007648[2]);
    sub_08000408(&gSprites_02007648[0]);
    sub_08000408(&gSprites_02007648[1]);
    sub_08000408(&gSprites_02007648[2]);

    sub_080002E0(&gSprites_02007774[0], &gAnims_081FC460, 0, 0);
    sub_080002E0(&gSprites_02007774[1], &gAnims_081FC460, 1, 0);
    sub_080002E0(&gSprites_02007774[2], &gAnims_081FC460, 2, 0);
    sub_080002E0(&gSprites_02007774[3], &gAnims_081FC460, 3, 0);
    sub_08000684(&gSprites_02007774[0], 40, 60, 127);
    sub_08000684(&gSprites_02007774[1], 40, 85, 127);
    sub_08000684(&gSprites_02007774[2], 40, 115, 127);
    sub_08000684(&gSprites_02007774[3], 40, 140, 127);
    sub_0800075C(&gSprites_02007774[0], 10);
    sub_0800075C(&gSprites_02007774[1], 10);
    sub_0800075C(&gSprites_02007774[2], 10);
    sub_0800075C(&gSprites_02007774[3], 10);
    sub_0800060C(&gSprites_02007774[0]);
    sub_0800060C(&gSprites_02007774[1]);
    sub_0800060C(&gSprites_02007774[2]);
    sub_0800060C(&gSprites_02007774[3]);
    sub_08000408(&gSprites_02007774[0]);
    sub_08000408(&gSprites_02007774[1]);
    sub_08000408(&gSprites_02007774[2]);
    sub_08000408(&gSprites_02007774[3]);

    sub_080002E0(&gTitleSprite_02007904, &gAnims_082026A0, 0, 0);
    sub_08000684(&gTitleSprite_02007904, 0, 0, 128);
    sub_08000604(&gTitleSprite_02007904);
    sub_0800075C(&gTitleSprite_02007904, 11);
    sub_08000408(&gTitleSprite_02007904);
    sub_08001EBC(gPalette_020073D8, (u16 *)0x05000200, 0, 192);
    for (i = 0; i <= 3; i++) {
        sub_080002E0(&gSprites_03003A34[i], &gAnims_081FAEC0, i, 0);
        sub_0800075C(&gSprites_03003A34[i], i + 2);
    }

    if (gUnk_03003F10 == 0 && sub_08309FF4() == 0) {
        GAX2_new(&gGaxParams_030046E0);
        gGaxParams_030046E0.debug = 0;
        gGaxParams_030046E0.mixing_rate = 0x5221;
        gGaxParams_030046E0.song_data = gSong_0835F2E4;
        gGaxParams_030046E0.fx_data = gGaxFxData_083D1C5C;
        gGaxParams_030046E0.workmem = gGaxWorkmem_0300471C;
        gGaxParams_030046E0.workmem_size = 0x1000;
        GAX2_init(&gGaxParams_030046E0);
        GAX_set_music_volume(-1, sub_083167F8(gMusicVolume_030059B4));
        GAX_set_fx_volume(-1, sub_08316810(gFxVolume_030059B8));
        sub_08001FC8(0, VBlankIntr_IWRAM_0300087D);
    } else {
        gUnk_03003F10 = 0;
    }
}
