#!/usr/bin/env python3
"""tools/lvlgen.py ADDR...: work-file C for the "level screen setup" family (Obj_InitAll, Glyph_InitCache,
ClearVram, ResBank_Init/SetSlotPtr/SetTileset/SetSlot, Bg_DrawLevelScreen, Text_Init, BGnCNT, DISPCNT |=,
Palette_CopyFaded, Text_SetPalette). Unknown calls come out as /* ?? */ comments to finish by hand.
Usage: python3 tools/lvlgen.py 08303250 ... > work/lvl.c; python3 tools/batch_check.py work/lvl.c"""
# lvlgen.py ADDR...: C for the "level screen setup" functions (ResBank + BG layers + palettes)
import re, subprocess, sys
BANK = 0x0300398C
def dis(a):
    return subprocess.run(['python3', 'tools/disasm.py', a], capture_output=True, text=True).stdout
def run(a):
    regs = {}; calls = []; stores = []
    for l in dis(a).splitlines():
        m = re.match(r'([0-9A-F]{8}):\s+(\S+)\s*(.*)', l)
        if not m: continue
        op, args = m.group(2), m.group(3).split('@')[0].strip()
        g = lambda p: re.match(p, args)
        if op == 'movs' and g(r'r(\d), #(\d+)$'):
            x = g(r'r(\d), #(\d+)$'); regs[int(x.group(1))] = int(x.group(2))
        elif op == 'lsls' and g(r'r(\d), r(\d), #(\d+)$'):
            x = g(r'r(\d), r(\d), #(\d+)$'); s = regs.get(int(x.group(2)))
            regs[int(x.group(1))] = (s << int(x.group(3))) & 0xFFFFFFFF if isinstance(s, int) else None
        elif op == 'adds' and g(r'r(\d), r(\d), #0$'):
            x = g(r'r(\d), r(\d), #0$'); regs[int(x.group(1))] = regs.get(int(x.group(2)))
        elif op == 'adds' and g(r'r(\d), #(\d+)$'):
            x = g(r'r(\d), #(\d+)$'); s = regs.get(int(x.group(1)))
            regs[int(x.group(1))] = s + int(x.group(2)) if isinstance(s, int) else None
        elif op.startswith('ldr') and g(r'r(\d), =(0x[0-9A-F]+)'):
            x = g(r'r(\d), =(0x[0-9A-F]+)'); regs[int(x.group(1))] = int(x.group(2), 16)
        elif op == 'mov' and g(r'r(\d), sp'):
            regs[int(g(r'r(\d), sp').group(1))] = 'sp'
        elif op == 'strh' and g(r'r(\d), \[r(\d), #0\]'):
            x = g(r'r(\d), \[r(\d), #0\]'); stores.append(('h', regs.get(int(x.group(2))), regs.get(int(x.group(1)))))
        elif op == 'strb' and g(r'r(\d), \[r(\d), #(\d+)\]'):
            x = g(r'r(\d), \[r(\d), #(\d+)\]'); stores.append(('b', int(x.group(3)), regs.get(int(x.group(1)))))
        elif op == 'bl':
            calls.append((args.split()[0], [regs.get(i) for i in range(4)], list(stores))); stores.clear()
            for i in range(4): regs.pop(i, None)
        elif op == 'orrs' and g(r'r(\d), r(\d)$'):
            x = g(r'r(\d), r(\d)$'); calls.append(('ORR', [regs.get(int(x.group(2)))], []))
        else:
            for r in re.findall(r'^r(\d)', args): regs.pop(int(r), None)
    return calls
def gen(a):
    calls = run(a); L = []; ext = []; slot_d = {}
    for name, r, st in calls:
        if name == 'Obj_InitAll': L.append('sub_0800436C();')
        elif name == 'Glyph_InitCache': L.append('sub_08004D70();')
        elif name == 'ClearVram': L.append('sub_08001A6C();')
        elif name == 'ResBank_Init': L.append('sub_08001280(&gBgBank_0300398C, &gRes_%08X);' % r[1]); ext.append('extern struct ResHeader gRes_%08X;' % r[1])
        elif name == 'ResBank_LoadPalette': L.append('sub_080012C0(&gBgBank_0300398C, %d);' % r[1])
        elif name == 'ResBank_SetSlotPtr': L.append('sub_080012F4(&gBgBank_0300398C, %d, %d);' % (r[1], r[2]))
        elif name == 'sub_08001314': L.append('sub_08001314(&gBgBank_0300398C, %d, gTiles_%08X);' % (r[1], r[2])); ext.append('extern u8 gTiles_%08X[];' % r[2])
        elif name == 'ResBank_SetSlot':
            L.append('SLOT%d' % r[1])
        elif name == 'Bg_DrawLevelScreen': L.append('sub_08001720(&gBgBank_0300398C, %d, %d, %d);' % tuple(x if x < 0x80000000 else x - (1 << 32) for x in r[1:4]))
        elif name == 'Text_Init':
            L.append('sub_08004848(&gFont_%08X, %d);' % (r[0], r[1])); ext.append('extern struct Font gFont_%08X;' % r[0])
            # BG control stores come after Text_Init: collected with the next call
        elif name == 'ORR':
            if any(y.startswith('sub_08004848') for y in L): L.append('ORR %d' % (r[0] or 0))
        elif name == 'Palette_CopyFaded':
            for k, addr, v in st:
                if k == 'h' and isinstance(addr, int) and 0x04000008 <= addr <= 0x0400000E: L.insert(-0 if False else len(L), '*(vu16 *)0x%08X = 0x%X;' % (addr, v))
            L.append('sub_08001EBC(gPal_%08X, (u16 *)0x05000000, %d, %d);' % (r[0], r[2], r[3])); ext.append('extern const u16 gPal_%08X[];' % r[0])
        elif name == 'Text_SetPalette': L.append('sub_08004880(%d);' % r[0])
        else: L.append('/* ?? %s %s */' % (name, r))
    # slot cfg d values: SetSlot(i) uses d = i in every function seen so far
    out = []
    for x in L:
        if x.startswith('SLOT'):
            i = int(x[4:]); out += ['c.a = 1;', 'c.b = 1;', 'c.c = 1;', 'c.d = %d;' % i, 'sub_08001A48(&gBgBank_0300398C, %d, (u8 *)&c);' % i]
        elif x.startswith('ORR'):
            # the DISPCNT |= happens before the palettes; BG stores before it
            out.append('ORR' + x[3:])
        else: out.append(x)
    # move BGCNT stores before the ORR
    bg = [x for x in out if x.startswith('*(vu16 *)0x0400000')]
    out = [x for x in out if not x.startswith('*(vu16 *)0x0400000')]
    i = [k for k, x in enumerate(out) if x.startswith('ORR')][0]
    out = out[:i] + bg + ['*(vu16 *)0x04000000 |= 0x%X;' % int(out[i].split()[1])] + out[i + 1:]
    body = 'void sub_%s(void)\n{\n    struct SlotCfg c;\n' % a + ''.join('    %s\n' % x for x in out) + '}\n'
    return body, ext
pre = ['#include "global.h"', '#include "main.h"', '#include "resbank.h"', '#include "system.h"', '#include "text.h"', '#include "obj.h"', '#include "link.h"', '#include "regionb.h"']
secs = []; exts = []
for a in sys.argv[1:]:
    b, e = gen(a); exts += e; secs.append('//@ %s sub_%s # \n' % (a, a) + b)
print('\n'.join(pre + sorted(set(exts))) + '\n' + ''.join(secs))
