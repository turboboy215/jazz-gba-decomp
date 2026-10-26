#include "global.h"
#include "link.h"
#include "multi_sio.h"
#define Sio gUnk_03000AF0
u32 sub_08004164(u32 *progressCounterp)
{
    s32 dataCounter, dataCounterBak;
    struct Sio32MultiLoadArea *p;
    u8 state;

    state = Sio.state;

    p = &Sio; /* the ROM keeps &Sio from the state read for case 4 */
    switch (state) {
    case 0:
        if (Sio.type || Sio.frameCounter)
            Sio.state = 1;
        break;
    case 1:
        if (Sio.type == 1) {
            if (Sio.frameCounter < 6)
                break;
        } else
            REG_SIOCNT = 0x1000;
        *(vu32 *)0x04000120 = 0;
        REG_IF = 0x80 | 0x40;
        if (Sio.type == 1) {
            REG_SIOCNT |= 0x80;
            REG_TM3 = 0xF318 | ((0x40 | 0x80) << 16);
            REG_IME = 0;
            REG_IE |= 0x40;
            REG_IME = 1;
        } else {
            REG_SIOCNT |= 0x4000 | 0x80;
            REG_IME = 0;
            REG_IE |= 0x80;
            REG_IME = 1;
        }
        Sio.frameCounter = 0;
        Sio.state = 2;
        break;
    case 2:
        dataCounter = Sio.dataCounter;
        dataCounterBak = dataCounter;
        if (dataCounter > 0x4000 / 4)
            dataCounter = 0x4000 / 4;
        else if (dataCounter < 0)
            dataCounter = 0;
        if (progressCounterp)
            *progressCounterp = dataCounter;
        if (Sio.type != 1) {
            while (Sio.checkSumCounter < dataCounter)
                Sio.checkSumTmp += ((s32 *)Sio.datap)[Sio.checkSumCounter++];
            if (dataCounterBak > 0x4000 / 4)
                if ((Sio.checkSum += Sio.checkSumTmp) == -1)
                    Sio.downloadSuccessFlag = 1;
        }
        if (dataCounterBak > 0x4000 / 4 || Sio.frameCounter == 0x4A)
            Sio.state = 3;
        break;
    case 3:
        REG_IME = 0;
        REG_IE &= ~(0x80 | 0x40);
        REG_IME = 1;
        REG_SIOCNT = 0x1000;
        *(vu32 *)0x04000128 = 0x2000;
        *(vu32 *)0x04000128 = 0x2000 | 3;
        *(volatile unsigned long long *)0x04000120 = 0;
        if (Sio.type)
            REG_TM3 = 0;
        REG_IF = 0x80 | 0x40;
        if (!Sio.type)
            return 1;
        Sio.frameCounter = 0;
        Sio.state = 4;
        break;
    case 4:
        if (p->frameCounter >= 3)
            return 1;
        break;
    }
    ++Sio.frameCounter;
    return 0;
}

#include "obj.h"
#include "oam.h"
/* Obj_InitAll: links the 128 hardware objects into the free list and resets OAM and OBJ VRAM.
 * Library code built with -fno-gcse (the ROM loads the list head addresses after the loop). */
void sub_0800436C(void)
{
    u32 i, j;
    for (i = 0; i < 128; i = j) {
        j = i + 1;
        if (j != 128) gObjNext_03002268[i] = j; else gObjNext_03002268[i] |= 0xFF;
    }
    gObjFreeHead_030022E8 = 0;
    gObjUsedHead_030022EC = 255;
    sub_08003CF4();
    sub_08003F94();
}
