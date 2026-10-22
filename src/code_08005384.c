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
