	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_0830C5C0
	.thumb_func
sub_0830C5C0:
	.2byte 0xb5f0 @ push {r4, r5, r6, r7, lr}
	.2byte 0x4647 @ mov r7, r8
	.2byte 0xb480 @ push {r7}
	.2byte 0x4926 @ ldr r1, [pc, #152]
	.2byte 0x2001 @ movs r0, #1
	.2byte 0x8809 @ ldrh r1, [r1, #0]
	.2byte 0x4008 @ ands r0, r1
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd100 @ bne.n 0x830c5d4
	.2byte 0xe167 @ b.n 0x830c8a4
	.2byte 0x4f23 @ ldr r7, [pc, #140]
	.2byte 0x4824 @ ldr r0, [pc, #144]
	.2byte 0x6800 @ ldr r0, [r0, #0]
	.2byte 0x21d8 @ movs r1, #216
	.2byte 0x0049 @ lsls r1, r1, #1
	.2byte 0x1840 @ adds r0, r0, r1
	.2byte 0x7800 @ ldrb r0, [r0, #0]
	.2byte 0x7038 @ strb r0, [r7, #0]
	.2byte 0x7838 @ ldrb r0, [r7, #0]
	.2byte 0xf008, 0xfd1b @ bl 0x8315020
	.2byte 0x7c00 @ ldrb r0, [r0, #16]
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd100 @ bne.n 0x830c5f2
	.2byte 0xe14c @ b.n 0x830c88c
	.2byte 0xf4f8, 0xfa13 @ bl 0x8004a1c
	.2byte 0x4c1d @ ldr r4, [pc, #116]
	.2byte 0x1c20 @ adds r0, r4, #0
	.2byte 0xf4f4, 0xf807 @ bl 0x800060c
	.2byte 0x2364 @ movs r3, #100
	.2byte 0x191b @ adds r3, r3, r4
	.2byte 0x4698 @ mov r8, r3
	.2byte 0x4640 @ mov r0, r8
	.2byte 0xf4f4, 0xf801 @ bl 0x800060c
	.2byte 0x1c26 @ adds r6, r4, #0
	.2byte 0x36c8 @ adds r6, #200
	.2byte 0x1c30 @ adds r0, r6, #0
	.2byte 0xf4f3, 0xfffc @ bl 0x800060c
	.2byte 0x2564 @ movs r5, #100
	.2byte 0x7839 @ ldrb r1, [r7, #0]
	.2byte 0x1c08 @ adds r0, r1, #0
	.2byte 0x4368 @ muls r0, r5
	.2byte 0x1900 @ adds r0, r0, r4
	.2byte 0xf4f3, 0xfff1 @ bl 0x8000604
	.2byte 0x783b @ ldrb r3, [r7, #0]
	.2byte 0x1c18 @ adds r0, r3, #0
	.2byte 0x4368 @ muls r0, r5
	.2byte 0x1900 @ adds r0, r0, r4
	.2byte 0x2114 @ movs r1, #20
	.2byte 0x221e @ movs r2, #30
	.2byte 0x237f @ movs r3, #127
	.2byte 0xf4f4, 0xf828 @ bl 0x8000684
	.2byte 0x1c20 @ adds r0, r4, #0
	.2byte 0xf4f3, 0xfee7 @ bl 0x8000408
	.2byte 0x4640 @ mov r0, r8
	.2byte 0xf4f3, 0xfee4 @ bl 0x8000408
	.2byte 0x1c30 @ adds r0, r6, #0
	.2byte 0xf4f3, 0xfee1 @ bl 0x8000408
	.2byte 0x7838 @ ldrb r0, [r7, #0]
	.2byte 0xf008, 0xfcea @ bl 0x8315020
	.2byte 0x7c00 @ ldrb r0, [r0, #16]
	.2byte 0x2817 @ cmp r0, #23
	.2byte 0xd900 @ bls.n 0x830c654
	.2byte 0xe074 @ b.n 0x830c73e
	.2byte 0x0080 @ lsls r0, r0, #2
	.2byte 0x4906 @ ldr r1, [pc, #24]
	.2byte 0x1840 @ adds r0, r0, r1
	.2byte 0x6800 @ ldr r0, [r0, #0]
	.2byte 0x4687 @ mov pc, r0
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x0d12 @ lsrs r2, r2, #20
	.2byte 0x0300 @ lsls r0, r0, #12
	.2byte 0x755a @ strb r2, [r3, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0x756c @ strb r4, [r5, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0x7648 @ strb r0, [r1, #25]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0xbaf0 @ .raw revsh r0, r6
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x4a00 @ ldr r2, [pc, #0]
	.2byte 0xe056 @ b.n 0x830c726
	.2byte 0xb8b8 @ @ <UNDEFINED> instruction: 0xb8b8
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x4a00 @ ldr r2, [pc, #0]
	.2byte 0xe052 @ b.n 0x830c726
	.2byte 0xb8cc @ @ <UNDEFINED> instruction: 0xb8cc
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x4a00 @ ldr r2, [pc, #0]
	.2byte 0xe04e @ b.n 0x830c726
	.2byte 0xb8e0 @ @ <UNDEFINED> instruction: 0xb8e0
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x4a00 @ ldr r2, [pc, #0]
	.2byte 0xe04a @ b.n 0x830c726
	.2byte 0xb8f4 @ @ <UNDEFINED> instruction: 0xb8f4
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x4a00 @ ldr r2, [pc, #0]
	.2byte 0xe046 @ b.n 0x830c726
	.2byte 0xb908 @ .raw cbnz r0, 0x830c69e
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x4a00 @ ldr r2, [pc, #0]
	.2byte 0xe042 @ b.n 0x830c726
	.2byte 0xb91c @ .raw cbnz r4, 0x830c6aa
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x4a00 @ ldr r2, [pc, #0]
	.2byte 0xe03e @ b.n 0x830c726
	.2byte 0xb930 @ .raw cbnz r0, 0x830c6b8
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x4a00 @ ldr r2, [pc, #0]
	.2byte 0xe03a @ b.n 0x830c726
	.2byte 0xb944 @ .raw cbnz r4, 0x830c6c4
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x4a00 @ ldr r2, [pc, #0]
	.2byte 0xe036 @ b.n 0x830c726
	.2byte 0xb958 @ .raw cbnz r0, 0x830c6d2
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x4a00 @ ldr r2, [pc, #0]
	.2byte 0xe032 @ b.n 0x830c726
	.2byte 0xb96c @ .raw cbnz r4, 0x830c6de
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x4a00 @ ldr r2, [pc, #0]
	.2byte 0xe02e @ b.n 0x830c726
	.2byte 0xb980 @ .raw cbnz r0, 0x830c6ec
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x4a00 @ ldr r2, [pc, #0]
	.2byte 0xe02a @ b.n 0x830c726
	.2byte 0xb994 @ .raw cbnz r4, 0x830c6f8
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x4a00 @ ldr r2, [pc, #0]
	.2byte 0xe026 @ b.n 0x830c726
	.2byte 0xb9a8 @ .raw cbnz r0, 0x830c706
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x4a00 @ ldr r2, [pc, #0]
	.2byte 0xe022 @ b.n 0x830c726
	.2byte 0xb9bc @ .raw cbnz r4, 0x830c712
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x4a00 @ ldr r2, [pc, #0]
	.2byte 0xe01e @ b.n 0x830c726
	.2byte 0xb9d0 @ .raw cbnz r0, 0x830c720
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x4a00 @ ldr r2, [pc, #0]
	.2byte 0xe01a @ b.n 0x830c726
	.2byte 0xb9e4 @ .raw cbnz r4, 0x830c72c
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x4a00 @ ldr r2, [pc, #0]
	.2byte 0xe016 @ b.n 0x830c726
	.2byte 0xb9f8 @ .raw cbnz r0, 0x830c73a
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x4a00 @ ldr r2, [pc, #0]
	.2byte 0xe012 @ b.n 0x830c726
	.2byte 0xba0c @ .raw rev r4, r1
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x4a00 @ ldr r2, [pc, #0]
	.2byte 0xe00e @ b.n 0x830c726
	.2byte 0xba20 @ .raw rev r0, r4
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x4a00 @ ldr r2, [pc, #0]
	.2byte 0xe00a @ b.n 0x830c726
	.2byte 0xb96c @ .raw cbnz r4, 0x830c72e
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x4a00 @ ldr r2, [pc, #0]
	.2byte 0xe006 @ b.n 0x830c726
	.2byte 0xba34 @ .raw rev r4, r6
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x4a00 @ ldr r2, [pc, #0]
	.2byte 0xe002 @ b.n 0x830c726
	.2byte 0xba48 @ .raw rev16 r0, r1
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x4a02 @ ldr r2, [pc, #8]
	.2byte 0x2009 @ movs r0, #9
	.2byte 0x2105 @ movs r1, #5
	.2byte 0xf4f8, 0xf8f3 @ bl 0x8004914
	.2byte 0xe006 @ b.n 0x830c73e
	.2byte 0xba5c @ .raw rev16 r4, r3
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x4a1c @ ldr r2, [pc, #112]
	.2byte 0x2009 @ movs r0, #9
	.2byte 0x2105 @ movs r1, #5
	.2byte 0xf4f8, 0xf8eb @ bl 0x8004914
	.2byte 0x4a1b @ ldr r2, [pc, #108]
	.2byte 0x2002 @ movs r0, #2
	.2byte 0x210b @ movs r1, #11
	.2byte 0xf4f8, 0xf8e6 @ bl 0x8004914
	.2byte 0x4a19 @ ldr r2, [pc, #100]
	.2byte 0x2002 @ movs r0, #2
	.2byte 0x210c @ movs r1, #12
	.2byte 0xf4f8, 0xf8e1 @ bl 0x8004914
	.2byte 0x4c18 @ ldr r4, [pc, #96]
	.2byte 0x1c20 @ adds r0, r4, #0
	.2byte 0xf4f3, 0xff55 @ bl 0x8000604
	.2byte 0x1c20 @ adds r0, r4, #0
	.2byte 0x2108 @ movs r1, #8
	.2byte 0x2260 @ movs r2, #96
	.2byte 0x237f @ movs r3, #127
	.2byte 0xf4f3, 0xff8f @ bl 0x8000684
	.2byte 0x1c20 @ adds r0, r4, #0
	.2byte 0x2100 @ movs r1, #0
	.2byte 0xf4f3, 0xff89 @ bl 0x8000680
	.2byte 0x1c20 @ adds r0, r4, #0
	.2byte 0xf4f3, 0xfe4a @ bl 0x8000408
	.2byte 0xf4f7, 0xfe1e @ bl 0x80043b4
	.2byte 0x2401 @ movs r4, #1
	.2byte 0x4d0f @ ldr r5, [pc, #60]
	.2byte 0xf00d, 0xfee6 @ bl 0x831a54c
	.2byte 0x480e @ ldr r0, [pc, #56]
	.2byte 0x490d @ ldr r1, [pc, #52]
	.2byte 0xf4f5, 0xfc86 @ bl 0x8002094
	.2byte 0x2002 @ movs r0, #2
	.2byte 0x2109 @ movs r1, #9
	.2byte 0x4a0c @ ldr r2, [pc, #48]
	.2byte 0xf4f8, 0xf8c1 @ bl 0x8004914
	.2byte 0x2c00 @ cmp r4, #0
	.2byte 0xd016 @ beq.n 0x830c7c4
	.2byte 0x2c01 @ cmp r4, #1
	.2byte 0xd11a @ bne.n 0x830c7d0
	.2byte 0x4806 @ ldr r0, [pc, #24]
	.2byte 0x2108 @ movs r1, #8
	.2byte 0x2260 @ movs r2, #96
	.2byte 0x237f @ movs r3, #127
	.2byte 0xf4f3, 0xff6f @ bl 0x8000684
	.2byte 0xe013 @ b.n 0x830c7d0
	.2byte 0xba70 @ .raw rev16 r0, r6
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0xba84 @ hlt 0x0004
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0xbaa0 @ hlt 0x0020
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x7580 @ strb r0, [r0, #22]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0x0d12 @ lsrs r2, r2, #20
	.2byte 0x0300 @ lsls r0, r0, #12
	.2byte 0x0d10 @ lsrs r0, r2, #20
	.2byte 0x0300 @ lsls r0, r0, #12
	.2byte 0xbabc @ hlt 0x003c
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x4808 @ ldr r0, [pc, #32]
	.2byte 0x2108 @ movs r1, #8
	.2byte 0x2268 @ movs r2, #104
	.2byte 0x237f @ movs r3, #127
	.2byte 0xf4f3, 0xff5a @ bl 0x8000684
	.2byte 0x20c0 @ movs r0, #192
	.2byte 0x8829 @ ldrh r1, [r5, #0]
	.2byte 0x4008 @ ands r0, r1
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd009 @ beq.n 0x830c7ee
	.2byte 0x2005 @ movs r0, #5
	.2byte 0xf00c, 0xf8f8 @ bl 0x83189d0
	.2byte 0x2c01 @ cmp r4, #1
	.2byte 0xd103 @ bne.n 0x830c7ec
	.2byte 0x2400 @ movs r4, #0
	.2byte 0xe002 @ b.n 0x830c7ee
	.2byte 0x7580 @ strb r0, [r0, #22]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0x2401 @ movs r4, #1
	.2byte 0x4823 @ ldr r0, [pc, #140]
	.2byte 0xf4f3, 0xfe0a @ bl 0x8000408
	.2byte 0xf4f7, 0xfdde @ bl 0x80043b4
	.2byte 0x200b @ movs r0, #11
	.2byte 0x882b @ ldrh r3, [r5, #0]
	.2byte 0x4018 @ ands r0, r3
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd0bc @ beq.n 0x830c77c
	.2byte 0x4d1f @ ldr r5, [pc, #124]
	.2byte 0x1c28 @ adds r0, r5, #0
	.2byte 0x2114 @ movs r1, #20
	.2byte 0x2236 @ movs r2, #54
	.2byte 0x237f @ movs r3, #127
	.2byte 0xf4f3, 0xff3a @ bl 0x8000684
	.2byte 0x1c2f @ adds r7, r5, #0
	.2byte 0x3764 @ adds r7, #100
	.2byte 0x1c38 @ adds r0, r7, #0
	.2byte 0x2114 @ movs r1, #20
	.2byte 0x2256 @ movs r2, #86
	.2byte 0x237f @ movs r3, #127
	.2byte 0xf4f3, 0xff32 @ bl 0x8000684
	.2byte 0x1c2e @ adds r6, r5, #0
	.2byte 0x36c8 @ adds r6, #200
	.2byte 0x1c30 @ adds r0, r6, #0
	.2byte 0x2114 @ movs r1, #20
	.2byte 0x2276 @ movs r2, #118
	.2byte 0x237f @ movs r3, #127
	.2byte 0xf4f3, 0xff2a @ bl 0x8000684
	.2byte 0x2c00 @ cmp r4, #0
	.2byte 0xd005 @ beq.n 0x830c840
	.2byte 0x4913 @ ldr r1, [pc, #76]
	.2byte 0x2002 @ movs r0, #2
	.2byte 0x8809 @ ldrh r1, [r1, #0]
	.2byte 0x4008 @ ands r0, r1
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd025 @ beq.n 0x830c88c
	.2byte 0x4811 @ ldr r0, [pc, #68]
	.2byte 0x4910 @ ldr r1, [pc, #64]
	.2byte 0xf4f5, 0xfc26 @ bl 0x8002094
	.2byte 0xf4f8, 0xf8e8 @ bl 0x8004a1c
	.2byte 0x1c28 @ adds r0, r5, #0
	.2byte 0xf4f3, 0xfed9 @ bl 0x8000604
	.2byte 0x1c38 @ adds r0, r7, #0
	.2byte 0xf4f3, 0xfed6 @ bl 0x8000604
	.2byte 0x1c30 @ adds r0, r6, #0
	.2byte 0xf4f3, 0xfed3 @ bl 0x8000604
	.2byte 0x1c28 @ adds r0, r5, #0
	.2byte 0xf4f3, 0xfdd2 @ bl 0x8000408
	.2byte 0x1c38 @ adds r0, r7, #0
	.2byte 0xf4f3, 0xfdcf @ bl 0x8000408
	.2byte 0x1c30 @ adds r0, r6, #0
	.2byte 0xf4f3, 0xfdcc @ bl 0x8000408
	.2byte 0x4802 @ ldr r0, [pc, #8]
	.2byte 0x2101 @ movs r1, #1
	.2byte 0xf4f3, 0xff04 @ bl 0x8000680
	.2byte 0xe26b @ b.n 0x830cd52
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x7580 @ strb r0, [r0, #22]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0x7648 @ strb r0, [r1, #25]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0x0d12 @ lsrs r2, r2, #20
	.2byte 0x0300 @ lsls r0, r0, #12
	.2byte 0x0d10 @ lsrs r0, r2, #20
	.2byte 0x0300 @ lsls r0, r0, #12
	.2byte 0x4803 @ ldr r0, [pc, #12]
	.2byte 0x4904 @ ldr r1, [pc, #16]
	.2byte 0x7809 @ ldrb r1, [r1, #0]
	.2byte 0x7001 @ strb r1, [r0, #0]
	.2byte 0xf7fe, 0xff54 @ bl 0x830b740
	.2byte 0xe25b @ b.n 0x830cd52
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x755c @ strb r4, [r3, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0x755a @ strb r2, [r3, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0x4d0d @ ldr r5, [pc, #52]
	.2byte 0x6829 @ ldr r1, [r5, #0]
	.2byte 0x24d8 @ movs r4, #216
	.2byte 0x0064 @ lsls r4, r4, #1
	.2byte 0x190a @ adds r2, r1, r4
	.2byte 0x7813 @ ldrb r3, [r2, #0]
	.2byte 0x0098 @ lsls r0, r3, #2
	.2byte 0x18c0 @ adds r0, r0, r3
	.2byte 0x00c0 @ lsls r0, r0, #3
	.2byte 0x1809 @ adds r1, r1, r0
	.2byte 0x8fc8 @ ldrh r0, [r1, #62]
	.2byte 0x3140 @ adds r1, #64
	.2byte 0x8809 @ ldrh r1, [r1, #0]
	.2byte 0x2219 @ movs r2, #25
	.2byte 0x2300 @ movs r3, #0
	.2byte 0xf4f8, 0xf887 @ bl 0x80049d4
	.2byte 0x6828 @ ldr r0, [r5, #0]
	.2byte 0x1900 @ adds r0, r0, r4
	.2byte 0x7800 @ ldrb r0, [r0, #0]
	.2byte 0x2801 @ cmp r0, #1
	.2byte 0xd02f @ beq.n 0x830c930
	.2byte 0x2801 @ cmp r0, #1
	.2byte 0xdc05 @ bgt.n 0x830c8e0
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd006 @ beq.n 0x830c8e6
	.2byte 0xe072 @ b.n 0x830c9c0
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x756c @ strb r4, [r5, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0x2802 @ cmp r0, #2
	.2byte 0xd04b @ beq.n 0x830c97c
	.2byte 0xe06c @ b.n 0x830c9c0
	.2byte 0x2000 @ movs r0, #0
	.2byte 0xf008, 0xfb9a @ bl 0x8315020
	.2byte 0x7c00 @ ldrb r0, [r0, #16]
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd10e @ bne.n 0x830c910
	.2byte 0x6828 @ ldr r0, [r5, #0]
	.2byte 0x21d8 @ movs r1, #216
	.2byte 0x0049 @ lsls r1, r1, #1
	.2byte 0x1840 @ adds r0, r0, r1
	.2byte 0x2164 @ movs r1, #100
	.2byte 0x7800 @ ldrb r0, [r0, #0]
	.2byte 0x4348 @ muls r0, r1
	.2byte 0x4902 @ ldr r1, [pc, #8]
	.2byte 0x1840 @ adds r0, r0, r1
	.2byte 0x2100 @ movs r1, #0
	.2byte 0xf4f3, 0xfebb @ bl 0x8000680
	.2byte 0xe059 @ b.n 0x830c9c0
	.2byte 0x7648 @ strb r0, [r1, #25]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0x6828 @ ldr r0, [r5, #0]
	.2byte 0x23d8 @ movs r3, #216
	.2byte 0x005b @ lsls r3, r3, #1
	.2byte 0x18c0 @ adds r0, r0, r3
	.2byte 0x2164 @ movs r1, #100
	.2byte 0x7800 @ ldrb r0, [r0, #0]
	.2byte 0x4348 @ muls r0, r1
	.2byte 0x4903 @ ldr r1, [pc, #12]
	.2byte 0x1840 @ adds r0, r0, r1
	.2byte 0x2103 @ movs r1, #3
	.2byte 0xf4f3, 0xfeac @ bl 0x8000680
	.2byte 0xe04a @ b.n 0x830c9c0
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x7648 @ strb r0, [r1, #25]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0x2001 @ movs r0, #1
	.2byte 0xf008, 0xfb75 @ bl 0x8315020
	.2byte 0x7c00 @ ldrb r0, [r0, #16]
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd10f @ bne.n 0x830c95c
	.2byte 0x6828 @ ldr r0, [r5, #0]
	.2byte 0x21d8 @ movs r1, #216
	.2byte 0x0049 @ lsls r1, r1, #1
	.2byte 0x1840 @ adds r0, r0, r1
	.2byte 0x2164 @ movs r1, #100
	.2byte 0x7800 @ ldrb r0, [r0, #0]
	.2byte 0x4348 @ muls r0, r1
	.2byte 0x4903 @ ldr r1, [pc, #12]
	.2byte 0x1840 @ adds r0, r0, r1
	.2byte 0x2101 @ movs r1, #1
	.2byte 0xf4f3, 0xfe96 @ bl 0x8000680
	.2byte 0xe034 @ b.n 0x830c9c0
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x7648 @ strb r0, [r1, #25]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0x6828 @ ldr r0, [r5, #0]
	.2byte 0x23d8 @ movs r3, #216
	.2byte 0x005b @ lsls r3, r3, #1
	.2byte 0x18c0 @ adds r0, r0, r3
	.2byte 0x2164 @ movs r1, #100
	.2byte 0x7800 @ ldrb r0, [r0, #0]
	.2byte 0x4348 @ muls r0, r1
	.2byte 0x4903 @ ldr r1, [pc, #12]
	.2byte 0x1840 @ adds r0, r0, r1
	.2byte 0x2104 @ movs r1, #4
	.2byte 0xf4f3, 0xfe86 @ bl 0x8000680
	.2byte 0xe024 @ b.n 0x830c9c0
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x7648 @ strb r0, [r1, #25]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0x2002 @ movs r0, #2
	.2byte 0xf008, 0xfb4f @ bl 0x8315020
	.2byte 0x7c00 @ ldrb r0, [r0, #16]
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd10f @ bne.n 0x830c9a8
	.2byte 0x6828 @ ldr r0, [r5, #0]
	.2byte 0x21d8 @ movs r1, #216
	.2byte 0x0049 @ lsls r1, r1, #1
	.2byte 0x1840 @ adds r0, r0, r1
	.2byte 0x2164 @ movs r1, #100
	.2byte 0x7800 @ ldrb r0, [r0, #0]
	.2byte 0x4348 @ muls r0, r1
	.2byte 0x4903 @ ldr r1, [pc, #12]
	.2byte 0x1840 @ adds r0, r0, r1
	.2byte 0x2102 @ movs r1, #2
	.2byte 0xf4f3, 0xfe70 @ bl 0x8000680
	.2byte 0xe00e @ b.n 0x830c9c0
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x7648 @ strb r0, [r1, #25]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0x6828 @ ldr r0, [r5, #0]
	.2byte 0x23d8 @ movs r3, #216
	.2byte 0x005b @ lsls r3, r3, #1
	.2byte 0x18c0 @ adds r0, r0, r3
	.2byte 0x2164 @ movs r1, #100
	.2byte 0x7800 @ ldrb r0, [r0, #0]
	.2byte 0x4348 @ muls r0, r1
	.2byte 0x490b @ ldr r1, [pc, #44]
	.2byte 0x1840 @ adds r0, r0, r1
	.2byte 0x2105 @ movs r1, #5
	.2byte 0xf4f3, 0xfe60 @ bl 0x8000680
	.2byte 0x4809 @ ldr r0, [pc, #36]
	.2byte 0x6800 @ ldr r0, [r0, #0]
	.2byte 0x21d8 @ movs r1, #216
	.2byte 0x0049 @ lsls r1, r1, #1
	.2byte 0x1840 @ adds r0, r0, r1
	.2byte 0x7800 @ ldrb r0, [r0, #0]
	.2byte 0xf008, 0xfb28 @ bl 0x8315020
	.2byte 0x7c00 @ ldrb r0, [r0, #16]
	.2byte 0x2817 @ cmp r0, #23
	.2byte 0xd900 @ bls.n 0x830c9d8
	.2byte 0xe1bc @ b.n 0x830cd52
	.2byte 0x0080 @ lsls r0, r0, #2
	.2byte 0x4904 @ ldr r1, [pc, #16]
	.2byte 0x1840 @ adds r0, r0, r1
	.2byte 0x6800 @ ldr r0, [r0, #0]
	.2byte 0x4687 @ mov pc, r0
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x7648 @ strb r0, [r1, #25]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0x756c @ strb r4, [r5, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0xbb50 @ .raw cbnz r0, 0x830ca44
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x4806 @ ldr r0, [pc, #24]
	.2byte 0x6802 @ ldr r2, [r0, #0]
	.2byte 0x23d8 @ movs r3, #216
	.2byte 0x005b @ lsls r3, r3, #1
	.2byte 0x18d1 @ adds r1, r2, r3
	.2byte 0x780b @ ldrb r3, [r1, #0]
	.2byte 0x0098 @ lsls r0, r3, #2
	.2byte 0x18c0 @ adds r0, r0, r3
	.2byte 0x00c0 @ lsls r0, r0, #3
	.2byte 0x1880 @ adds r0, r0, r2
	.2byte 0x3025 @ adds r0, #37
	.2byte 0x4902 @ ldr r1, [pc, #8]
	.2byte 0xe18c @ b.n 0x830cd24
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x756c @ strb r4, [r5, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0xb8b8 @ @ <UNDEFINED> instruction: 0xb8b8
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x4806 @ ldr r0, [pc, #24]
	.2byte 0x6802 @ ldr r2, [r0, #0]
	.2byte 0x20d8 @ movs r0, #216
	.2byte 0x0040 @ lsls r0, r0, #1
	.2byte 0x1811 @ adds r1, r2, r0
	.2byte 0x780b @ ldrb r3, [r1, #0]
	.2byte 0x0098 @ lsls r0, r3, #2
	.2byte 0x18c0 @ adds r0, r0, r3
	.2byte 0x00c0 @ lsls r0, r0, #3
	.2byte 0x1880 @ adds r0, r0, r2
	.2byte 0x3025 @ adds r0, #37
	.2byte 0x4902 @ ldr r1, [pc, #8]
	.2byte 0xe17a @ b.n 0x830cd24
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x756c @ strb r4, [r5, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0xb8cc @ @ <UNDEFINED> instruction: 0xb8cc
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x4806 @ ldr r0, [pc, #24]
	.2byte 0x6802 @ ldr r2, [r0, #0]
	.2byte 0x20d8 @ movs r0, #216
	.2byte 0x0040 @ lsls r0, r0, #1
	.2byte 0x1811 @ adds r1, r2, r0
	.2byte 0x780b @ ldrb r3, [r1, #0]
	.2byte 0x0098 @ lsls r0, r3, #2
	.2byte 0x18c0 @ adds r0, r0, r3
	.2byte 0x00c0 @ lsls r0, r0, #3
	.2byte 0x1880 @ adds r0, r0, r2
	.2byte 0x3025 @ adds r0, #37
	.2byte 0x4902 @ ldr r1, [pc, #8]
	.2byte 0xe168 @ b.n 0x830cd24
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x756c @ strb r4, [r5, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0xb8e0 @ @ <UNDEFINED> instruction: 0xb8e0
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x4806 @ ldr r0, [pc, #24]
	.2byte 0x6802 @ ldr r2, [r0, #0]
	.2byte 0x20d8 @ movs r0, #216
	.2byte 0x0040 @ lsls r0, r0, #1
	.2byte 0x1811 @ adds r1, r2, r0
	.2byte 0x780b @ ldrb r3, [r1, #0]
	.2byte 0x0098 @ lsls r0, r3, #2
	.2byte 0x18c0 @ adds r0, r0, r3
	.2byte 0x00c0 @ lsls r0, r0, #3
	.2byte 0x1880 @ adds r0, r0, r2
	.2byte 0x3025 @ adds r0, #37
	.2byte 0x4902 @ ldr r1, [pc, #8]
	.2byte 0xe156 @ b.n 0x830cd24
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x756c @ strb r4, [r5, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0xb8f4 @ @ <UNDEFINED> instruction: 0xb8f4
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x4807 @ ldr r0, [pc, #28]
	.2byte 0x6802 @ ldr r2, [r0, #0]
	.2byte 0x20d8 @ movs r0, #216
	.2byte 0x0040 @ lsls r0, r0, #1
	.2byte 0x1811 @ adds r1, r2, r0
	.2byte 0x780b @ ldrb r3, [r1, #0]
	.2byte 0x0098 @ lsls r0, r3, #2
	.2byte 0x18c0 @ adds r0, r0, r3
	.2byte 0x00c0 @ lsls r0, r0, #3
	.2byte 0x1880 @ adds r0, r0, r2
	.2byte 0x3025 @ adds r0, #37
	.2byte 0x4903 @ ldr r1, [pc, #12]
	.2byte 0x2215 @ movs r2, #21
	.2byte 0xf00d, 0xfd69 @ bl 0x831a570
	.2byte 0xe158 @ b.n 0x830cd52
	.2byte 0x756c @ strb r4, [r5, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0xbad8 @ .raw revsh r0, r3
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x4806 @ ldr r0, [pc, #24]
	.2byte 0x6802 @ ldr r2, [r0, #0]
	.2byte 0x20d8 @ movs r0, #216
	.2byte 0x0040 @ lsls r0, r0, #1
	.2byte 0x1811 @ adds r1, r2, r0
	.2byte 0x780b @ ldrb r3, [r1, #0]
	.2byte 0x0098 @ lsls r0, r3, #2
	.2byte 0x18c0 @ adds r0, r0, r3
	.2byte 0x00c0 @ lsls r0, r0, #3
	.2byte 0x1880 @ adds r0, r0, r2
	.2byte 0x3025 @ adds r0, #37
	.2byte 0x4902 @ ldr r1, [pc, #8]
	.2byte 0xe130 @ b.n 0x830cd24
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x756c @ strb r4, [r5, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0xb91c @ .raw cbnz r4, 0x830cad2
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x4806 @ ldr r0, [pc, #24]
	.2byte 0x6802 @ ldr r2, [r0, #0]
	.2byte 0x20d8 @ movs r0, #216
	.2byte 0x0040 @ lsls r0, r0, #1
	.2byte 0x1811 @ adds r1, r2, r0
	.2byte 0x780b @ ldrb r3, [r1, #0]
	.2byte 0x0098 @ lsls r0, r3, #2
	.2byte 0x18c0 @ adds r0, r0, r3
	.2byte 0x00c0 @ lsls r0, r0, #3
	.2byte 0x1880 @ adds r0, r0, r2
	.2byte 0x3025 @ adds r0, #37
	.2byte 0x4902 @ ldr r1, [pc, #8]
	.2byte 0xe11e @ b.n 0x830cd24
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x756c @ strb r4, [r5, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0xb930 @ .raw cbnz r0, 0x830cafc
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x4806 @ ldr r0, [pc, #24]
	.2byte 0x6802 @ ldr r2, [r0, #0]
	.2byte 0x20d8 @ movs r0, #216
	.2byte 0x0040 @ lsls r0, r0, #1
	.2byte 0x1811 @ adds r1, r2, r0
	.2byte 0x780b @ ldrb r3, [r1, #0]
	.2byte 0x0098 @ lsls r0, r3, #2
	.2byte 0x18c0 @ adds r0, r0, r3
	.2byte 0x00c0 @ lsls r0, r0, #3
	.2byte 0x1880 @ adds r0, r0, r2
	.2byte 0x3025 @ adds r0, #37
	.2byte 0x4902 @ ldr r1, [pc, #8]
	.2byte 0xe10c @ b.n 0x830cd24
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x756c @ strb r4, [r5, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0xb944 @ .raw cbnz r4, 0x830cb24
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x4806 @ ldr r0, [pc, #24]
	.2byte 0x6802 @ ldr r2, [r0, #0]
	.2byte 0x20d8 @ movs r0, #216
	.2byte 0x0040 @ lsls r0, r0, #1
	.2byte 0x1811 @ adds r1, r2, r0
	.2byte 0x780b @ ldrb r3, [r1, #0]
	.2byte 0x0098 @ lsls r0, r3, #2
	.2byte 0x18c0 @ adds r0, r0, r3
	.2byte 0x00c0 @ lsls r0, r0, #3
	.2byte 0x1880 @ adds r0, r0, r2
	.2byte 0x3025 @ adds r0, #37
	.2byte 0x4902 @ ldr r1, [pc, #8]
	.2byte 0xe0fa @ b.n 0x830cd24
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x756c @ strb r4, [r5, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0xb958 @ .raw cbnz r0, 0x830cb4e
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x4806 @ ldr r0, [pc, #24]
	.2byte 0x6802 @ ldr r2, [r0, #0]
	.2byte 0x20d8 @ movs r0, #216
	.2byte 0x0040 @ lsls r0, r0, #1
	.2byte 0x1811 @ adds r1, r2, r0
	.2byte 0x780b @ ldrb r3, [r1, #0]
	.2byte 0x0098 @ lsls r0, r3, #2
	.2byte 0x18c0 @ adds r0, r0, r3
	.2byte 0x00c0 @ lsls r0, r0, #3
	.2byte 0x1880 @ adds r0, r0, r2
	.2byte 0x3025 @ adds r0, #37
	.2byte 0x4902 @ ldr r1, [pc, #8]
	.2byte 0xe0e8 @ b.n 0x830cd24
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x756c @ strb r4, [r5, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0xb96c @ .raw cbnz r4, 0x830cb76
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x4806 @ ldr r0, [pc, #24]
	.2byte 0x6802 @ ldr r2, [r0, #0]
	.2byte 0x20d8 @ movs r0, #216
	.2byte 0x0040 @ lsls r0, r0, #1
	.2byte 0x1811 @ adds r1, r2, r0
	.2byte 0x780b @ ldrb r3, [r1, #0]
	.2byte 0x0098 @ lsls r0, r3, #2
	.2byte 0x18c0 @ adds r0, r0, r3
	.2byte 0x00c0 @ lsls r0, r0, #3
	.2byte 0x1880 @ adds r0, r0, r2
	.2byte 0x3025 @ adds r0, #37
	.2byte 0x4902 @ ldr r1, [pc, #8]
	.2byte 0xe0d6 @ b.n 0x830cd24
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x756c @ strb r4, [r5, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0xb980 @ .raw cbnz r0, 0x830cba0
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x4806 @ ldr r0, [pc, #24]
	.2byte 0x6802 @ ldr r2, [r0, #0]
	.2byte 0x20d8 @ movs r0, #216
	.2byte 0x0040 @ lsls r0, r0, #1
	.2byte 0x1811 @ adds r1, r2, r0
	.2byte 0x780b @ ldrb r3, [r1, #0]
	.2byte 0x0098 @ lsls r0, r3, #2
	.2byte 0x18c0 @ adds r0, r0, r3
	.2byte 0x00c0 @ lsls r0, r0, #3
	.2byte 0x1880 @ adds r0, r0, r2
	.2byte 0x3025 @ adds r0, #37
	.2byte 0x4902 @ ldr r1, [pc, #8]
	.2byte 0xe0c4 @ b.n 0x830cd24
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x756c @ strb r4, [r5, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0xb994 @ .raw cbnz r4, 0x830cbc8
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x4806 @ ldr r0, [pc, #24]
	.2byte 0x6802 @ ldr r2, [r0, #0]
	.2byte 0x20d8 @ movs r0, #216
	.2byte 0x0040 @ lsls r0, r0, #1
	.2byte 0x1811 @ adds r1, r2, r0
	.2byte 0x780b @ ldrb r3, [r1, #0]
	.2byte 0x0098 @ lsls r0, r3, #2
	.2byte 0x18c0 @ adds r0, r0, r3
	.2byte 0x00c0 @ lsls r0, r0, #3
	.2byte 0x1880 @ adds r0, r0, r2
	.2byte 0x3025 @ adds r0, #37
	.2byte 0x4902 @ ldr r1, [pc, #8]
	.2byte 0xe0b2 @ b.n 0x830cd24
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x756c @ strb r4, [r5, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0xb9a8 @ .raw cbnz r0, 0x830cbf2
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x4806 @ ldr r0, [pc, #24]
	.2byte 0x6802 @ ldr r2, [r0, #0]
	.2byte 0x20d8 @ movs r0, #216
	.2byte 0x0040 @ lsls r0, r0, #1
	.2byte 0x1811 @ adds r1, r2, r0
	.2byte 0x780b @ ldrb r3, [r1, #0]
	.2byte 0x0098 @ lsls r0, r3, #2
	.2byte 0x18c0 @ adds r0, r0, r3
	.2byte 0x00c0 @ lsls r0, r0, #3
	.2byte 0x1880 @ adds r0, r0, r2
	.2byte 0x3025 @ adds r0, #37
	.2byte 0x4902 @ ldr r1, [pc, #8]
	.2byte 0xe0a0 @ b.n 0x830cd24
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x756c @ strb r4, [r5, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0xb9bc @ .raw cbnz r4, 0x830cc1a
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x4806 @ ldr r0, [pc, #24]
	.2byte 0x6802 @ ldr r2, [r0, #0]
	.2byte 0x20d8 @ movs r0, #216
	.2byte 0x0040 @ lsls r0, r0, #1
	.2byte 0x1811 @ adds r1, r2, r0
	.2byte 0x780b @ ldrb r3, [r1, #0]
	.2byte 0x0098 @ lsls r0, r3, #2
	.2byte 0x18c0 @ adds r0, r0, r3
	.2byte 0x00c0 @ lsls r0, r0, #3
	.2byte 0x1880 @ adds r0, r0, r2
	.2byte 0x3025 @ adds r0, #37
	.2byte 0x4902 @ ldr r1, [pc, #8]
	.2byte 0xe08e @ b.n 0x830cd24
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x756c @ strb r4, [r5, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0xb9d0 @ .raw cbnz r0, 0x830cc44
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x4806 @ ldr r0, [pc, #24]
	.2byte 0x6802 @ ldr r2, [r0, #0]
	.2byte 0x20d8 @ movs r0, #216
	.2byte 0x0040 @ lsls r0, r0, #1
	.2byte 0x1811 @ adds r1, r2, r0
	.2byte 0x780b @ ldrb r3, [r1, #0]
	.2byte 0x0098 @ lsls r0, r3, #2
	.2byte 0x18c0 @ adds r0, r0, r3
	.2byte 0x00c0 @ lsls r0, r0, #3
	.2byte 0x1880 @ adds r0, r0, r2
	.2byte 0x3025 @ adds r0, #37
	.2byte 0x4902 @ ldr r1, [pc, #8]
	.2byte 0xe07c @ b.n 0x830cd24
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x756c @ strb r4, [r5, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0xb9e4 @ .raw cbnz r4, 0x830cc6c
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x4806 @ ldr r0, [pc, #24]
	.2byte 0x6802 @ ldr r2, [r0, #0]
	.2byte 0x20d8 @ movs r0, #216
	.2byte 0x0040 @ lsls r0, r0, #1
	.2byte 0x1811 @ adds r1, r2, r0
	.2byte 0x780b @ ldrb r3, [r1, #0]
	.2byte 0x0098 @ lsls r0, r3, #2
	.2byte 0x18c0 @ adds r0, r0, r3
	.2byte 0x00c0 @ lsls r0, r0, #3
	.2byte 0x1880 @ adds r0, r0, r2
	.2byte 0x3025 @ adds r0, #37
	.2byte 0x4902 @ ldr r1, [pc, #8]
	.2byte 0xe06a @ b.n 0x830cd24
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x756c @ strb r4, [r5, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0xb9f8 @ .raw cbnz r0, 0x830cc96
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x4806 @ ldr r0, [pc, #24]
	.2byte 0x6802 @ ldr r2, [r0, #0]
	.2byte 0x20d8 @ movs r0, #216
	.2byte 0x0040 @ lsls r0, r0, #1
	.2byte 0x1811 @ adds r1, r2, r0
	.2byte 0x780b @ ldrb r3, [r1, #0]
	.2byte 0x0098 @ lsls r0, r3, #2
	.2byte 0x18c0 @ adds r0, r0, r3
	.2byte 0x00c0 @ lsls r0, r0, #3
	.2byte 0x1880 @ adds r0, r0, r2
	.2byte 0x3025 @ adds r0, #37
	.2byte 0x4902 @ ldr r1, [pc, #8]
	.2byte 0xe058 @ b.n 0x830cd24
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x756c @ strb r4, [r5, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0xba0c @ .raw rev r4, r1
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x4806 @ ldr r0, [pc, #24]
	.2byte 0x6802 @ ldr r2, [r0, #0]
	.2byte 0x20d8 @ movs r0, #216
	.2byte 0x0040 @ lsls r0, r0, #1
	.2byte 0x1811 @ adds r1, r2, r0
	.2byte 0x780b @ ldrb r3, [r1, #0]
	.2byte 0x0098 @ lsls r0, r3, #2
	.2byte 0x18c0 @ adds r0, r0, r3
	.2byte 0x00c0 @ lsls r0, r0, #3
	.2byte 0x1880 @ adds r0, r0, r2
	.2byte 0x3025 @ adds r0, #37
	.2byte 0x4902 @ ldr r1, [pc, #8]
	.2byte 0xe046 @ b.n 0x830cd24
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x756c @ strb r4, [r5, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0xba20 @ .raw rev r0, r4
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x4806 @ ldr r0, [pc, #24]
	.2byte 0x6802 @ ldr r2, [r0, #0]
	.2byte 0x20d8 @ movs r0, #216
	.2byte 0x0040 @ lsls r0, r0, #1
	.2byte 0x1811 @ adds r1, r2, r0
	.2byte 0x780b @ ldrb r3, [r1, #0]
	.2byte 0x0098 @ lsls r0, r3, #2
	.2byte 0x18c0 @ adds r0, r0, r3
	.2byte 0x00c0 @ lsls r0, r0, #3
	.2byte 0x1880 @ adds r0, r0, r2
	.2byte 0x3025 @ adds r0, #37
	.2byte 0x4902 @ ldr r1, [pc, #8]
	.2byte 0xe034 @ b.n 0x830cd24
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x756c @ strb r4, [r5, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0xb96c @ .raw cbnz r4, 0x830ccde
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x4806 @ ldr r0, [pc, #24]
	.2byte 0x6802 @ ldr r2, [r0, #0]
	.2byte 0x20d8 @ movs r0, #216
	.2byte 0x0040 @ lsls r0, r0, #1
	.2byte 0x1811 @ adds r1, r2, r0
	.2byte 0x780b @ ldrb r3, [r1, #0]
	.2byte 0x0098 @ lsls r0, r3, #2
	.2byte 0x18c0 @ adds r0, r0, r3
	.2byte 0x00c0 @ lsls r0, r0, #3
	.2byte 0x1880 @ adds r0, r0, r2
	.2byte 0x3025 @ adds r0, #37
	.2byte 0x4902 @ ldr r1, [pc, #8]
	.2byte 0xe022 @ b.n 0x830cd24
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x756c @ strb r4, [r5, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0xba34 @ .raw rev r4, r6
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x4806 @ ldr r0, [pc, #24]
	.2byte 0x6802 @ ldr r2, [r0, #0]
	.2byte 0x20d8 @ movs r0, #216
	.2byte 0x0040 @ lsls r0, r0, #1
	.2byte 0x1811 @ adds r1, r2, r0
	.2byte 0x780b @ ldrb r3, [r1, #0]
	.2byte 0x0098 @ lsls r0, r3, #2
	.2byte 0x18c0 @ adds r0, r0, r3
	.2byte 0x00c0 @ lsls r0, r0, #3
	.2byte 0x1880 @ adds r0, r0, r2
	.2byte 0x3025 @ adds r0, #37
	.2byte 0x4902 @ ldr r1, [pc, #8]
	.2byte 0xe010 @ b.n 0x830cd24
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x756c @ strb r4, [r5, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0xba48 @ .raw rev16 r0, r1
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x4807 @ ldr r0, [pc, #28]
	.2byte 0x6802 @ ldr r2, [r0, #0]
	.2byte 0x20d8 @ movs r0, #216
	.2byte 0x0040 @ lsls r0, r0, #1
	.2byte 0x1811 @ adds r1, r2, r0
	.2byte 0x780b @ ldrb r3, [r1, #0]
	.2byte 0x0098 @ lsls r0, r3, #2
	.2byte 0x18c0 @ adds r0, r0, r3
	.2byte 0x00c0 @ lsls r0, r0, #3
	.2byte 0x1880 @ adds r0, r0, r2
	.2byte 0x3025 @ adds r0, #37
	.2byte 0x4903 @ ldr r1, [pc, #12]
	.2byte 0x2212 @ movs r2, #18
	.2byte 0xf00d, 0xfc23 @ bl 0x831a570
	.2byte 0xe012 @ b.n 0x830cd52
	.2byte 0x756c @ strb r4, [r5, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0xba5c @ .raw rev16 r4, r3
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x4809 @ ldr r0, [pc, #36]
	.2byte 0x6802 @ ldr r2, [r0, #0]
	.2byte 0x20d8 @ movs r0, #216
	.2byte 0x0040 @ lsls r0, r0, #1
	.2byte 0x1811 @ adds r1, r2, r0
	.2byte 0x780b @ ldrb r3, [r1, #0]
	.2byte 0x0098 @ lsls r0, r3, #2
	.2byte 0x18c0 @ adds r0, r0, r3
	.2byte 0x00c0 @ lsls r0, r0, #3
	.2byte 0x1880 @ adds r0, r0, r2
	.2byte 0x3025 @ adds r0, #37
	.2byte 0x4905 @ ldr r1, [pc, #20]
	.2byte 0x2212 @ movs r2, #18
	.2byte 0xf00d, 0xfc0f @ bl 0x831a570
	.2byte 0xbc08 @ pop {r3}
	.2byte 0x4698 @ mov r8, r3
	.2byte 0xbcf0 @ pop {r4, r5, r6, r7}
	.2byte 0xbc01 @ pop {r0}
	.2byte 0x4700 @ bx r0
	.4byte 0x0200756C
	.4byte 0x083DBA70

	.thumb
	.align 1, 0
	.global sub_0830CD64
	.thumb_func
sub_0830CD64:
	.2byte 0xb530 @ push {r4, r5, lr}
	.2byte 0x4922 @ ldr r1, [pc, #136]
	.2byte 0x2001 @ movs r0, #1
	.2byte 0x8809 @ ldrh r1, [r1, #0]
	.2byte 0x4008 @ ands r0, r1
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd100 @ bne.n 0x830cd74
	.2byte 0xe0a3 @ b.n 0x830cebc
	.2byte 0x4d1f @ ldr r5, [pc, #124]
	.2byte 0x4820 @ ldr r0, [pc, #128]
	.2byte 0x6800 @ ldr r0, [r0, #0]
	.2byte 0x21d8 @ movs r1, #216
	.2byte 0x0049 @ lsls r1, r1, #1
	.2byte 0x1840 @ adds r0, r0, r1
	.2byte 0x7800 @ ldrb r0, [r0, #0]
	.2byte 0x7028 @ strb r0, [r5, #0]
	.2byte 0x7828 @ ldrb r0, [r5, #0]
	.2byte 0xf008, 0xf94b @ bl 0x8315020
	.2byte 0x7c00 @ ldrb r0, [r0, #16]
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd100 @ bne.n 0x830cd92
	.2byte 0xe094 @ b.n 0x830cebc
	.2byte 0x4c1a @ ldr r4, [pc, #104]
	.2byte 0x7828 @ ldrb r0, [r5, #0]
	.2byte 0x7020 @ strb r0, [r4, #0]
	.2byte 0x4d19 @ ldr r5, [pc, #100]
	.2byte 0x7820 @ ldrb r0, [r4, #0]
	.2byte 0xf008, 0xf940 @ bl 0x8315020
	.2byte 0x7800 @ ldrb r0, [r0, #0]
	.2byte 0x7028 @ strb r0, [r5, #0]
	.2byte 0x4d17 @ ldr r5, [pc, #92]
	.2byte 0x7820 @ ldrb r0, [r4, #0]
	.2byte 0xf008, 0xf93a @ bl 0x8315020
	.2byte 0x7840 @ ldrb r0, [r0, #1]
	.2byte 0x6028 @ str r0, [r5, #0]
	.2byte 0x4d15 @ ldr r5, [pc, #84]
	.2byte 0x7820 @ ldrb r0, [r4, #0]
	.2byte 0xf008, 0xf934 @ bl 0x8315020
	.2byte 0x7880 @ ldrb r0, [r0, #2]
	.2byte 0x6028 @ str r0, [r5, #0]
	.2byte 0x4d13 @ ldr r5, [pc, #76]
	.2byte 0x7820 @ ldrb r0, [r4, #0]
	.2byte 0xf008, 0xf92e @ bl 0x8315020
	.2byte 0x78c0 @ ldrb r0, [r0, #3]
	.2byte 0x7028 @ strb r0, [r5, #0]
	.2byte 0x4d11 @ ldr r5, [pc, #68]
	.2byte 0x7820 @ ldrb r0, [r4, #0]
	.2byte 0xf008, 0xf928 @ bl 0x8315020
	.2byte 0x7900 @ ldrb r0, [r0, #4]
	.2byte 0x7028 @ strb r0, [r5, #0]
	.2byte 0xf4f5, 0xf940 @ bl 0x8002058
	.2byte 0x7820 @ ldrb r0, [r4, #0]
	.2byte 0xf008, 0xf921 @ bl 0x8315020
	.2byte 0x78c0 @ ldrb r0, [r0, #3]
	.2byte 0x2802 @ cmp r0, #2
	.2byte 0xd023 @ beq.n 0x830ce2c
	.2byte 0x2802 @ cmp r0, #2
	.2byte 0xdc15 @ bgt.n 0x830ce14
	.2byte 0x2801 @ cmp r0, #1
	.2byte 0xd016 @ beq.n 0x830ce1a
	.2byte 0xe037 @ b.n 0x830ce5e
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x0d12 @ lsrs r2, r2, #20
	.2byte 0x0300 @ lsls r0, r0, #12
	.2byte 0x755b @ strb r3, [r3, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0x756c @ strb r4, [r5, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0x755c @ strb r4, [r3, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0x7567 @ strb r7, [r4, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0x59b8 @ ldr r0, [r7, r6]
	.2byte 0x0300 @ lsls r0, r0, #12
	.2byte 0x59b4 @ ldr r4, [r6, r6]
	.2byte 0x0300 @ lsls r0, r0, #12
	.2byte 0x7561 @ strb r1, [r4, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0x7566 @ strb r6, [r4, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0x2803 @ cmp r0, #3
	.2byte 0xd012 @ beq.n 0x830ce3e
	.2byte 0xe021 @ b.n 0x830ce5e
	.2byte 0x2001 @ movs r0, #1
	.2byte 0x2102 @ movs r1, #2
	.2byte 0xf4f5, 0xf8ed @ bl 0x8001ffc
	.2byte 0x2002 @ movs r0, #2
	.2byte 0x2101 @ movs r1, #1
	.2byte 0xf4f5, 0xf8e9 @ bl 0x8001ffc
	.2byte 0xe018 @ b.n 0x830ce5e
	.2byte 0x2008 @ movs r0, #8
	.2byte 0x2104 @ movs r1, #4
	.2byte 0xf4f5, 0xf8e4 @ bl 0x8001ffc
	.2byte 0x2004 @ movs r0, #4
	.2byte 0x2108 @ movs r1, #8
	.2byte 0xf4f5, 0xf8e0 @ bl 0x8001ffc
	.2byte 0xe00f @ b.n 0x830ce5e
	.2byte 0x2001 @ movs r0, #1
	.2byte 0x2102 @ movs r1, #2
	.2byte 0xf4f5, 0xf8db @ bl 0x8001ffc
	.2byte 0x2002 @ movs r0, #2
	.2byte 0x2101 @ movs r1, #1
	.2byte 0xf4f5, 0xf8d7 @ bl 0x8001ffc
	.2byte 0x2008 @ movs r0, #8
	.2byte 0x2104 @ movs r1, #4
	.2byte 0xf4f5, 0xf8d3 @ bl 0x8001ffc
	.2byte 0x2004 @ movs r0, #4
	.2byte 0x2108 @ movs r1, #8
	.2byte 0xf4f5, 0xf8cf @ bl 0x8001ffc
	.2byte 0x4805 @ ldr r0, [pc, #20]
	.2byte 0x7800 @ ldrb r0, [r0, #0]
	.2byte 0xf4f4, 0xfffd @ bl 0x8001e60
	.2byte 0x2001 @ movs r0, #1
	.2byte 0x21c0 @ movs r1, #192
	.2byte 0x221e @ movs r2, #30
	.2byte 0xf00a, 0xf850 @ bl 0x8316f10
	.2byte 0xe004 @ b.n 0x830ce7c
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x7567 @ strb r7, [r4, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0xf00d, 0xfb68 @ bl 0x831a54c
	.2byte 0xf00a, 0xf868 @ bl 0x8316f50
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd1f9 @ bne.n 0x830ce78
	.2byte 0x4809 @ ldr r0, [pc, #36]
	.2byte 0x7800 @ ldrb r0, [r0, #0]
	.2byte 0xf008, 0xf8ca @ bl 0x8315020
	.2byte 0x7c00 @ ldrb r0, [r0, #16]
	.2byte 0xf005, 0xfa83 @ bl 0x8312398
	.2byte 0x4807 @ ldr r0, [pc, #28]
	.2byte 0x4907 @ ldr r1, [pc, #28]
	.2byte 0x6001 @ str r1, [r0, #0]
	.2byte 0x4807 @ ldr r0, [pc, #28]
	.2byte 0x6001 @ str r1, [r0, #0]
	.2byte 0xf7fd, 0xfbcc @ bl 0x830a638
	.2byte 0xf7fd, 0xf8e4 @ bl 0x830a06c
	.2byte 0xf7fd, 0xfa86 @ bl 0x830a3b4
	.2byte 0xe25f @ b.n 0x830d36a
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x755c @ strb r4, [r3, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0x7570 @ strb r0, [r6, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0x5c00 @ ldrb r0, [r0, r0]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0x756c @ strb r4, [r5, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0x4d0d @ ldr r5, [pc, #52]
	.2byte 0x6829 @ ldr r1, [r5, #0]
	.2byte 0x24d8 @ movs r4, #216
	.2byte 0x0064 @ lsls r4, r4, #1
	.2byte 0x190a @ adds r2, r1, r4
	.2byte 0x7813 @ ldrb r3, [r2, #0]
	.2byte 0x0098 @ lsls r0, r3, #2
	.2byte 0x18c0 @ adds r0, r0, r3
	.2byte 0x00c0 @ lsls r0, r0, #3
	.2byte 0x1809 @ adds r1, r1, r0
	.2byte 0x8fc8 @ ldrh r0, [r1, #62]
	.2byte 0x3140 @ adds r1, #64
	.2byte 0x8809 @ ldrh r1, [r1, #0]
	.2byte 0x2219 @ movs r2, #25
	.2byte 0x2300 @ movs r3, #0
	.2byte 0xf4f7, 0xfd7b @ bl 0x80049d4
	.2byte 0x6828 @ ldr r0, [r5, #0]
	.2byte 0x1900 @ adds r0, r0, r4
	.2byte 0x7800 @ ldrb r0, [r0, #0]
	.2byte 0x2801 @ cmp r0, #1
	.2byte 0xd02f @ beq.n 0x830cf48
	.2byte 0x2801 @ cmp r0, #1
	.2byte 0xdc05 @ bgt.n 0x830cef8
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd006 @ beq.n 0x830cefe
	.2byte 0xe072 @ b.n 0x830cfd8
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x756c @ strb r4, [r5, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0x2802 @ cmp r0, #2
	.2byte 0xd04b @ beq.n 0x830cf94
	.2byte 0xe06c @ b.n 0x830cfd8
	.2byte 0x2000 @ movs r0, #0
	.2byte 0xf008, 0xf88e @ bl 0x8315020
	.2byte 0x7c00 @ ldrb r0, [r0, #16]
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd10e @ bne.n 0x830cf28
	.2byte 0x6828 @ ldr r0, [r5, #0]
	.2byte 0x21d8 @ movs r1, #216
	.2byte 0x0049 @ lsls r1, r1, #1
	.2byte 0x1840 @ adds r0, r0, r1
	.2byte 0x2164 @ movs r1, #100
	.2byte 0x7800 @ ldrb r0, [r0, #0]
	.2byte 0x4348 @ muls r0, r1
	.2byte 0x4902 @ ldr r1, [pc, #8]
	.2byte 0x1840 @ adds r0, r0, r1
	.2byte 0x2100 @ movs r1, #0
	.2byte 0xf4f3, 0xfbaf @ bl 0x8000680
	.2byte 0xe059 @ b.n 0x830cfd8
	.2byte 0x7648 @ strb r0, [r1, #25]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0x6828 @ ldr r0, [r5, #0]
	.2byte 0x23d8 @ movs r3, #216
	.2byte 0x005b @ lsls r3, r3, #1
	.2byte 0x18c0 @ adds r0, r0, r3
	.2byte 0x2164 @ movs r1, #100
	.2byte 0x7800 @ ldrb r0, [r0, #0]
	.2byte 0x4348 @ muls r0, r1
	.2byte 0x4903 @ ldr r1, [pc, #12]
	.2byte 0x1840 @ adds r0, r0, r1
	.2byte 0x2103 @ movs r1, #3
	.2byte 0xf4f3, 0xfba0 @ bl 0x8000680
	.2byte 0xe04a @ b.n 0x830cfd8
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x7648 @ strb r0, [r1, #25]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0x2001 @ movs r0, #1
	.2byte 0xf008, 0xf869 @ bl 0x8315020
	.2byte 0x7c00 @ ldrb r0, [r0, #16]
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd10f @ bne.n 0x830cf74
	.2byte 0x6828 @ ldr r0, [r5, #0]
	.2byte 0x21d8 @ movs r1, #216
	.2byte 0x0049 @ lsls r1, r1, #1
	.2byte 0x1840 @ adds r0, r0, r1
	.2byte 0x2164 @ movs r1, #100
	.2byte 0x7800 @ ldrb r0, [r0, #0]
	.2byte 0x4348 @ muls r0, r1
	.2byte 0x4903 @ ldr r1, [pc, #12]
	.2byte 0x1840 @ adds r0, r0, r1
	.2byte 0x2101 @ movs r1, #1
	.2byte 0xf4f3, 0xfb8a @ bl 0x8000680
	.2byte 0xe034 @ b.n 0x830cfd8
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x7648 @ strb r0, [r1, #25]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0x6828 @ ldr r0, [r5, #0]
	.2byte 0x23d8 @ movs r3, #216
	.2byte 0x005b @ lsls r3, r3, #1
	.2byte 0x18c0 @ adds r0, r0, r3
	.2byte 0x2164 @ movs r1, #100
	.2byte 0x7800 @ ldrb r0, [r0, #0]
	.2byte 0x4348 @ muls r0, r1
	.2byte 0x4903 @ ldr r1, [pc, #12]
	.2byte 0x1840 @ adds r0, r0, r1
	.2byte 0x2104 @ movs r1, #4
	.2byte 0xf4f3, 0xfb7a @ bl 0x8000680
	.2byte 0xe024 @ b.n 0x830cfd8
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x7648 @ strb r0, [r1, #25]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0x2002 @ movs r0, #2
	.2byte 0xf008, 0xf843 @ bl 0x8315020
	.2byte 0x7c00 @ ldrb r0, [r0, #16]
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd10f @ bne.n 0x830cfc0
	.2byte 0x6828 @ ldr r0, [r5, #0]
	.2byte 0x21d8 @ movs r1, #216
	.2byte 0x0049 @ lsls r1, r1, #1
	.2byte 0x1840 @ adds r0, r0, r1
	.2byte 0x2164 @ movs r1, #100
	.2byte 0x7800 @ ldrb r0, [r0, #0]
	.2byte 0x4348 @ muls r0, r1
	.2byte 0x4903 @ ldr r1, [pc, #12]
	.2byte 0x1840 @ adds r0, r0, r1
	.2byte 0x2102 @ movs r1, #2
	.2byte 0xf4f3, 0xfb64 @ bl 0x8000680
	.2byte 0xe00e @ b.n 0x830cfd8
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x7648 @ strb r0, [r1, #25]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0x6828 @ ldr r0, [r5, #0]
	.2byte 0x23d8 @ movs r3, #216
	.2byte 0x005b @ lsls r3, r3, #1
	.2byte 0x18c0 @ adds r0, r0, r3
	.2byte 0x2164 @ movs r1, #100
	.2byte 0x7800 @ ldrb r0, [r0, #0]
	.2byte 0x4348 @ muls r0, r1
	.2byte 0x490b @ ldr r1, [pc, #44]
	.2byte 0x1840 @ adds r0, r0, r1
	.2byte 0x2105 @ movs r1, #5
	.2byte 0xf4f3, 0xfb54 @ bl 0x8000680
	.2byte 0x4809 @ ldr r0, [pc, #36]
	.2byte 0x6800 @ ldr r0, [r0, #0]
	.2byte 0x21d8 @ movs r1, #216
	.2byte 0x0049 @ lsls r1, r1, #1
	.2byte 0x1840 @ adds r0, r0, r1
	.2byte 0x7800 @ ldrb r0, [r0, #0]
	.2byte 0xf008, 0xf81c @ bl 0x8315020
	.2byte 0x7c00 @ ldrb r0, [r0, #16]
	.2byte 0x2817 @ cmp r0, #23
	.2byte 0xd900 @ bls.n 0x830cff0
	.2byte 0xe1bc @ b.n 0x830d36a
	.2byte 0x0080 @ lsls r0, r0, #2
	.2byte 0x4904 @ ldr r1, [pc, #16]
	.2byte 0x1840 @ adds r0, r0, r1
	.2byte 0x6800 @ ldr r0, [r0, #0]
	.2byte 0x4687 @ mov pc, r0
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x7648 @ strb r0, [r1, #25]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0x756c @ strb r4, [r5, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0xbbbc @ .raw cbnz r4, 0x830d076
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x4806 @ ldr r0, [pc, #24]
	.2byte 0x6802 @ ldr r2, [r0, #0]
	.2byte 0x23d8 @ movs r3, #216
	.2byte 0x005b @ lsls r3, r3, #1
	.2byte 0x18d1 @ adds r1, r2, r3
	.2byte 0x780b @ ldrb r3, [r1, #0]
	.2byte 0x0098 @ lsls r0, r3, #2
	.2byte 0x18c0 @ adds r0, r0, r3
	.2byte 0x00c0 @ lsls r0, r0, #3
	.2byte 0x1880 @ adds r0, r0, r2
	.2byte 0x3025 @ adds r0, #37
	.2byte 0x4902 @ ldr r1, [pc, #8]
	.2byte 0xe18c @ b.n 0x830d33c
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x756c @ strb r4, [r5, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0xb8b8 @ @ <UNDEFINED> instruction: 0xb8b8
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x4806 @ ldr r0, [pc, #24]
	.2byte 0x6802 @ ldr r2, [r0, #0]
	.2byte 0x20d8 @ movs r0, #216
	.2byte 0x0040 @ lsls r0, r0, #1
	.2byte 0x1811 @ adds r1, r2, r0
	.2byte 0x780b @ ldrb r3, [r1, #0]
	.2byte 0x0098 @ lsls r0, r3, #2
	.2byte 0x18c0 @ adds r0, r0, r3
	.2byte 0x00c0 @ lsls r0, r0, #3
	.2byte 0x1880 @ adds r0, r0, r2
	.2byte 0x3025 @ adds r0, #37
	.2byte 0x4902 @ ldr r1, [pc, #8]
	.2byte 0xe17a @ b.n 0x830d33c
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x756c @ strb r4, [r5, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0xb8cc @ @ <UNDEFINED> instruction: 0xb8cc
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x4806 @ ldr r0, [pc, #24]
	.2byte 0x6802 @ ldr r2, [r0, #0]
	.2byte 0x20d8 @ movs r0, #216
	.2byte 0x0040 @ lsls r0, r0, #1
	.2byte 0x1811 @ adds r1, r2, r0
	.2byte 0x780b @ ldrb r3, [r1, #0]
	.2byte 0x0098 @ lsls r0, r3, #2
	.2byte 0x18c0 @ adds r0, r0, r3
	.2byte 0x00c0 @ lsls r0, r0, #3
	.2byte 0x1880 @ adds r0, r0, r2
	.2byte 0x3025 @ adds r0, #37
	.2byte 0x4902 @ ldr r1, [pc, #8]
	.2byte 0xe168 @ b.n 0x830d33c
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x756c @ strb r4, [r5, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0xb8e0 @ @ <UNDEFINED> instruction: 0xb8e0
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x4806 @ ldr r0, [pc, #24]
	.2byte 0x6802 @ ldr r2, [r0, #0]
	.2byte 0x20d8 @ movs r0, #216
	.2byte 0x0040 @ lsls r0, r0, #1
	.2byte 0x1811 @ adds r1, r2, r0
	.2byte 0x780b @ ldrb r3, [r1, #0]
	.2byte 0x0098 @ lsls r0, r3, #2
	.2byte 0x18c0 @ adds r0, r0, r3
	.2byte 0x00c0 @ lsls r0, r0, #3
	.2byte 0x1880 @ adds r0, r0, r2
	.2byte 0x3025 @ adds r0, #37
	.2byte 0x4902 @ ldr r1, [pc, #8]
	.2byte 0xe156 @ b.n 0x830d33c
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x756c @ strb r4, [r5, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0xb8f4 @ @ <UNDEFINED> instruction: 0xb8f4
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x4806 @ ldr r0, [pc, #24]
	.2byte 0x6802 @ ldr r2, [r0, #0]
	.2byte 0x20d8 @ movs r0, #216
	.2byte 0x0040 @ lsls r0, r0, #1
	.2byte 0x1811 @ adds r1, r2, r0
	.2byte 0x780b @ ldrb r3, [r1, #0]
	.2byte 0x0098 @ lsls r0, r3, #2
	.2byte 0x18c0 @ adds r0, r0, r3
	.2byte 0x00c0 @ lsls r0, r0, #3
	.2byte 0x1880 @ adds r0, r0, r2
	.2byte 0x3025 @ adds r0, #37
	.2byte 0x4902 @ ldr r1, [pc, #8]
	.2byte 0xe144 @ b.n 0x830d33c
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x756c @ strb r4, [r5, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0xb908 @ .raw cbnz r0, 0x830d0be
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x4806 @ ldr r0, [pc, #24]
	.2byte 0x6802 @ ldr r2, [r0, #0]
	.2byte 0x20d8 @ movs r0, #216
	.2byte 0x0040 @ lsls r0, r0, #1
	.2byte 0x1811 @ adds r1, r2, r0
	.2byte 0x780b @ ldrb r3, [r1, #0]
	.2byte 0x0098 @ lsls r0, r3, #2
	.2byte 0x18c0 @ adds r0, r0, r3
	.2byte 0x00c0 @ lsls r0, r0, #3
	.2byte 0x1880 @ adds r0, r0, r2
	.2byte 0x3025 @ adds r0, #37
	.2byte 0x4902 @ ldr r1, [pc, #8]
	.2byte 0xe132 @ b.n 0x830d33c
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x756c @ strb r4, [r5, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0xb91c @ .raw cbnz r4, 0x830d0e6
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x4806 @ ldr r0, [pc, #24]
	.2byte 0x6802 @ ldr r2, [r0, #0]
	.2byte 0x20d8 @ movs r0, #216
	.2byte 0x0040 @ lsls r0, r0, #1
	.2byte 0x1811 @ adds r1, r2, r0
	.2byte 0x780b @ ldrb r3, [r1, #0]
	.2byte 0x0098 @ lsls r0, r3, #2
	.2byte 0x18c0 @ adds r0, r0, r3
	.2byte 0x00c0 @ lsls r0, r0, #3
	.2byte 0x1880 @ adds r0, r0, r2
	.2byte 0x3025 @ adds r0, #37
	.2byte 0x4902 @ ldr r1, [pc, #8]
	.2byte 0xe120 @ b.n 0x830d33c
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x756c @ strb r4, [r5, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0xb930 @ .raw cbnz r0, 0x830d110
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x4806 @ ldr r0, [pc, #24]
	.2byte 0x6802 @ ldr r2, [r0, #0]
	.2byte 0x20d8 @ movs r0, #216
	.2byte 0x0040 @ lsls r0, r0, #1
	.2byte 0x1811 @ adds r1, r2, r0
	.2byte 0x780b @ ldrb r3, [r1, #0]
	.2byte 0x0098 @ lsls r0, r3, #2
	.2byte 0x18c0 @ adds r0, r0, r3
	.2byte 0x00c0 @ lsls r0, r0, #3
	.2byte 0x1880 @ adds r0, r0, r2
	.2byte 0x3025 @ adds r0, #37
	.2byte 0x4902 @ ldr r1, [pc, #8]
	.2byte 0xe10e @ b.n 0x830d33c
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x756c @ strb r4, [r5, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0xb944 @ .raw cbnz r4, 0x830d138
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x4806 @ ldr r0, [pc, #24]
	.2byte 0x6802 @ ldr r2, [r0, #0]
	.2byte 0x20d8 @ movs r0, #216
	.2byte 0x0040 @ lsls r0, r0, #1
	.2byte 0x1811 @ adds r1, r2, r0
	.2byte 0x780b @ ldrb r3, [r1, #0]
	.2byte 0x0098 @ lsls r0, r3, #2
	.2byte 0x18c0 @ adds r0, r0, r3
	.2byte 0x00c0 @ lsls r0, r0, #3
	.2byte 0x1880 @ adds r0, r0, r2
	.2byte 0x3025 @ adds r0, #37
	.2byte 0x4902 @ ldr r1, [pc, #8]
	.2byte 0xe0fc @ b.n 0x830d33c
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x756c @ strb r4, [r5, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0xb958 @ .raw cbnz r0, 0x830d162
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x4806 @ ldr r0, [pc, #24]
	.2byte 0x6802 @ ldr r2, [r0, #0]
	.2byte 0x20d8 @ movs r0, #216
	.2byte 0x0040 @ lsls r0, r0, #1
	.2byte 0x1811 @ adds r1, r2, r0
	.2byte 0x780b @ ldrb r3, [r1, #0]
	.2byte 0x0098 @ lsls r0, r3, #2
	.2byte 0x18c0 @ adds r0, r0, r3
	.2byte 0x00c0 @ lsls r0, r0, #3
	.2byte 0x1880 @ adds r0, r0, r2
	.2byte 0x3025 @ adds r0, #37
	.2byte 0x4902 @ ldr r1, [pc, #8]
	.2byte 0xe0ea @ b.n 0x830d33c
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x756c @ strb r4, [r5, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0xb96c @ .raw cbnz r4, 0x830d18a
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x4806 @ ldr r0, [pc, #24]
	.2byte 0x6802 @ ldr r2, [r0, #0]
	.2byte 0x20d8 @ movs r0, #216
	.2byte 0x0040 @ lsls r0, r0, #1
	.2byte 0x1811 @ adds r1, r2, r0
	.2byte 0x780b @ ldrb r3, [r1, #0]
	.2byte 0x0098 @ lsls r0, r3, #2
	.2byte 0x18c0 @ adds r0, r0, r3
	.2byte 0x00c0 @ lsls r0, r0, #3
	.2byte 0x1880 @ adds r0, r0, r2
	.2byte 0x3025 @ adds r0, #37
	.2byte 0x4902 @ ldr r1, [pc, #8]
	.2byte 0xe0d8 @ b.n 0x830d33c
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x756c @ strb r4, [r5, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0xb980 @ .raw cbnz r0, 0x830d1b4
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x4806 @ ldr r0, [pc, #24]
	.2byte 0x6802 @ ldr r2, [r0, #0]
	.2byte 0x20d8 @ movs r0, #216
	.2byte 0x0040 @ lsls r0, r0, #1
	.2byte 0x1811 @ adds r1, r2, r0
	.2byte 0x780b @ ldrb r3, [r1, #0]
	.2byte 0x0098 @ lsls r0, r3, #2
	.2byte 0x18c0 @ adds r0, r0, r3
	.2byte 0x00c0 @ lsls r0, r0, #3
	.2byte 0x1880 @ adds r0, r0, r2
	.2byte 0x3025 @ adds r0, #37
	.2byte 0x4902 @ ldr r1, [pc, #8]
	.2byte 0xe0c6 @ b.n 0x830d33c
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x756c @ strb r4, [r5, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0xb994 @ .raw cbnz r4, 0x830d1dc
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x4806 @ ldr r0, [pc, #24]
	.2byte 0x6802 @ ldr r2, [r0, #0]
	.2byte 0x20d8 @ movs r0, #216
	.2byte 0x0040 @ lsls r0, r0, #1
	.2byte 0x1811 @ adds r1, r2, r0
	.2byte 0x780b @ ldrb r3, [r1, #0]
	.2byte 0x0098 @ lsls r0, r3, #2
	.2byte 0x18c0 @ adds r0, r0, r3
	.2byte 0x00c0 @ lsls r0, r0, #3
	.2byte 0x1880 @ adds r0, r0, r2
	.2byte 0x3025 @ adds r0, #37
	.2byte 0x4902 @ ldr r1, [pc, #8]
	.2byte 0xe0b4 @ b.n 0x830d33c
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x756c @ strb r4, [r5, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0xb9a8 @ .raw cbnz r0, 0x830d206
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x4806 @ ldr r0, [pc, #24]
	.2byte 0x6802 @ ldr r2, [r0, #0]
	.2byte 0x20d8 @ movs r0, #216
	.2byte 0x0040 @ lsls r0, r0, #1
	.2byte 0x1811 @ adds r1, r2, r0
	.2byte 0x780b @ ldrb r3, [r1, #0]
	.2byte 0x0098 @ lsls r0, r3, #2
	.2byte 0x18c0 @ adds r0, r0, r3
	.2byte 0x00c0 @ lsls r0, r0, #3
	.2byte 0x1880 @ adds r0, r0, r2
	.2byte 0x3025 @ adds r0, #37
	.2byte 0x4902 @ ldr r1, [pc, #8]
	.2byte 0xe0a2 @ b.n 0x830d33c
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x756c @ strb r4, [r5, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0xb9bc @ .raw cbnz r4, 0x830d22e
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x4807 @ ldr r0, [pc, #28]
	.2byte 0x6802 @ ldr r2, [r0, #0]
	.2byte 0x20d8 @ movs r0, #216
	.2byte 0x0040 @ lsls r0, r0, #1
	.2byte 0x1811 @ adds r1, r2, r0
	.2byte 0x780b @ ldrb r3, [r1, #0]
	.2byte 0x0098 @ lsls r0, r3, #2
	.2byte 0x18c0 @ adds r0, r0, r3
	.2byte 0x00c0 @ lsls r0, r0, #3
	.2byte 0x1880 @ adds r0, r0, r2
	.2byte 0x3025 @ adds r0, #37
	.2byte 0x4903 @ ldr r1, [pc, #12]
	.2byte 0x220b @ movs r2, #11
	.2byte 0xf00d, 0xf9a9 @ bl 0x831a570
	.2byte 0xe0a4 @ b.n 0x830d36a
	.2byte 0x756c @ strb r4, [r5, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0xbbb0 @ .raw cbnz r0, 0x830d294
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x4806 @ ldr r0, [pc, #24]
	.2byte 0x6802 @ ldr r2, [r0, #0]
	.2byte 0x20d8 @ movs r0, #216
	.2byte 0x0040 @ lsls r0, r0, #1
	.2byte 0x1811 @ adds r1, r2, r0
	.2byte 0x780b @ ldrb r3, [r1, #0]
	.2byte 0x0098 @ lsls r0, r3, #2
	.2byte 0x18c0 @ adds r0, r0, r3
	.2byte 0x00c0 @ lsls r0, r0, #3
	.2byte 0x1880 @ adds r0, r0, r2
	.2byte 0x3025 @ adds r0, #37
	.2byte 0x4902 @ ldr r1, [pc, #8]
	.2byte 0xe07c @ b.n 0x830d33c
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x756c @ strb r4, [r5, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0xb9e4 @ .raw cbnz r4, 0x830d284
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x4806 @ ldr r0, [pc, #24]
	.2byte 0x6802 @ ldr r2, [r0, #0]
	.2byte 0x20d8 @ movs r0, #216
	.2byte 0x0040 @ lsls r0, r0, #1
	.2byte 0x1811 @ adds r1, r2, r0
	.2byte 0x780b @ ldrb r3, [r1, #0]
	.2byte 0x0098 @ lsls r0, r3, #2
	.2byte 0x18c0 @ adds r0, r0, r3
	.2byte 0x00c0 @ lsls r0, r0, #3
	.2byte 0x1880 @ adds r0, r0, r2
	.2byte 0x3025 @ adds r0, #37
	.2byte 0x4902 @ ldr r1, [pc, #8]
	.2byte 0xe06a @ b.n 0x830d33c
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x756c @ strb r4, [r5, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0xb9f8 @ .raw cbnz r0, 0x830d2ae
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x4806 @ ldr r0, [pc, #24]
	.2byte 0x6802 @ ldr r2, [r0, #0]
	.2byte 0x20d8 @ movs r0, #216
	.2byte 0x0040 @ lsls r0, r0, #1
	.2byte 0x1811 @ adds r1, r2, r0
	.2byte 0x780b @ ldrb r3, [r1, #0]
	.2byte 0x0098 @ lsls r0, r3, #2
	.2byte 0x18c0 @ adds r0, r0, r3
	.2byte 0x00c0 @ lsls r0, r0, #3
	.2byte 0x1880 @ adds r0, r0, r2
	.2byte 0x3025 @ adds r0, #37
	.2byte 0x4902 @ ldr r1, [pc, #8]
	.2byte 0xe058 @ b.n 0x830d33c
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x756c @ strb r4, [r5, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0xba0c @ .raw rev r4, r1
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x4806 @ ldr r0, [pc, #24]
	.2byte 0x6802 @ ldr r2, [r0, #0]
	.2byte 0x20d8 @ movs r0, #216
	.2byte 0x0040 @ lsls r0, r0, #1
	.2byte 0x1811 @ adds r1, r2, r0
	.2byte 0x780b @ ldrb r3, [r1, #0]
	.2byte 0x0098 @ lsls r0, r3, #2
	.2byte 0x18c0 @ adds r0, r0, r3
	.2byte 0x00c0 @ lsls r0, r0, #3
	.2byte 0x1880 @ adds r0, r0, r2
	.2byte 0x3025 @ adds r0, #37
	.2byte 0x4902 @ ldr r1, [pc, #8]
	.2byte 0xe046 @ b.n 0x830d33c
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x756c @ strb r4, [r5, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0xba20 @ .raw rev r0, r4
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x4806 @ ldr r0, [pc, #24]
	.2byte 0x6802 @ ldr r2, [r0, #0]
	.2byte 0x20d8 @ movs r0, #216
	.2byte 0x0040 @ lsls r0, r0, #1
	.2byte 0x1811 @ adds r1, r2, r0
	.2byte 0x780b @ ldrb r3, [r1, #0]
	.2byte 0x0098 @ lsls r0, r3, #2
	.2byte 0x18c0 @ adds r0, r0, r3
	.2byte 0x00c0 @ lsls r0, r0, #3
	.2byte 0x1880 @ adds r0, r0, r2
	.2byte 0x3025 @ adds r0, #37
	.2byte 0x4902 @ ldr r1, [pc, #8]
	.2byte 0xe034 @ b.n 0x830d33c
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x756c @ strb r4, [r5, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0xb96c @ .raw cbnz r4, 0x830d2f6
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x4806 @ ldr r0, [pc, #24]
	.2byte 0x6802 @ ldr r2, [r0, #0]
	.2byte 0x20d8 @ movs r0, #216
	.2byte 0x0040 @ lsls r0, r0, #1
	.2byte 0x1811 @ adds r1, r2, r0
	.2byte 0x780b @ ldrb r3, [r1, #0]
	.2byte 0x0098 @ lsls r0, r3, #2
	.2byte 0x18c0 @ adds r0, r0, r3
	.2byte 0x00c0 @ lsls r0, r0, #3
	.2byte 0x1880 @ adds r0, r0, r2
	.2byte 0x3025 @ adds r0, #37
	.2byte 0x4902 @ ldr r1, [pc, #8]
	.2byte 0xe022 @ b.n 0x830d33c
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x756c @ strb r4, [r5, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0xba34 @ .raw rev r4, r6
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x4806 @ ldr r0, [pc, #24]
	.2byte 0x6802 @ ldr r2, [r0, #0]
	.2byte 0x20d8 @ movs r0, #216
	.2byte 0x0040 @ lsls r0, r0, #1
	.2byte 0x1811 @ adds r1, r2, r0
	.2byte 0x780b @ ldrb r3, [r1, #0]
	.2byte 0x0098 @ lsls r0, r3, #2
	.2byte 0x18c0 @ adds r0, r0, r3
	.2byte 0x00c0 @ lsls r0, r0, #3
	.2byte 0x1880 @ adds r0, r0, r2
	.2byte 0x3025 @ adds r0, #37
	.2byte 0x4902 @ ldr r1, [pc, #8]
	.2byte 0xe010 @ b.n 0x830d33c
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x756c @ strb r4, [r5, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0xba48 @ .raw rev16 r0, r1
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x4807 @ ldr r0, [pc, #28]
	.2byte 0x6802 @ ldr r2, [r0, #0]
	.2byte 0x20d8 @ movs r0, #216
	.2byte 0x0040 @ lsls r0, r0, #1
	.2byte 0x1811 @ adds r1, r2, r0
	.2byte 0x780b @ ldrb r3, [r1, #0]
	.2byte 0x0098 @ lsls r0, r3, #2
	.2byte 0x18c0 @ adds r0, r0, r3
	.2byte 0x00c0 @ lsls r0, r0, #3
	.2byte 0x1880 @ adds r0, r0, r2
	.2byte 0x3025 @ adds r0, #37
	.2byte 0x4903 @ ldr r1, [pc, #12]
	.2byte 0x2212 @ movs r2, #18
	.2byte 0xf00d, 0xf917 @ bl 0x831a570
	.2byte 0xe012 @ b.n 0x830d36a
	.2byte 0x756c @ strb r4, [r5, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0xba5c @ .raw rev16 r4, r3
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x4808 @ ldr r0, [pc, #32]
	.2byte 0x6802 @ ldr r2, [r0, #0]
	.2byte 0x20d8 @ movs r0, #216
	.2byte 0x0040 @ lsls r0, r0, #1
	.2byte 0x1811 @ adds r1, r2, r0
	.2byte 0x780b @ ldrb r3, [r1, #0]
	.2byte 0x0098 @ lsls r0, r3, #2
	.2byte 0x18c0 @ adds r0, r0, r3
	.2byte 0x00c0 @ lsls r0, r0, #3
	.2byte 0x1880 @ adds r0, r0, r2
	.2byte 0x3025 @ adds r0, #37
	.2byte 0x4904 @ ldr r1, [pc, #16]
	.2byte 0x2212 @ movs r2, #18
	.2byte 0xf00d, 0xf903 @ bl 0x831a570
	.2byte 0xbc30 @ pop {r4, r5}
	.2byte 0xbc01 @ pop {r0}
	.2byte 0x4700 @ bx r0
	.4byte 0x0200756C
	.4byte 0x083DBA70
