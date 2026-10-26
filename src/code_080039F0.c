#include "global.h"
#include "multi_sio.h"
void sub_0831A52C(const void *src, void *dst, u32 ctrl); /* CpuSet */
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
