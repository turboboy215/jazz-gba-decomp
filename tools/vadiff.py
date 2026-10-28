#!/usr/bin/env python3
"""tools/vadiff.py ADDR file.c: like tools/variants.py (variants separated by '//%' lines after a
preamble) but prints tools/adiff.py's aligned-diff op count per variant. Each variant is also
written to build/vad_N.c so `python3 tools/adiff.py ADDR build/vad_N.c` shows its diff.
OPT/RODATA/CC1/END pass through."""
import os, subprocess, sys
addr, path = sys.argv[1], sys.argv[2]
parts = open(path).read().split('//%\n')
os.makedirs('build', exist_ok=True)
for i, v in enumerate(parts[1:]):
    p = 'build/vad_%d.c' % i
    open(p, 'w').write(parts[0] + '\n' + v)
    r = subprocess.run(['python3', 'tools/adiff.py', addr, p], capture_output=True, text=True, env=dict(os.environ, Q='1'))
    o = (r.stdout + r.stderr).strip().splitlines()
    print(i, o[0] if o and o[0].startswith('MATCH') else (o[-1] if o else '?'))
