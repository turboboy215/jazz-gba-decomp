#include "global.h"
#include "main.h"
#include "resbank.h"
#include "system.h"
#include "text.h"
#include "obj.h"
#include "link.h"
#include "regionb.h"
extern struct ResHeader gRes_080A7730;
extern u8 gTiles_082A3280[], gTiles_082A3D50[], gTiles_082A91A0[];
extern struct Font gFont_083D2038;
extern const u16 gPal_083DC738[], gPal_083DC758[];
void sub_08302D10(void)
{
    struct SlotCfg c;
    sub_0800436C();
    sub_08004D70();
    sub_08001A6C();
    sub_08001280(&gBgBank_0300398C, &gRes_080A7730);
    sub_080012C0(&gBgBank_0300398C, 0);
    sub_080012F4(&gBgBank_0300398C, 1, 0);
    sub_08001314(&gBgBank_0300398C, 1, gTiles_082A3280);
    sub_080012F4(&gBgBank_0300398C, 2, 1);
    sub_08001314(&gBgBank_0300398C, 2, gTiles_082A3D50);
    sub_080012F4(&gBgBank_0300398C, 3, 2);
    sub_08001314(&gBgBank_0300398C, 3, gTiles_082A91A0);
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
