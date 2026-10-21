#include "global.h"
#include "obj.h"
#include "text.h"
#include <stdarg.h>
void sub_08004914(int x, int y, const char *s)
{
    int nx;
    do {
        nx = x + 1;
        while (sub_08004AC8(s) == 1)
            s = sub_08004AE4((char **)&s);
        if (x >= 0 && y >= 0 && x <= 31 && y <= 31)
            sub_0800488C(x, y, *s);
        x = nx;
    } while (*++s);
}

void sub_08004968(int x, int y, const char *fmt, ...)
{
    va_list ap;
    va_start(ap, fmt);
    sub_08005100(gTextCtx_030024F0.buf, fmt, ap);
    sub_08004914(x, y, gTextCtx_030024F0.buf);
    va_end(ap);
}

void sub_08004994(int x, int y)
{
    u16 *cell = (u16 *)((gTextCtx_030024F0.bg << 11) + 0x06000000);
    cell += x + y * 32;
    if (sub_08004BA4(*cell))
        sub_08004CA0(*cell);
    else
        sub_0831AE58(*cell);
    *cell = 0;
}

void sub_080049D4(u32 x, u32 y, u32 w, u32 h)
{
    u32 i, j;
    for (j = y; j <= y + h; j++)
        for (i = x; i <= x + w; i++)
            sub_08004994(i, j);
}

void sub_08004A1C(void)
{
    u32 i, j;
    for (j = 0; j < 32; j++)
        for (i = 0; i < 32; i++)
            sub_08004994(i, j);
}

int sub_08004A40(const char *s)
{
    int n = 0;
    while (*s) {
        n++;
        s++;
    }
    return n;
}
