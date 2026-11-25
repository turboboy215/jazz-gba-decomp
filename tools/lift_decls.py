#!/usr/bin/env python3
"""Declarations for a tools/lift.py draft: every sub_/gUnk_/gStr_ it uses that no include/*.h
declares yet. Usage: tools/lift_decls.py work.c > decls.h
Calls give the arity (s32 parameters); functions only used as values and the drafts' own
definitions are void(void). gUnk_ stored as a scalar gets the store's type, others are u8 arrays."""
import glob, os, re, sys

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
hdr = ''.join(open(f).read() for f in glob.glob(os.path.join(ROOT, 'include', '*.h')))
src = open(sys.argv[1]).read()
declared = lambda n: re.search(r'\b%s\b' % n, hdr)

sigs = {m.group(2): m.group(0) for m in re.finditer(r'^(\w[\w ]*?\s*\**)\s*(sub_[0-9A-F]{8})\((.*)\)$', src, re.M)}
defined = set(sigs)
calls = {}
for m in re.finditer(r'\b(sub_[0-9A-F]{8})\(([^;]*)\);', src):
    a = m.group(2).strip()
    calls.setdefault(m.group(1), 0 if not a else a.count(',') + 1)
refs = set(re.findall(r'\b(sub_[0-9A-F]{8})\b', src))
out = []
for f in sorted(refs):
    if declared(f):
        continue
    if f in sigs:
        out.append(sigs[f] + ';')
        continue
    n = calls.get(f, 0)
    out.append('void %s(%s);' % (f, ', '.join(['s32'] * n) or 'void'))
scal = {}
for m in re.finditer(r'^\s*(gUnk_[0-9A-F]{8}) = ', src, re.M):
    scal[m.group(1)] = 's32'
# the store's type comes from lift.py's stderr list when available
if len(sys.argv) > 2:
    for l in open(sys.argv[2]):
        m = re.match(r'// extern (\w+) (gUnk_[0-9A-F]{8});', l)
        if m and m.group(2) in scal:
            scal[m.group(2)] = m.group(1)
for g in sorted(set(re.findall(r'\b(gUnk_[0-9A-F]{8})\b', src))):
    if declared(g):
        continue
    out.append('extern %s %s;' % (scal[g], g) if g in scal else 'extern u8 %s[];' % g)
for s in sorted(set(re.findall(r'\b(gStr_[0-9A-F]{8})\b', src))):
    if not declared(s):
        out.append('extern const char %s[];' % s)
print('\n'.join(out))
