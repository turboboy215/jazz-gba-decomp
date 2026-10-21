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
extern u16 gUnk_02003600[];
int sub_08004B68(u8 ch)
{
    u8 c = ch;
    if ((u8)(c - '0') <= 9)
        return c - '0';
    if ((u8)(c - 'a') <= 5)
        return c - 'a' + 10;
    if ((u8)(c - 'A') <= 5)
        return c - 'A' + 10;
    return 0;
}

void sub_0831A52C(const void *src, void *dst, u32 ctrl); /* CpuSet */
int sub_0831A68C(const char *s); /* strlen */
#define CTYPE(c) ((gUnk_083E0648 + 1)[(u8)(c)])
u8 sub_08004BA4(int cell)
{
    u32 t = cell & 0x3FF;
    if (gUnk_02002000[gUnk_02003600[t]] == t)
        return 1;
    return 0;
}
