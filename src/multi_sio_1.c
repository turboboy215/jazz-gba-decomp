/* multi_sio_1.c: Nintendo MultiSio sample library (older revision of SAT-R/sa2 src/multi_sio.c). One of several multi_sio files: the functions between them
 * are still asm (near misses in src/nonmatching/region_a.c). */
#include "global.h"
#include "link.h"
#include "multi_sio.h"
#include "system.h"
#include "oam.h"

void sub_0831A52C(const void *src, void *dst, u32 ctrl); /* CpuSet */
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

void sub_08003790(u32 connectedFlags)
{
    u32 zero;
    REG_IME = 0;
    REG_IE &= ~(0x80 | 0x40);
    REG_IME = 1;
    REG_RCNT = 0;
    REG_SIOCNT = 0x2000;
    REG_SIOCNT |= 0x4000 | 3;
    zero = 0;
    sub_0831A52C(&zero, &Ms, 0x05000000 | (sizeof(struct MultiSioArea) / 4));
    Ms.connectedFlags = connectedFlags;
    Ms.sendBufCounter = 12;
    Ms.recvBufCounter = 12;
    Ms.nextSendBufp = (u16 *)&Ms.sendBuf[0];
    Ms.currentSendBufp = (u16 *)&Ms.sendBuf[1];
    Ms.currentRecvBufp = (u16 *)&Ms.recvBuf[0];
    Ms.lastRecvBufp = (u16 *)&Ms.recvBuf[1];
    Ms.recvCheckBufp = (u16 *)&Ms.recvBuf[2];
    REG_IME = 0;
    REG_IE |= 0x80;
    REG_IME = 1;
}

void sub_08003848(void)
{
    struct MultiSioArea *p = &gUnk_03000970;
    if (p->type)
        p->startFlag = 1;
}

void sub_08003860(void)
{
    REG_IME = 0;
    REG_IE &= 0xFF3F;
    REG_IME = 1;
    REG_SIOCNT = 0x2003;
    REG_TM3CNT = 0xABFB;
    REG_IF = 0xC0;
    gUnk_03000970.startFlag = 0;
}

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

/* MultiSioSendDataSet: the checksum loop reads through a pointer (`u16 v = *p++`), and the area
 * pointer is a local only from the loop on (the ROM keeps &Ms in r4 across it). */
void sub_080039F0(void *sendp, u32 loadRequest)
{
    s32 checkSum = 0;
    s32 i;
    struct MultiSioArea *m;
    u16 *p;

    ((struct MultiSioPacket *)Ms.nextSendBufp)->loadRequest = loadRequest;
    ((struct MultiSioPacket *)Ms.nextSendBufp)->downloadSuccessFlag = gUnk_03000AF0.downloadSuccessFlag;
    ((struct MultiSioPacket *)Ms.nextSendBufp)->loadSuccessFlag = Ms.loadSuccessFlag;
    ((struct MultiSioPacket *)Ms.nextSendBufp)->frameCounter = Ms.sendFrameCounter;
    ((struct MultiSioPacket *)Ms.nextSendBufp)->recvErrorFlags = Ms.recvFlagsHistory ^ Ms.recvSuccessFlags;
    ((struct MultiSioPacket *)Ms.nextSendBufp)->checkSum = 0;
    sub_0831A52C(sendp, &Ms.nextSendBufp[2], 0x04000000 | (16 / 4));
    m = &Ms;
    for (i = 0, p = m->nextSendBufp; i < sizeof(struct MultiSioPacket) / 2 - 2; i++) {
        u16 v = *p++;
        checkSum += v;
    }
    ((struct MultiSioPacket *)m->nextSendBufp)->checkSum = ~checkSum - 12;
    m->sendReady = 1;
}
