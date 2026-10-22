#ifndef GUARD_LINK_H
#define GUARD_LINK_H

#include "global.h"

/* Region A serial link (Tournament / multiplayer) code, 080023B0-080033CC. */

#define REG_SIOCNT    (*(vu16 *)0x04000128)
#define REG_SIODATA8  (*(vu16 *)0x0400012A)
#define REG_RCNT      (*(vu16 *)0x04000134)
#define REG_IME_      (*(vu16 *)0x04000208)
#define REG_SIOMULTI(n) (*(vu16 *)(0x04000120 + (n) * 2))

/* Nintendo's multiboot library (libmultiboot, MultiBootInit..MultiBootWaitSendDone at
 * 080023B0-08002A30); field names as in pret/pokeemerald include/gba/multiboot.h. */
#define MULTIBOOT_NCHILD 3
struct MultiBootParam {
    u32 system_work[5];                 /* +0x00 */
    u8 handshake_data;                  /* +0x14 */
    u16 handshake_timeout;              /* +0x16 */
    u8 probe_count;                     /* +0x18 0xE9 = complete */
    u8 client_data[MULTIBOOT_NCHILD];   /* +0x19 */
    u8 palette_data;                    /* +0x1C */
    u8 response_bit;                    /* +0x1D */
    u8 client_bit;                      /* +0x1E */
    u8 reserved1;                       /* +0x1F */
    const u8 *boot_srcp;                /* +0x20 */
    const u8 *boot_endp;                /* +0x24 */
    const u8 *masterp;                  /* +0x28 */
    u8 *reserved2[MULTIBOOT_NCHILD];    /* +0x2C */
    u32 system_work2[4];                /* +0x38 */
    u8 sendflag;                        /* +0x48 */
    u8 probe_target_bit;                /* +0x49 */
    u8 check_wait;                      /* +0x4A */
    u8 server_type;                     /* +0x4B */
};

struct LinkBuffers {
    s32 unk0;
    u8 unk4;
    s8 unk5;           /* 255 = none */
    u8 pad6[2];
    u32 unk8;
    u8 *unkC;
    u8 *unk10;
    u8 buf14[32];
    u8 *bufs[8];       /* +0x34 */
    u8 data[8][16];    /* +0x54 */
};

extern struct LinkBuffers gUnk_03000D38;
extern u32 gUnk_03005898;

void sub_080023B0(struct MultiBootParam *mp);   /* MultiBootInit */
int sub_080023EC(struct MultiBootParam *mp);    /* MultiBootMain */
int sub_080027D4(struct MultiBootParam *mp, u16 data); /* MultiBootSend */
void sub_08002820(struct MultiBootParam *mp);   /* MultiBootStartProbe */
void sub_08002844(struct MultiBootParam *mp, const u8 *srcp, int length, u8 palette_color, s8 palette_speed); /* MultiBootStartMaster */
int sub_080028E4(struct MultiBootParam *mp);    /* MultiBootCheckComplete */
int sub_080028F4(struct MultiBootParam *mp);    /* MultiBootHandShake */
void sub_080029DC(u32 cycles);  /* MultiBootWaitCycles (hand-written asm) */
void sub_080029F4(void);        /* MultiBootWaitSendDone */
int sub_0831A540(struct MultiBootParam *mp);    /* BIOS MultiBoot */
void sub_08002B50(void);
void sub_08002BA0(u32 v);
u8 sub_08002BAC(int mode);
void sub_0831A54C(void);  /* VBlankIntrWait */
void sub_08002A30(u32 n); /* Sprites_DrawAll */
void sub_08002F28(void);
u8 sub_0800314C(void);
s8 sub_08003158(void);
u8 sub_0800347C(void);
u8 sub_08003490(void);

#endif
