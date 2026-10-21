#include "global.h"
#include "resbank.h"
#include "system.h"
void sub_08001F34(void)
{
    vu32 *dma = REG_DMA3;
    dma[0] = (u32)0x080001B0;
    dma[1] = (u32)gUnk_03000B10;
    dma[2] = 0x84000080;
    dma[2];
    INTR_VECTOR = gUnk_03000B10;
    sub_08001FC8(0, sub_08001FF0);
    sub_08001FC8(1, sub_08001FEC);
    REG_IE = 0x2001;
    REG_DISPSTAT = 8;
    REG_IME = 1;
}

void sub_08001FA0(int irq) { REG_IE |= 1 << irq; }

void sub_08001FB4(int irq) { REG_IE &= ~(1 << irq); }

void sub_08001FC8(int idx, IntrFunc fn) { gIntrTable_0300585C[idx] = fn; }

void sub_08001FD8(int idx) { gIntrTable_0300585C[idx] = sub_08001FEC; }

void sub_08001FEC(void) { }

void sub_08001FF0(void) { INTR_CHECK = 1; }

void sub_08001FFC(u16 key, u16 mask)
{
    u16 k = key;
    u16 *p;
    if (k == 1)
        p = &gKeyMapA_03000D28;
    else if (k == 2)
        p = &gKeyMapB_03000D2A;
    else if (k == 0x200)
        p = &gKeyMapL_03000D24;
    else if (k == 0x100)
        p = &gKeyMapR_03000D26;
    else if (k == 4)
        p = &gKeyMapSelect_03000D2C;
    else if (k == 8)
        p = &gKeyMapStart_03000D2E;
    else
        return;
    *p = mask;
}
