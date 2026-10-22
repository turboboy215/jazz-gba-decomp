#include "global.h"
#include "link.h"
#include "multi_sio.h"
void sub_08003C1C(void)
{
    if (Ms.type) {
        if (Ms.state && Ms.startFlag) {
            u16 *tmp;
            struct SioMultiCnt sioCntBak;
            Ms.recvBufCounter = -1;
            tmp = Ms.lastRecvBufp;
            Ms.lastRecvBufp = Ms.currentRecvBufp;
            Ms.currentRecvBufp = tmp;
            if (Ms.sendReady) {
                tmp = Ms.currentSendBufp;
                Ms.currentSendBufp = Ms.nextSendBufp;
                Ms.nextSendBufp = tmp;
                Ms.sendReady = 0;
                Ms.sendBufCounter = 0;
            }
            sioCntBak = *(struct SioMultiCnt *)0x04000128;
            Ms.hardError = sioCntBak.error;
            ((struct SioMultiCnt *)0x04000128)->data = 0xFEFE;
            REG_SIOCNT |= 0x80;
            *(vu16 *)0x0400010E = 0xC0;
        }
    } else {
        if (!Ms.unk9[0]) {
            REG_IME = 0;
            *(vu16 *)0x03007FF8 |= 0x80;
            REG_IME = 1;
        }
        Ms.unk9[0] = 0;
    }
}
