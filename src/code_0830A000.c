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
