#include "global.h"
#include "obj.h"
#include "text.h"
#include <stdarg.h>
int sub_08004A8C(const char *s)
{
    char buf[12];
    int mul = 1;
    int v = 0;
    char *p;
    sub_08004A54(buf, s);
    if (buf[0]) {
        p = buf;
        do {
            v += (*p - '0') * mul;
            mul *= 10;
        } while (*++p);
    }
    return v;
}

int sub_08004AC8(const char *s)
{
    if (*s != '{' || !sub_08004B14(s + 1))
        return 0;
    return 1;
}

char *sub_08004AE4(char **ps)
{
    while (**ps != '}' && **ps)
        (*ps)++;
    if (**ps == 0)
        return *ps;
    return ++*ps;
}
