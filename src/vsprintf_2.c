/* vsprintf_2.c: Linux 2.0 lib/vsprintf.c. One of several vsprintf files: the functions between them
 * are still asm (near misses in src/nonmatching/region_a.c). */
#include "global.h"
#include "text.h"
int sub_08005384(char *buf, const char *fmt, ...)
{
    va_list args;
    int i;

    va_start(args, fmt);
    i = sub_08005100(buf, fmt, args);
    va_end(args);
    return i;
}
