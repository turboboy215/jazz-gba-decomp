#include "global.h"
#include "map.h"
struct Unk030038CC { u8 unk0[0x18]; int unk18; u32 unk1C; int unk20; };
extern struct Unk030038CC gUnk_030038CC;
u32 sub_08001C88(u8 c_)
{
    u8 c = c_;
    if (c >= 'A' && c <= 'Z')
        return c - 64;
    if (c >= 'a' && c <= 'z')
        return c - 70;
    if (c >= '0' && c <= '9')
        return c + 5;
    switch (c) {
    case '.':
        return 63;
    case ',':
        return 64;
    case '!':
        return 65;
    case '?':
        return 66;
    case '-':
        return 67;
    case '(':
        return 68;
    case '+':
        return 69;
    case ':':
        return 70;
    case '^':
        return 71;
    case '/':
        return 72;
    case '"':
        return 73;
    case '\'':
        return 74;
    default:
        return 0;
    }
}
