#include "global.h"
#include "system.h"
#include "link.h"
void sub_080029F4(void)
{
    int i = 0;
    if (REG_SIOCNT & 0x80) {
        do {
            if (++i > 0x795C)
                break;
        } while (REG_SIOCNT & 0x80);
    }
    sub_080029DC(600);
}

#include "sprite.h"
#include "obj.h"
extern struct Sprite gUnk_03003A34[4]; /* player icons on the link screens */
void sub_08002A30(u32 n)
{
    u32 i;
    for (i = 0; i < 4; i++)
        sub_0800060C(&gUnk_03003A34[i]);
    switch (n) {
    case 1:
        sub_08000684(&gUnk_03003A34[0], 120, 80, 0);
        sub_08000604(&gUnk_03003A34[0]);
        break;
    case 2:
        sub_08000684(&gUnk_03003A34[0], 80, 80, 0);
        sub_08000604(&gUnk_03003A34[0]);
        sub_08000684(&gUnk_03003A34[1], 160, 80, 0);
        sub_08000604(&gUnk_03003A34[1]);
        break;
    case 3:
        sub_08000684(&gUnk_03003A34[0], 60, 80, 0);
        sub_08000604(&gUnk_03003A34[0]);
        sub_08000684(&gUnk_03003A34[1], 120, 80, 0);
        sub_08000604(&gUnk_03003A34[1]);
        sub_08000684(&gUnk_03003A34[2], 180, 80, 0);
        sub_08000604(&gUnk_03003A34[2]);
        break;
    case 4:
        sub_08000684(&gUnk_03003A34[0], 48, 80, 0);
        sub_08000604(&gUnk_03003A34[0]);
        sub_08000684(&gUnk_03003A34[1], 96, 80, 0);
        sub_08000604(&gUnk_03003A34[1]);
        sub_08000684(&gUnk_03003A34[2], 144, 80, 0);
        sub_08000604(&gUnk_03003A34[2]);
        sub_08000684(&gUnk_03003A34[3], 192, 80, 0);
        sub_08000604(&gUnk_03003A34[3]);
        break;
    }
    for (i = 0; i < 4; i++)
        sub_08000408(&gUnk_03003A34[i]);
    sub_080043B4();
}
