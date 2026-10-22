#include "global.h"
#include "link.h"
#include "multi_sio.h"
void sub_0831A52C(const void *src, void *dst, u32 ctrl); /* CpuSet */
u32 sub_080038B0(void *recvp)
{
    struct SioMultiCnt sioCntBak;

    sioCntBak = *(struct SioMultiCnt *)0x04000128;
    switch (Ms.state) {
    case 0:
        if (!sioCntBak.id) {
            if (!sioCntBak.sd || sioCntBak.enable)
                break;
            if (!sioCntBak.si && Ms.sendBufCounter == 12) {
                REG_IME = 0;
                REG_IE &= ~0x80;
                REG_IE |= 0x40;
                REG_IME = 1;
                ((struct SioMultiCnt *)0x04000128)->intrEnable = 0;
                REG_TM3 = 0xABFB;
                REG_IF = 0x80 | 0x40;
                Ms.type = 8;
            }
        }
        Ms.state = 1;
    case 1:
        if (Ms.connectedFlags && !Ms.loadSuccessFlag) {
            if (Ms.recvFlagsAvailableCounter < 8)
                Ms.recvFlagsAvailableCounter++;
            else
                Ms.state = 2;
        }
    case 2:
        sub_08003A9C(recvp);
        break;
    }
    Ms.sendFrameCounter++;
    return Ms.recvSuccessFlags | Ms.loadEnable << 4 | Ms.loadRequest << 5 | Ms.loadSuccessFlag << 6
        | (Ms.type == 8) << 7 | Ms.connectedFlags << 8 | (Ms.hardError != 0) << 12 | (sioCntBak.id >= 4) << 13 | (Ms.recvFlagsAvailableCounter >> 3) << 15;
}
