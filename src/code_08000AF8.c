#include "global.h"
#include "map.h"
struct Unk030038CC { u8 unk0[0x18]; int unk18; u32 unk1C; int unk20; };
extern struct Unk030038CC gUnk_030038CC;
u32 sub_08000AF8(int x, int y)
{
    u16 t = sub_080008BC(x, y);
    if (x <= gUnk_030038CC.unk20 || x >= gUnk_030038CC.unk18)
        return 0;
    if (t == COLL_SLOPE_FILL) {
        y -= 8;
        t = sub_080008BC(x, y);
    }
    switch (t) {
    case 9:
        return 4;
    case 1:
    case 2:
        return 1;
    case 3:
    case 5:
    case 6:
        return 3;
    case 4:
    case 7:
    case 8:
        return 2;
    }
    return 0;
}
