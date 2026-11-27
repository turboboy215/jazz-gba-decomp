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
void sub_08303938(void)
{
    sub_08001404(&gBgBank_0300398C, 2, 0, -2);
}

extern struct ResHeader gRes_080A7730;
extern u8 gTiles_082A3280[], gTiles_082A3D50[], gTiles_082A91A0[];
extern struct Font gFont_083D2038;
extern const u16 gPal_083DC738[], gPal_083DC758[];
extern struct ResHeader gRes_080A9140;
extern struct ResHeader gRes_080AAE80;
extern struct ResHeader gRes_080AC6D0;
extern struct ResHeader gRes_080AD140;
extern struct ResHeader gRes_080ADDA0;
extern u8 gTiles_082AC240[], gTiles_082B87D0[], gTiles_082B8AA0[];
extern u8 gTiles_082BCE10[], gTiles_082BF260[], gTiles_082BF730[];
extern u8 gTiles_082C5060[], gTiles_082C55F0[], gTiles_082C5F80[];
extern u8 gTiles_082C7C90[], gTiles_082C8220[], gTiles_082CB8B0[];
extern u8 gTiles_082CDB40[], gTiles_082CE0D0[], gTiles_082CE5E0[];
void sub_08303950(void)
{
    struct SlotCfg c;
    sub_0800436C();
    sub_08004D70();
    sub_08001A6C();
    sub_08001280(&gBgBank_0300398C, &gRes_080AC6D0);
    sub_080012C0(&gBgBank_0300398C, 0);
    sub_080012F4(&gBgBank_0300398C, 1, 0);
    sub_08001314(&gBgBank_0300398C, 1, gTiles_082C5060);
    sub_080012F4(&gBgBank_0300398C, 2, 1);
    sub_08001314(&gBgBank_0300398C, 2, gTiles_082C55F0);
    sub_080012F4(&gBgBank_0300398C, 3, 2);
    sub_08001314(&gBgBank_0300398C, 3, gTiles_082C5F80);
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
    c.a = 1;
    c.b = 1;
    c.c = 1;
    c.d = 3;
    sub_08001A48(&gBgBank_0300398C, 3, (u8 *)&c);
    sub_08001720(&gBgBank_0300398C, 1, 0, 0);
    sub_08001720(&gBgBank_0300398C, 2, 0, 0);
    sub_08001720(&gBgBank_0300398C, 3, 0, 0);
    sub_08004848(&gFont_083D2038, 31);
    *(vu16 *)0x04000008 = 0x1F00;
    *(vu16 *)0x0400000A = 0x1E81;
    *(vu16 *)0x0400000C = 0x1D82;
    *(vu16 *)0x0400000E = 0x1C83;
    *(vu16 *)0x04000000 |= 0x1F40;
    sub_08001EBC(gPal_083DC738, (u16 *)0x05000000, 224, 16);
    sub_08001EBC(gPal_083DC758, (u16 *)0x05000000, 240, 16);
    sub_08004880(14);
}
