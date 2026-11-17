#ifndef GUARD_MAIN_H
#define GUARD_MAIN_H
/* main.h: region B boot / front end (docs/boot_sequence.md). */
#include "global.h"
#include "gax.h"

void __main(void);

/* GAX setup done by AgbMain */
extern GAXParams gGaxParams_030046E0;
extern u8 gGaxWorkmem_0300471C[];
extern const u8 gSong_0835F2E4[];       /* "spacelevel" song data */
extern const u8 gGaxFxData_083D1C5C[];
extern u8 gUnk_03003F10;
extern u32 gMusicVolume_030059B4;       /* settings, 0-?; scaled by sub_083167F8 */
extern u32 gFxVolume_030059B8;          /* settings; scaled by sub_08316810 */
extern void VBlankIntr_IWRAM_0300087D(void);   /* Thumb entry of the IWRAM VBlank handler */

/* save data */
extern u8 gSaveBuf_030044DC[0x200];
extern const char gSaveMagic_083DF9BC[8];    /* "turtles" */

void sub_083126F0(void);
void sub_08315158(void);
u32 sub_083167F8(u32 vol);
u32 sub_08316810(u32 vol);
void sub_083151F0(void);
u8 sub_08315128(void);
void sub_0831502C(u32 slot);
void sub_083151B4(void);
void sub_08312730(void);
void sub_08312864(void);
void sub_0830A638(void);
void sub_0830A06C(void);
void sub_0830A3B4(void);   /* Menu_SlideIn */
void sub_0830A4AC(void);   /* Menu_SlideOut */
void sub_0830A274(void);   /* Title_ScrollOut */
void sub_0830A1B0(void);   /* Title_ScrollIn */
void sub_0830AAA8(void);


/* Boot_LegalScreen text (rodata; '|' is the font's (R) glyph, '*' the (C) glyph?) */
extern struct Font gFont_083D2048;
extern const char gStr_083DF104[], gStr_083DF124[], gStr_083DF140[], gStr_083DF160[], gStr_083DF180[],
    gStr_083DF198[], gStr_083DF1B4[], gStr_083DF1D4[], gStr_083DF1F0[], gStr_083DF210[], gStr_083DF228[],
    gStr_083DF244[], gStr_083DF260[];

/* Boot_LogoScreens: the BG resource bank (same object as map.h's gUnk_0300398C, a struct Map view) */
struct ResBank;
struct ResHeader;
extern struct ResBank gBgBank_0300398C;
struct SlotCfg { u8 a, b, c, d; };   /* the 4 bytes ResBank_SetSlot copies into slots[i] */
extern struct ResHeader gRes_08043230, gRes_080448A0, gRes_08043D20;   /* Jaleco, Epic, Game Titan/Shin'en */
extern u8 gTiles_0821A090[], gTiles_0821F2E0[], gTiles_082259C0[], gTiles_08228DD0[], gTiles_08229260[];

/* ---- title screen and menus (0830A000-0830B...) ---- */
struct Sprite;
struct AnimBank;
struct LinkPacket;

/* A menu page. gCurMenu points at the one on screen, gPrevMenu at the one before
   (MainMenu compares their titles: the main menu has no "Back"). */
struct MenuItem {
    char label[30];          /* +0x00 */
    u16 x;                   /* +0x1E text column */
    u16 y;                   /* +0x20 text row */
    u16 keys;                /* +0x22 key mask that runs func */
    void (*func)(void);      /* +0x24 */
};                           /* 0x28 */
struct Menu {
    u8 count;                /* +0x000 */
    char title[31];          /* +0x001 also the menu's identity (strcmp'd) */
    struct MenuItem items[10]; /* +0x020 */
    u8 cursor;               /* +0x1B0 */
    u8 changeable;           /* +0x1B1 shows "< Change >" */
};
extern struct Menu *gCurMenu_0200756C;
extern struct Menu *gPrevMenu_02007570;
extern u8 gTitleScrolled_02007574;    /* 1 after the title's scroll-in, 0 after the scroll-out */

/* front-end sprites (struct Sprite is 0x64 bytes; these sit back to back from 02007580) */
extern struct Sprite gCursorSprite_02007580;
extern struct Sprite gSprite_020075E4;
extern struct Sprite gSprites_02007648[3];
extern struct Sprite gSprites_02007774[4];
extern struct Sprite gTitleSprite_02007904;
extern struct Sprite gSprites_03003A34[4];
extern struct AnimBank gAnims_080B2350, gAnims_08108230, gAnims_081FB770, gAnims_081FC460,
    gAnims_082026A0, gAnims_081FAEC0;
extern struct ResHeader gRes_08044E70;
extern u8 gTiles_08222830[];
extern u16 gPalette_020073D8[];
extern u8 gBrightness_02007567;
extern u8 gUnk_0200755E, gUnk_02007560;

/* link: per-frame packet sent while waiting in menus (data[0] = 120) */
extern struct LinkPacket gLinkSend_03003C04;
extern struct LinkPacket gLinkRecv_03003BC4[];

extern const char gStr_083DB35C[];   /* "Waiting for players..." */
extern const char gStr_083DB374[];   /* "       @Select " */
extern const char gStr_083DB384[];   /* " %Back" */
extern const char gStr_083DB38C[];   /* " SELECT DIFFICULTY " */
extern const char gStr_083DB350[];   /* " MAIN MENU " */
extern const char gStr_083DB3A0[];   /* " NEW GAME " */
extern const char gStr_083DB3AC[];   /* " LEVEL SELECT " */
extern const char gStr_083DB3BC[];   /* " LEVEL SETTINGS " */
extern const char gStr_083DB3D0[];   /* " MULTI-PAK " */
extern const char gStr_083DB3DC[];   /* " SINGLE-PAK " */
extern const char gStr_083DB3EC[];   /* " SETTINGS " */
extern const char gStr_083DB3F8[];   /* " MULTI-PAK SETTINGS " */
extern const char gStr_083DB410[];   /* " SINGLE-PAK SETTINGS " */
extern const char gStr_083DB428[];   /* " SELECT A SAVE FILE " */
extern const char gStr_083DB440[];   /* " CONTINUE " */
extern const char gStr_083DB44C[];   /* " SELECT A FILE TO LOAD " */
extern const char gStr_083DB464[];   /* "         @Select " */
extern const char gStr_083DB478[];   /* " TOURNAMENT " */
extern const char gStr_083DB488[];   /* "< Change > " */

int strcmp(const char *a, const char *b);
u8 sub_08309FF4(void);
void sub_08309F28(void);
void sub_0830B634(void);
void sub_0830B704(void);
void sub_0830B94C(void);
void sub_0830B9A4(void);
void sub_0830B9FC(void);
void sub_0830BA54(void);
void sub_0830BB74(void);
void sub_0830BFAC(void);
void sub_08001A8C(struct ResBank *b);   /* Bg_InitControl */

/* the menu pages, built at run time, back to back from 02005C00 (0x1B4 bytes each); separate globals:
   the ROM loads each address from the pool. Names from MainMenu's Back chain and the Menu_Open* functions. */
extern struct Menu gMenuMain_02005C00, gMenuLevelSelect_02005DB4, gMenuDifficulty_02005F68, gMenuTournament_0200611C, gMenuMultiPak_020062D0, gMenuSinglePak_02006484, gMenuNewGame_02006638, gMenuContinue_020067EC, gMenuMultiPakSettings_020069A0, gMenuSinglePakSettings_02006B54, gMenuSettings_02006D08, gMenuLevelSettings_02006EBC, gMenu12_02007070, gMenu13_02007224;
extern u8 gTournament_030059BC;      /* 1 while in the TOURNAMENT (link) menus */
extern u8 gCheatUnlocked_030059BD;
extern u16 gKeyHistory_03003A1C[12];  /* last 12 key presses, oldest first */
extern const u16 gCheatCodes_083DB338[1][12];   /* one 12-key cheat code */
void *memcpy(void *d, const void *s, u32 n);
void sub_080034A4(void);   /* Link_Main */
extern u8 gLevelSel_02007558;      /* LEVEL SELECT: level index 0-23 */
extern u8 gCharacter_02007559;     /* LEVEL SELECT: 0 Jazz, 1 Zoe */
char *strcpy(char *d, const char *s);
extern u8 gUnk_0200755C;
extern u16 gMaxFrags_02007564;      /* link settings: frag limit, 5-25 */
extern u8 gRadar_02007569;          /* link settings: radar on/off */
extern u8 gItemOn_02007578[7];      /* link settings: weapon/pickup on-off flags (Machine Gun ... Carrot Grenades) */
void sub_08312398(u32 level);
void sub_0830C5C0(void);
void sub_0830CD64(void);
void sub_0830D948(void);
void sub_0830DBFC(void);

/* ---- save data: a 0x200-byte image of the 4 Kbit EEPROM (64 blocks of 8 bytes) ---- */
struct SaveSlot {               /* 0x20 bytes, 4 of them after the 8-byte "turtles" magic */
    u8 brightness;              /* +0x00 gBrightness_02007567 */
    u8 fxVolume;                /* +0x01 */
    u8 musicVolume;             /* +0x02 */
    u8 unk3;                    /* +0x03 02007561 */
    u8 unk4;                    /* +0x04 02007566 */
    u8 pad5;
    u16 unk6;                   /* +0x06 030058F0 */
    u8 unk8[6];                 /* +0x08 030034E4 */
    u8 unkE;                    /* +0x0E 030028EC */
    u8 unkF;                    /* +0x0F 0300250C + 0x5C */
    u8 unk10;                   /* +0x10 Save_StoreSlot's 2nd argument */
    u8 unk11;                   /* +0x11 030034DC */
    u16 unk12[5];               /* +0x12 sub_082FB834(0, 1..5) */
    u8 pad1C[4];
};
extern struct SaveSlot gSaveSlots_030044E4[4];
extern u8 gUnk_02007561, gUnk_02007566;
extern u16 gUnk_030058F0;
extern u8 gUnk_0300250C[];
extern u8 gUnk_030034E4[6];
extern u8 gUnk_030028EC;
extern u16 gUnk_030034DC;
extern u8 gUnk_03005874[];
extern u8 gSaveExtra_030046CC[16];
u16 sub_082FB834(int a, int b);
void sub_0831715C(int type);           /* EEPROM: select the type (4 = 4 Kbit?) */
void sub_083171C4(int a, void *b);     /* EEPROM: timer/DMA setup? */
u16 sub_083173DC(u16 block, u8 *src);  /* EEPROM: write one 8-byte block */
u16 sub_08317324(u16 block, u8 *dst);  /* EEPROM: read one 8-byte block */
void sub_08315010(u32 n);              /* busy-wait n iterations */

#endif
