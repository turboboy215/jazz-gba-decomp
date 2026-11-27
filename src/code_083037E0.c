#include "actor.h"
#include "gax.h"
#include "global.h"
#include "link.h"
#include "main.h"
#include "map.h"
#include "multi_sio.h"
#include "oam.h"
#include "obj.h"
#include "resbank.h"
#include "scene.h"
#include "sprite.h"
#include "system.h"
#include "text.h"
#include "regionb.h"
void sub_083037E0(void)
{
    sub_08001404(&gBgBank_0300398C, 2, 0, -2);
}

extern const u16 gPal_083DC738[];
extern const u16 gPal_083DC758[];
extern struct Font gFont_083D2038;
extern struct ResHeader gRes_080A4850;
extern struct ResHeader gRes_080A5750;
extern struct ResHeader gRes_080A6340;
extern struct ResHeader gRes_080A8A40;
extern struct ResHeader gRes_080AA640;
extern struct ResHeader gRes_080ABC90;
extern struct ResHeader gRes_080AE8B0;
extern struct ResHeader gRes_080AF3F0;
extern struct ResHeader gRes_080B0A90;
extern struct ResHeader gRes_080B14D0;
extern u8 gTiles_08295B10[];
extern u8 gTiles_08299620[];
extern u8 gTiles_0829B430[];
extern u8 gTiles_0829C400[];
extern u8 gTiles_0829D510[];
extern u8 gTiles_0829F520[];
extern u8 gTiles_0829F670[];
extern u8 gTiles_082A1DF4[];
extern u8 gTiles_082A9730[];
extern u8 gTiles_082B9A30[];
extern u8 gTiles_082BC100[];
extern u8 gTiles_082C2440[];
extern u8 gTiles_082C4B10[];
extern u8 gTiles_082D0EB0[];
extern u8 gTiles_082D25C0[];
extern u8 gTiles_082D3D50[];
extern u8 gTiles_082D5FE0[];
extern u8 gTiles_082D91B0[];
extern u8 gTiles_082E21F0[];
extern u8 gTiles_082E42C0[];
extern u8 gTiles_082E50D0[];
extern u8 gTiles_082E7660[];
void sub_083037F8(void)
{
    struct SlotCfg c;
    sub_0800436C();
    sub_08004D70();
    sub_08001A6C();
    sub_08001280(&gBgBank_0300398C, &gRes_080B14D0);
    sub_080012C0(&gBgBank_0300398C, 0);
    sub_080012F4(&gBgBank_0300398C, 1, 0);
    sub_08001314(&gBgBank_0300398C, 1, gTiles_082E50D0);
    sub_080012F4(&gBgBank_0300398C, 2, 1);
    sub_08001314(&gBgBank_0300398C, 2, gTiles_082E7660);
    c.a = 1;
    c.b = 1;
    c.c = 1;
    c.d = 1;
    sub_08001A48(&gBgBank_0300398C, 1, (u8 *)&c);
    c.a = 1;
    c.b = 1;
    c.c = 1;
    c.d = 2;
    sub_08001A48(&gBgBank_0300398C, 2, (u8 *)&c);
    sub_08001720(&gBgBank_0300398C, 1, 0, 0);
    sub_08001720(&gBgBank_0300398C, 2, 0, 0);
    sub_08004848(&gFont_083D2038, 31);
    *(vu16 *)0x04000008 = 0x1F00;
    *(vu16 *)0x0400000A = 0x1E81;
    *(vu16 *)0x0400000C = 0x1D82;
    *(vu16 *)0x04000000 |= 0x1740;
    sub_08001EBC(gPal_083DC738, (u16 *)0x05000000, 224, 16);
    sub_08001EBC(gPal_083DC758, (u16 *)0x05000000, 240, 16);
    sub_08004880(14);
}
