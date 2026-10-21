#ifndef GUARD_SYSTEM_H
#define GUARD_SYSTEM_H

#include "global.h"

/* Region A system code: interrupts, key input, palettes (08001EBC-080020C8). */

#define REG_DISPSTAT (*(vu16 *)0x04000004)
#define REG_DMA3     ((vu32 *)0x040000D4)
#define REG_KEYINPUT (*(vu16 *)0x04000130)
#define REG_IE       (*(vu16 *)0x04000200)
#define REG_IME      (*(vu16 *)0x04000208)
#define INTR_CHECK   (*(vu16 *)0x03007FF8)
#define INTR_VECTOR  (*(void *volatile *)0x03007FFC)

typedef void (*IntrFunc)(void);
extern IntrFunc gIntrTable_0300585C[];
extern u8 gUnk_03000B10[];            /* IWRAM copy of the interrupt dispatcher (from 0x080001B0) */
/* game action -> key mask, set by SetKeyMapping */
extern u16 gKeyMapA_03000D28;
extern u16 gKeyMapB_03000D2A;
extern u16 gKeyMapL_03000D24;
extern u16 gKeyMapR_03000D26;
extern u16 gKeyMapSelect_03000D2C;
extern u16 gKeyMapStart_03000D2E;


void sub_08001EBC(const u16 *src, u16 *dst, int ofs, int count);
void sub_08001F34(void);
void sub_08001FA0(int irq);
void sub_08001FB4(int irq);
void sub_08001FC8(int idx, IntrFunc fn);
void sub_08001FD8(int idx);
void sub_08001FEC(void);
void sub_08001FF0(void);
void sub_08001FFC(u16 key, u16 mask);
void sub_08002058(void);
void sub_08002094(u16 *held, u16 *pressed);
void sub_0831A554(int flags); /* SoftResetRom */

#endif
