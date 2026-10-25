#!/usr/bin/env python3
"""Aligned diff of one function: tools/adiff.py ADDR file.c  (env OPT/RODATA/CC1/END pass through).

check_func.py compares line by line, so one inserted instruction shows as hundreds of diff lines.
This aligns the two listings (difflib, pc-relative offsets and branch targets masked) and prints
only the real edits plus a count. Q=1 prints the count only. Run it from the repo root.
"""
import subprocess,sys,re,difflib,os
r=subprocess.run(['python3','tools/check_func.py',sys.argv[2],sys.argv[1]],capture_output=True,text=True)
out=r.stdout+r.stderr
if not out.startswith(('MISMATCH','RODATA')): print(out.splitlines()[0]); sys.exit()
A=[];B=[]
def norm(s):
    s=s.strip(); s=re.sub(r'^[0-9a-f]{4}( [0-9a-f]{4})?\s+','',s)
    s=re.sub(r'@.*','',s); s=re.sub(r'\[pc, #\d+\]','[pc]',s); s=re.sub(r'0x[0-9a-f]+','X',s)
    return re.sub(r'\s+',' ',s).strip()
for l in out.splitlines():
    if '|' in l and not l.startswith(('MISMATCH','RODATA')):
        a,b=l.lstrip('* ').split('|',1); A.append(norm(a)); B.append(norm(b))
print(out.splitlines()[0])
sm=difflib.SequenceMatcher(None,A,B,autojunk=False)
n=0
for op,i1,i2,j1,j2 in sm.get_opcodes():
    if op=='equal': continue
    n+=max(i2-i1,j2-j1)
    if os.environ.get('Q'): continue
    print('@%d %s'%(i1,op)); 
    for x in A[max(0,i1-2):i1]: print('   ',x)
    for x in A[i1:i2]: print(' - ',x)
    for x in B[j1:j2]: print(' + ',x)
print('aligned diff ops:',n)
