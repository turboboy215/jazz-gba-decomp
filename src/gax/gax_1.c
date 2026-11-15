/*
 * GAX 3.01 gax.c (part 1 of 3), 08317518-083175A8 (built with agbcc -fprologue-bugfix; docs/gax.md).
 * GAX_code2ram. Followed in the ROM by GAX2_calc_mem (asm/gax/GAX2_calc_mem.s, C in nonmatching/gax.c).
 */
#include "gax_internal.h"

u8 *GAX_code2ram(u8 *startaddr, u8 *endaddr)
{
    s32 sz = endaddr - startaddr;
    u8 *out = GAX_alloc(sz);
    CpuSet(startaddr, out, ((sz / 4) & 0x1FFFFF) | (1 << 26));
    return out;
}
