#include "global.h"
#include "oam.h"
void sub_0831A52C(const void *src, void *dst, u32 ctrl); /* CpuSet */
/* Oam_Flush: copies the used list to OAM, hides the entries left over from last frame. Matches with
 * -fno-gcse (the ROM reloads &gUnk_03001264 for the last store) and with the pointer set to OAM and
 * then advanced, which keeps the 0x07000000 constant inside the loop. */
void sub_08003D54(void)
{
    u8 i = gOamUsedHead_03001260;
    u8 n = 0;
    u8 j;
    struct OamEntry *o;
    while (i != 255) {
        struct OamEntry *e = &gOamBuffer_03000E58[i];
        sub_0831A52C(e, &OAM_HW[n], 3);
        i = e->next;
        n++;
    }
    if (gUnk_03001264 > n)
        for (j = n; j < gUnk_03001264; j++) {
            o = OAM_HW;
            o += j;
            o->attr0 = 0x200;
        }
    gUnk_03001264 = n;
}
