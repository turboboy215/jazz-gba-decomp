#include "global.h"
#include "sprite.h"
#include "map.h"
#include "actor.h"
#include "resbank.h"
void CpuFastSet(const void *src, void *dst, u32 ctrl);
void sub_08001A6C(void)
{
    u32 zero = 0;
    CpuFastSet(&zero, (void *)0x06000000, 0x01003FFF);
}

struct CellMap { u32 w; u32 h; u8 size; u8 pad[3]; u8 data[1]; };
struct CellTiles { u32 unk0; u8 size; u8 pad[3]; u8 data[1]; };
struct TilesetHdr { u16 count; u16 bpp; };
void sub_08001A8C(struct ResBank *b)
{
    u16 dispcnt = 0;
    if (b->slots[0][2] == 1) {
        *(vu16 *)0x04000008 = 0x1F80 | b->slots[0][3];
        dispcnt = 0x100;
    }
    if (b->slots[1][2] == 1) {
        *(vu16 *)0x0400000A = 0x1E80 | b->slots[1][3];
        dispcnt |= 0x200;
    }
    if (b->slots[2][2] == 1) {
        *(vu16 *)0x0400000C = 0x1D80 | b->slots[2][3];
        dispcnt |= 0x400;
    }
    if (b->slots[3][2] == 1) {
        *(vu16 *)0x0400000E = 0x1C80 | b->slots[3][3];
        dispcnt |= 0x800;
    }
    *(vu16 *)0x04000000 = dispcnt;
}
