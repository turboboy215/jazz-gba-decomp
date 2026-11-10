#!/bin/bash
# tools/exitcount.sh file.c FUNC: for each loop entered by a jump to its test, count the insns of the
# exit code jump.c would copy (duplicate_loop_exit_test refuses above 30, or on a label, call or loop note).
cd "$(dirname "$0")/.."
arm-none-eabi-cpp -nostdinc -I include -I tools/agbcc/include $1 > build/ec.i && (cd build && ../tools/agbcc/bin/old_agbcc -O2 -mthumb-interwork -fno-merge-blocks -fdelete-dead-after-reload -fgcse-no-const -fno-strict-aliasing -fcombine-givs-fix -fgcse-insert-before-copy -fgiv-keep-after-exit -fgcse-const-in-loops -fold-base-reg-class $OPT -dr ec.i -o /dev/null) && python3 - $2 <<'PY'
import re,sys
t=open('build/ec.i.rtl').read()
i=t.find(';; Function '+sys.argv[1]); t=t[i:]; j=t.find(';; Function ',10); t=t[:j] if j>0 else t
items=re.findall(r'^\((\w+) (\d+) \d+ \d+ (.*)',t,re.M)
# map uid->index
seq=[(k,int(u),rest) for k,u,rest in items]
idx={u:n for n,(k,u,r) in enumerate(seq)}
# jump targets
blocks=re.split(r'\n\n',t)
tgt={}
for b in blocks:
    m=re.match(r'\(jump_insn (\d+)',b)
    if m:
        l=re.findall(r'label_ref (\d+)',b)
        if l and 'if_then_else' not in b: tgt[int(m.group(1))]=int(l[0])
for n,(k,u,r) in enumerate(seq):
    if k=='note' and 'NOTE_INSN_LOOP_BEG' in r:
        m=n+1
        while seq[m][0]=='note': m+=1
        if seq[m][0]=='jump_insn' and seq[m][1] in tgt:
            L=tgt[seq[m][1]]; p=idx[L]+1; c=0; why=''
            while p<len(seq) and not (seq[p][0]=='note' and 'LOOP_END' in seq[p][2]):
                if seq[p][0] in('insn','jump_insn'): c+=1
                if seq[p][0] in ('code_label','call_insn') and not why: why=seq[p][0]+' '+str(seq[p][1])
                if seq[p][0]=='note' and ('LOOP_BEG' in seq[p][2] or 'LOOP_CONT' in seq[p][2]) and not why: why='note'
                p+=1
            print('loop at note',u,'exit code insns',c,'blocker:',why or '-')
        else: print('loop at note',u,'not entered by jump')
PY
