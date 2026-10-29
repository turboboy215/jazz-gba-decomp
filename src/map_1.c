/* map_1.c: level map tiles and tile collision (slopes, walls, ceilings). One of several map files: the functions between them
 * are still asm (near misses in src/nonmatching/region_a.c). */
#include "global.h"
#include "sprite.h"
#include "map.h"
u16 sub_08000850(u32 x, u32 y) { return sub_0831AEA8(&gUnk_0300398C, x >> 3, y >> 3); }

u16 sub_08000870(u32 x, u32 y) { return (sub_08000850(x, y) & 0x70) >> 4; }

u16 sub_08000884(u32 x, u32 y) { return (sub_08000850(x, y) & 0x380) >> 7; }
