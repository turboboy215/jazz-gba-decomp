#include "global.h"
#include "link.h"
/* Nintendo libmultiboot, as in pret/pokeemerald src/multiboot.c */
#define MULTIBOOT_CLIENT_INFO 0x72
#define MULTIBOOT_CLIENT_DLREADY 0x73
extern u16 gUnk_03000D30[MULTIBOOT_NCHILD]; /* MultiBoot_required_data */
int sub_080027D4(struct MultiBootParam *mp, u16 data)
{
    int i;

    i = REG_SIOCNT & (0x80 | 0x08 | 0x04);
    if (i != 0x08) {
        sub_080023B0(mp);
        return i ^ 0x08;
    }

    REG_SIODATA8 = data;
    REG_SIOCNT = 0x2000 | 0x80 | 0x03;

    mp->sendflag = 1;
    return 0;
}
