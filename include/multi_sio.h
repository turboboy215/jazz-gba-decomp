#ifndef GUARD_MULTI_SIO_H
#define GUARD_MULTI_SIO_H

#include "global.h"

/* Nintendo's MultiSio sample library, an older revision than the one in SAT-R/sa2 src/multi_sio.c
 * (single receive counter, 16-byte blocks, 24-byte packets). */
struct SioMultiCnt {
    u16 baudRate:2;
    u16 si:1;
    u16 sd:1;
    u16 id:2;
    u16 error:1;
    u16 enable:1;
    u16 unused_11_8:4;
    u16 mode:2;
    u16 intrEnable:1;
    u16 unused_15:1;
    u16 data;
};
struct MultiSioPacket {
    u8 frameCounter;
    u8 recvErrorFlags:4;
    u8 loadRequest:1;
    u8 downloadSuccessFlag:1;
    u8 loadSuccessFlag:1;
    u8 reserved_0:1;
    u16 checkSum;
    u16 data[8];
    u16 overrunCatch[2];
};
struct MultiSioArea {
    u8 type;                    /* +0x00 8 = master */
    u8 state;                   /* +0x01 */
    u8 recvFlagsHistory:4;      /* +0x02 bits 0-3: |= recvSuccessFlags */
    u8 connectedFlags:4;        /* +0x02 bits 4-7 */
    u8 recvSuccessFlags;        /* +0x03 */
    u8 sendReady;               /* +0x04 set by MultiSioSendDataSet */
    u8 unk5;
    u8 downloadSuccessFlags:4;  /* +0x06 */
    u8 loadEnable:1;
    u8 loadRequest:1;
    u8 loadSuccessFlag:1;
    u8 startFlag:1;
    u8 hardError;               /* +0x07 */
    u8 recvFlagsAvailableCounter; /* +0x08 */
    u8 unk9[2];
    u8 sendFrameCounter;        /* +0x0B */
    u8 recvFrameCounter[4][2];  /* +0x0C */
    s32 sendBufCounter;         /* +0x14 */
    s32 recvBufCounter;         /* +0x18 */
    u16 *nextSendBufp;          /* +0x1C */
    u16 *currentSendBufp;       /* +0x20 */
    u16 *currentRecvBufp;       /* +0x24 */
    u16 *lastRecvBufp;          /* +0x28 */
    u16 *recvCheckBufp;         /* +0x2C */
    struct MultiSioPacket sendBuf[2];      /* +0x30 */
    struct MultiSioPacket recvBuf[3][4];   /* +0x60 */
};
extern struct MultiSioArea gUnk_03000970;
#define Ms gUnk_03000970 /* gMultiSioArea */
#ifndef REG_IME
#define REG_IME (*(vu16 *)0x04000208)
#endif
#ifndef REG_IE
#define REG_IE  (*(vu16 *)0x04000200)
#endif
#ifndef REG_IF
#define REG_IF  (*(vu16 *)0x04000202)
#endif
#define REG_TM3 (*(vu32 *)0x0400010C)
/* Nintendo Sio32MultiLoad (32-bit serial multi-load), cf. SAT-R/sa2 src/sio32_multi_load.c */
struct Sio32MultiLoadArea {
    u8 type;                 /* +0x00 */
    u8 state;                /* +0x01 */
    u8 frameCounter;         /* +0x02 */
    u8 downloadSuccessFlag;  /* +0x03 */
    u32 *datap;              /* +0x04 */
    s32 dataCounter;         /* +0x08 */
    u32 checkSum;            /* +0x0C */
    u32 checkSumTmp;         /* +0x10 */
    s32 checkSumCounter;     /* +0x14 */
};
extern struct Sio32MultiLoadArea gUnk_03000AF0;
#define MultiSioRecvBufChange ((u32 (*)(void))0x0831711C)

void sub_08003790(u32 connectedFlags); /* MultiSioInit */
void sub_08003848(void);               /* MultiSioStart */
void sub_08003860(void);               /* MultiSioStop */
u32 sub_080038B0(void *recvp);         /* MultiSioMain */
void sub_080039F0(void *sendp, u32 loadRequest); /* MultiSioSendDataSet */
u32 sub_08003A9C(void *recvp);         /* MultiSioRecvDataCheck */
void sub_08003C1C(void);               /* MultiSioVSync */
void sub_080040C8(u32 type, void *datap); /* Sio32MultiLoadInit */
u32 sub_08004164(u32 *progressCounterp); /* Sio32MultiLoadMain */

#endif
