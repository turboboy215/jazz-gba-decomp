#ifndef GUARD_TEXT_H
#define GUARD_TEXT_H

#include "global.h"
#include <stdarg.h>

/* Region A BG text printer (08004848-08005386). Characters go to the 32x32 BG map of
 * screenblock gTextCtx.bg; each glyph gets its own tile. Strings may contain "{...}" tags,
 * which are skipped (08004AC8/08004AE4). */
struct Font {
    u8 unk0;
    u8 type;                 /* +1 0: BG tiles with palette bits, else via IWRAM 0831AE48 */
    u16 unk2;                /* +2 */
    const void *gfx;         /* +4 */
    u32 unk8;
    u32 (*map)(u8 c);        /* +0xC character -> glyph index (08001C88 / 08001D0C) */
};

struct TextCtx {
    char *buf;               /* +0x0 formatting buffer (0x030022F0) */
    u16 unk4;                /* +0x4 */
    u16 pad6;
    struct Font *font;       /* +0x8 */
    u8 bg;                   /* +0xC screenblock */
    u8 palette;              /* +0xD */
};

extern struct TextCtx gTextCtx_030024F0;
extern char gTextBuf_030022F0[];


void sub_08004848(struct Font *font, u8 bg);
void sub_08004868(struct Font *font);
void sub_08004874(u8 bg);
void sub_08004880(u8 pal);
void sub_0800488C(int x, int y, u8 c);
void sub_08004914(int x, int y, const char *s);
void sub_08004968(int x, int y, const char *fmt, ...);
void sub_08004994(int x, int y);
void sub_080049D4(u32 x, u32 y, u32 w, u32 h);
void sub_08004A1C(void);
int sub_08004A40(const char *s);
void sub_08004A54(char *dst, const char *src);
int sub_08004A8C(const char *s);
int sub_08004AC8(const char *s);
char *sub_08004AE4(char **ps);
int sub_08004B14(const char *s);
u8 sub_08004BA4(int cell);
void sub_08004CA0(u32 cell); /* Glyph_Free */
u32 sub_08004BD0(u32 glyph, const u8 *gfx, u32 base); /* Glyph_Alloc */
void sub_0831AE58(u16 cell);
u32 sub_0831AE48(u32 glyph, const void *gfx, u32 base); /* IWRAM Glyph_Alloc */
int sub_08005100(char *buf, const char *fmt, va_list args); /* vsprintf */
int sub_08004EEC(const char **s); /* skip_atoi */
u32 sub_08004F18(const char *s, u32 count); /* strnlen */
char *sub_08004F38(char *str, long num, int base, int size, int precision, int type); /* number */

#endif
