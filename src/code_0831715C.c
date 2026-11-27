#include "global.h"
#include "eeprom.h"
#define REG_IME (*(vu16 *)0x04000208)
#define REG_IE (*(vu16 *)0x04000200)
#define REG_WAITCNT (*(vu16 *)0x04000204)
#define REG_EEPROM (*(vu16 *)0x0D000000)
u16 sub_0831715C(u16 type)
{
    u16 ret = 0;
    if (type == 4)
        gEepromConfig_03000B08 = &gEepromConfig512_083DFAF8;
    else if (type == 0x40)
        gEepromConfig_03000B08 = &gEepromConfig8k_083DFB04;
    else {
        gEepromConfig_03000B08 = &gEepromConfig512_083DFAF8;
        ret = 1;
    }
    return ret;
}

#define REG_IME (*(vu16 *)0x04000208)
#define REG_IE (*(vu16 *)0x04000200)
#define REG_WAITCNT (*(vu16 *)0x04000204)
#define REG_EEPROM (*(vu16 *)0x0D000000)
void sub_083171A0(void)
{
    if (gEepromCountdown_03005846 != 0) {
        if (--gEepromCountdown_03005846 == 0)
            gEepromTimeout_03005848 = 1;
    }
}

#define REG_IME (*(vu16 *)0x04000208)
#define REG_IE (*(vu16 *)0x04000200)
#define REG_WAITCNT (*(vu16 *)0x04000204)
#define REG_EEPROM (*(vu16 *)0x0D000000)
u16 sub_083171C4(u8 timer, void (**intr)(void))
{
    u16 ret;
    if (timer < 4) {
        gEepromTimer_03005844 = timer;
        gEepromTimerReg_0300584C = (vu16 *)(0x04000100 + gEepromTimer_03005844 * 4);
        *intr = sub_083171A0;
        ret = 0;
    } else
        ret = 1;
    return ret;
}

#define REG_IME (*(vu16 *)0x04000208)
#define REG_IE (*(vu16 *)0x04000200)
#define REG_WAITCNT (*(vu16 *)0x04000204)
#define REG_EEPROM (*(vu16 *)0x0D000000)
void sub_083171FC(const u16 *p)
{
    gEepromSavedIme_03005850 = REG_IME;
    REG_IME = 0;
    REG_IE |= 8 << gEepromTimer_03005844;
    REG_IME = 1;
    gEepromTimeout_03005848 = 0;
    gEepromCountdown_03005846 = *p++;
    *gEepromTimerReg_0300584C++ = *p++;
    *gEepromTimerReg_0300584C-- = *p;
}

#define REG_IME (*(vu16 *)0x04000208)
#define REG_IE (*(vu16 *)0x04000200)
#define REG_WAITCNT (*(vu16 *)0x04000204)
#define REG_EEPROM (*(vu16 *)0x0D000000)
void sub_08317260(void)
{
    *gEepromTimerReg_0300584C++ = 0;
    *gEepromTimerReg_0300584C-- = 0;
    REG_IME = 0;
    REG_IE &= ~(8 << gEepromTimer_03005844);
    REG_IME = gEepromSavedIme_03005850;
}

#define REG_IME (*(vu16 *)0x04000208)
#define REG_IE (*(vu16 *)0x04000200)
#define REG_WAITCNT (*(vu16 *)0x04000204)
#define REG_EEPROM (*(vu16 *)0x0D000000)
void sub_083172A4(const void *src, void *dst, u16 count)
{
    u16 ime = REG_IME;
    REG_IME = 0;
    REG_WAITCNT = (REG_WAITCNT & 0xF8FF) | gEepromConfig_03000B08->waitcnt;
    *(vu32 *)0x040000D4 = (u32)src;
    *(vu32 *)0x040000D8 = (u32)dst;
    *(vu32 *)0x040000DC = count | 0x80000000;
    while (*(vu16 *)0x040000DE & 0x8000)
        ;
    REG_IME = ime;
}

#define REG_IME (*(vu16 *)0x04000208)
#define REG_IE (*(vu16 *)0x04000200)
#define REG_WAITCNT (*(vu16 *)0x04000204)
#define REG_EEPROM (*(vu16 *)0x0D000000)
u16 sub_08317324(u16 address, u16 *data)
{
    u16 buffer[0x44];
    u16 *ptr;
    u8 t1, t2;
    u16 value;
    if (address >= gEepromConfig_03000B08->size) {
        return 0x80FF;
    } else {
        ptr = buffer;
        (u8 *)ptr += (gEepromConfig_03000B08->addrWidth << 1) + 1;
        ((u8 *)ptr)++;
        for (t1 = 0; t1 < gEepromConfig_03000B08->addrWidth; t1++) {
            *(ptr--) = address;
            address >>= 1;
        }
        *(ptr--) = 1;
        *ptr = 1;
        sub_083172A4(buffer, (u16 *)0xd000000, gEepromConfig_03000B08->addrWidth + 3);
        sub_083172A4((u16 *)0xd000000, buffer, 0x44);
        ptr = buffer + 4;
        data += 3;
        for (t1 = 0; t1 < 4; t1++) {
            value = 0;
            for (t2 = 0; t2 < 0x10; t2++) {
                value <<= 1;
                value |= (*ptr++) & 1;
            }
            *(data--) = value;
        }
        return 0;
    }
}

#define REG_IME (*(vu16 *)0x04000208)
#define REG_IE (*(vu16 *)0x04000200)
#define REG_WAITCNT (*(vu16 *)0x04000204)
#define REG_EEPROM (*(vu16 *)0x0D000000)
u16 sub_083173DC(u16 addr, u16 *data)
{
    u16 buf[0x52];
    u16 *p;
    u8 i, j;
    u16 v;
    u16 ret;
    if (addr >= gEepromConfig_03000B08->size)
        return 0x80FF;
    p = (u16 *)(0x42 + (u32)buf + (u32)(gEepromConfig_03000B08->addrWidth * 2) + 0x42);
    *p-- = 0;
    for (i = 0; i < 4; i++) {
        v = *data++;
        for (j = 0; j < 16; j++) {
            *p-- = v;
            v >>= 1;
        }
    }
    for (i = 0; i < gEepromConfig_03000B08->addrWidth; i++) {
        *p-- = addr;
        addr >>= 1;
    }
    *p-- = 0;
    *p = 1;
    sub_083172A4(buf, (void *)0x0D000000, gEepromConfig_03000B08->addrWidth + 0x43);
    sub_083171FC(gEepromTimerSetup_083DFB10);
    ret = 0;
    while (1) {
        if (REG_EEPROM & 1)
            break;
        if (gEepromTimeout_03005848) {
            if (!(REG_EEPROM & 1))
                ret = 0xC001;
            break;
        }
    }
    sub_08317260();
    return ret;
}

#define REG_IME (*(vu16 *)0x04000208)
#define REG_IE (*(vu16 *)0x04000200)
#define REG_WAITCNT (*(vu16 *)0x04000204)
#define REG_EEPROM (*(vu16 *)0x0D000000)
u16 sub_083174C0(u16 addr, u16 *data)
{
    u16 buf[4];
    u16 *p;
    u8 i;
    u16 ret = 0;
    if (addr >= gEepromConfig_03000B08->size)
        return 0x80FF;
    sub_08317324(addr, buf);
    p = buf;
    for (i = 0; i < 4; i++) {
        if (*data++ != *p++) {
            ret = 0x8000;
            break;
        }
    }
    return ret;
}
