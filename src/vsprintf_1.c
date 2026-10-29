/* vsprintf_1.c: Linux 2.0 lib/vsprintf.c. One of several vsprintf files: the functions between them
 * are still asm (near misses in src/nonmatching/region_a.c). */
#include "global.h"
#include "sprite.h"
#include "oam.h"
#include "obj.h"
#include "text.h"

void sub_0831A52C(const void *src, void *dst, u32 ctrl); /* CpuSet */
int sub_0831A68C(const char *s); /* strlen */
extern const u8 gUnk_083E0648[]; /* newlib _ctype_ */
#define CTYPE(c) ((gUnk_083E0648 + 1)[(u8)(c)])
extern u16 gUnk_02002000[];
extern u16 gUnk_02002800[];

u32 sub_08004E48(const char *cp, char **endp, u32 base)
{
    u32 result = 0, value;
    if (!base) {
        base = 10;
        if (*cp == '0') {
            base = 8;
            cp++;
            if ((*cp == 'x') && (CTYPE(cp[1]) & 0x44)) {
                cp++;
                base = 16;
            }
        }
    }
    while ((CTYPE(*cp) & 0x44) && (value = (CTYPE(*cp) & 4) ? *cp - '0' : ((CTYPE(*cp) & 2) ? *cp - 32 : *cp) - 'A' + 10) < base) {
        result = result * base + value;
        cp++;
    }
    if (endp)
        *endp = (char *)cp;
    return result;
}

void sub_0831A52C(const void *src, void *dst, u32 ctrl); /* CpuSet */
int sub_0831A68C(const char *s); /* strlen */
#define CTYPE(c) ((gUnk_083E0648 + 1)[(u8)(c)])
int sub_08004ED0(const char *cp, char **endp, u32 base)
{
    if (*cp == '-')
        return -sub_08004E48(cp + 1, endp, base);
    return sub_08004E48(cp, endp, base);
}

void sub_0831A52C(const void *src, void *dst, u32 ctrl); /* CpuSet */
int sub_0831A68C(const char *s); /* strlen */
#define CTYPE(c) ((gUnk_083E0648 + 1)[(u8)(c)])
int sub_08004EEC(const char **s)
{
    int i = 0;
    while ((u8)(**s - '0') <= 9)
        i = i * 10 + *((*s)++) - '0';
    return i;
}

void sub_0831A52C(const void *src, void *dst, u32 ctrl); /* CpuSet */
int sub_0831A68C(const char *s); /* strlen */
#define CTYPE(c) ((gUnk_083E0648 + 1)[(u8)(c)])
extern u16 gUnk_02003600[];
u32 sub_08004F18(const char *s, u32 count)
{
    if ((u32)sub_0831A68C(s) < count)
        return sub_0831A68C(s);
    return count;
}
