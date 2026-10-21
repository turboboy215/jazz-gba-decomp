#include "global.h"
#include "oam.h"
#include "obj.h"
u32 sub_08004654(u32 w, int h)
{
    switch (w) {
    case 1:
        if (h == 1) return 0;
        if (h == 2) return 0x8000;
        break;
    case 2:
        if (h == 1) return 0x4000;
        if (h == 2) return 0x40000000;
        if (h == 4) return 0x80008000;
        break;
    case 4:
        if (h == 2) return 0x80004000;
        if (h == 4) return 0x80000000;
        if (h == 8) return 0xC0008000;
        break;
    case 8:
        if (h == 4) return 0xC0004000;
        if (h == 8) return 0xC0000000;
        break;
    }
    return 0;
}
