#include "global.h"
#include "system.h"
#include "sprite.h"
#include "text.h"
#include "link.h"
#include "obj.h"
#include "resbank.h"
#include "gax.h"
#include "main.h"

void sub_0830D378(void)
{
    u8 *extra;

    if (gUnk_03000D12 & 0x20) {
        GAX_fx(4);
        if (gUnk_0200755D != 0)
            gUnk_0200755D--;
    }
    if (gUnk_03000D12 & 0x11) {
        GAX_fx(4);
        if (gUnk_0200755D <= 9)
            gUnk_0200755D++;
    }
    sub_080049D4(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].x,
                 gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].y, 25, 0);
    extra = sub_083152BC();
    switch (gUnk_0200755D) {
    case 0:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Level:       Cave Level 1 ");
        break;
    case 1:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Level:       Cave Level 2 ");
        break;
    case 2:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Level:       Snow Level 1 ");
        break;
    case 3:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Level:       Snow Level 2 ");
        break;
    case 4:
        if (extra[2])
            strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Level:     Castle Level 3 ");
        else
            strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Level:    Castle Level 3# ");
        break;
    case 5:
        if (extra[3])
            strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Level:        Wasteland 1 ");
        else
            strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Level:       Wasteland 1# ");
        break;
    case 6:
        if (extra[4])
            strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Level:        Wasteland 2 ");
        else
            strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Level:       Wasteland 2# ");
        break;
    case 7:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Level:       Single Pak 1 ");
        break;
    case 8:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Level:       Single Pak 2 ");
        break;
    case 9:
        if (extra[0])
            strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Level:       Single Pak 3 ");
        else
            strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Level:      Single Pak 3# ");
        break;
    case 10:
        if (extra[1])
            strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Level:       Single Pak 4 ");
        else
            strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Level:      Single Pak 4# ");
        break;
    }
}

void sub_0830D668(void)
{
    u8 *extra;

    if (gUnk_03000D12 & 0x20) {
        GAX_fx(4);
        if (gUnk_0200755F != 0)
            gUnk_0200755F--;
    }
    if (gUnk_03000D12 & 0x11) {
        GAX_fx(4);
        if (gUnk_0200755F <= 2)
            gUnk_0200755F++;
    }
    sub_080049D4(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].x,
                 gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].y, 25, 0);
    extra = sub_083152BC();
    switch (gUnk_0200755F) {
    case 0:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Level:       Single-Pak 1 ");
        break;
    case 1:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Level:       Single-Pak 2 ");
        break;
    case 2:
        if (extra[0])
            strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Level:       Single-Pak 3 ");
        else
            strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Level:      Single-Pak 3# ");
        break;
    case 3:
        if (extra[1])
            strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Level:       Single-Pak 4 ");
        else
            strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Level:      Single-Pak 4# ");
        break;
    }
}

void sub_0830D7C0(void)
{
    if (gUnk_03000D12 & 0x20) {
        GAX_fx(4);
        if (gUnk_0200755E != 0)
            gUnk_0200755E--;
    }
    if (gUnk_03000D12 & 0x11) {
        GAX_fx(4);
        if (gUnk_0200755E == 0)
            gUnk_0200755E++;
    }
    sub_080049D4(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].x,
                 gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].y, 25, 0);
    switch (gUnk_0200755E) {
    case 0:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Play:              Battle ");
        break;
    case 1:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Play:    Capture The Flag ");
        break;
    }
}

void sub_0830D884(void)
{
    if (gUnk_03000D12 & 0x20) {
        GAX_fx(4);
        if (gUnk_02007560 != 0)
            gUnk_02007560--;
    }
    if (gUnk_03000D12 & 0x11) {
        GAX_fx(4);
        if (gUnk_02007560 == 0)
            gUnk_02007560++;
    }
    sub_080049D4(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].x,
                 gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].y, 25, 0);
    switch (gUnk_02007560) {
    case 0:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Mode:              Battle ");
        break;
    case 1:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Mode:    Capture The Flag ");
        break;
    }
}

void sub_0830D948(void)
{
    if (gUnk_03000D12 & 0x20) {
        GAX_fx(4);
        if (gUnk_02007561 != 0)
            gUnk_02007561--;
    }
    if (gUnk_03000D12 & 0x11) {
        GAX_fx(4);
        if (gUnk_02007561 <= 2)
            gUnk_02007561++;
    }
    sub_080049D4(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].x,
                 gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].y, 25, 0);
    switch (gUnk_02007561) {
    case 0:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Control Configuration:  1 ");
        sub_08000680(&gSprite_020075E4, 0);
        sub_08000408(&gSprite_020075E4);
        break;
    case 1:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Control Configuration:  2 ");
        sub_08000680(&gSprite_020075E4, 1);
        sub_08000408(&gSprite_020075E4);
        break;
    case 2:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Control Configuration:  3 ");
        sub_08000680(&gSprite_020075E4, 2);
        sub_08000408(&gSprite_020075E4);
        break;
    case 3:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Control Configuration:  4 ");
        sub_08000680(&gSprite_020075E4, 3);
        sub_08000408(&gSprite_020075E4);
        break;
    }
}

void sub_0830DAB4(void)
{
    if (gUnk_03000D12 & 0x20) {
        GAX_fx(4);
        if (gMaxFrags_02007564 > 5)
            gMaxFrags_02007564 -= 5;
    }
    if (gUnk_03000D12 & 0x11) {
        GAX_fx(4);
        if (gMaxFrags_02007564 <= 24)
            gMaxFrags_02007564 += 5;
    }
    sub_080049D4(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].x,
                 gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].y, 25, 0);
    switch (gMaxFrags_02007564) {
    case 5:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Max Frags:              5 ");
        break;
    case 10:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Max Frags:             10 ");
        break;
    case 15:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Max Frags:             15 ");
        break;
    case 20:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Max Frags:             20 ");
        break;
    case 25:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Max Frags:             25 ");
        break;
    }
}

void sub_0830DBFC(void)
{
    if (gUnk_03000D12 & 0x20) {
        GAX_fx(4);
        if (gBrightness_02007567 != 0)
            gBrightness_02007567--;
        sub_08001E60(gBrightness_02007567);
        sub_08001EBC(sub_080012E4(&gBgBank_0300398C, 0), (u16 *)0x05000000, 0, 240);
        sub_08001EBC(gFont_083D2048.pal, (u16 *)0x05000000, 240, 16);
        sub_08001EBC(gPalette_020073D8, (u16 *)0x05000200, 0, 32);
    }
    if (gUnk_03000D12 & 0x11) {
        GAX_fx(4);
        if (gBrightness_02007567 <= 6)
            gBrightness_02007567++;
        sub_08001E60(gBrightness_02007567);
        sub_08001EBC(sub_080012E4(&gBgBank_0300398C, 0), (u16 *)0x05000000, 0, 240);
        sub_08001EBC(gFont_083D2048.pal, (u16 *)0x05000000, 240, 16);
        sub_08001EBC(gPalette_020073D8, (u16 *)0x05000200, 0, 32);
    }
    sub_080049D4(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].x,
                 gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].y, 25, 0);
    switch (gBrightness_02007567) {
    case 0:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Brightness:             0 ");
        break;
    case 1:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Brightness:             1 ");
        break;
    case 2:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Brightness:             2 ");
        break;
    case 3:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Brightness:             3 ");
        break;
    case 4:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Brightness:             4 ");
        break;
    case 5:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Brightness:             5 ");
        break;
    case 6:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Brightness:             6 ");
        break;
    case 7:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Brightness:             7 ");
        break;
    }
}

void sub_0830DE2C(void)
{
    if (gUnk_03000D12 & 0x20) {
        GAX_fx(4);
        if (gUnk_02007566 != 0)
            gUnk_02007566--;
    }
    if (gUnk_03000D12 & 0x11) {
        GAX_fx(4);
        if (gUnk_02007566 <= 2)
            gUnk_02007566++;
    }
    sub_080049D4(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].x,
                 gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].y, 25, 0);
    switch (gUnk_02007566) {
    case 0:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Difficulty:      CAKEWALK ");
        break;
    case 1:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Difficulty:        NORMAL ");
        break;
    case 2:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Difficulty:   PRETTY HARD ");
        break;
    case 3:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Difficulty:  WAY TOO HARD ");
        break;
    }
}

void sub_0830DF38(void)
{
    if (gUnk_03000D12 & 0x20) {
        GAX_fx(4);
        if (gMusicVolume_030059B4 != 0)
            gMusicVolume_030059B4--;
    }
    if (gUnk_03000D12 & 0x11) {
        GAX_fx(4);
        if (gMusicVolume_030059B4 <= 10)
            gMusicVolume_030059B4++;
    }
    sub_080049D4(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].x,
                 gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].y, 25, 0);
    GAX_set_music_volume(-1, sub_083167F8(gMusicVolume_030059B4));
    switch (gMusicVolume_030059B4) {
    case 0:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Music Volume:         OFF ");
        break;
    case 1:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Music Volume:           1 ");
        break;
    case 2:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Music Volume:           2 ");
        break;
    case 3:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Music Volume:           3 ");
        break;
    case 4:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Music Volume:           4 ");
        break;
    case 5:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Music Volume:           5 ");
        break;
    case 6:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Music Volume:           6 ");
        break;
    case 7:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Music Volume:           7 ");
        break;
    case 8:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Music Volume:           8 ");
        break;
    case 9:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Music Volume:           9 ");
        break;
    case 10:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Music Volume:          10 ");
        break;
    case 11:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Music Volume:          11 ");
        break;
    }
}

void sub_0830E190(void)
{
    if (gUnk_03000D12 & 0x20) {
        GAX_fx(4);
        if (gFxVolume_030059B8 != 0)
            gFxVolume_030059B8--;
    }
    if (gUnk_03000D12 & 0x11) {
        GAX_fx(4);
        if (gFxVolume_030059B8 <= 10)
            gFxVolume_030059B8++;
    }
    sub_080049D4(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].x,
                 gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].y, 25, 0);
    GAX_set_fx_volume(-1, sub_08316810(gFxVolume_030059B8));
    switch (gFxVolume_030059B8) {
    case 0:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " SFX Volume:           OFF ");
        break;
    case 1:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " SFX Volume:             1 ");
        break;
    case 2:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " SFX Volume:             2 ");
        break;
    case 3:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " SFX Volume:             3 ");
        break;
    case 4:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " SFX Volume:             4 ");
        break;
    case 5:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " SFX Volume:             5 ");
        break;
    case 6:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " SFX Volume:             6 ");
        break;
    case 7:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " SFX Volume:             7 ");
        break;
    case 8:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " SFX Volume:             8 ");
        break;
    case 9:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " SFX Volume:             9 ");
        break;
    case 10:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " SFX Volume:            10 ");
        break;
    case 11:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " SFX Volume:            11 ");
        break;
    }
}

void sub_0830E3E8(void)
{
    if (gRadar_02007569) {
        GAX_fx(4);
        gRadar_02007569 = 0;
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Radar:                OFF ");
    } else {
        GAX_fx(4);
        gRadar_02007569 = 1;
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Radar:                 ON ");
    }
}

/* Menu_Defaults: "Defaults" item of the settings pages: brightness 0, SFX volume 10 and, depending on
   the page (compared by title), control configuration 1, difficulty NORMAL, music volume 10; rewrites
   the item labels (items[0] is Brightness on every page) and reapplies palettes and volumes. */
void sub_0830E460(void)
{
    GAX_fx(43);
    gBrightness_02007567 = 0;
    strcpy(gCurMenu_0200756C->items[0].label, " Brightness:             0 ");
    gFxVolume_030059B8 = 10;
    sub_08001E60(gBrightness_02007567);
    sub_08001EBC(sub_080012E4(&gBgBank_0300398C, 0), (u16 *)0x05000000, 0, 240);
    sub_08001EBC(gFont_083D2048.pal, (u16 *)0x05000000, 240, 16);
    sub_08001EBC(gPalette_020073D8, (u16 *)0x05000200, 0, 32);
    if (strcmp(gCurMenu_0200756C->title, gStr_083DB3BC) == 0) {
        gUnk_02007561 = 0;
        gUnk_02007566 = 1;
        gMusicVolume_030059B4 = 10;
        strcpy(gCurMenu_0200756C->items[1].label, " Difficulty:        NORMAL ");
        strcpy(gCurMenu_0200756C->items[2].label, " Music Volume:          10 ");
        strcpy(gCurMenu_0200756C->items[3].label, " SFX Volume:            10 ");
    }
    if (strcmp(gCurMenu_0200756C->title, gStr_083DB3EC) == 0) {
        gUnk_02007561 = 0;
        gUnk_02007566 = 1;
        gMusicVolume_030059B4 = 10;
        strcpy(gCurMenu_0200756C->items[1].label, " Music Volume:          10 ");
        strcpy(gCurMenu_0200756C->items[2].label, " SFX Volume:            10 ");
    }
    if (strcmp(gCurMenu_0200756C->title, gStr_083DB3F8) == 0) {
        gUnk_02007561 = 0;
        strcpy(gCurMenu_0200756C->items[1].label, " SFX Volume:            10 ");
    }
    if (strcmp(gCurMenu_0200756C->title, gStr_083DB410) == 0) {
        gUnk_02007561 = 0;
        strcpy(gCurMenu_0200756C->items[1].label, " SFX Volume:            10 ");
    }
    GAX_set_music_volume(-1, sub_083167F8(gMusicVolume_030059B4));
    GAX_set_fx_volume(-1, sub_08316810(gFxVolume_030059B8));
}

void sub_0830E610(void)
{
    GAX_fx(4);
    if (gItemOn_02007578[0]) {
        gItemOn_02007578[0] = 0;
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Machine Gun:          OFF ");
    } else {
        gItemOn_02007578[0] = 1;
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Machine Gun:           ON ");
    }
}

void sub_0830E684(void)
{
    GAX_fx(4);
    if (gItemOn_02007578[1]) {
        gItemOn_02007578[1] = 0;
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Ricochet Gun:         OFF ");
    } else {
        gItemOn_02007578[1] = 1;
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Ricochet Gun:          ON ");
    }
}

void sub_0830E6F8(void)
{
    GAX_fx(4);
    if (gItemOn_02007578[2]) {
        gItemOn_02007578[2] = 0;
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Flamethrower:         OFF ");
    } else {
        gItemOn_02007578[2] = 1;
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Flamethrower:          ON ");
    }
}

void sub_0830E76C(void)
{
    GAX_fx(4);
    if (gItemOn_02007578[3]) {
        gItemOn_02007578[3] = 0;
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Rocket Launcher:      OFF ");
    } else {
        gItemOn_02007578[3] = 1;
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Rocket Launcher:       ON ");
    }
}

void sub_0830E7E0(void)
{
    GAX_fx(4);
    if (gItemOn_02007578[4]) {
        gItemOn_02007578[4] = 0;
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Big Gun:              OFF ");
    } else {
        gItemOn_02007578[4] = 1;
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Big Gun:               ON ");
    }
}

void sub_0830E854(void)
{
    GAX_fx(4);
    if (gItemOn_02007578[5]) {
        gItemOn_02007578[5] = 0;
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Health:               OFF ");
    } else {
        gItemOn_02007578[5] = 1;
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Health:                ON ");
    }
}

void sub_0830E8C8(void)
{
    GAX_fx(4);
    if (gItemOn_02007578[6]) {
        gItemOn_02007578[6] = 0;
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Carrot Grenades:      OFF ");
    } else {
        gItemOn_02007578[6] = 1;
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Carrot Grenades:       ON ");
    }
}
