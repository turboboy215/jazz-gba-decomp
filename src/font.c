/* font.c: char -> glyph maps of the two fonts (switch tables in rodata). */
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

u32 sub_08001D0C(u8 c_)
{
    u8 c = c_;
    if (c >= 'A' && c <= 'Z')
        return c - 64;
    if (c >= 'a' && c <= 'z')
        return c - 96;
    if (c >= '0' && c <= '9')
        return c - 21;
    switch (c) {
    case '.':
        return 38;
    case ',':
        return 39;
    case '!':
        return 40;
    case '?':
        return 41;
    case ':':
        return 42;
    case '(':
        return 43;
    case ')':
        return 44;
    case '-':
        return 45;
    case '+':
        return 46;
    case '"':
        return 47;
    case '/':
        return 48;
    case '\'':
        return 49;
    case '%':
        return 50;
    case '@':
        return 51;
    case '>':
        return 52;
    case '<':
        return 53;
    case '*':
        return 54;
    case '#':
        return 55;
    case '[':
        return 56;
    case ']':
        return 57;
    case '^':
        return 58;
    case '`':
        return 59;
    case '|':
        return 60;
    default:
        return 37; /* space / unknown */
    }
}
