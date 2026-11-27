#ifndef GUARD_EEPROM_H
#define GUARD_EEPROM_H
/* eeprom.h: Nintendo's AgbEEPROM library, the timer-interrupt revision (0831715C-08317518).
 * Built with old_agbcc -O1 (splits.txt flavour o1). Error codes: 0x80FF address out of range,
 * 0x8000 verify failed, 0xC001 write timeout. */
#include "global.h"

struct EepromConfig {
    u32 bytes;       /* 0x200 or 0x2000 */
    u16 size;        /* +4: number of 64-bit blocks */
    u16 waitcnt;     /* +6: WAITCNT wait state 2 bits */
    u8 addrWidth;    /* +8: 6 or 14 address bits */
};
extern const struct EepromConfig *gEepromConfig_03000B08;
extern const struct EepromConfig gEepromConfig512_083DFAF8;
extern const struct EepromConfig gEepromConfig8k_083DFB04;
extern const u16 gEepromTimerSetup_083DFB10[]; /* countdown, TMxCNT_L, TMxCNT_H */
extern u8 gEepromTimer_03005844;
extern u16 gEepromCountdown_03005846;
extern u8 gEepromTimeout_03005848;
extern vu16 *gEepromTimerReg_0300584C;
extern u16 gEepromSavedIme_03005850;

u16 sub_0831715C(u16 type);                                   /* EepromConfigure */
void sub_083171A0(void);                                      /* EepromTimerIntr */
u16 sub_083171C4(u8 timer, void (**intr)(void));              /* SetEepromTimerIntr */
void sub_083171FC(const u16 *setup);                          /* EepromStartTimer */
void sub_08317260(void);                                      /* EepromStopTimer */
void sub_083172A4(const void *src, void *dst, u16 count);     /* EepromDma3 */
u16 sub_08317324(u16 addr, u16 *data);                        /* EepromRead */
u16 sub_083173DC(u16 addr, u16 *data);                        /* EepromProgram */
u16 sub_083174C0(u16 addr, u16 *data);                        /* EepromVerify */

#endif
