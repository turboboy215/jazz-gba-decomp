#!/usr/bin/env python3
"""Try several versions of one function: tools/variants.py ADDR file.c

file.c = a preamble, then variants separated by lines containing only '//%'. Prints MATCH or
the number of differing lines for each; VERBOSE=<n> also prints variant n's diff.
"""
import os, subprocess, sys

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
addr, src = sys.argv[1], open(sys.argv[2]).read()
parts = src.split('\n//%\n')
tmp = os.path.join(ROOT, 'build', 'variant.c')
os.makedirs(os.path.dirname(tmp), exist_ok=True)
for i, v in enumerate(parts[1:]):
    open(tmp, 'w').write(parts[0] + '\n' + v)
    r = subprocess.run(['python3', 'tools/check_func.py', tmp, addr], capture_output=True, text=True, cwd=ROOT)
    out = r.stdout + r.stderr
    if out.startswith('MATCH'):
        print(i, 'MATCH')
        continue
    print(i, (out.splitlines() or ['?'])[0], 'diff lines:', sum(1 for l in out.splitlines() if l.startswith('*')))
    if os.environ.get('VERBOSE') == str(i):
        print(out[-4000:])
