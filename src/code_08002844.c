#include "global.h"
#include "link.h"
/* Nintendo libmultiboot, as in pret/pokeemerald src/multiboot.c */
#define MULTIBOOT_CLIENT_INFO 0x72
#define MULTIBOOT_CLIENT_DLREADY 0x73
extern u16 gUnk_03000D30[MULTIBOOT_NCHILD]; /* MultiBoot_required_data */
void sub_08002844(struct MultiBootParam *mp, const u8 *srcp, int length, u8 palette_color, s8 palette_speed)
{
    int i = 0;

    if (mp->probe_count != 0
     || mp->client_bit == 0
     || mp->check_wait != 0) {
        sub_080023B0(mp);
        return;
    }

    mp->boot_srcp = srcp;
    length = (length + 15) & ~15;
    if (length < 0x100 || length > 0x40000) {
        sub_080023B0(mp);
        return;
    }

    mp->boot_endp = srcp + length;

    switch (palette_speed) {
    case -4:
    case -3:
    case -2:
    case -1:
        i = (palette_color << 3) | (3 - palette_speed);
        break;
    case 0:
        i = 0x38 | palette_color;
        break;
    case 1:
    case 2:
    case 3:
    case 4:
        i = (palette_color << 3) | (palette_speed - 1);
        break;
    }

    mp->palette_data = ((i & 0x3f) << 1) | 0x81;
    mp->probe_count = 0xd0;
}
