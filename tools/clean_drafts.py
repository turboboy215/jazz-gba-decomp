#!/usr/bin/env python3
"""Make Ghidra drafts (decomp/drafts/ADDR.c) easier to read: DAT_ literal-pool references become the
pool's value (with gUnk_/gStr_/sub_ names), FUN_ calls become sub_ (or the names.txt name in a
comment), param_N becomes aN, Ghidra's undefinedN/uint types become u8/u16/u32, and the bogus
`in_lr` return is dropped. Writes decomp/drafts/clean/ADDR.c."""
import os, re, struct
ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
rom = open(os.path.join(ROOT, 'baserom.gba'), 'rb').read()
names = {}
for l in open(os.path.join(ROOT, 'names.txt')):
    q = l.split('#')[0].split()
    if len(q) >= 2:
        names[q[0].upper()] = q[1]

def val(a):
    o = a - 0x08000000
    v = struct.unpack_from('<I', rom, o)[0]
    if 0x08000000 <= v < 0x08400000:
        s = rom[v - 0x08000000:v - 0x08000000 + 60].split(b'\0')[0]
        if v & 1:
            return 'sub_%08X' % (v - 1)
        if len(s) >= 2 and all(32 <= c < 127 or c == 10 for c in s):
            return 'gStr_%08X /* "%s" */' % (v, s.decode()[:40].replace('\n', '\\n').replace('*/', '*_/'))
        return '(&gUnk_%08X)' % v
    if 0x02000000 <= v < 0x08000000:
        return '(&gUnk_%08X)' % v
    return '0x%X' % v

TY = [('undefined4', 'u32'), ('undefined2', 'u16'), ('undefined1', 'u8'), ('undefined', 'u8'), ('uint', 'u32'),
      ('ushort', 'u16'), ('byte', 'u8'), ('ulonglong', 'u64'), ('longlong', 's64')]
os.makedirs(os.path.join(ROOT, 'decomp/drafts/clean'), exist_ok=True)
for f in sorted(os.listdir(os.path.join(ROOT, 'decomp/drafts'))):
    if not f.endswith('.c'):
        continue
    s = open(os.path.join(ROOT, 'decomp/drafts', f)).read()
    s = re.sub(r'\b_?DAT_([0-9a-f]{8})\b', lambda m: val(int(m.group(1), 16)) if 0x08000000 <= int(m.group(1), 16) < 0x08400000 else 'gUnk_%s' % m.group(1).upper(), s)
    s = re.sub(r'\b(?:FUN|thunk_FUN)_([0-9a-f]{8})\b', lambda m: 'sub_%s' % m.group(1).upper() + ('/*%s*/' % names[m.group(1).upper()] if m.group(1).upper() in names else ''), s)
    s = re.sub(r'\bparam_(\d+)\b', lambda m: 'a%d' % (int(m.group(1)) - 1), s)
    for a, b in TY:
        s = re.sub(r'\b%s\b' % a, b, s)
    s = re.sub(r'\n\s*u32 in_lr;', '', s).replace('return in_lr;', 'return;')
    s = re.sub(r'return CONCAT44\(in_lr,(\w+)\);', r'return \1;', s)
    open(os.path.join(ROOT, 'decomp/drafts/clean', f), 'w').write(s)
