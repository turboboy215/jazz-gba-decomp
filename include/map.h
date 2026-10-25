#ifndef GUARD_MAP_H
#define GUARD_MAP_H

#include "global.h"

/* Level map and tile collision (region A 08000850-08000C00).
 * World coordinates are 24.8 fixed point; tiles are 8x8 pixels.
 * Collision value (low 4 bits of a tile): 0 = empty, 1-8 = slopes (height table
 * gSlopeHeights_083D1D80[type][x & 7]), 9 = slope fill below a slope, 10 = solid. */

#define COLL_EMPTY 0
#define COLL_SLOPE_FILL 9
#define COLL_SOLID 10

struct MapLayer {
    u32 width;   /* +0 tiles */
    u32 height;  /* +4 tiles */
};

struct Map {
    u32 unk0;
    u32 unk4;
    struct MapLayer *layer;  /* +8 */
};

extern struct Map gUnk_0300398C;
extern const u8 gUnk_083D1D80[][8]; /* slope heights per collision type and x & 7 */

int sub_0831AEA8(void *map, u32 tx, u32 ty); /* IWRAM veneer: map tile lookup */
u16 sub_08000850(u32 x, u32 y); /* Map_GetTileAt (pixel coordinates) */
u16 sub_08000870(u32 x, u32 y);
u16 sub_08000884(u32 x, u32 y);
u8 sub_08000898(u32 x, int y);

u16 sub_080008BC(int x, int y);
int sub_080008F0(int v);
int sub_08000978(u16 coll); /* int, not u8: callers use the result unmasked */
u8 sub_08001E18(int bit);
int sub_0831A548(int v); /* Sqrt (BIOS) */

#endif
