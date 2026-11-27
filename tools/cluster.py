#!/usr/bin/env python3
"""tools/cluster.py [MAXSIZE] [--exact]: group the unmatched region-B functions whose disassembly is
identical after masking literal values, call targets and (unless --exact) immediates. Each output
line is `COUNT SIZE ADDR...`, biggest payoff first. One C version per group, generated per copy
from its literals, usually matches every copy (session 11: RNG copies, shot helpers, warp fades,
level screen setup). Needs build/report.json (`make report`)."""
import bisect, collections, json, os, re, subprocess, sys
ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
args = [a for a in sys.argv[1:] if not a.startswith('--')]
MAX = int(args[0]) if args else 3000
FUZZY = '--exact' not in sys.argv
r = json.load(open(os.path.join(ROOT, 'build/report.json')))
un = {}
for u in r['units']:
    for f in u.get('functions', []):
        a = int(f['metadata']['virtual_address'])
        if f.get('fuzzy_match_percent', 0) < 100 and 0x082E8470 <= a < 0x08317518:
            un[a] = f['size']
dis = subprocess.run(['python3', 'tools/disasm.py', '082E8470', '08317518'], cwd=ROOT, capture_output=True, text=True).stdout
def norm(t):
    if t.startswith('.word'): return '.word'
    t = re.sub(r'0x[0-9a-fA-F]+', 'X', t)
    if FUZZY: t = re.sub(r'#-?[0-9]+', '#N', t)
    t = re.sub(r'\b(sub|gUnk|gStr)_\w+', 'S', t)
    t = re.sub(r'bl \S+', 'bl F', t)
    return re.sub(r'\s+', ' ', t)
keys = sorted(un); fs = collections.defaultdict(list)
for l in dis.splitlines():
    m = re.match(r'([0-9A-F]{8}):\s+(.*)', l)
    if not m: continue
    a = int(m.group(1), 16); i = bisect.bisect_right(keys, a) - 1
    if i >= 0 and a < keys[i] + un[keys[i]]: fs[keys[i]].append(norm(m.group(2)))
g = collections.defaultdict(list)
for a, v in fs.items():
    if un[a] <= MAX: g['|'.join(v)].append(a)
for k, v in sorted(g.items(), key=lambda kv: -len(kv[1]) * un[kv[1][0]]):
    if len(v) >= 2: print(len(v), un[v[0]], ' '.join('%08X' % x for x in v))
