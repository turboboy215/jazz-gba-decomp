#include "global.h"
#include "link.h"
#include "multi_sio.h"
void sub_0831A52C(const void *src, void *dst, u32 ctrl); /* CpuSet */
#define Sio gUnk_03000AF0
void sub_080040C8(u32 type, void *datap)
{
    s32 checkSum = 0;
    s32 i;
    u32 zero;

    REG_IME = 0;
    REG_IE &= ~(0x80 | 0x40);
    REG_IME = 1;
    zero = 0;
    sub_0831A52C(&zero, &Sio, 0x05000000 | (sizeof(struct Sio32MultiLoadArea) / 4));
    *(vu32 *)0x04000128 = 0x2003;
    Sio.datap = datap;
    Sio.dataCounter = -1;
    if (type) {
        REG_TM3 = 0;
        Sio.type = 1;
        for (i = 0; i < 0x4000 / 4; i++) /* SIO32ML_BLOCK_SIZE 0x4000 */
            checkSum += ((s32 *)datap)[i];
        Sio.checkSum = ~checkSum;
        REG_SIOCNT = 0x1000;
        REG_SIOCNT = 0x1000 | 1;
    }
}
