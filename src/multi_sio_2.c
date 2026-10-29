/* multi_sio_2.c: Nintendo MultiSio sample library (older revision of SAT-R/sa2 src/multi_sio.c). One of several multi_sio files: the functions between them
 * are still asm (near misses in src/nonmatching/region_a.c). */
#include "global.h"
#include "link.h"
#include "multi_sio.h"
#include "system.h"
#include "oam.h"

void sub_08004914(int x, int y, const char *s);
void sub_080049D4(int x, int y, int len, int c);
void sub_083186FC(void);
void sub_0831881C(void);
void sub_08003C1C(void);
extern u32 gUnk_030058A0;
extern const char gUnk_083D3218[], gUnk_083D3224[], gUnk_083D3240[], gUnk_083D3250[], gUnk_083D3270[];
extern u32 gUnk_03000910, gUnk_03000914;
#define REG_TM3CNT (*(vu32 *)0x0400010C)
#define REG_IF (*(vu16 *)0x04000202)

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

void sub_08003CB0(void)
{
    if ((gUnk_03000910 & 0x80) && gUnk_03000914 - 2 <= 1)
        sub_08003C1C();
    REG_IME = 0;
    INTR_CHECK |= 1;
    REG_IME = 1;
}
