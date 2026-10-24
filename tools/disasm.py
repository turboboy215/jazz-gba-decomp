#!/usr/bin/env python3
"""Readable disassembly of a ROM range: tools/disasm.py START [END] [--arm]

Thumb by default. `ldr rX, [pc, #N]` lines get the literal's value, and values / bl targets
that have a name in names.txt or symbols.txt get it. Literal pools inside the range are printed
as .word instead of being decoded as code (a word is treated as pool data when some ldr in the
range points at it). Strings in the ROM rodata get a short preview.
"""
import os, re, subprocess, sys, tempfile

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
rom = open(os.path.join(ROOT, 'baserom.gba'), 'rb').read()


def names():
    n = {}
    for f in ('names.txt', 'symbols.txt'):
        for l in open(os.path.join(ROOT, f)):
            l = l.split('#')[0].split()
            if len(l) >= 2:
                a, b = (l[0], l[1]) if f == 'names.txt' else (l[1], l[0])
                try:
                    n[int(a, 16)] = b
                except ValueError:
                    pass
    return n


def preview(v):
    if 0x08000000 <= v < 0x08000000 + len(rom):
        o = v - 0x08000000
        s = rom[o:o + 40].split(b'\0')[0]
        if len(s) >= 3 and all(32 <= c < 127 or c == 10 for c in s):
            return ' "%s"' % s.decode().replace('\n', '\\n')
    return ''


def main():
    args = [a for a in sys.argv[1:] if not a.startswith('--')]
    arm = '--arm' in sys.argv
    start = int(args[0], 16)
    end = int(args[1], 16) if len(args) > 1 else None
    if end is None:  # up to the next function start in functions.csv
        starts = sorted(int(l.split(',')[0], 16) for l in open(os.path.join(ROOT, 'decomp/functions.csv'))
                        if re.match(r'[0-9A-Fa-f]{8},', l))
        end = next((s for s in starts if s > start), start + 0x200)
    nm = names()
    data = rom[start - 0x08000000:end - 0x08000000]
    with tempfile.NamedTemporaryFile(suffix='.bin', delete=False) as f:
        f.write(data)
    cmd = ['arm-none-eabi-objdump', '-D', '-b', 'binary', '-marmv4t', '--adjust-vma=0x%X' % start, f.name]
    if not arm:
        cmd[4:4] = ['-M', 'force-thumb']
    out = subprocess.run(cmd, capture_output=True, text=True).stdout
    os.unlink(f.name)
    lines = [l for l in out.splitlines() if re.match(r'\s+[0-9a-f]+:', l)]
    pool = set()
    for l in lines:
        m = re.search(r'ldr\s+\w+, \[pc, #(\d+)\]', l)
        if m:
            a = int(l.split(':')[0], 16)
            t = ((a + (8 if arm else 4)) & ~3) + int(m.group(1))
            pool.add(t)
    a_prev = None
    for l in lines:
        a = int(l.split(':')[0], 16)
        if any(p <= a < p + 4 for p in pool):
            if a in pool:
                v = int.from_bytes(rom[a - 0x08000000:a - 0x08000000 + 4], 'little')
                print('%08X:  .word 0x%08X %s%s' % (a, v, nm.get(v & ~1, ''), preview(v)))
            continue
        body = l.split('\t', 2)[-1].strip()
        m = re.search(r'ldr\s+(\w+), \[pc, #(\d+)\]', body)
        if m:
            t = ((a + (8 if arm else 4)) & ~3) + int(m.group(2))
            v = int.from_bytes(rom[t - 0x08000000:t - 0x08000000 + 4], 'little')
            body = 'ldr %s, =0x%08X %s%s' % (m.group(1), v, nm.get(v & ~1, ''), preview(v))
        m = re.search(r'\bbl\s+0x([0-9a-f]+)', body)
        if m:
            t = int(m.group(1), 16)
            body = 'bl %s' % nm.get(t, 'sub_%08X' % t)
        body = re.sub(r'\s*@.*', '', body) if 'ldr' not in body else body
        if a in nm:
            print('%s:' % nm[a])
        print('%08X:  %s' % (a, body))


main()
