#!/usr/bin/env python3
"""Check many functions written in one scratch file, then integrate the matches.

  python3 tools/batch_check.py work.c [ADDR ...]   check every section (or only ADDRs)
  python3 tools/batch_check.py --integrate work.c  add the matched ones (tools/add_funcs.py)
                                                   and append their names to names.txt

work.c = a shared preamble (#includes), then one section per function:
  //@ 08000604 Sprite_Show # [sure] evidence for names.txt
  (a switch with its jump table in the ROM rodata: //@ ADDR Name rodata=TABLEADDR # ...)
  void sub_08000604(struct Sprite *s) { s->visible = 1; }
Each section is compiled as preamble + section with tools/check_func.py. Put prototypes in
include/*.h, not in sections, so the integrated src/ files merge cleanly. Results are kept in
work.c.json (matched or not), so later runs can re-check only the failures.
"""
import json, os, re, subprocess, sys

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))


def sections(path):
    parts = re.split(r'^//@ ', open(path).read(), flags=re.M)
    for p in parts[1:]:
        head, body = p.split('\n', 1)
        comment = head.split('#', 1)[1].strip() if '#' in head else ''
        q = head.split('#')[0].split()
        opts = dict(x.split('=', 1) for x in q[2:] if '=' in x)  # e.g. rodata=083D3164
        yield q[0].upper(), q[1], comment, parts[0] + body, opts


def check(path, only):
    res_path = path + '.json'
    res = json.load(open(res_path)) if os.path.exists(res_path) else {}
    tmp = os.path.join(ROOT, 'build', 'batch_one.c')
    os.makedirs(os.path.dirname(tmp), exist_ok=True)
    for addr, name, comment, code, opts in sections(path):
        if only and addr not in only:
            continue
        open(tmp, 'w').write(code)
        env = dict(os.environ)
        if opts.get('rodata'):
            env['RODATA'] = opts['rodata']
        r = subprocess.run(['python3', 'tools/check_func.py', tmp, addr], capture_output=True, text=True, cwd=ROOT, env=env)
        ok = r.stdout.startswith('MATCH')
        res[addr] = {'addr': addr, 'name': name, 'comment': comment, 'matched': ok, 'c_code': code}
        m = re.search(r'rodata ([0-9A-F]{8})-([0-9A-F]{8})', r.stdout)
        if ok and m:
            res[addr]['rodata'] = [m.group(1), m.group(2)]
        print(addr, name, 'MATCH' if ok else 'FAIL')
        if not ok:
            print((r.stdout + r.stderr)[-3000:])
    json.dump(res, open(res_path, 'w'), indent=1)


def integrate(path):
    items = [r for r in json.load(open(path + '.json')).values() if r['matched']]
    tmp = os.path.join(ROOT, '.one.json')
    json.dump(items, open(tmp, 'w'))
    if subprocess.run(['python3', 'tools/add_funcs.py', tmp], cwd=ROOT).returncode:
        sys.exit('add_funcs failed')
    os.unlink(tmp)
    names = open(os.path.join(ROOT, 'names.txt')).read()
    with open(os.path.join(ROOT, 'names.txt'), 'a') as f:
        for it in sorted(items, key=lambda x: x['addr']):
            if not re.search(r'^%s ' % it['addr'], names, re.M) and not it['name'].startswith('sub_'):
                f.write('%s %-32s # %s\n' % (it['addr'], it['name'], it['comment'] or '[likely]'))


if __name__ == '__main__':
    if sys.argv[1] == '--integrate':
        integrate(sys.argv[2])
    else:
        check(sys.argv[1], {a.upper() for a in sys.argv[2:]})
