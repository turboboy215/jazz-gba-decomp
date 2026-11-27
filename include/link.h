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

struct LinkPacket { u16 data[8]; };  /* one player's per-frame link data */

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

/* Tournament link session state (IWRAM .data/.bss, 0x030008F0-0x03000968) */
extern u32 gUnk_03000910;      /* MultiSioMain status flags */
extern u32 gUnk_03000914;      /* link loop state 0-5 (Link_SendClientData) */
extern u32 gUnk_03000918;      /* status flags saved after a finished Sio32 block (connected bits 8-11) */
extern u8 *gUnk_030008F0;      /* -> byte 5 of the send packet */
extern u8 gUnk_03000900[];     /* MultiSio send packet */
extern u8 gUnk_03000920[];     /* MultiSio receive packets; +5 = requested block */
extern u8 gUnk_03000960;       /* multiboot block index (0-10, 11 = done) */
extern u32 gUnk_03000964;      /* Sio32MultiLoad progress counter */
extern u8 gUnk_03000968;
extern u32 gUnk_03005890;      /* frame counter for the blinking "Loading..." text */
extern u8 *const gUnk_083D30D8[11]; /* multiboot client image, 11 blocks of 0x4000 from 0x080193A0 */
extern const char gUnk_083D3104[]; /* "AGBJ" */
extern const char gUnk_083D310C[]; /* "          Loading...          " */
extern const char gUnk_083D312C[]; /* "PLEASE DO NOT POWER OFF SYSTEM" */
#define MultiSioIntr_IWRAM ((void (*)(void))0x030004ED)
#define Sio32MultiLoadIntr_IWRAM ((void (*)(void))0x030005F9)
void sub_08003CB0(void); /* VBlank_Main */
void sub_0831A534(int discard, int flags); /* IntrWait */

extern u16 gUnk_03000D10, gUnk_03000D12; /* keys held / newly pressed (link screens) */
extern u32 gUnk_0300589C;                /* number of player icons to draw */
extern u32 gUnk_030058A0, gUnk_030058A4; /* link screen frame counters */
extern const char gUnk_083D3188[];       /* "     PLEASE WAIT      " */
extern const char gUnk_083D3200[];       /* "PRESS START TO BEGIN" */
#define LINK_CALLBACK(b) ((u32 (*)(void))(b).unk8) /* returns 0 to cancel */
void sub_08001FA0(int irq);       /* EnableIrq */
void sub_08001FB4(int irq);       /* DisableIrq */
void sub_08001FD8(int idx);       /* ClearIntrHandler */
void sub_08002094(u16 *held, u16 *pressed); /* ReadKeys */
void sub_08002F64(struct LinkPacket *send, struct LinkPacket *recv); /* Link_Exchange */
void sub_08003168(void);
void sub_08003298(void);          /* Link_SerialIntr */
void sub_080033CC(void);          /* VBlank_LinkError */

#define LINK_SEND(k) (((struct LinkPacket *)gUnk_03000D38.unk10)->data[k])
#define LINK_RECV(n, k) (((struct LinkPacket *)gUnk_03000D38.bufs[(n) + 4])->data[k])
extern u32 gUnk_03005894;      /* frames with a missing partner (Link_Exchange) */
extern const char gUnk_083D31A0[], gUnk_083D31C0[], gUnk_083D31E0[]; /* LINK ERROR / PLEASE TURN OFF ALL SYSTEMS / AND TRY AGAIN */
void sub_08316F10(s32 dir, s32 mode, u32 frames); /* Fade_Start */
u32 sub_08316F50(void); /* Fade_IsBusy */
void sub_08004D70(void);  /* Glyph_InitCache */
void sub_08001A6C(void);  /* ClearVram */
void sub_08004A1C(void);  /* Text_ClearAll */
void sub_0800436C(void);  /* Obj_InitAll */

extern struct MultiBootParam gUnk_03000E0C;
extern u32 gUnk_030058A8;      /* frame counter for the blinking "Press Start" text */
extern const char gUnk_083D3250[], gUnk_083D3270[]; /* "Loading..." / "PLEASE DO NOT POWER OFF SYSTEM" */
extern const char gUnk_083D3290[]; /* "Waiting for players..." */
extern const char gUnk_083D32A8[], gUnk_083D32C8[]; /* "Press Start" / "To Begin Transfer" */
void sub_08316824(void);
void sub_08001FF0(void);  /* DefaultVBlankHandler */
void sub_08002144(void);  /* Link_SendClientData */

#endif
