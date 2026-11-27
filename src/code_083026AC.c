#include "global.h"
#include "main.h"
#include "resbank.h"
#include "system.h"
#include "text.h"
#include "obj.h"
#include "link.h"
#include "regionb.h"
extern struct Font gFont_083D2038;
extern const u16 gPal_083DC738[];
extern const u16 gPal_083DC758[];
extern struct ResHeader gRes_080AFF10;
extern u8 gTiles_082DBEC0[], gTiles_082DCFD0[], gTiles_082DF320[];
extern u32 gUnk_03003F0C;
u32 sub_083026AC(u8 *tiles, struct ResHeader *res)
{
    struct SlotCfg c;
    sub_0800436C();
    sub_08004D70();
    sub_08001A6C();
    sub_08001280(&gBgBank_0300398C, res);
    sub_080012C0(&gBgBank_0300398C, 0);
    sub_080012F4(&gBgBank_0300398C, 1, 0);
    sub_08001314(&gBgBank_0300398C, 1, tiles);
    c.a = 1;
    c.b = 1;
    c.c = 1;
    c.d = 1;
    sub_08001A48(&gBgBank_0300398C, 1, (u8 *)&c);
    sub_08001720(&gBgBank_0300398C, 1, 0, 0);
    sub_08004848(&gFont_083D2038, 31);
    *(vu16 *)0x04000008 = 0x1F00;
    *(vu16 *)0x04000000 |= 0x1340;
    sub_08001EBC(gPal_083DC738, (u16 *)0x05000000, 224, 16);
    sub_08001EBC(gPal_083DC758, (u16 *)0x05000000, 240, 16);
    sub_08004880(14);
    return 1;
}
