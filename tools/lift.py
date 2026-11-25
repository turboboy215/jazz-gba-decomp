#!/usr/bin/env python3
"""Lift straight-line Thumb functions (calls with constant/literal arguments, stores of constants
to globals) into C drafts for tools/batch_check.py.

  python3 tools/lift.py ADDR...            print //@ sections (unliftable ones are reported on stderr)
  python3 tools/lift.py --scan LO HI       try every undecompiled function in [LO, HI)

Arities come from ARITY (callee -> number of arguments); an unknown callee is given the number of
argument registers set since the previous call (stack arguments counted from `str rX, [sp, #n]`).
Globals are written as gUnk_XXXXXXXX (scalar stores at offset 0) or as a byte-offset access
`*(T *)((u8 *)&gUnk_X + off)` when the store has an offset (rename to struct fields later).
The output is a draft: check_func decides.
"""
import csv, os, re, subprocess, sys

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
rom = open(os.path.join(ROOT, 'baserom.gba'), 'rb').read()

ARITY = {}
for l in open(os.path.join(ROOT, 'tools', 'lift_arity.txt')) if os.path.exists(os.path.join(ROOT, 'tools', 'lift_arity.txt')) else []:
    q = l.split('#')[0].split()
    if len(q) >= 2:
        ARITY[q[0].upper()] = int(q[1])

NAME2ADDR = {}
for l in open(os.path.join(ROOT, 'names.txt')):
    q = l.split('#')[0].split()
    if len(q) >= 2:
        NAME2ADDR[q[1]] = q[0].upper()


def is_string(v):
    if not (0x083D1D80 <= v < 0x08400000):
        return False
    o = v - 0x08000000
    s = rom[o:o + 200].split(b'\0')[0]
    return len(s) >= 1 and all(32 <= c < 127 or c == 10 for c in s)


def lit(v):
    """C expression for a literal-pool value."""
    if 0x08000000 <= v < 0x08400000 and v & 1:
        return ('func', 'sub_%08X' % (v - 1))
    if is_string(v):
        return ('str', 'gStr_%08X' % v)
    if 0x02000000 <= v < 0x04000000:
        return ('addr', v)
    return ('const', v)


def disasm(addr):
    out = subprocess.run(['python3', 'tools/disasm.py', addr], capture_output=True, text=True, cwd=ROOT).stdout
    ins = []
    for l in out.splitlines():
        m = re.match(r'([0-9A-F]{8}):\s+(.*)', l)
        if m:
            ins.append((int(m.group(1), 16), m.group(2).split('@')[0].strip()))
    return ins


# globals with a struct type: address -> (C name, {offset: field})
FIELDS = {0x0300250C: ('gPlayer_0300250C', {0x30: 'unk30', 0x34: 'x', 0x38: 'y', 0x40: 'unk40', 0x44: 'unk44',
                                           0x5A: 'unk5A', 0x5C: 'unk5C'})}


import glob as _glob
KNOWN = {}   # address -> an existing non-gUnk name in include/*.h (gBgBank_0300398C, ...)
for _h in _glob.glob(os.path.join(ROOT, 'include', '*.h')):
    for _n in re.findall(r'\b(g[A-Za-z0-9]+_([0-9A-F]{8}))\b', open(_h).read()):
        if not _n[0].startswith(('gUnk_', 'gStr_')):
            KNOWN.setdefault(int(_n[1], 16), _n[0])


class Fail(Exception):
    pass


def cval(x):
    k, v = x
    if k == 'const':
        return '%d' % v if -0x1000 < v < 0x1000 else ('0x%X' % v if v > 0 else '-0x%X' % -v)
    if k in ('func', 'str', 'expr'):
        return v
    if k == 'param':
        return 'a%d' % v
    if k == 'addr':
        return '&' + FIELDS[v][0] if v in FIELDS else '&' + KNOWN.get(v, 'gUnk_%08X' % v)
    if k == 'addroff' and v[0] in FIELDS and v[1] in FIELDS[v[0]][1]:
        return '&%s.%s' % (FIELDS[v[0]][0], FIELDS[v[0]][1][v[1]])
    raise Fail('value %r' % (x,))


def gref(g, o, ty, ext):
    """C lvalue for the global at g + o of type ty."""
    if isinstance(g, tuple):
        b = g[1]
        if re.match(r'^a\d+$', b):
            return '*(%s *)(%s + %d)' % (ty, b, o) if o else '*(%s *)%s' % (ty, b)
        return '*(%s *)((u8 *)%s + %d)' % (ty, b, o) if o else '*(%s *)%s' % (ty, b)
    if g in FIELDS and o in FIELDS[g][1]:
        return '%s.%s' % (FIELDS[g][0], FIELDS[g][1][o])
    if g in FIELDS:
        raise Fail('no field %s+0x%X' % (FIELDS[g][0], o))
    if o == 0:
        ext.setdefault(g, ty)
        return KNOWN.get(g, 'gUnk_%08X' % g)
    ext.setdefault(g, 'u8')
    return '*(%s *)((u8 *)&gUnk_%08X + %d)' % (ty, g, o)


def lift(addr):
    ins = disasm(addr)
    regs = {'r%d' % i: ('param', i) for i in range(4)}
    stack, stmts, ext = {}, [], {}
    ptrs = set()           # params used as pointers (u8 *)
    ptypes = {}            # param index -> C type (u16 after lsls/lsrs #16, ...)
    used = set()           # params read
    set_since = set()
    pending = [None]       # (stmt index) of the last call whose result is still in r0
    ret = [None]
    W = {'str': 's32', 'strh': 'u16', 'strb': 'u8'}
    L = {'ldr': 's32', 'ldrh': 'u16', 'ldrb': 'u8'}
    NARROW = {('lsrs', 16): 'u16', ('asrs', 16): 's16', ('lsrs', 24): 'u8', ('asrs', 24): 's8'}

    def get(r):
        if r not in regs:
            raise Fail('unknown %s' % r)
        v = regs[r]
        if v[0] == 'param':
            used.add(v[1])
        if v[0] == 'ret':
            if pending[0] is None or pending[0] != len(stmts) - 1:
                raise Fail('call result used late')
            e = stmts.pop()[:-1]
            pending[0] = None
            return ('expr', e)
        if v[0] == 'shl':
            raise Fail('unfinished shift')
        return v

    def put(r, v):
        regs[r] = v
        set_since.add(r)

    def mem(t, args):
        base = args[1].lstrip('[').rstrip(']')
        off = int(args[2].rstrip(']').lstrip('#').split()[0]) if len(args) > 2 else 0
        k, v = regs.get(base, (None, None))
        if k == 'addr':
            return base, v, off
        if k == 'addroff':
            return base, v[0], v[1] + off
        if k in ('param', 'expr'):
            if k == 'param':
                used.add(v)
                ptrs.add(v)
            return base, ('ptr', cval((k, v))), off
        raise Fail('mem base ' + t)

    for a, t in ins:
        op = t.split()[0]
        args = [x.strip() for x in t[len(op):].split(',')] if len(t) > len(op) else []
        if op in ('push', 'pop', '.word') or t.replace('\t', ' ') == 'movs r0, r0':
            continue
        if op == 'bx':
            if args[0] != 'lr' and not t.endswith('r0') and not t.endswith('r1') and not t.endswith('r2') and not t.endswith('r3'):
                raise Fail(t)
            if 'r0' in set_since and regs.get('r0', (None,))[0] not in ('ret', None):
                ret[0] = cval(get('r0'))
            break
        if op in ('sub', 'add') and args[0] == 'sp':
            continue
        if op == 'movs' and args[1].startswith('#'):
            put(args[0], ('const', int(args[1][1:]))); continue
        if op == 'negs' and regs.get(args[1], (None,))[0] == 'const':
            put(args[0], ('const', -regs[args[1]][1])); continue
        if op == 'ldr' and args[1].startswith('=0x'):
            put(args[0], lit(int(args[1][1:].split()[0], 16))); continue
        if (op == 'adds' and len(args) == 3 and args[2] == '#0') or (op == 'mov' and len(args) == 2):
            v = regs.get(args[1])
            if v is None:
                raise Fail('copy of unknown %s' % args[1])
            put(args[0], v); continue
        if op == 'adds' and len(args) == 2 and args[1].startswith('#'):
            k, v = regs.get(args[0], (None, None))
            if k == 'addr':
                put(args[0], ('addroff', (v, int(args[1][1:]))))
            elif k == 'addroff':
                put(args[0], ('addroff', (v[0], v[1] + int(args[1][1:]))))
            elif k == 'const':
                put(args[0], ('const', v + int(args[1][1:])))
            elif k in ('param', 'expr'):
                put(args[0], ('expr', '(%s + %s)' % (cval(get(args[0])), args[1][1:])))
            else:
                raise Fail(t)
            continue
        if op == 'lsls' and len(args) == 3:
            k, v = regs.get(args[1], (None, None))
            if k == 'const':
                put(args[0], ('const', v << int(args[2][1:]))); continue
            if k == 'param' and args[2] in ('#16', '#24'):
                put(args[0], ('shl', (v, int(args[2][1:])))); continue
            raise Fail(t)
        if op in ('lsrs', 'asrs') and len(args) == 3 and regs.get(args[1], (None,))[0] == 'shl':
            i, n = regs[args[1]][1]
            if int(args[2][1:]) != n:
                raise Fail(t)
            ty = NARROW[(op, n)]
            if ptypes.get(i, ty) != ty:
                raise Fail('param %d narrowed twice' % i)
            ptypes[i] = ty
            put(args[0], ('param', i)); continue
        BIN = {'adds': '+', 'subs': '-', 'ands': '&', 'orrs': '|', 'eors': '^', 'muls': '*'}
        if op in BIN and len(args) == 3 and not args[2].startswith('#'):
            x, y = get(args[1]), get(args[2])
            put(args[0], ('expr', '(%s %s %s)' % (cval(x), BIN[op], cval(y)))); continue
        if op in BIN and len(args) == 2 and not args[1].startswith('#'):
            x, y = get(args[0]), get(args[1])
            put(args[0], ('expr', '(%s %s %s)' % (cval(x), BIN[op], cval(y)))); continue
        if op in ('adds', 'subs') and len(args) == 3 and args[2].startswith('#'):
            x = get(args[1])
            if x[0] == 'const':
                put(args[0], ('const', x[1] + (1 if op == 'adds' else -1) * int(args[2][1:]))); continue
            put(args[0], ('expr', '(%s %s %s)' % (cval(x), '+' if op == 'adds' else '-', args[2][1:]))); continue
        if op == 'str' and args[1] == '[sp':
            n = int(args[2].rstrip(']').lstrip('#')) if len(args) > 2 else 0
            stack[n // 4] = get(args[0]); continue
        if op in L and args[1].startswith('[') and args[1] != '[sp':
            base, g, o = mem(t, args)
            put(args[0], ('expr', gref(g, o, L[op], ext))); continue
        if op in W and args[1].startswith('['):
            base, g, o = mem(t, args)
            val = cval(get(args[0]))
            set_since.discard(base); set_since.discard(args[0])
            stmts.append('%s = %s;' % (gref(g, o, W[op], ext), val))
            continue
        if op == 'bl':
            callee = args[0]
            if callee in NAME2ADDR:
                callee = 'sub_' + NAME2ADDR[callee]
            if not callee.startswith('sub_'):
                raise Fail('call ' + callee)
            n = ARITY.get(callee[4:].upper())
            if n is None:
                n = 0
                for i in range(4):
                    if 'r%d' % i in set_since:
                        n = i + 1
                if n == 4 and stack:
                    n += max(stack) + 1
                ARITY[callee[4:].upper()] = n
                print('  guessed arity %s %d (%08X)' % (callee, n, a), file=sys.stderr)
            av = []
            for i in range(n):
                v = get('r%d' % i) if i < 4 else stack.get(i - 4)
                if v is None:
                    raise Fail('arg %d of %s unknown' % (i, callee))
                av.append(cval(v))
            stmts.append('%s(%s);' % (callee, ', '.join(av)))
            for r in ('r0', 'r1', 'r2', 'r3'):
                regs.pop(r, None)
            regs['r0'] = ('ret', None)
            pending[0] = len(stmts) - 1
            stack = {}
            set_since = set()
            continue
        raise Fail(t)
    np = max(used) + 1 if used else 0
    for i in ptrs:
        if i in ptypes:
            raise Fail('param %d both narrowed and pointer' % i)
        ptypes[i] = 'u8 *'
    params = ', '.join('%s%sa%d' % (ptypes.get(i, 's32'), '' if ptypes.get(i, '').endswith('*') else ' ', i) for i in range(np)) or 'void'
    if ret[0] is not None:
        stmts.append('return %s;' % ret[0])
    return stmts, ext, params, ('s32' if ret[0] is not None else 'void')


def section(addr, name=None):
    stmts, ext, params, rt = lift(addr)
    body = '\n'.join('    ' + s for s in stmts)
    return '//@ %s %s\n%s sub_%s(%s)\n{\n%s\n}\n' % (addr, name or 'sub_' + addr, rt, addr, params, body), ext


def undecompiled(lo, hi):
    ends = {int(r['start'], 16): int(r['end'], 16) for r in csv.DictReader(open(os.path.join(ROOT, 'decomp/functions.csv')))}
    import glob
    res = []
    for f in glob.glob(os.path.join(ROOT, 'asm', 'code_*.s')):
        for l in open(f):
            m = re.match(r'^sub_([0-9A-F]{8}):', l)
            if m and lo <= int(m.group(1), 16) < hi:
                res.append(m.group(1))
    return sorted(res)


if __name__ == '__main__':
    if sys.argv[1] == '--scan':
        addrs = undecompiled(int(sys.argv[2], 16), int(sys.argv[3], 16))
    else:
        addrs = [a.upper() for a in sys.argv[1:]]
    allext = {}
    for a in addrs:
        try:
            s, ext = section(a)
        except (Fail, KeyError) as e:
            print('skip %s: %s' % (a, e), file=sys.stderr)
            continue
        print(s)
        for g, t in ext.items():
            allext.setdefault(g, t)
    for g, t in sorted(allext.items()):
        print('// extern %s gUnk_%08X;' % (t, g), file=sys.stderr)
    print('// arity: ' + ' '.join('%s=%d' % kv for kv in sorted(ARITY.items())), file=sys.stderr)
