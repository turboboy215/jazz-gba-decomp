#include "global.h"
#include "link.h"
#include "multi_sio.h"
void sub_0831A52C(const void *src, void *dst, u32 ctrl); /* CpuSet */
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
