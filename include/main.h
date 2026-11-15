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
void sub_0830A3B4(void);
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

#endif
