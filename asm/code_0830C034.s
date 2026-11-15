	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_0830C034
	.thumb_func
sub_0830C034:
	.2byte 0xb510 @ push {r4, lr}
	.2byte 0x4919 @ ldr r1, [pc, #100]
	.2byte 0x2020 @ movs r0, #32
	.2byte 0x8809 @ ldrh r1, [r1, #0]
	.2byte 0x4008 @ ands r0, r1
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd008 @ beq.n 0x830c054
	.2byte 0x2004 @ movs r0, #4
	.2byte 0xf00c, 0xfcc4 @ bl 0x83189d0
	.2byte 0x4915 @ ldr r1, [pc, #84]
	.2byte 0x7808 @ ldrb r0, [r1, #0]
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd001 @ beq.n 0x830c054
	.2byte 0x3801 @ subs r0, #1
	.2byte 0x7008 @ strb r0, [r1, #0]
	.2byte 0x4911 @ ldr r1, [pc, #68]
	.2byte 0x2010 @ movs r0, #16
	.2byte 0x8809 @ ldrh r1, [r1, #0]
	.2byte 0x4008 @ ands r0, r1
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd008 @ beq.n 0x830c072
	.2byte 0x2004 @ movs r0, #4
	.2byte 0xf00c, 0xfcb5 @ bl 0x83189d0
	.2byte 0x490e @ ldr r1, [pc, #56]
	.2byte 0x7808 @ ldrb r0, [r1, #0]
	.2byte 0x2816 @ cmp r0, #22
	.2byte 0xd801 @ bhi.n 0x830c072
	.2byte 0x3001 @ adds r0, #1
	.2byte 0x7008 @ strb r0, [r1, #0]
	.2byte 0x490a @ ldr r1, [pc, #40]
	.2byte 0x2001 @ movs r0, #1
	.2byte 0x8809 @ ldrh r1, [r1, #0]
	.2byte 0x4008 @ ands r0, r1
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd062 @ beq.n 0x830c144
	.2byte 0x202b @ movs r0, #43
	.2byte 0xf00c, 0xfca6 @ bl 0x83189d0
	.2byte 0xf4f5, 0xffe8 @ bl 0x8002058
	.2byte 0x4806 @ ldr r0, [pc, #24]
	.2byte 0x7800 @ ldrb r0, [r0, #0]
	.2byte 0x2802 @ cmp r0, #2
	.2byte 0xd017 @ beq.n 0x830c0c0
	.2byte 0x2802 @ cmp r0, #2
	.2byte 0xdc09 @ bgt.n 0x830c0a8
	.2byte 0x2801 @ cmp r0, #1
	.2byte 0xd00a @ beq.n 0x830c0ae
	.2byte 0xe02b @ b.n 0x830c0f2
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x0d12 @ lsrs r2, r2, #20
	.2byte 0x0300 @ lsls r0, r0, #12
	.2byte 0x7558 @ strb r0, [r3, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0x7561 @ strb r1, [r4, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0x2803 @ cmp r0, #3
	.2byte 0xd012 @ beq.n 0x830c0d2
	.2byte 0xe021 @ b.n 0x830c0f2
	.2byte 0x2001 @ movs r0, #1
	.2byte 0x2102 @ movs r1, #2
	.2byte 0xf4f5, 0xffa3 @ bl 0x8001ffc
	.2byte 0x2002 @ movs r0, #2
	.2byte 0x2101 @ movs r1, #1
	.2byte 0xf4f5, 0xff9f @ bl 0x8001ffc
	.2byte 0xe018 @ b.n 0x830c0f2
	.2byte 0x2008 @ movs r0, #8
	.2byte 0x2104 @ movs r1, #4
	.2byte 0xf4f5, 0xff9a @ bl 0x8001ffc
	.2byte 0x2004 @ movs r0, #4
	.2byte 0x2108 @ movs r1, #8
	.2byte 0xf4f5, 0xff96 @ bl 0x8001ffc
	.2byte 0xe00f @ b.n 0x830c0f2
	.2byte 0x2001 @ movs r0, #1
	.2byte 0x2102 @ movs r1, #2
	.2byte 0xf4f5, 0xff91 @ bl 0x8001ffc
	.2byte 0x2002 @ movs r0, #2
	.2byte 0x2101 @ movs r1, #1
	.2byte 0xf4f5, 0xff8d @ bl 0x8001ffc
	.2byte 0x2008 @ movs r0, #8
	.2byte 0x2104 @ movs r1, #4
	.2byte 0xf4f5, 0xff89 @ bl 0x8001ffc
	.2byte 0x2004 @ movs r0, #4
	.2byte 0x2108 @ movs r1, #8
	.2byte 0xf4f5, 0xff85 @ bl 0x8001ffc
	.2byte 0x2001 @ movs r0, #1
	.2byte 0x21c0 @ movs r1, #192
	.2byte 0x221e @ movs r2, #30
	.2byte 0xf00a, 0xff0a @ bl 0x8316f10
	.2byte 0xe001 @ b.n 0x830c102
	.2byte 0xf00e, 0xfa25 @ bl 0x831a54c
	.2byte 0xf00a, 0xff25 @ bl 0x8316f50
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd1f9 @ bne.n 0x830c0fe
	.2byte 0x4909 @ ldr r1, [pc, #36]
	.2byte 0x2004 @ movs r0, #4
	.2byte 0x7008 @ strb r0, [r1, #0]
	.2byte 0x4808 @ ldr r0, [pc, #32]
	.2byte 0x7800 @ ldrb r0, [r0, #0]
	.2byte 0xf006, 0xf940 @ bl 0x8312398
	.2byte 0x4807 @ ldr r0, [pc, #28]
	.2byte 0x4908 @ ldr r1, [pc, #32]
	.2byte 0x6001 @ str r1, [r0, #0]
	.2byte 0x4808 @ ldr r0, [pc, #32]
	.2byte 0x6001 @ str r1, [r0, #0]
	.2byte 0xf7fe, 0xfa89 @ bl 0x830a638
	.2byte 0xf7fd, 0xffa1 @ bl 0x830a06c
	.2byte 0xf7fe, 0xf943 @ bl 0x830a3b4
	.2byte 0xe1dd @ b.n 0x830c4ec
	.2byte 0x755c @ strb r4, [r3, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0x7558 @ strb r0, [r3, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0x7570 @ strb r0, [r6, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0x5c00 @ ldrb r0, [r0, r0]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0x756c @ strb r4, [r5, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0x480d @ ldr r0, [pc, #52]
	.2byte 0x6801 @ ldr r1, [r0, #0]
	.2byte 0x20d8 @ movs r0, #216
	.2byte 0x0040 @ lsls r0, r0, #1
	.2byte 0x180a @ adds r2, r1, r0
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
	.2byte 0xf4f8, 0xfc37 @ bl 0x80049d4
	.2byte 0x4806 @ ldr r0, [pc, #24]
	.2byte 0x7800 @ ldrb r0, [r0, #0]
	.2byte 0x2817 @ cmp r0, #23
	.2byte 0xd900 @ bls.n 0x830c170
	.2byte 0xe1bd @ b.n 0x830c4ec
	.2byte 0x0080 @ lsls r0, r0, #2
	.2byte 0x4904 @ ldr r1, [pc, #16]
	.2byte 0x1840 @ adds r0, r0, r1
	.2byte 0x6800 @ ldr r0, [r0, #0]
	.2byte 0x4687 @ mov pc, r0
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x756c @ strb r4, [r5, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0x7558 @ strb r0, [r3, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0xb820 @ @ <UNDEFINED> instruction: 0xb820
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x4806 @ ldr r0, [pc, #24]
	.2byte 0x6802 @ ldr r2, [r0, #0]
	.2byte 0x24d8 @ movs r4, #216
	.2byte 0x0064 @ lsls r4, r4, #1
	.2byte 0x1910 @ adds r0, r2, r4
	.2byte 0x7803 @ ldrb r3, [r0, #0]
	.2byte 0x0099 @ lsls r1, r3, #2
	.2byte 0x18c9 @ adds r1, r1, r3
	.2byte 0x00c9 @ lsls r1, r1, #3
	.2byte 0x1889 @ adds r1, r1, r2
	.2byte 0x3120 @ adds r1, #32
	.2byte 0x4802 @ ldr r0, [pc, #8]
	.2byte 0xe19c @ b.n 0x830c4dc
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x756c @ strb r4, [r5, #21]
	.2byte 0x0200 @ lsls r0, r0, #8

	.thumb
	.align 1, 0
	.global sub_0830C1A8
	.thumb_func
sub_0830C1A8:
	push {r2, r3, r4, r7, lr}
	lsrs r5, r7, #32
	ldr r0, [pc, #24]
	ldr r2, [r0, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #8]
	.2byte 0xe18a @ b.n 0x830c4dc
	.2byte 0x0000
	.4byte 0x0200756C

	.thumb
	.align 1, 0
	.global sub_0830C1CC
	.thumb_func
sub_0830C1CC:
	push {r3, r4, r5, r7, lr}
	lsrs r5, r7, #32
	ldr r0, [pc, #24]
	ldr r2, [r0, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #8]
	.2byte 0xe178 @ b.n 0x830c4dc
	.2byte 0x0000
	.4byte 0x0200756C

	.thumb
	.align 1, 0
	.global sub_0830C1F0
	.thumb_func
sub_0830C1F0:
	push {r2, r4, r6, r7, lr}
	lsrs r5, r7, #32
	ldr r0, [pc, #24]
	ldr r2, [r0, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #8]
	.2byte 0xe166 @ b.n 0x830c4dc
	.2byte 0x0000
	.4byte 0x0200756C

	.thumb
	.align 1, 0
	.global sub_0830C214
	.thumb_func
sub_0830C214:
	.2byte 0xb5f0 @ push {r4, r5, r6, r7, lr}
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x4806 @ ldr r0, [pc, #24]
	.2byte 0x6802 @ ldr r2, [r0, #0]
	.2byte 0x24d8 @ movs r4, #216
	.2byte 0x0064 @ lsls r4, r4, #1
	.2byte 0x1910 @ adds r0, r2, r4
	.2byte 0x7803 @ ldrb r3, [r0, #0]
	.2byte 0x0099 @ lsls r1, r3, #2
	.2byte 0x18c9 @ adds r1, r1, r3
	.2byte 0x00c9 @ lsls r1, r1, #3
	.2byte 0x1889 @ adds r1, r1, r2
	.2byte 0x3120 @ adds r1, #32
	.2byte 0x4802 @ ldr r0, [pc, #8]
	.2byte 0xe154 @ b.n 0x830c4dc
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x756c @ strb r4, [r5, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0xb60c @ @ <UNDEFINED> instruction: 0xb60c
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x4806 @ ldr r0, [pc, #24]
	.2byte 0x6802 @ ldr r2, [r0, #0]
	.2byte 0x24d8 @ movs r4, #216
	.2byte 0x0064 @ lsls r4, r4, #1
	.2byte 0x1910 @ adds r0, r2, r4
	.2byte 0x7803 @ ldrb r3, [r0, #0]
	.2byte 0x0099 @ lsls r1, r3, #2
	.2byte 0x18c9 @ adds r1, r1, r3
	.2byte 0x00c9 @ lsls r1, r1, #3
	.2byte 0x1889 @ adds r1, r1, r2
	.2byte 0x3120 @ adds r1, #32
	.2byte 0x4802 @ ldr r0, [pc, #8]
	.2byte 0xe142 @ b.n 0x830c4dc
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x756c @ strb r4, [r5, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0xb628 @ @ <UNDEFINED> instruction: 0xb628
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x4806 @ ldr r0, [pc, #24]
	.2byte 0x6802 @ ldr r2, [r0, #0]
	.2byte 0x24d8 @ movs r4, #216
	.2byte 0x0064 @ lsls r4, r4, #1
	.2byte 0x1910 @ adds r0, r2, r4
	.2byte 0x7803 @ ldrb r3, [r0, #0]
	.2byte 0x0099 @ lsls r1, r3, #2
	.2byte 0x18c9 @ adds r1, r1, r3
	.2byte 0x00c9 @ lsls r1, r1, #3
	.2byte 0x1889 @ adds r1, r1, r2
	.2byte 0x3120 @ adds r1, #32
	.2byte 0x4802 @ ldr r0, [pc, #8]
	.2byte 0xe130 @ b.n 0x830c4dc
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x756c @ strb r4, [r5, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0xb644 @ @ <UNDEFINED> instruction: 0xb644
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x4806 @ ldr r0, [pc, #24]
	.2byte 0x6802 @ ldr r2, [r0, #0]
	.2byte 0x24d8 @ movs r4, #216
	.2byte 0x0064 @ lsls r4, r4, #1
	.2byte 0x1910 @ adds r0, r2, r4
	.2byte 0x7803 @ ldrb r3, [r0, #0]
	.2byte 0x0099 @ lsls r1, r3, #2
	.2byte 0x18c9 @ adds r1, r1, r3
	.2byte 0x00c9 @ lsls r1, r1, #3
	.2byte 0x1889 @ adds r1, r1, r2
	.2byte 0x3120 @ adds r1, #32
	.2byte 0x4802 @ ldr r0, [pc, #8]
	.2byte 0xe11e @ b.n 0x830c4dc
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x756c @ strb r4, [r5, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0xb660 @ .raw cpsie
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x4806 @ ldr r0, [pc, #24]
	.2byte 0x6802 @ ldr r2, [r0, #0]
	.2byte 0x24d8 @ movs r4, #216
	.2byte 0x0064 @ lsls r4, r4, #1
	.2byte 0x1910 @ adds r0, r2, r4
	.2byte 0x7803 @ ldrb r3, [r0, #0]
	.2byte 0x0099 @ lsls r1, r3, #2
	.2byte 0x18c9 @ adds r1, r1, r3
	.2byte 0x00c9 @ lsls r1, r1, #3
	.2byte 0x1889 @ adds r1, r1, r2
	.2byte 0x3120 @ adds r1, #32
	.2byte 0x4802 @ ldr r0, [pc, #8]
	.2byte 0xe10c @ b.n 0x830c4dc
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x756c @ strb r4, [r5, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0xb67c @ @ <UNDEFINED> instruction: 0xb67c
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x4806 @ ldr r0, [pc, #24]
	.2byte 0x6802 @ ldr r2, [r0, #0]
	.2byte 0x24d8 @ movs r4, #216
	.2byte 0x0064 @ lsls r4, r4, #1
	.2byte 0x1910 @ adds r0, r2, r4
	.2byte 0x7803 @ ldrb r3, [r0, #0]
	.2byte 0x0099 @ lsls r1, r3, #2
	.2byte 0x18c9 @ adds r1, r1, r3
	.2byte 0x00c9 @ lsls r1, r1, #3
	.2byte 0x1889 @ adds r1, r1, r2
	.2byte 0x3120 @ adds r1, #32
	.2byte 0x4802 @ ldr r0, [pc, #8]
	.2byte 0xe0fa @ b.n 0x830c4dc
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x756c @ strb r4, [r5, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0xb698 @ @ <UNDEFINED> instruction: 0xb698
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x4806 @ ldr r0, [pc, #24]
	.2byte 0x6802 @ ldr r2, [r0, #0]
	.2byte 0x24d8 @ movs r4, #216
	.2byte 0x0064 @ lsls r4, r4, #1
	.2byte 0x1910 @ adds r0, r2, r4
	.2byte 0x7803 @ ldrb r3, [r0, #0]
	.2byte 0x0099 @ lsls r1, r3, #2
	.2byte 0x18c9 @ adds r1, r1, r3
	.2byte 0x00c9 @ lsls r1, r1, #3
	.2byte 0x1889 @ adds r1, r1, r2
	.2byte 0x3120 @ adds r1, #32
	.2byte 0x4802 @ ldr r0, [pc, #8]
	.2byte 0xe0e8 @ b.n 0x830c4dc
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x756c @ strb r4, [r5, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0xb6b4 @ @ <UNDEFINED> instruction: 0xb6b4
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x4806 @ ldr r0, [pc, #24]
	.2byte 0x6802 @ ldr r2, [r0, #0]
	.2byte 0x24d8 @ movs r4, #216
	.2byte 0x0064 @ lsls r4, r4, #1
	.2byte 0x1910 @ adds r0, r2, r4
	.2byte 0x7803 @ ldrb r3, [r0, #0]
	.2byte 0x0099 @ lsls r1, r3, #2
	.2byte 0x18c9 @ adds r1, r1, r3
	.2byte 0x00c9 @ lsls r1, r1, #3
	.2byte 0x1889 @ adds r1, r1, r2
	.2byte 0x3120 @ adds r1, #32
	.2byte 0x4802 @ ldr r0, [pc, #8]
	.2byte 0xe0d6 @ b.n 0x830c4dc
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x756c @ strb r4, [r5, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0xb6d0 @ @ <UNDEFINED> instruction: 0xb6d0
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x4806 @ ldr r0, [pc, #24]
	.2byte 0x6802 @ ldr r2, [r0, #0]
	.2byte 0x24d8 @ movs r4, #216
	.2byte 0x0064 @ lsls r4, r4, #1
	.2byte 0x1910 @ adds r0, r2, r4
	.2byte 0x7803 @ ldrb r3, [r0, #0]
	.2byte 0x0099 @ lsls r1, r3, #2
	.2byte 0x18c9 @ adds r1, r1, r3
	.2byte 0x00c9 @ lsls r1, r1, #3
	.2byte 0x1889 @ adds r1, r1, r2
	.2byte 0x3120 @ adds r1, #32
	.2byte 0x4802 @ ldr r0, [pc, #8]
	.2byte 0xe0c4 @ b.n 0x830c4dc
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x756c @ strb r4, [r5, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0xb6ec @ @ <UNDEFINED> instruction: 0xb6ec
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x4806 @ ldr r0, [pc, #24]
	.2byte 0x6802 @ ldr r2, [r0, #0]
	.2byte 0x24d8 @ movs r4, #216
	.2byte 0x0064 @ lsls r4, r4, #1
	.2byte 0x1910 @ adds r0, r2, r4
	.2byte 0x7803 @ ldrb r3, [r0, #0]
	.2byte 0x0099 @ lsls r1, r3, #2
	.2byte 0x18c9 @ adds r1, r1, r3
	.2byte 0x00c9 @ lsls r1, r1, #3
	.2byte 0x1889 @ adds r1, r1, r2
	.2byte 0x3120 @ adds r1, #32
	.2byte 0x4802 @ ldr r0, [pc, #8]
	.2byte 0xe0b2 @ b.n 0x830c4dc
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x756c @ strb r4, [r5, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0xb708 @ @ <UNDEFINED> instruction: 0xb708
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x4806 @ ldr r0, [pc, #24]
	.2byte 0x6802 @ ldr r2, [r0, #0]
	.2byte 0x24d8 @ movs r4, #216
	.2byte 0x0064 @ lsls r4, r4, #1
	.2byte 0x1910 @ adds r0, r2, r4
	.2byte 0x7803 @ ldrb r3, [r0, #0]
	.2byte 0x0099 @ lsls r1, r3, #2
	.2byte 0x18c9 @ adds r1, r1, r3
	.2byte 0x00c9 @ lsls r1, r1, #3
	.2byte 0x1889 @ adds r1, r1, r2
	.2byte 0x3120 @ adds r1, #32
	.2byte 0x4802 @ ldr r0, [pc, #8]
	.2byte 0xe0a0 @ b.n 0x830c4dc
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x756c @ strb r4, [r5, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0xb724 @ @ <UNDEFINED> instruction: 0xb724
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x4806 @ ldr r0, [pc, #24]
	.2byte 0x6802 @ ldr r2, [r0, #0]
	.2byte 0x24d8 @ movs r4, #216
	.2byte 0x0064 @ lsls r4, r4, #1
	.2byte 0x1910 @ adds r0, r2, r4
	.2byte 0x7803 @ ldrb r3, [r0, #0]
	.2byte 0x0099 @ lsls r1, r3, #2
	.2byte 0x18c9 @ adds r1, r1, r3
	.2byte 0x00c9 @ lsls r1, r1, #3
	.2byte 0x1889 @ adds r1, r1, r2
	.2byte 0x3120 @ adds r1, #32
	.2byte 0x4802 @ ldr r0, [pc, #8]
	.2byte 0xe08e @ b.n 0x830c4dc
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x756c @ strb r4, [r5, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0xb740 @ @ <UNDEFINED> instruction: 0xb740
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x4806 @ ldr r0, [pc, #24]
	.2byte 0x6802 @ ldr r2, [r0, #0]
	.2byte 0x24d8 @ movs r4, #216
	.2byte 0x0064 @ lsls r4, r4, #1
	.2byte 0x1910 @ adds r0, r2, r4
	.2byte 0x7803 @ ldrb r3, [r0, #0]
	.2byte 0x0099 @ lsls r1, r3, #2
	.2byte 0x18c9 @ adds r1, r1, r3
	.2byte 0x00c9 @ lsls r1, r1, #3
	.2byte 0x1889 @ adds r1, r1, r2
	.2byte 0x3120 @ adds r1, #32
	.2byte 0x4802 @ ldr r0, [pc, #8]
	.2byte 0xe07c @ b.n 0x830c4dc
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x756c @ strb r4, [r5, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0xb75c @ @ <UNDEFINED> instruction: 0xb75c
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x4806 @ ldr r0, [pc, #24]
	.2byte 0x6802 @ ldr r2, [r0, #0]
	.2byte 0x24d8 @ movs r4, #216
	.2byte 0x0064 @ lsls r4, r4, #1
	.2byte 0x1910 @ adds r0, r2, r4
	.2byte 0x7803 @ ldrb r3, [r0, #0]
	.2byte 0x0099 @ lsls r1, r3, #2
	.2byte 0x18c9 @ adds r1, r1, r3
	.2byte 0x00c9 @ lsls r1, r1, #3
	.2byte 0x1889 @ adds r1, r1, r2
	.2byte 0x3120 @ adds r1, #32
	.2byte 0x4802 @ ldr r0, [pc, #8]
	.2byte 0xe06a @ b.n 0x830c4dc
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x756c @ strb r4, [r5, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0xb778 @ @ <UNDEFINED> instruction: 0xb778
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x4806 @ ldr r0, [pc, #24]
	.2byte 0x6802 @ ldr r2, [r0, #0]
	.2byte 0x24d8 @ movs r4, #216
	.2byte 0x0064 @ lsls r4, r4, #1
	.2byte 0x1910 @ adds r0, r2, r4
	.2byte 0x7803 @ ldrb r3, [r0, #0]
	.2byte 0x0099 @ lsls r1, r3, #2
	.2byte 0x18c9 @ adds r1, r1, r3
	.2byte 0x00c9 @ lsls r1, r1, #3
	.2byte 0x1889 @ adds r1, r1, r2
	.2byte 0x3120 @ adds r1, #32
	.2byte 0x4802 @ ldr r0, [pc, #8]
	.2byte 0xe058 @ b.n 0x830c4dc
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x756c @ strb r4, [r5, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0xb794 @ @ <UNDEFINED> instruction: 0xb794
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x4806 @ ldr r0, [pc, #24]
	.2byte 0x6802 @ ldr r2, [r0, #0]
	.2byte 0x24d8 @ movs r4, #216
	.2byte 0x0064 @ lsls r4, r4, #1
	.2byte 0x1910 @ adds r0, r2, r4
	.2byte 0x7803 @ ldrb r3, [r0, #0]
	.2byte 0x0099 @ lsls r1, r3, #2
	.2byte 0x18c9 @ adds r1, r1, r3
	.2byte 0x00c9 @ lsls r1, r1, #3
	.2byte 0x1889 @ adds r1, r1, r2
	.2byte 0x3120 @ adds r1, #32
	.2byte 0x4802 @ ldr r0, [pc, #8]
	.2byte 0xe046 @ b.n 0x830c4dc
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x756c @ strb r4, [r5, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0xb698 @ @ <UNDEFINED> instruction: 0xb698
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x4806 @ ldr r0, [pc, #24]
	.2byte 0x6802 @ ldr r2, [r0, #0]
	.2byte 0x24d8 @ movs r4, #216
	.2byte 0x0064 @ lsls r4, r4, #1
	.2byte 0x1910 @ adds r0, r2, r4
	.2byte 0x7803 @ ldrb r3, [r0, #0]
	.2byte 0x0099 @ lsls r1, r3, #2
	.2byte 0x18c9 @ adds r1, r1, r3
	.2byte 0x00c9 @ lsls r1, r1, #3
	.2byte 0x1889 @ adds r1, r1, r2
	.2byte 0x3120 @ adds r1, #32
	.2byte 0x4802 @ ldr r0, [pc, #8]
	.2byte 0xe034 @ b.n 0x830c4dc
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x756c @ strb r4, [r5, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0xb7b0 @ @ <UNDEFINED> instruction: 0xb7b0
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x4806 @ ldr r0, [pc, #24]
	.2byte 0x6802 @ ldr r2, [r0, #0]
	.2byte 0x24d8 @ movs r4, #216
	.2byte 0x0064 @ lsls r4, r4, #1
	.2byte 0x1910 @ adds r0, r2, r4
	.2byte 0x7803 @ ldrb r3, [r0, #0]
	.2byte 0x0099 @ lsls r1, r3, #2
	.2byte 0x18c9 @ adds r1, r1, r3
	.2byte 0x00c9 @ lsls r1, r1, #3
	.2byte 0x1889 @ adds r1, r1, r2
	.2byte 0x3120 @ adds r1, #32
	.2byte 0x4802 @ ldr r0, [pc, #8]
	.2byte 0xe022 @ b.n 0x830c4dc
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x756c @ strb r4, [r5, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0xb7cc @ @ <UNDEFINED> instruction: 0xb7cc
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x4806 @ ldr r0, [pc, #24]
	.2byte 0x6802 @ ldr r2, [r0, #0]
	.2byte 0x24d8 @ movs r4, #216
	.2byte 0x0064 @ lsls r4, r4, #1
	.2byte 0x1910 @ adds r0, r2, r4
	.2byte 0x7803 @ ldrb r3, [r0, #0]
	.2byte 0x0099 @ lsls r1, r3, #2
	.2byte 0x18c9 @ adds r1, r1, r3
	.2byte 0x00c9 @ lsls r1, r1, #3
	.2byte 0x1889 @ adds r1, r1, r2
	.2byte 0x3120 @ adds r1, #32
	.2byte 0x4802 @ ldr r0, [pc, #8]
	.2byte 0xe010 @ b.n 0x830c4dc
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x756c @ strb r4, [r5, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0xb7e8 @ @ <UNDEFINED> instruction: 0xb7e8
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x480b @ ldr r0, [pc, #44]
	.2byte 0x6802 @ ldr r2, [r0, #0]
	.2byte 0x24d8 @ movs r4, #216
	.2byte 0x0064 @ lsls r4, r4, #1
	.2byte 0x1910 @ adds r0, r2, r4
	.2byte 0x7803 @ ldrb r3, [r0, #0]
	.2byte 0x0099 @ lsls r1, r3, #2
	.2byte 0x18c9 @ adds r1, r1, r3
	.2byte 0x00c9 @ lsls r1, r1, #3
	.2byte 0x1889 @ adds r1, r1, r2
	.2byte 0x3120 @ adds r1, #32
	.2byte 0x4807 @ ldr r0, [pc, #28]
	.2byte 0xc81c @ ldmia r0!, {r2, r3, r4}
	.2byte 0xc11c @ stmia r1!, {r2, r3, r4}
	.2byte 0xc81c @ ldmia r0!, {r2, r3, r4}
	.2byte 0xc11c @ stmia r1!, {r2, r3, r4}
	.2byte 0x8802 @ ldrh r2, [r0, #0]
	.2byte 0x800a @ strh r2, [r1, #0]
	.2byte 0x7880 @ ldrb r0, [r0, #2]
	.2byte 0x7088 @ strb r0, [r1, #2]
	.2byte 0xbc10 @ pop {r4}
	.2byte 0xbc01 @ pop {r0}
	.2byte 0x4700 @ bx r0
	.2byte 0x0000
	.4byte 0x0200756C
	.4byte 0x083DB804

	.thumb
	.align 1, 0
	.global sub_0830C4FC
	.thumb_func
sub_0830C4FC:
	.2byte 0xb510 @ push {r4, lr}
	.2byte 0x491b @ ldr r1, [pc, #108]
	.2byte 0x2020 @ movs r0, #32
	.2byte 0x8809 @ ldrh r1, [r1, #0]
	.2byte 0x4008 @ ands r0, r1
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd008 @ beq.n 0x830c51c
	.2byte 0x2004 @ movs r0, #4
	.2byte 0xf00c, 0xfa60 @ bl 0x83189d0
	.2byte 0x4917 @ ldr r1, [pc, #92]
	.2byte 0x7808 @ ldrb r0, [r1, #0]
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd001 @ beq.n 0x830c51c
	.2byte 0x3801 @ subs r0, #1
	.2byte 0x7008 @ strb r0, [r1, #0]
	.2byte 0x4913 @ ldr r1, [pc, #76]
	.2byte 0x2011 @ movs r0, #17
	.2byte 0x8809 @ ldrh r1, [r1, #0]
	.2byte 0x4008 @ ands r0, r1
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd008 @ beq.n 0x830c53a
	.2byte 0x2004 @ movs r0, #4
	.2byte 0xf00c, 0xfa51 @ bl 0x83189d0
	.2byte 0x4910 @ ldr r1, [pc, #64]
	.2byte 0x7808 @ ldrb r0, [r1, #0]
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd101 @ bne.n 0x830c53a
	.2byte 0x3001 @ adds r0, #1
	.2byte 0x7008 @ strb r0, [r1, #0]
	.2byte 0x4c0e @ ldr r4, [pc, #56]
	.2byte 0x6821 @ ldr r1, [r4, #0]
	.2byte 0x20d8 @ movs r0, #216
	.2byte 0x0040 @ lsls r0, r0, #1
	.2byte 0x180a @ adds r2, r1, r0
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
	.2byte 0xf4f8, 0xfa3c @ bl 0x80049d4
	.2byte 0x4804 @ ldr r0, [pc, #16]
	.2byte 0x7800 @ ldrb r0, [r0, #0]
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd009 @ beq.n 0x830c578
	.2byte 0x2801 @ cmp r0, #1
	.2byte 0xd015 @ beq.n 0x830c594
	.2byte 0xe025 @ b.n 0x830c5b6
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x0d12 @ lsrs r2, r2, #20
	.2byte 0x0300 @ lsls r0, r0, #12
	.2byte 0x7559 @ strb r1, [r3, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0x756c @ strb r4, [r5, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0x6822 @ ldr r2, [r4, #0]
	.2byte 0x24d8 @ movs r4, #216
	.2byte 0x0064 @ lsls r4, r4, #1
	.2byte 0x1910 @ adds r0, r2, r4
	.2byte 0x7803 @ ldrb r3, [r0, #0]
	.2byte 0x0099 @ lsls r1, r3, #2
	.2byte 0x18c9 @ adds r1, r1, r3
	.2byte 0x00c9 @ lsls r1, r1, #3
	.2byte 0x1889 @ adds r1, r1, r2
	.2byte 0x3120 @ adds r1, #32
	.2byte 0x4800 @ ldr r0, [pc, #0]
	.2byte 0xe00c @ b.n 0x830c5aa
	.2byte 0xb880 @ @ <UNDEFINED> instruction: 0xb880
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x6822 @ ldr r2, [r4, #0]
	.2byte 0x24d8 @ movs r4, #216
	.2byte 0x0064 @ lsls r4, r4, #1
	.2byte 0x1910 @ adds r0, r2, r4
	.2byte 0x7803 @ ldrb r3, [r0, #0]
	.2byte 0x0099 @ lsls r1, r3, #2
	.2byte 0x18c9 @ adds r1, r1, r3
	.2byte 0x00c9 @ lsls r1, r1, #3
	.2byte 0x1889 @ adds r1, r1, r2
	.2byte 0x3120 @ adds r1, #32
	.2byte 0x4804 @ ldr r0, [pc, #16]
	.2byte 0xc81c @ ldmia r0!, {r2, r3, r4}
	.2byte 0xc11c @ stmia r1!, {r2, r3, r4}
	.2byte 0xc81c @ ldmia r0!, {r2, r3, r4}
	.2byte 0xc11c @ stmia r1!, {r2, r3, r4}
	.2byte 0x6800 @ ldr r0, [r0, #0]
	.2byte 0x6008 @ str r0, [r1, #0]
	.2byte 0xbc10 @ pop {r4}
	.2byte 0xbc01 @ pop {r0}
	.2byte 0x4700 @ bx r0
	.4byte 0x083DB89C

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

	.thumb
	.align 1, 0
	.global sub_0830D378
	.thumb_func
sub_0830D378:
	push {r4, lr}
	ldr r1, [pc, #120]
	movs r0, #32
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L0830D398
	movs r0, #4
	bl sub_083189D0
	ldr r1, [pc, #104]
	ldrb r0, [r1, #0]
	cmp r0, #0
	beq .L0830D398
	subs r0, #1
	strb r0, [r1, #0]
.L0830D398:
	ldr r1, [pc, #88]
	movs r0, #17
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L0830D3B6
	movs r0, #4
	bl sub_083189D0
	ldr r1, [pc, #76]
	ldrb r0, [r1, #0]
	cmp r0, #9
	bhi .L0830D3B6
	adds r0, #1
	strb r0, [r1, #0]
.L0830D3B6:
	ldr r0, [pc, #68]
	ldr r1, [r0, #0]
	movs r0, #216
	lsls r0, r0, #1
	adds r2, r1, r0
	ldrb r3, [r2, #0]
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #3
	adds r1, r1, r0
	ldrh r0, [r1, #62]
	adds r1, #64
	ldrh r1, [r1, #0]
	movs r2, #25
	movs r3, #0
	bl sub_080049D4
	bl sub_083152BC
	adds r2, r0, #0
	ldr r0, [pc, #24]
	ldrb r0, [r0, #0]
	cmp r0, #10
	bls .L0830D3E8
	b .L0830D658
.L0830D3E8:
	lsls r0, r0, #2
	ldr r1, [pc, #20]
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	movs r0, r0
	lsrs r2, r2, #20
	lsls r0, r0, #12
	strb r5, [r3, #21]
	lsls r0, r0, #8
	strb r4, [r5, #21]
	lsls r0, r0, #8
	pop {r2, r3, r4, r6, r7, pc}
	lsrs r5, r7, #32
	ldr r0, [pc, #24]
	ldr r2, [r0, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #8]
	b .L0830D64C
	movs r0, r0
	strb r4, [r5, #21]
	lsls r0, r0, #8
	pop {r2, r3, r4}
	lsrs r5, r7, #32
	ldr r0, [pc, #24]
	ldr r2, [r0, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #8]
	b .L0830D64C
	movs r0, r0
	strb r4, [r5, #21]
	lsls r0, r0, #8
	pop {r3, r4, r5}
	lsrs r5, r7, #32
	ldr r0, [pc, #24]
	ldr r2, [r0, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #8]
	b .L0830D64C
	movs r0, r0
	strb r4, [r5, #21]
	lsls r0, r0, #8
	pop {r2, r4, r6}
	lsrs r5, r7, #32
	ldr r0, [pc, #24]
	ldr r2, [r0, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #8]
	b .L0830D64C
	movs r0, r0
	strb r4, [r5, #21]
	lsls r0, r0, #8
	pop {r4, r5, r6}
	lsrs r5, r7, #32
	ldrb r0, [r2, #2]
	cmp r0, #0
	beq .L0830D4BC
	ldr r0, [pc, #24]
	ldr r2, [r0, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #4]
	b .L0830D64C
	strb r4, [r5, #21]
	lsls r0, r0, #8
	pop {r2, r3, r7}
	lsrs r5, r7, #32
.L0830D4BC:
	ldr r0, [pc, #24]
	ldr r2, [r0, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #8]
	b .L0830D64C
	movs r0, r0
	strb r4, [r5, #21]
	lsls r0, r0, #8
	pop {r3, r5, r7}
	lsrs r5, r7, #32
	ldrb r0, [r2, #3]
	cmp r0, #0
	beq .L0830D508
	ldr r0, [pc, #24]
	ldr r2, [r0, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #4]
	b .L0830D64C
	strb r4, [r5, #21]
	lsls r0, r0, #8
	pop {r2, r6, r7}
	lsrs r5, r7, #32
.L0830D508:
	ldr r0, [pc, #24]
	ldr r2, [r0, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #8]
	b .L0830D64C
	movs r0, r0
	strb r4, [r5, #21]
	lsls r0, r0, #8
	pop {r5, r6, r7}
	lsrs r5, r7, #32
	ldrb r0, [r2, #4]
	cmp r0, #0
	beq .L0830D554
	ldr r0, [pc, #24]
	ldr r2, [r0, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #4]
	b .L0830D64C
	strb r4, [r5, #21]
	lsls r0, r0, #8
	pop {r2, r3, r4, r5, r6, r7}
	lsrs r5, r7, #32
.L0830D554:
	ldr r0, [pc, #24]
	ldr r2, [r0, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #8]
	b .L0830D64C
	movs r0, r0
	strb r4, [r5, #21]
	lsls r0, r0, #8
	pop {r3, r4, pc}
	lsrs r5, r7, #32
	ldr r0, [pc, #24]
	ldr r2, [r0, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #8]
	b .L0830D64C
	movs r0, r0
	strb r4, [r5, #21]
	lsls r0, r0, #8
	pop {r2, r4, r5, pc}
	lsrs r5, r7, #32
	ldr r0, [pc, #24]
	ldr r2, [r0, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #8]
	b .L0830D64C
	movs r0, r0
	strb r4, [r5, #21]
	lsls r0, r0, #8
	pop {r4, r6, pc}
	lsrs r5, r7, #32
	ldrb r0, [r2, #0]
	cmp r0, #0
	beq .L0830D5E8
	ldr r0, [pc, #24]
	ldr r2, [r0, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #4]
	b .L0830D64C
	strb r4, [r5, #21]
	lsls r0, r0, #8
	pop {r2, r3, r5, r6, pc}
	lsrs r5, r7, #32
.L0830D5E8:
	ldr r0, [pc, #24]
	ldr r2, [r0, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #8]
	b .L0830D64C
	movs r0, r0
	strb r4, [r5, #21]
	lsls r0, r0, #8
	pop {r3, r7, pc}
	lsrs r5, r7, #32
	ldrb r0, [r2, #1]
	cmp r0, #0
	beq .L0830D634
	ldr r0, [pc, #24]
	ldr r2, [r0, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #4]
	b .L0830D64C
	strb r4, [r5, #21]
	lsls r0, r0, #8
	pop {r2, r5, r7, pc}
	lsrs r5, r7, #32
.L0830D634:
	ldr r0, [pc, #40]
	ldr r2, [r0, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #24]
.L0830D64C:
	ldmia r0!, {r2, r3, r4}
	stmia r1!, {r2, r3, r4}
	ldmia r0!, {r2, r3, r4}
	stmia r1!, {r2, r3, r4}
	ldr r0, [r0, #0]
	str r0, [r1, #0]
.L0830D658:
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x0200756C
	.4byte 0x083DBDC0

	.thumb
	.align 1, 0
	.global sub_0830D668
	.thumb_func
sub_0830D668:
	push {r4, lr}
	ldr r1, [pc, #116]
	movs r0, #32
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L0830D688
	movs r0, #4
	bl sub_083189D0
	ldr r1, [pc, #100]
	ldrb r0, [r1, #0]
	cmp r0, #0
	beq .L0830D688
	subs r0, #1
	strb r0, [r1, #0]
.L0830D688:
	ldr r1, [pc, #84]
	movs r0, #17
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L0830D6A6
	movs r0, #4
	bl sub_083189D0
	ldr r1, [pc, #72]
	ldrb r0, [r1, #0]
	cmp r0, #2
	bhi .L0830D6A6
	adds r0, #1
	strb r0, [r1, #0]
.L0830D6A6:
	ldr r4, [pc, #64]
	ldr r1, [r4, #0]
	movs r0, #216
	lsls r0, r0, #1
	adds r2, r1, r0
	ldrb r3, [r2, #0]
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #3
	adds r1, r1, r0
	ldrh r0, [r1, #62]
	adds r1, #64
	ldrh r1, [r1, #0]
	movs r2, #25
	movs r3, #0
	bl sub_080049D4
	bl sub_083152BC
	adds r1, r0, #0
	ldr r0, [pc, #20]
	ldrb r0, [r0, #0]
	cmp r0, #1
	beq .L0830D714
	cmp r0, #1
	bgt .L0830D6EC
	cmp r0, #0
	beq .L0830D6F6
	b .L0830D7B6
	lsrs r2, r2, #20
	lsls r0, r0, #12
	strb r7, [r3, #21]
	lsls r0, r0, #8
	strb r4, [r5, #21]
	lsls r0, r0, #8
.L0830D6EC:
	cmp r0, #2
	beq .L0830D730
	cmp r0, #3
	beq .L0830D770
	b .L0830D7B6
.L0830D6F6:
	ldr r2, [r4, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #4]
	b .L0830D7AA
	movs r0, r0
	.2byte 0xbe08 @ .raw bkpt 0x0008
	lsrs r5, r7, #32
.L0830D714:
	ldr r2, [r4, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #0]
	b .L0830D7AA
	.2byte 0xbe24 @ .raw bkpt 0x0024
	lsrs r5, r7, #32
.L0830D730:
	ldrb r0, [r1, #0]
	cmp r0, #0
	beq .L0830D754
	ldr r2, [r4, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #4]
	b .L0830D7AA
	movs r0, r0
	.2byte 0xbe40 @ .raw bkpt 0x0040
	lsrs r5, r7, #32
.L0830D754:
	ldr r2, [r4, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #0]
	b .L0830D7AA
	.2byte 0xbe5c @ .raw bkpt 0x005c
	lsrs r5, r7, #32
.L0830D770:
	ldrb r0, [r1, #1]
	cmp r0, #0
	beq .L0830D794
	ldr r2, [r4, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #4]
	b .L0830D7AA
	movs r0, r0
	.2byte 0xbe78 @ .raw bkpt 0x0078
	lsrs r5, r7, #32
.L0830D794:
	ldr r2, [r4, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #16]
.L0830D7AA:
	ldmia r0!, {r2, r3, r4}
	stmia r1!, {r2, r3, r4}
	ldmia r0!, {r2, r3, r4}
	stmia r1!, {r2, r3, r4}
	ldr r0, [r0, #0]
	str r0, [r1, #0]
.L0830D7B6:
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x083DBE94

	.thumb
	.align 1, 0
	.global sub_0830D7C0
	.thumb_func
sub_0830D7C0:
	push {r4, lr}
	ldr r1, [pc, #108]
	movs r0, #32
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L0830D7E0
	movs r0, #4
	bl sub_083189D0
	ldr r1, [pc, #92]
	ldrb r0, [r1, #0]
	cmp r0, #0
	beq .L0830D7E0
	subs r0, #1
	strb r0, [r1, #0]
.L0830D7E0:
	ldr r1, [pc, #76]
	movs r0, #17
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L0830D7FE
	movs r0, #4
	bl sub_083189D0
	ldr r1, [pc, #64]
	ldrb r0, [r1, #0]
	cmp r0, #0
	bne .L0830D7FE
	adds r0, #1
	strb r0, [r1, #0]
.L0830D7FE:
	ldr r4, [pc, #56]
	ldr r1, [r4, #0]
	movs r0, #216
	lsls r0, r0, #1
	adds r2, r1, r0
	ldrb r3, [r2, #0]
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #3
	adds r1, r1, r0
	ldrh r0, [r1, #62]
	adds r1, #64
	ldrh r1, [r1, #0]
	movs r2, #25
	movs r3, #0
	bl sub_080049D4
	ldr r0, [pc, #16]
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq .L0830D83C
	cmp r0, #1
	beq .L0830D858
	b .L0830D87A
	movs r0, r0
	lsrs r2, r2, #20
	lsls r0, r0, #12
	strb r6, [r3, #21]
	lsls r0, r0, #8
	strb r4, [r5, #21]
	lsls r0, r0, #8
.L0830D83C:
	ldr r2, [r4, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #0]
	b .L0830D86E
	.2byte 0xbeb0 @ .raw bkpt 0x00b0
	lsrs r5, r7, #32
.L0830D858:
	ldr r2, [r4, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #16]
.L0830D86E:
	ldmia r0!, {r2, r3, r4}
	stmia r1!, {r2, r3, r4}
	ldmia r0!, {r2, r3, r4}
	stmia r1!, {r2, r3, r4}
	ldr r0, [r0, #0]
	str r0, [r1, #0]
.L0830D87A:
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x083DBECC

	.thumb
	.align 1, 0
	.global sub_0830D884
	.thumb_func
sub_0830D884:
	push {r4, lr}
	ldr r1, [pc, #108]
	movs r0, #32
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L0830D8A4
	movs r0, #4
	bl sub_083189D0
	ldr r1, [pc, #92]
	ldrb r0, [r1, #0]
	cmp r0, #0
	beq .L0830D8A4
	subs r0, #1
	strb r0, [r1, #0]
.L0830D8A4:
	ldr r1, [pc, #76]
	movs r0, #17
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L0830D8C2
	movs r0, #4
	bl sub_083189D0
	ldr r1, [pc, #64]
	ldrb r0, [r1, #0]
	cmp r0, #0
	bne .L0830D8C2
	adds r0, #1
	strb r0, [r1, #0]
.L0830D8C2:
	ldr r4, [pc, #56]
	ldr r1, [r4, #0]
	movs r0, #216
	lsls r0, r0, #1
	adds r2, r1, r0
	ldrb r3, [r2, #0]
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #3
	adds r1, r1, r0
	ldrh r0, [r1, #62]
	adds r1, #64
	ldrh r1, [r1, #0]
	movs r2, #25
	movs r3, #0
	bl sub_080049D4
	ldr r0, [pc, #16]
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq .L0830D900
	cmp r0, #1
	beq .L0830D91C
	b .L0830D93E
	movs r0, r0
	lsrs r2, r2, #20
	lsls r0, r0, #12
	strb r0, [r4, #21]
	lsls r0, r0, #8
	strb r4, [r5, #21]
	lsls r0, r0, #8
.L0830D900:
	ldr r2, [r4, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #0]
	b .L0830D932
	.2byte 0xbee8 @ .raw bkpt 0x00e8
	lsrs r5, r7, #32
.L0830D91C:
	ldr r2, [r4, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #16]
.L0830D932:
	ldmia r0!, {r2, r3, r4}
	stmia r1!, {r2, r3, r4}
	ldmia r0!, {r2, r3, r4}
	stmia r1!, {r2, r3, r4}
	ldr r0, [r0, #0]
	str r0, [r1, #0]
.L0830D93E:
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x083DBF04

	.thumb
	.align 1, 0
	.global sub_0830D948
	.thumb_func
sub_0830D948:
	.2byte 0xb510 @ pusheq {r4, lr}
	.2byte 0x491c @ ldr r1, [pc, #112]
	.2byte 0x2020 @ movs r0, #32
	.2byte 0x8809 @ ldrh r1, [r1, #0]
	.2byte 0x4008 @ ands r0, r1
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd008 @ beq.n 0x830d968
	.2byte 0x2004 @ movs r0, #4
	.2byte 0xf00b, 0xf83a @ bl 0x83189d0
	.2byte 0x4918 @ ldr r1, [pc, #96]
	.2byte 0x7808 @ ldrb r0, [r1, #0]
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd001 @ beq.n 0x830d968
	.2byte 0x3801 @ subs r0, #1
	.2byte 0x7008 @ strb r0, [r1, #0]
	.2byte 0x4914 @ ldr r1, [pc, #80]
	.2byte 0x2011 @ movs r0, #17
	.2byte 0x8809 @ ldrh r1, [r1, #0]
	.2byte 0x4008 @ ands r0, r1
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd008 @ beq.n 0x830d986
	.2byte 0x2004 @ movs r0, #4
	.2byte 0xf00b, 0xf82b @ bl 0x83189d0
	.2byte 0x4911 @ ldr r1, [pc, #68]
	.2byte 0x7808 @ ldrb r0, [r1, #0]
	.2byte 0x2802 @ cmp r0, #2
	.2byte 0xd801 @ bhi.n 0x830d986
	.2byte 0x3001 @ adds r0, #1
	.2byte 0x7008 @ strb r0, [r1, #0]
	.2byte 0x4c0f @ ldr r4, [pc, #60]
	.2byte 0x6821 @ ldr r1, [r4, #0]
	.2byte 0x20d8 @ movs r0, #216
	.2byte 0x0040 @ lsls r0, r0, #1
	.2byte 0x180a @ adds r2, r1, r0
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
	.2byte 0xf4f7, 0xf816 @ bl 0x80049d4
	.2byte 0x4805 @ ldr r0, [pc, #20]
	.2byte 0x7800 @ ldrb r0, [r0, #0]
	.2byte 0x2801 @ cmp r0, #1
	.2byte 0xd029 @ beq.n 0x830da04
	.2byte 0x2801 @ cmp r0, #1
	.2byte 0xdc09 @ bgt.n 0x830d9c8
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd00c @ beq.n 0x830d9d2
	.2byte 0xe075 @ b.n 0x830daa6
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x0d12 @ lsrs r2, r2, #20
	.2byte 0x0300 @ lsls r0, r0, #12
	.2byte 0x7561 @ strb r1, [r4, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0x756c @ strb r4, [r5, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0x2802 @ cmp r0, #2
	.2byte 0xd035 @ beq.n 0x830da38
	.2byte 0x2803 @ cmp r0, #3
	.2byte 0xd051 @ beq.n 0x830da74
	.2byte 0xe069 @ b.n 0x830daa6
	.2byte 0x6822 @ ldr r2, [r4, #0]
	.2byte 0x24d8 @ movs r4, #216
	.2byte 0x0064 @ lsls r4, r4, #1
	.2byte 0x1910 @ adds r0, r2, r4
	.2byte 0x7803 @ ldrb r3, [r0, #0]
	.2byte 0x0099 @ lsls r1, r3, #2
	.2byte 0x18c9 @ adds r1, r1, r3
	.2byte 0x00c9 @ lsls r1, r1, #3
	.2byte 0x1889 @ adds r1, r1, r2
	.2byte 0x3120 @ adds r1, #32
	.2byte 0x4805 @ ldr r0, [pc, #20]
	.2byte 0xc81c @ ldmia r0!, {r2, r3, r4}
	.2byte 0xc11c @ stmia r1!, {r2, r3, r4}
	.2byte 0xc81c @ ldmia r0!, {r2, r3, r4}
	.2byte 0xc11c @ stmia r1!, {r2, r3, r4}
	.2byte 0x6800 @ ldr r0, [r0, #0]
	.2byte 0x6008 @ str r0, [r1, #0]
	.2byte 0x4c02 @ ldr r4, [pc, #8]
	.2byte 0x1c20 @ adds r0, r4, #0
	.2byte 0x2100 @ movs r1, #0
	.2byte 0xe031 @ b.n 0x830da60
	.2byte 0xbf20 @ .raw wfe
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x75e4 @ strb r4, [r4, #23]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0x6822 @ ldr r2, [r4, #0]
	.2byte 0x24d8 @ movs r4, #216
	.2byte 0x0064 @ lsls r4, r4, #1
	.2byte 0x1910 @ adds r0, r2, r4
	.2byte 0x7803 @ ldrb r3, [r0, #0]
	.2byte 0x0099 @ lsls r1, r3, #2
	.2byte 0x18c9 @ adds r1, r1, r3
	.2byte 0x00c9 @ lsls r1, r1, #3
	.2byte 0x1889 @ adds r1, r1, r2
	.2byte 0x3120 @ adds r1, #32
	.2byte 0x4805 @ ldr r0, [pc, #20]
	.2byte 0xc81c @ ldmia r0!, {r2, r3, r4}
	.2byte 0xc11c @ stmia r1!, {r2, r3, r4}
	.2byte 0xc81c @ ldmia r0!, {r2, r3, r4}
	.2byte 0xc11c @ stmia r1!, {r2, r3, r4}
	.2byte 0x6800 @ ldr r0, [r0, #0]
	.2byte 0x6008 @ str r0, [r1, #0]
	.2byte 0x4c03 @ ldr r4, [pc, #12]
	.2byte 0x1c20 @ adds r0, r4, #0
	.2byte 0x2101 @ movs r1, #1
	.2byte 0xe018 @ b.n 0x830da60
	.2byte 0x0000 @ movs r0, r0
	.2byte 0xbf3c @ .raw itt cc
	.2byte 0x083d @ lsrcc r5, r7, #32
	.2byte 0x75e4 @ strbcc r4, [r4, #23]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0x6822 @ ldr r2, [r4, #0]
	.2byte 0x24d8 @ movs r4, #216
	.2byte 0x0064 @ lsls r4, r4, #1
	.2byte 0x1910 @ adds r0, r2, r4
	.2byte 0x7803 @ ldrb r3, [r0, #0]
	.2byte 0x0099 @ lsls r1, r3, #2
	.2byte 0x18c9 @ adds r1, r1, r3
	.2byte 0x00c9 @ lsls r1, r1, #3
	.2byte 0x1889 @ adds r1, r1, r2
	.2byte 0x3120 @ adds r1, #32
	.2byte 0x4807 @ ldr r0, [pc, #28]
	.2byte 0xc81c @ ldmia r0!, {r2, r3, r4}
	.2byte 0xc11c @ stmia r1!, {r2, r3, r4}
	.2byte 0xc81c @ ldmia r0!, {r2, r3, r4}
	.2byte 0xc11c @ stmia r1!, {r2, r3, r4}
	.2byte 0x6800 @ ldr r0, [r0, #0]
	.2byte 0x6008 @ str r0, [r1, #0]
	.2byte 0x4c05 @ ldr r4, [pc, #20]
	.2byte 0x1c20 @ adds r0, r4, #0
	.2byte 0x2102 @ movs r1, #2
	.2byte 0xf4f2, 0xfe0e @ bl 0x8000680
	.2byte 0x1c20 @ adds r0, r4, #0
	.2byte 0xf4f2, 0xfccf @ bl 0x8000408
	.2byte 0xe01c @ b.n 0x830daa6
	.2byte 0xbf58 @ .raw it pl
	.2byte 0x083d @ lsrpl r5, r7, #32
	.2byte 0x75e4 @ strb r4, [r4, #23]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0x6822 @ ldr r2, [r4, #0]
	.2byte 0x24d8 @ movs r4, #216
	.2byte 0x0064 @ lsls r4, r4, #1
	.2byte 0x1910 @ adds r0, r2, r4
	.2byte 0x7803 @ ldrb r3, [r0, #0]
	.2byte 0x0099 @ lsls r1, r3, #2
	.2byte 0x18c9 @ adds r1, r1, r3
	.2byte 0x00c9 @ lsls r1, r1, #3
	.2byte 0x1889 @ adds r1, r1, r2
	.2byte 0x3120 @ adds r1, #32
	.2byte 0x4808 @ ldr r0, [pc, #32]
	.2byte 0xc81c @ ldmia r0!, {r2, r3, r4}
	.2byte 0xc11c @ stmia r1!, {r2, r3, r4}
	.2byte 0xc81c @ ldmia r0!, {r2, r3, r4}
	.2byte 0xc11c @ stmia r1!, {r2, r3, r4}
	.2byte 0x6800 @ ldr r0, [r0, #0]
	.2byte 0x6008 @ str r0, [r1, #0]
	.2byte 0x4c06 @ ldr r4, [pc, #24]
	.2byte 0x1c20 @ adds r0, r4, #0
	.2byte 0x2103 @ movs r1, #3
	.2byte 0xf4f2, 0xfdf0 @ bl 0x8000680
	.2byte 0x1c20 @ adds r0, r4, #0
	.2byte 0xf4f2, 0xfcb1 @ bl 0x8000408
	.2byte 0xbc10 @ pop {r4}
	.2byte 0xbc01 @ pop {r0}
	.2byte 0x4700 @ bx r0
	.4byte 0x083DBF74
	.4byte 0x020075E4

	.thumb
	.align 1, 0
	.global sub_0830DAB4
	.thumb_func
sub_0830DAB4:
	.2byte 0xb510 @ push {r4, lr}
	.2byte 0x491c @ ldr r1, [pc, #112]
	.2byte 0x2020 @ movs r0, #32
	.2byte 0x8809 @ ldrh r1, [r1, #0]
	.2byte 0x4008 @ ands r0, r1
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd008 @ beq.n 0x830dad4
	.2byte 0x2004 @ movs r0, #4
	.2byte 0xf00a, 0xff84 @ bl 0x83189d0
	.2byte 0x4918 @ ldr r1, [pc, #96]
	.2byte 0x8808 @ ldrh r0, [r1, #0]
	.2byte 0x2805 @ cmp r0, #5
	.2byte 0xd901 @ bls.n 0x830dad4
	.2byte 0x3805 @ subs r0, #5
	.2byte 0x8008 @ strh r0, [r1, #0]
	.2byte 0x4914 @ ldr r1, [pc, #80]
	.2byte 0x2011 @ movs r0, #17
	.2byte 0x8809 @ ldrh r1, [r1, #0]
	.2byte 0x4008 @ ands r0, r1
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd008 @ beq.n 0x830daf2
	.2byte 0x2004 @ movs r0, #4
	.2byte 0xf00a, 0xff75 @ bl 0x83189d0
	.2byte 0x4911 @ ldr r1, [pc, #68]
	.2byte 0x8808 @ ldrh r0, [r1, #0]
	.2byte 0x2818 @ cmp r0, #24
	.2byte 0xd801 @ bhi.n 0x830daf2
	.2byte 0x3005 @ adds r0, #5
	.2byte 0x8008 @ strh r0, [r1, #0]
	.2byte 0x480f @ ldr r0, [pc, #60]
	.2byte 0x6801 @ ldr r1, [r0, #0]
	.2byte 0x20d8 @ movs r0, #216
	.2byte 0x0040 @ lsls r0, r0, #1
	.2byte 0x180a @ adds r2, r1, r0
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
	.2byte 0xf4f6, 0xff60 @ bl 0x80049d4
	.2byte 0x4805 @ ldr r0, [pc, #20]
	.2byte 0x8800 @ ldrh r0, [r0, #0]
	.2byte 0x3805 @ subs r0, #5
	.2byte 0x2814 @ cmp r0, #20
	.2byte 0xd866 @ bhi.n 0x830dbec
	.2byte 0x0080 @ lsls r0, r0, #2
	.2byte 0x4904 @ ldr r1, [pc, #16]
	.2byte 0x1840 @ adds r0, r0, r1
	.2byte 0x6800 @ ldr r0, [r0, #0]
	.2byte 0x4687 @ mov pc, r0
	.2byte 0x0d12 @ lsrs r2, r2, #20
	.2byte 0x0300 @ lsls r0, r0, #12
	.2byte 0x7564 @ strb r4, [r4, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0x756c @ strb r4, [r5, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0xc01c @ stmia r0!, {r2, r3, r4}
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x4806 @ ldr r0, [pc, #24]
	.2byte 0x6802 @ ldr r2, [r0, #0]
	.2byte 0x24d8 @ movs r4, #216
	.2byte 0x0064 @ lsls r4, r4, #1
	.2byte 0x1910 @ adds r0, r2, r4
	.2byte 0x7803 @ ldrb r3, [r0, #0]
	.2byte 0x0099 @ lsls r1, r3, #2
	.2byte 0x18c9 @ adds r1, r1, r3
	.2byte 0x00c9 @ lsls r1, r1, #3
	.2byte 0x1889 @ adds r1, r1, r2
	.2byte 0x3120 @ adds r1, #32
	.2byte 0x4802 @ ldr r0, [pc, #8]
	.2byte 0xe046 @ b.n 0x830dbe0
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x756c @ strb r4, [r5, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0xbf90 @ .raw nop {9}
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x4806 @ ldr r0, [pc, #24]
	.2byte 0x6802 @ ldr r2, [r0, #0]
	.2byte 0x24d8 @ movs r4, #216
	.2byte 0x0064 @ lsls r4, r4, #1
	.2byte 0x1910 @ adds r0, r2, r4
	.2byte 0x7803 @ ldrb r3, [r0, #0]
	.2byte 0x0099 @ lsls r1, r3, #2
	.2byte 0x18c9 @ adds r1, r1, r3
	.2byte 0x00c9 @ lsls r1, r1, #3
	.2byte 0x1889 @ adds r1, r1, r2
	.2byte 0x3120 @ adds r1, #32
	.2byte 0x4802 @ ldr r0, [pc, #8]
	.2byte 0xe034 @ b.n 0x830dbe0
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x756c @ strb r4, [r5, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0xbfac @ .raw ite ge
	.2byte 0x083d @ lsrge r5, r7, #32
	.2byte 0x4806 @ ldrlt r0, [pc, #24]
	.2byte 0x6802 @ ldr r2, [r0, #0]
	.2byte 0x24d8 @ movs r4, #216
	.2byte 0x0064 @ lsls r4, r4, #1
	.2byte 0x1910 @ adds r0, r2, r4
	.2byte 0x7803 @ ldrb r3, [r0, #0]
	.2byte 0x0099 @ lsls r1, r3, #2
	.2byte 0x18c9 @ adds r1, r1, r3
	.2byte 0x00c9 @ lsls r1, r1, #3
	.2byte 0x1889 @ adds r1, r1, r2
	.2byte 0x3120 @ adds r1, #32
	.2byte 0x4802 @ ldr r0, [pc, #8]
	.2byte 0xe022 @ b.n 0x830dbe0
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x756c @ strb r4, [r5, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0xbfc8 @ .raw it gt
	.2byte 0x083d @ lsrgt r5, r7, #32
	.2byte 0x4806 @ ldr r0, [pc, #24]
	.2byte 0x6802 @ ldr r2, [r0, #0]
	.2byte 0x24d8 @ movs r4, #216
	.2byte 0x0064 @ lsls r4, r4, #1
	.2byte 0x1910 @ adds r0, r2, r4
	.2byte 0x7803 @ ldrb r3, [r0, #0]
	.2byte 0x0099 @ lsls r1, r3, #2
	.2byte 0x18c9 @ adds r1, r1, r3
	.2byte 0x00c9 @ lsls r1, r1, #3
	.2byte 0x1889 @ adds r1, r1, r2
	.2byte 0x3120 @ adds r1, #32
	.2byte 0x4802 @ ldr r0, [pc, #8]
	.2byte 0xe010 @ b.n 0x830dbe0
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x756c @ strb r4, [r5, #21]
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0xbfe4 @ .raw itt al
	.2byte 0x083d @ lsral r5, r7, #32
	.2byte 0x480a @ ldral r0, [pc, #40]
	.2byte 0x6802 @ ldr r2, [r0, #0]
	.2byte 0x24d8 @ movs r4, #216
	.2byte 0x0064 @ lsls r4, r4, #1
	.2byte 0x1910 @ adds r0, r2, r4
	.2byte 0x7803 @ ldrb r3, [r0, #0]
	.2byte 0x0099 @ lsls r1, r3, #2
	.2byte 0x18c9 @ adds r1, r1, r3
	.2byte 0x00c9 @ lsls r1, r1, #3
	.2byte 0x1889 @ adds r1, r1, r2
	.2byte 0x3120 @ adds r1, #32
	.2byte 0x4806 @ ldr r0, [pc, #24]
	.2byte 0xc81c @ ldmia r0!, {r2, r3, r4}
	.2byte 0xc11c @ stmia r1!, {r2, r3, r4}
	.2byte 0xc81c @ ldmia r0!, {r2, r3, r4}
	.2byte 0xc11c @ stmia r1!, {r2, r3, r4}
	.2byte 0x6800 @ ldr r0, [r0, #0]
	.2byte 0x6008 @ str r0, [r1, #0]
	.2byte 0xbc10 @ pop {r4}
	.2byte 0xbc01 @ pop {r0}
	.2byte 0x4700 @ bx r0
	.2byte 0x0000
	.4byte 0x0200756C
	.4byte 0x083DC000

	.thumb
	.align 1, 0
	.global sub_0830DBFC
	.thumb_func
sub_0830DBFC:
	push {r4, lr}
	ldr r1, [pc, #220]
	movs r0, #32
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L0830DC52
	movs r0, #4
	bl sub_083189D0
	ldr r1, [pc, #204]
	ldrb r0, [r1, #0]
	cmp r0, #0
	beq .L0830DC1C
	subs r0, #1
	strb r0, [r1, #0]
.L0830DC1C:
	ldrb r0, [r1, #0]
	bl sub_08001E60
	ldr r0, [pc, #192]
	movs r1, #0
	bl sub_080012E4
	movs r4, #160
	lsls r4, r4, #19
	adds r1, r4, #0
	movs r2, #0
	movs r3, #240
	bl sub_08001EBC
	ldr r0, [pc, #172]
	ldr r0, [r0, #8]
	adds r1, r4, #0
	movs r2, #240
	movs r3, #16
	bl sub_08001EBC
	ldr r0, [pc, #164]
	ldr r1, [pc, #164]
	movs r2, #0
	movs r3, #32
	bl sub_08001EBC
.L0830DC52:
	ldr r1, [pc, #136]
	movs r0, #17
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L0830DCA6
	movs r0, #4
	bl sub_083189D0
	ldr r1, [pc, #120]
	ldrb r0, [r1, #0]
	cmp r0, #6
	bhi .L0830DC70
	adds r0, #1
	strb r0, [r1, #0]
.L0830DC70:
	ldrb r0, [r1, #0]
	bl sub_08001E60
	ldr r0, [pc, #108]
	movs r1, #0
	bl sub_080012E4
	movs r4, #160
	lsls r4, r4, #19
	adds r1, r4, #0
	movs r2, #0
	movs r3, #240
	bl sub_08001EBC
	ldr r0, [pc, #88]
	ldr r0, [r0, #8]
	adds r1, r4, #0
	movs r2, #240
	movs r3, #16
	bl sub_08001EBC
	ldr r0, [pc, #80]
	ldr r1, [pc, #80]
	movs r2, #0
	movs r3, #32
	bl sub_08001EBC
.L0830DCA6:
	ldr r0, [pc, #76]
	ldr r1, [r0, #0]
	movs r0, #216
	lsls r0, r0, #1
	adds r2, r1, r0
	ldrb r3, [r2, #0]
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #3
	adds r1, r1, r0
	ldrh r0, [r1, #62]
	adds r1, #64
	ldrh r1, [r1, #0]
	movs r2, #25
	movs r3, #0
	bl sub_080049D4
	ldr r0, [pc, #20]
	ldrb r0, [r0, #0]
	cmp r0, #7
	bls .L0830DCD2
	b .L0830DE1C
.L0830DCD2:
	lsls r0, r0, #2
	ldr r1, [pc, #32]
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	lsrs r2, r2, #20
	lsls r0, r0, #12
	strb r7, [r4, #21]
	lsls r0, r0, #8
	subs r1, #140
	lsls r0, r0, #12
	movs r0, #72
	lsrs r5, r7, #32
	strb r0, [r3, #15]
	lsls r0, r0, #8
	lsls r0, r0, #8
	lsls r0, r0, #20
	strb r4, [r5, #21]
	lsls r0, r0, #8
	stmia r1!, {r4, r6}
	lsrs r5, r7, #32
	ldr r0, [pc, #24]
	ldr r2, [r0, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #8]
	b .L0830DE10
	movs r0, r0
	strb r4, [r5, #21]
	lsls r0, r0, #8
	stmia r0!, {r4, r5, r6}
	lsrs r5, r7, #32
	ldr r0, [pc, #24]
	ldr r2, [r0, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #8]
	b .L0830DE10
	movs r0, r0
	strb r4, [r5, #21]
	lsls r0, r0, #8
	stmia r0!, {r2, r3, r7}
	lsrs r5, r7, #32
	ldr r0, [pc, #24]
	ldr r2, [r0, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #8]
	b .L0830DE10
	movs r0, r0
	strb r4, [r5, #21]
	lsls r0, r0, #8
	stmia r0!, {r3, r5, r7}
	lsrs r5, r7, #32
	ldr r0, [pc, #24]
	ldr r2, [r0, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #8]
	b .L0830DE10
	movs r0, r0
	strb r4, [r5, #21]
	lsls r0, r0, #8
	stmia r0!, {r2, r6, r7}
	lsrs r5, r7, #32
	ldr r0, [pc, #24]
	ldr r2, [r0, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #8]
	b .L0830DE10
	movs r0, r0
	strb r4, [r5, #21]
	lsls r0, r0, #8
	stmia r0!, {r5, r6, r7}
	lsrs r5, r7, #32
	ldr r0, [pc, #24]
	ldr r2, [r0, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #8]
	b .L0830DE10
	movs r0, r0
	strb r4, [r5, #21]
	lsls r0, r0, #8
	stmia r0!, {r2, r3, r4, r5, r6, r7}
	lsrs r5, r7, #32
	ldr r0, [pc, #24]
	ldr r2, [r0, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #8]
	b .L0830DE10
	movs r0, r0
	strb r4, [r5, #21]
	lsls r0, r0, #8
	stmia r1!, {r3, r4}
	lsrs r5, r7, #32
	ldr r0, [pc, #40]
	ldr r2, [r0, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #24]
.L0830DE10:
	ldmia r0!, {r2, r3, r4}
	stmia r1!, {r2, r3, r4}
	ldmia r0!, {r2, r3, r4}
	stmia r1!, {r2, r3, r4}
	ldr r0, [r0, #0]
	str r0, [r1, #0]
.L0830DE1C:
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x0200756C
	.4byte 0x083DC134

	.thumb
	.align 1, 0
	.global sub_0830DE2C
	.thumb_func
sub_0830DE2C:
	push {r4, lr}
	ldr r1, [pc, #112]
	movs r0, #32
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L0830DE4C
	movs r0, #4
	bl sub_083189D0
	ldr r1, [pc, #96]
	ldrb r0, [r1, #0]
	cmp r0, #0
	beq .L0830DE4C
	subs r0, #1
	strb r0, [r1, #0]
.L0830DE4C:
	ldr r1, [pc, #80]
	movs r0, #17
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L0830DE6A
	movs r0, #4
	bl sub_083189D0
	ldr r1, [pc, #68]
	ldrb r0, [r1, #0]
	cmp r0, #2
	bhi .L0830DE6A
	adds r0, #1
	strb r0, [r1, #0]
.L0830DE6A:
	ldr r4, [pc, #60]
	ldr r1, [r4, #0]
	movs r0, #216
	lsls r0, r0, #1
	adds r2, r1, r0
	ldrb r3, [r2, #0]
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #3
	adds r1, r1, r0
	ldrh r0, [r1, #62]
	adds r1, #64
	ldrh r1, [r1, #0]
	movs r2, #25
	movs r3, #0
	bl sub_080049D4
	ldr r0, [pc, #20]
	ldrb r0, [r0, #0]
	cmp r0, #1
	beq .L0830DED4
	cmp r0, #1
	bgt .L0830DEAC
	cmp r0, #0
	beq .L0830DEB6
	b .L0830DF2E
	movs r0, r0
	lsrs r2, r2, #20
	lsls r0, r0, #12
	strb r6, [r4, #21]
	lsls r0, r0, #8
	strb r4, [r5, #21]
	lsls r0, r0, #8
.L0830DEAC:
	cmp r0, #2
	beq .L0830DEF0
	cmp r0, #3
	beq .L0830DF0C
	b .L0830DF2E
.L0830DEB6:
	ldr r2, [r4, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #4]
	b .L0830DF22
	movs r0, r0
	stmia r1!, {r4, r5, r6}
	lsrs r5, r7, #32
.L0830DED4:
	ldr r2, [r4, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #0]
	b .L0830DF22
	stmia r1!, {r2, r3, r7}
	lsrs r5, r7, #32
.L0830DEF0:
	ldr r2, [r4, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #0]
	b .L0830DF22
	stmia r1!, {r3, r5, r7}
	lsrs r5, r7, #32
.L0830DF0C:
	ldr r2, [r4, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #16]
.L0830DF22:
	ldmia r0!, {r2, r3, r4}
	stmia r1!, {r2, r3, r4}
	ldmia r0!, {r2, r3, r4}
	stmia r1!, {r2, r3, r4}
	ldr r0, [r0, #0]
	str r0, [r1, #0]
.L0830DF2E:
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x083DC1C4

	.thumb
	.align 1, 0
	.global sub_0830DF38
	.thumb_func
sub_0830DF38:
	push {r4, r5, lr}
	ldr r1, [pc, #132]
	movs r0, #32
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L0830DF58
	movs r0, #4
	bl sub_083189D0
	ldr r1, [pc, #116]
	ldr r0, [r1, #0]
	cmp r0, #0
	beq .L0830DF58
	subs r0, #1
	str r0, [r1, #0]
.L0830DF58:
	ldr r1, [pc, #100]
	movs r0, #17
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L0830DF76
	movs r0, #4
	bl sub_083189D0
	ldr r1, [pc, #88]
	ldr r0, [r1, #0]
	cmp r0, #10
	bhi .L0830DF76
	adds r0, #1
	str r0, [r1, #0]
.L0830DF76:
	ldr r0, [pc, #80]
	ldr r1, [r0, #0]
	movs r0, #216
	lsls r0, r0, #1
	adds r2, r1, r0
	ldrb r3, [r2, #0]
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #3
	adds r1, r1, r0
	ldrh r0, [r1, #62]
	adds r1, #64
	ldrh r1, [r1, #0]
	movs r2, #25
	movs r3, #0
	bl sub_080049D4
	movs r5, #1
	negs r5, r5
	ldr r4, [pc, #36]
	ldr r0, [r4, #0]
	bl sub_083167F8
	adds r1, r0, #0
	adds r0, r5, #0
	bl sub_08318CA4
	ldr r0, [r4, #0]
	cmp r0, #11
	bls .L0830DFB4
	b .L0830E180
.L0830DFB4:
	lsls r0, r0, #2
	ldr r1, [pc, #20]
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	movs r0, r0
	lsrs r2, r2, #20
	lsls r0, r0, #12
	ldr r4, [r6, r6]
	lsls r0, r0, #12
	strb r4, [r5, #21]
	lsls r0, r0, #8
	stmia r3!, {r4, r5}
	lsrs r5, r7, #32
	ldr r0, [pc, #24]
	ldr r2, [r0, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #8]
	b .L0830E174
	movs r0, r0
	strb r4, [r5, #21]
	lsls r0, r0, #8
	stmia r1!, {r5, r6, r7}
	lsrs r5, r7, #32
	ldr r0, [pc, #24]
	ldr r2, [r0, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #8]
	b .L0830E174
	movs r0, r0
	strb r4, [r5, #21]
	lsls r0, r0, #8
	stmia r1!, {r2, r3, r4, r5, r6, r7}
	lsrs r5, r7, #32
	ldr r0, [pc, #24]
	ldr r2, [r0, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #8]
	b .L0830E174
	movs r0, r0
	strb r4, [r5, #21]
	lsls r0, r0, #8
	stmia r2!, {r3, r4}
	lsrs r5, r7, #32
	ldr r0, [pc, #24]
	ldr r2, [r0, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #8]
	b .L0830E174
	movs r0, r0
	strb r4, [r5, #21]
	lsls r0, r0, #8
	stmia r2!, {r2, r4, r5}
	lsrs r5, r7, #32
	ldr r0, [pc, #24]
	ldr r2, [r0, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #8]
	b .L0830E174
	movs r0, r0
	strb r4, [r5, #21]
	lsls r0, r0, #8
	stmia r2!, {r4, r6}
	lsrs r5, r7, #32
	ldr r0, [pc, #24]
	ldr r2, [r0, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #8]
	b .L0830E174
	movs r0, r0
	strb r4, [r5, #21]
	lsls r0, r0, #8
	stmia r2!, {r2, r3, r5, r6}
	lsrs r5, r7, #32
	ldr r0, [pc, #24]
	ldr r2, [r0, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #8]
	b .L0830E174
	movs r0, r0
	strb r4, [r5, #21]
	lsls r0, r0, #8
	stmia r2!, {r3, r7}
	lsrs r5, r7, #32
	ldr r0, [pc, #24]
	ldr r2, [r0, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #8]
	b .L0830E174
	movs r0, r0
	strb r4, [r5, #21]
	lsls r0, r0, #8
	stmia r2!, {r2, r5, r7}
	lsrs r5, r7, #32
	ldr r0, [pc, #24]
	ldr r2, [r0, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #8]
	b .L0830E174
	movs r0, r0
	strb r4, [r5, #21]
	lsls r0, r0, #8
	stmia r2!, {r6, r7}
	lsrs r5, r7, #32
	ldr r0, [pc, #24]
	ldr r2, [r0, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #8]
	b .L0830E174
	movs r0, r0
	strb r4, [r5, #21]
	lsls r0, r0, #8
	stmia r2!, {r2, r3, r4, r6, r7}
	lsrs r5, r7, #32
	ldr r0, [pc, #24]
	ldr r2, [r0, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #8]
	b .L0830E174
	movs r0, r0
	strb r4, [r5, #21]
	lsls r0, r0, #8
	stmia r2!, {r3, r4, r5, r6, r7}
	lsrs r5, r7, #32
	ldr r0, [pc, #40]
	ldr r2, [r0, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #24]
.L0830E174:
	ldmia r0!, {r2, r3, r4}
	stmia r1!, {r2, r3, r4}
	ldmia r0!, {r2, r3, r4}
	stmia r1!, {r2, r3, r4}
	ldr r0, [r0, #0]
	str r0, [r1, #0]
.L0830E180:
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x0200756C
	.4byte 0x083DC314

	.thumb
	.align 1, 0
	.global sub_0830E190
	.thumb_func
sub_0830E190:
	push {r4, r5, lr}
	ldr r1, [pc, #132]
	movs r0, #32
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L0830E1B0
	movs r0, #4
	bl sub_083189D0
	ldr r1, [pc, #116]
	ldr r0, [r1, #0]
	cmp r0, #0
	beq .L0830E1B0
	subs r0, #1
	str r0, [r1, #0]
.L0830E1B0:
	ldr r1, [pc, #100]
	movs r0, #17
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L0830E1CE
	movs r0, #4
	bl sub_083189D0
	ldr r1, [pc, #88]
	ldr r0, [r1, #0]
	cmp r0, #10
	bhi .L0830E1CE
	adds r0, #1
	str r0, [r1, #0]
.L0830E1CE:
	ldr r0, [pc, #80]
	ldr r1, [r0, #0]
	movs r0, #216
	lsls r0, r0, #1
	adds r2, r1, r0
	ldrb r3, [r2, #0]
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #3
	adds r1, r1, r0
	ldrh r0, [r1, #62]
	adds r1, #64
	ldrh r1, [r1, #0]
	movs r2, #25
	movs r3, #0
	bl sub_080049D4
	movs r5, #1
	negs r5, r5
	ldr r4, [pc, #36]
	ldr r0, [r4, #0]
	bl sub_08316810
	adds r1, r0, #0
	adds r0, r5, #0
	bl sub_083191AC
	ldr r0, [r4, #0]
	cmp r0, #11
	bls .L0830E20C
	b .L0830E3D8
.L0830E20C:
	lsls r0, r0, #2
	ldr r1, [pc, #20]
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	movs r0, r0
	lsrs r2, r2, #20
	lsls r0, r0, #12
	ldr r0, [r7, r6]
	lsls r0, r0, #12
	strb r4, [r5, #21]
	lsls r0, r0, #8
	stmia r4!, {r4, r5, r7}
	lsrs r5, r7, #32
	ldr r0, [pc, #24]
	ldr r2, [r0, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #8]
	b .L0830E3CC
	movs r0, r0
	strb r4, [r5, #21]
	lsls r0, r0, #8
	stmia r3!, {r5, r6}
	lsrs r5, r7, #32
	ldr r0, [pc, #24]
	ldr r2, [r0, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #8]
	b .L0830E3CC
	movs r0, r0
	strb r4, [r5, #21]
	lsls r0, r0, #8
	stmia r3!, {r2, r3, r4, r5, r6}
	lsrs r5, r7, #32
	ldr r0, [pc, #24]
	ldr r2, [r0, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #8]
	b .L0830E3CC
	movs r0, r0
	strb r4, [r5, #21]
	lsls r0, r0, #8
	stmia r3!, {r3, r4, r7}
	lsrs r5, r7, #32
	ldr r0, [pc, #24]
	ldr r2, [r0, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #8]
	b .L0830E3CC
	movs r0, r0
	strb r4, [r5, #21]
	lsls r0, r0, #8
	stmia r3!, {r2, r4, r5, r7}
	lsrs r5, r7, #32
	ldr r0, [pc, #24]
	ldr r2, [r0, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #8]
	b .L0830E3CC
	movs r0, r0
	strb r4, [r5, #21]
	lsls r0, r0, #8
	stmia r3!, {r4, r6, r7}
	lsrs r5, r7, #32
	ldr r0, [pc, #24]
	ldr r2, [r0, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #8]
	b .L0830E3CC
	movs r0, r0
	strb r4, [r5, #21]
	lsls r0, r0, #8
	stmia r3!, {r2, r3, r5, r6, r7}
	lsrs r5, r7, #32
	ldr r0, [pc, #24]
	ldr r2, [r0, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #8]
	b .L0830E3CC
	movs r0, r0
	strb r4, [r5, #21]
	lsls r0, r0, #8
	stmia r4!, {r3}
	lsrs r5, r7, #32
	ldr r0, [pc, #24]
	ldr r2, [r0, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #8]
	b .L0830E3CC
	movs r0, r0
	strb r4, [r5, #21]
	lsls r0, r0, #8
	stmia r4!, {r2, r5}
	lsrs r5, r7, #32
	ldr r0, [pc, #24]
	ldr r2, [r0, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #8]
	b .L0830E3CC
	movs r0, r0
	strb r4, [r5, #21]
	lsls r0, r0, #8
	stmia r4!, {r6}
	lsrs r5, r7, #32
	ldr r0, [pc, #24]
	ldr r2, [r0, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #8]
	b .L0830E3CC
	movs r0, r0
	strb r4, [r5, #21]
	lsls r0, r0, #8
	stmia r4!, {r2, r3, r4, r6}
	lsrs r5, r7, #32
	ldr r0, [pc, #24]
	ldr r2, [r0, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #8]
	b .L0830E3CC
	movs r0, r0
	strb r4, [r5, #21]
	lsls r0, r0, #8
	stmia r4!, {r3, r4, r5, r6}
	lsrs r5, r7, #32
	ldr r0, [pc, #40]
	ldr r2, [r0, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #24]
.L0830E3CC:
	ldmia r0!, {r2, r3, r4}
	stmia r1!, {r2, r3, r4}
	ldmia r0!, {r2, r3, r4}
	stmia r1!, {r2, r3, r4}
	ldr r0, [r0, #0]
	str r0, [r1, #0]
.L0830E3D8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x0200756C
	.4byte 0x083DC494

	.thumb
	.align 1, 0
	.global sub_0830E3E8
	.thumb_func
sub_0830E3E8:
	push {r4, lr}
	ldr r4, [pc, #44]
	ldrb r0, [r4, #0]
	cmp r0, #0
	beq .L0830E424
	movs r0, #4
	bl sub_083189D0
	movs r0, #0
	strb r0, [r4, #0]
	ldr r0, [pc, #28]
	ldr r2, [r0, #0]
	movs r1, #216
	lsls r1, r1, #1
	adds r0, r2, r1
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #12]
	b .L0830E446
	movs r0, r0
	strb r1, [r5, #21]
	lsls r0, r0, #8
	strb r4, [r5, #21]
	lsls r0, r0, #8
	stmia r4!, {r5, r6, r7}
	lsrs r5, r7, #32
.L0830E424:
	movs r0, #4
	bl sub_083189D0
	movs r0, #1
	strb r0, [r4, #0]
	ldr r0, [pc, #40]
	ldr r2, [r0, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #20]
.L0830E446:
	ldmia r0!, {r2, r3, r4}
	stmia r1!, {r2, r3, r4}
	ldmia r0!, {r2, r3, r4}
	stmia r1!, {r2, r3, r4}
	ldr r0, [r0, #0]
	str r0, [r1, #0]
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x0200756C
	.4byte 0x083DC4FC

	.thumb
	.align 1, 0
	.global sub_0830E460
	.thumb_func
sub_0830E460:
	push {r4, r5, r6, r7, lr}
	movs r0, #43
	bl sub_083189D0
	ldr r2, [pc, #348]
	movs r0, #0
	strb r0, [r2, #0]
	ldr r5, [pc, #348]
	ldr r1, [r5, #0]
	adds r1, #32
	ldr r0, [pc, #344]
	ldmia r0!, {r3, r4, r6}
	stmia r1!, {r3, r4, r6}
	ldmia r0!, {r3, r4, r6}
	stmia r1!, {r3, r4, r6}
	ldr r0, [r0, #0]
	str r0, [r1, #0]
	ldr r7, [pc, #336]
	movs r6, #10
	str r6, [r7, #0]
	ldrb r0, [r2, #0]
	bl sub_08001E60
	ldr r0, [pc, #328]
	movs r1, #0
	bl sub_080012E4
	movs r4, #160
	lsls r4, r4, #19
	adds r1, r4, #0
	movs r2, #0
	movs r3, #240
	bl sub_08001EBC
	ldr r0, [pc, #308]
	ldr r0, [r0, #8]
	adds r1, r4, #0
	movs r2, #240
	movs r3, #16
	bl sub_08001EBC
	ldr r0, [pc, #300]
	ldr r1, [pc, #300]
	movs r2, #0
	movs r3, #32
	bl sub_08001EBC
	ldr r0, [r5, #0]
	adds r0, #1
	ldr r1, [pc, #292]
	bl strcmp
	adds r1, r0, #0
	cmp r1, #0
	bne .L0830E512
	ldr r0, [pc, #284]
	strb r1, [r0, #0]
	ldr r1, [pc, #284]
	movs r0, #1
	strb r0, [r1, #0]
	ldr r0, [pc, #280]
	str r6, [r0, #0]
	ldr r1, [r5, #0]
	adds r1, #72
	ldr r0, [pc, #276]
	ldmia r0!, {r2, r3, r4}
	stmia r1!, {r2, r3, r4}
	ldmia r0!, {r2, r3, r4}
	stmia r1!, {r2, r3, r4}
	ldr r0, [r0, #0]
	str r0, [r1, #0]
	ldr r1, [r5, #0]
	adds r1, #112
	ldr r0, [pc, #264]
	ldmia r0!, {r2, r3, r4}
	stmia r1!, {r2, r3, r4}
	ldmia r0!, {r2, r3, r4}
	stmia r1!, {r2, r3, r4}
	ldr r0, [r0, #0]
	str r0, [r1, #0]
	ldr r1, [r5, #0]
	adds r1, #152
	ldr r0, [pc, #248]
	ldmia r0!, {r2, r3, r4}
	stmia r1!, {r2, r3, r4}
	ldmia r0!, {r2, r3, r4}
	stmia r1!, {r2, r3, r4}
	ldr r0, [r0, #0]
	str r0, [r1, #0]
.L0830E512:
	ldr r0, [r5, #0]
	adds r0, #1
	ldr r1, [pc, #236]
	bl strcmp
	adds r1, r0, #0
	cmp r1, #0
	bne .L0830E554
	ldr r0, [pc, #200]
	strb r1, [r0, #0]
	ldr r1, [pc, #200]
	movs r0, #1
	strb r0, [r1, #0]
	ldr r0, [pc, #196]
	str r6, [r0, #0]
	ldr r1, [r5, #0]
	adds r1, #72
	ldr r0, [pc, #196]
	ldmia r0!, {r2, r3, r6}
	stmia r1!, {r2, r3, r6}
	ldmia r0!, {r2, r4, r6}
	stmia r1!, {r2, r4, r6}
	ldr r0, [r0, #0]
	str r0, [r1, #0]
	ldr r1, [r5, #0]
	adds r1, #112
	ldr r0, [pc, #184]
	ldmia r0!, {r3, r4, r6}
	stmia r1!, {r3, r4, r6}
	ldmia r0!, {r2, r3, r4}
	stmia r1!, {r2, r3, r4}
	ldr r0, [r0, #0]
	str r0, [r1, #0]
.L0830E554:
	ldr r0, [r5, #0]
	adds r0, #1
	ldr r1, [pc, #172]
	bl strcmp
	adds r1, r0, #0
	cmp r1, #0
	bne .L0830E57A
	ldr r0, [pc, #132]
	strb r1, [r0, #0]
	ldr r1, [r5, #0]
	adds r1, #72
	ldr r0, [pc, #144]
	ldmia r0!, {r2, r3, r6}
	stmia r1!, {r2, r3, r6}
	ldmia r0!, {r2, r4, r6}
	stmia r1!, {r2, r4, r6}
	ldr r0, [r0, #0]
	str r0, [r1, #0]
.L0830E57A:
	ldr r0, [r5, #0]
	adds r0, #1
	ldr r1, [pc, #140]
	bl strcmp
	adds r1, r0, #0
	cmp r1, #0
	bne .L0830E5A0
	ldr r0, [pc, #96]
	strb r1, [r0, #0]
	ldr r1, [r5, #0]
	adds r1, #72
	ldr r0, [pc, #108]
	ldmia r0!, {r3, r4, r6}
	stmia r1!, {r3, r4, r6}
	ldmia r0!, {r2, r3, r4}
	stmia r1!, {r2, r3, r4}
	ldr r0, [r0, #0]
	str r0, [r1, #0]
.L0830E5A0:
	movs r4, #1
	negs r4, r4
	ldr r0, [pc, #76]
	ldr r0, [r0, #0]
	bl sub_083167F8
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08318CA4
	ldr r0, [r7, #0]
	bl sub_08316810
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_083191AC
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.4byte 0x02007567
	.4byte 0x0200756C
	.4byte 0x083DC070
	.4byte 0x030059B8
	.4byte 0x0300398C
	.4byte 0x083D2048
	.4byte 0x020073D8
	.4byte 0x05000200
	.4byte 0x083DB3BC
	.4byte 0x02007561
	.4byte 0x02007566
	.4byte 0x030059B4
	.4byte 0x083DC18C
	.4byte 0x083DC2F8
	.4byte 0x083DC478
	.4byte 0x083DB3EC
	.4byte 0x083DB3F8
	.4byte 0x083DB410

	.thumb
	.align 1, 0
	.global sub_0830E610
	.thumb_func
sub_0830E610:
	push {r4, lr}
	movs r0, #4
	bl sub_083189D0
	ldr r1, [pc, #36]
	ldrb r0, [r1, #0]
	cmp r0, #0
	beq .L0830E64C
	movs r0, #0
	strb r0, [r1, #0]
	ldr r0, [pc, #28]
	ldr r2, [r0, #0]
	movs r1, #216
	lsls r1, r1, #1
	adds r0, r2, r1
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #12]
	b .L0830E668
	movs r0, r0
	strb r0, [r7, #21]
	lsls r0, r0, #8
	strb r4, [r5, #21]
	lsls r0, r0, #8
	stmia r5!, {r3, r4}
	lsrs r5, r7, #32
.L0830E64C:
	movs r0, #1
	strb r0, [r1, #0]
	ldr r0, [pc, #40]
	ldr r2, [r0, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #24]
.L0830E668:
	ldmia r0!, {r2, r3, r4}
	stmia r1!, {r2, r3, r4}
	ldmia r0!, {r2, r3, r4}
	stmia r1!, {r2, r3, r4}
	ldr r0, [r0, #0]
	str r0, [r1, #0]
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x0200756C
	.4byte 0x083DC534

	.thumb
	.align 1, 0
	.global sub_0830E684
	.thumb_func
sub_0830E684:
	push {r4, lr}
	movs r0, #4
	bl sub_083189D0
	ldr r1, [pc, #36]
	ldrb r0, [r1, #1]
	cmp r0, #0
	beq .L0830E6C0
	movs r0, #0
	strb r0, [r1, #1]
	ldr r0, [pc, #28]
	ldr r2, [r0, #0]
	movs r1, #216
	lsls r1, r1, #1
	adds r0, r2, r1
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #12]
	b .L0830E6DC
	movs r0, r0
	strb r0, [r7, #21]
	lsls r0, r0, #8
	strb r4, [r5, #21]
	lsls r0, r0, #8
	stmia r5!, {r4, r6}
	lsrs r5, r7, #32
.L0830E6C0:
	movs r0, #1
	strb r0, [r1, #1]
	ldr r0, [pc, #40]
	ldr r2, [r0, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #24]
.L0830E6DC:
	ldmia r0!, {r2, r3, r4}
	stmia r1!, {r2, r3, r4}
	ldmia r0!, {r2, r3, r4}
	stmia r1!, {r2, r3, r4}
	ldr r0, [r0, #0]
	str r0, [r1, #0]
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x0200756C
	.4byte 0x083DC56C

	.thumb
	.align 1, 0
	.global sub_0830E6F8
	.thumb_func
sub_0830E6F8:
	push {r4, lr}
	movs r0, #4
	bl sub_083189D0
	ldr r1, [pc, #36]
	ldrb r0, [r1, #2]
	cmp r0, #0
	beq .L0830E734
	movs r0, #0
	strb r0, [r1, #2]
	ldr r0, [pc, #28]
	ldr r2, [r0, #0]
	movs r1, #216
	lsls r1, r1, #1
	adds r0, r2, r1
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #12]
	b .L0830E750
	movs r0, r0
	strb r0, [r7, #21]
	lsls r0, r0, #8
	strb r4, [r5, #21]
	lsls r0, r0, #8
	stmia r5!, {r3, r7}
	lsrs r5, r7, #32
.L0830E734:
	movs r0, #1
	strb r0, [r1, #2]
	ldr r0, [pc, #40]
	ldr r2, [r0, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #24]
.L0830E750:
	ldmia r0!, {r2, r3, r4}
	stmia r1!, {r2, r3, r4}
	ldmia r0!, {r2, r3, r4}
	stmia r1!, {r2, r3, r4}
	ldr r0, [r0, #0]
	str r0, [r1, #0]
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x0200756C
	.4byte 0x083DC5A4

	.thumb
	.align 1, 0
	.global sub_0830E76C
	.thumb_func
sub_0830E76C:
	push {r4, lr}
	movs r0, #4
	bl sub_083189D0
	ldr r1, [pc, #36]
	ldrb r0, [r1, #3]
	cmp r0, #0
	beq .L0830E7A8
	movs r0, #0
	strb r0, [r1, #3]
	ldr r0, [pc, #28]
	ldr r2, [r0, #0]
	movs r1, #216
	lsls r1, r1, #1
	adds r0, r2, r1
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #12]
	b .L0830E7C4
	movs r0, r0
	strb r0, [r7, #21]
	lsls r0, r0, #8
	strb r4, [r5, #21]
	lsls r0, r0, #8
	stmia r5!, {r6, r7}
	lsrs r5, r7, #32
.L0830E7A8:
	movs r0, #1
	strb r0, [r1, #3]
	ldr r0, [pc, #40]
	ldr r2, [r0, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #24]
.L0830E7C4:
	ldmia r0!, {r2, r3, r4}
	stmia r1!, {r2, r3, r4}
	ldmia r0!, {r2, r3, r4}
	stmia r1!, {r2, r3, r4}
	ldr r0, [r0, #0]
	str r0, [r1, #0]
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x0200756C
	.4byte 0x083DC5DC

	.thumb
	.align 1, 0
	.global sub_0830E7E0
	.thumb_func
sub_0830E7E0:
	push {r4, lr}
	movs r0, #4
	bl sub_083189D0
	ldr r1, [pc, #36]
	ldrb r0, [r1, #4]
	cmp r0, #0
	beq .L0830E81C
	movs r0, #0
	strb r0, [r1, #4]
	ldr r0, [pc, #28]
	ldr r2, [r0, #0]
	movs r1, #216
	lsls r1, r1, #1
	adds r0, r2, r1
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #12]
	b .L0830E838
	movs r0, r0
	strb r0, [r7, #21]
	lsls r0, r0, #8
	strb r4, [r5, #21]
	lsls r0, r0, #8
	stmia r5!, {r3, r4, r5, r6, r7}
	lsrs r5, r7, #32
.L0830E81C:
	movs r0, #1
	strb r0, [r1, #4]
	ldr r0, [pc, #40]
	ldr r2, [r0, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #24]
.L0830E838:
	ldmia r0!, {r2, r3, r4}
	stmia r1!, {r2, r3, r4}
	ldmia r0!, {r2, r3, r4}
	stmia r1!, {r2, r3, r4}
	ldr r0, [r0, #0]
	str r0, [r1, #0]
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x0200756C
	.4byte 0x083DC614

	.thumb
	.align 1, 0
	.global sub_0830E854
	.thumb_func
sub_0830E854:
	push {r4, lr}
	movs r0, #4
	bl sub_083189D0
	ldr r1, [pc, #36]
	ldrb r0, [r1, #5]
	cmp r0, #0
	beq .L0830E890
	movs r0, #0
	strb r0, [r1, #5]
	ldr r0, [pc, #28]
	ldr r2, [r0, #0]
	movs r1, #216
	lsls r1, r1, #1
	adds r0, r2, r1
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #12]
	b .L0830E8AC
	movs r0, r0
	strb r0, [r7, #21]
	lsls r0, r0, #8
	strb r4, [r5, #21]
	lsls r0, r0, #8
	stmia r6!, {r4, r5}
	lsrs r5, r7, #32
.L0830E890:
	movs r0, #1
	strb r0, [r1, #5]
	ldr r0, [pc, #40]
	ldr r2, [r0, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #24]
.L0830E8AC:
	ldmia r0!, {r2, r3, r4}
	stmia r1!, {r2, r3, r4}
	ldmia r0!, {r2, r3, r4}
	stmia r1!, {r2, r3, r4}
	ldr r0, [r0, #0]
	str r0, [r1, #0]
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x0200756C
	.4byte 0x083DC64C

	.thumb
	.align 1, 0
	.global sub_0830E8C8
	.thumb_func
sub_0830E8C8:
	push {r4, lr}
	movs r0, #4
	bl sub_083189D0
	ldr r1, [pc, #36]
	ldrb r0, [r1, #6]
	cmp r0, #0
	beq .L0830E904
	movs r0, #0
	strb r0, [r1, #6]
	ldr r0, [pc, #28]
	ldr r2, [r0, #0]
	movs r1, #216
	lsls r1, r1, #1
	adds r0, r2, r1
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #12]
	b .L0830E920
	movs r0, r0
	strb r0, [r7, #21]
	lsls r0, r0, #8
	strb r4, [r5, #21]
	lsls r0, r0, #8
	stmia r6!, {r3, r5, r6}
	lsrs r5, r7, #32
.L0830E904:
	movs r0, #1
	strb r0, [r1, #6]
	ldr r0, [pc, #40]
	ldr r2, [r0, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #24]
.L0830E920:
	ldmia r0!, {r2, r3, r4}
	stmia r1!, {r2, r3, r4}
	ldmia r0!, {r2, r3, r4}
	stmia r1!, {r2, r3, r4}
	ldr r0, [r0, #0]
	str r0, [r1, #0]
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x0200756C
	.4byte 0x083DC684

	.thumb
	.align 1, 0
	.global sub_0830E93C
	.thumb_func
sub_0830E93C:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #224
	movs r0, #1
	negs r0, r0
	bl sub_08319148
	ldr r0, [pc, #272]
	ldrh r0, [r0, #0]
	movs r1, #5
	bl __udivsi3
	lsls r0, r0, #16
	lsrs r0, r0, #16
	mov r9, r0
	ldr r0, [pc, #260]
	movs r1, #120
	strh r1, [r0, #0]
	ldr r1, [pc, #260]
	bl sub_08002F64
	ldr r6, [pc, #256]
	ldr r0, [pc, #260]
	mov r8, r0
	adds r0, r6, #0
	mov r1, r8
	movs r2, #0
	movs r3, #32
	bl sub_08001EBC
	bl sub_08004D70
	bl sub_08001A6C
	ldr r4, [pc, #240]
	ldr r1, [pc, #240]
	adds r0, r4, #0
	bl sub_08001280
	adds r0, r4, #0
	movs r1, #0
	bl sub_080012C0
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	bl sub_080012F4
	ldr r2, [pc, #220]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08001314
	ldr r1, [pc, #212]
	add r2, sp, #216
	ldr r0, [r2, #0]
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	ldr r1, [pc, #204]
	ands r0, r1
	movs r1, #128
	lsls r1, r1, #1
	orrs r0, r1
	ldr r1, [pc, #200]
	ands r0, r1
	movs r1, #128
	lsls r1, r1, #9
	orrs r0, r1
	ldr r1, [pc, #192]
	ands r0, r1
	adds r1, #1
	orrs r0, r1
	str r0, [r2, #0]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08001A48
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl Bg_DrawLevelScreen
	adds r0, r4, #0
	bl sub_08001A8C
	ldr r1, [pc, #160]
	movs r2, #248
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1, #0]
	subs r1, #8
	adds r2, #64
	adds r0, r2, #0
	strh r0, [r1, #0]
	ldr r0, [pc, #148]
	ldrb r0, [r0, #0]
	bl sub_08001E60
	adds r0, r4, #0
	movs r1, #0
	bl sub_080012E4
	movs r4, #160
	lsls r4, r4, #19
	adds r1, r4, #0
	movs r2, #0
	movs r3, #240
	bl sub_08001EBC
	ldr r5, [pc, #120]
	ldr r0, [r5, #8]
	adds r1, r4, #0
	movs r2, #240
	movs r3, #16
	bl sub_08001EBC
	adds r0, r6, #0
	mov r1, r8
	movs r2, #0
	movs r3, #160
	bl sub_08001EBC
	adds r0, r5, #0
	movs r1, #31
	bl sub_08004848
	movs r0, #15
	bl sub_08004880
	bl sub_0800436C
	movs r0, #0
	movs r1, #192
	movs r2, #30
	bl Fade_Start
	add r0, sp, #200
	mov r8, r0
	mov r1, sp
	adds r1, #204
	str r1, [sp, #220]
	b .L0830EAB0
	movs r0, r0
	strb r4, [r4, #21]
	lsls r0, r0, #8
	subs r4, #4
	lsls r0, r0, #12
	subs r3, #196
	lsls r0, r0, #12
	strb r0, [r3, #15]
	lsls r0, r0, #8
	lsls r0, r0, #8
	lsls r0, r0, #20
	subs r1, #140
	lsls r0, r0, #12
	ldrh r0, [r6, r0]
	lsrs r4, r0, #32
	ldr r1, [sp, #192]
	lsrs r2, r4, #32
	.2byte 0xff00 @ .raw
	.2byte 0xffff @ .raw
	lsls r7, r7, #3
	.2byte 0xffff @ .raw
	.2byte 0xffff @ .raw
	.2byte 0xff00 @ .raw
	.2byte 0xffff @ .raw
	lsls r7, r7, #3
	movs r0, r1
	lsls r0, r0, #16
	strb r7, [r4, #21]
	lsls r0, r0, #8
	movs r0, #72
	lsrs r5, r7, #32
.L0830EAA0:
	bl VBlankIntrWait
	ldr r0, [pc, #68]
	movs r1, #120
	strh r1, [r0, #0]
	ldr r1, [pc, #68]
	bl sub_08002F64
.L0830EAB0:
	bl Fade_IsBusy
	cmp r0, #0
	bne .L0830EAA0
	movs r7, #0
	mov r5, sp
.L0830EABC:
	ldr r0, [pc, #52]
	lsls r1, r7, #2
	adds r4, r1, r0
	ldr r6, [r4, #0]
	adds r0, r6, #0
	mov r1, r9
	bl __udivsi3
	cmp r0, #0
	beq .L0830EB10
	bl sub_0830A000
	cmp r0, #1
	bne .L0830EAFC
	ldr r0, [r4, #0]
	mov r1, r9
	bl __udivsi3
	adds r2, r0, #0
	adds r2, #6
	adds r0, r5, #0
	ldr r1, [pc, #16]
	b .L0830EB22
	movs r0, r0
	subs r4, #4
	lsls r0, r0, #12
	subs r3, #196
	lsls r0, r0, #12
	ldrh r4, [r1, r0]
	lsls r0, r0, #12
	sub sp, #320
	lsrs r0, r2, #32
.L0830EAFC:
	ldr r0, [r4, #0]
	mov r1, r9
	bl __udivsi3
	adds r2, r0, #0
	adds r0, r5, #0
	ldr r1, [pc, #0]
	b .L0830EB36
	sub sp, #320
	lsrs r0, r2, #32
.L0830EB10:
	cmp r6, #0
	beq .L0830EB74
	bl sub_0830A000
	cmp r0, #1
	bne .L0830EB30
	adds r0, r5, #0
	ldr r1, [pc, #12]
	movs r2, #7
.L0830EB22:
	movs r3, #0
	bl sub_080002E0
	b .L0830EB3C
	movs r0, r0
	sub sp, #320
	lsrs r0, r2, #32
.L0830EB30:
	adds r0, r5, #0
	ldr r1, [pc, #60]
	movs r2, #1
.L0830EB36:
	movs r3, #0
	bl sub_080002E0
.L0830EB3C:
	movs r0, #88
	adds r1, r7, #0
	muls r1, r0
	adds r1, #72
	adds r0, r5, #0
	movs r2, #130
	movs r3, #40
	bl sub_08000684
	adds r1, r7, #2
	adds r0, r5, #0
	bl sub_0800075C
	adds r2, r7, #6
	adds r0, r5, #0
	movs r1, #5
	bl sub_0800073C
	adds r0, r5, #0
	bl sub_0800060C
	adds r0, r5, #0
	bl Sprite_Draw
	b .L0830EBCC
	movs r0, r0
	sub sp, #320
	lsrs r0, r2, #32
.L0830EB74:
	bl sub_0830A000
	cmp r0, #1
	bne .L0830EB90
	adds r0, r5, #0
	ldr r1, [pc, #12]
	movs r2, #0
	movs r3, #0
	bl sub_080002E0
	b .L0830EB9C
	movs r0, r0
	sub sp, #320
	lsrs r0, r2, #32
.L0830EB90:
	adds r0, r5, #0
	ldr r1, [pc, #228]
	movs r2, #0
	movs r3, #0
	bl sub_080002E0
.L0830EB9C:
	movs r0, #88
	adds r1, r7, #0
	muls r1, r0
	adds r1, #72
	adds r0, r5, #0
	movs r2, #130
	movs r3, #40
	bl sub_08000684
	adds r1, r7, #2
	adds r0, r5, #0
	bl sub_0800075C
	adds r2, r7, #6
	adds r0, r5, #0
	movs r1, #5
	bl sub_0800073C
	adds r0, r5, #0
	bl sub_0800060C
	adds r0, r5, #0
	bl Sprite_Draw
.L0830EBCC:
	adds r5, #100
	adds r7, #1
	cmp r7, #1
	bhi .L0830EBD6
	b .L0830EABC
.L0830EBD6:
	movs r3, #0
	mov r2, r8
	ldr r4, [pc, #160]
	ldr r1, [sp, #220]
.L0830EBDE:
	str r3, [r1, #0]
	adds r1, #8
	ldmia r4!, {r0}
	str r0, [r2, #0]
	adds r2, #8
	adds r3, #1
	cmp r3, #1
	bls .L0830EBDE
	movs r1, #0
	movs r2, #2
	mov sl, r2
	mov r9, r8
.L0830EBF6:
	movs r7, #1
	mov r2, sl
	subs r0, r2, r1
	adds r1, #1
	mov ip, r1
	cmp r7, r0
	bge .L0830EC30
	mov r8, r0
	add r6, sp, #208
	mov r5, r9
	add r4, sp, #200
.L0830EC0C:
	ldr r1, [r5, #0]
	ldr r0, [r5, #8]
	cmp r1, r0
	bls .L0830EC24
	ldr r2, [r4, #0]
	ldr r3, [r4, #4]
	ldr r0, [r6, #0]
	ldr r1, [r6, #4]
	str r0, [r4, #0]
	str r1, [r4, #4]
	str r2, [r6, #0]
	str r3, [r6, #4]
.L0830EC24:
	adds r6, #8
	adds r5, #8
	adds r4, #8
	adds r7, #1
	cmp r7, r8
	blt .L0830EC0C
.L0830EC30:
	mov r1, ip
	cmp r1, #1
	ble .L0830EBF6
	movs r0, #0
	ldr r1, [pc, #68]
	mov sl, r1
	movs r2, #120
	mov r9, r2
.L0830EC40:
	movs r4, #0
	lsls r7, r0, #3
	adds r0, #1
	mov r8, r0
.L0830EC48:
	bl VBlankIntrWait
	mov r0, r9
	mov r1, sl
	strh r0, [r1, #0]
	mov r0, sl
	ldr r1, [pc, #44]
	bl sub_08002F64
	adds r4, #1
	cmp r4, #89
	bls .L0830EC48
	ldr r2, [sp, #220]
	adds r4, r2, r7
	ldr r1, [r4, #0]
	movs r0, #100
	muls r0, r1
	add r0, sp
	bl sub_08000604
	movs r6, #100
	ldr r5, [pc, #12]
	b .L0830ECA6
	movs r0, r0
	sub sp, #320
	lsrs r0, r2, #32
	ldrh r4, [r1, r0]
	lsls r0, r0, #12
	subs r4, #4
	lsls r0, r0, #12
	subs r3, #196
	lsls r0, r0, #12
.L0830EC88:
	bl VBlankIntrWait
	ldr r0, [r4, #0]
	muls r0, r6
	add r0, sp
	bl Sprite_Draw
	bl sub_080043B4
	mov r0, r9
	strh r0, [r5, #0]
	adds r0, r5, #0
	ldr r1, [pc, #68]
	bl sub_08002F64
.L0830ECA6:
	ldr r0, [r4, #0]
	muls r0, r6
	add r0, sp
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830EC88
	ldr r1, [sp, #220]
	adds r0, r1, r7
	ldr r1, [r0, #0]
	movs r0, #11
	muls r0, r1
	adds r0, #9
	ldr r2, [pc, #40]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r3, [r1, #0]
	movs r1, #19
	ldr r2, [pc, #32]
	bl sub_08004968
	mov r0, r8
	cmp r0, #1
	bls .L0830EC40
	add sp, #224
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.4byte 0x03003BC4
	.4byte 0x03005A0C
	.4byte 0x083DC6A0

	.thumb
	.align 1, 0
	.global sub_0830ECF4
	.thumb_func
sub_0830ECF4:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #336
	movs r0, #1
	negs r0, r0
	bl sub_08319148
	ldr r0, [pc, #268]
	ldrh r0, [r0, #0]
	movs r1, #5
	bl __udivsi3
	lsls r0, r0, #16
	lsrs r0, r0, #16
	mov r9, r0
	ldr r6, [pc, #256]
	ldr r0, [pc, #260]
	mov r8, r0
	adds r0, r6, #0
	mov r1, r8
	movs r2, #0
	movs r3, #32
	bl sub_08001EBC
	ldr r0, [pc, #248]
	movs r1, #120
	strh r1, [r0, #0]
	ldr r1, [pc, #244]
	bl sub_08002F64
	bl sub_08004D70
	bl sub_08001A6C
	ldr r4, [pc, #236]
	ldr r1, [pc, #236]
	adds r0, r4, #0
	bl sub_08001280
	adds r0, r4, #0
	movs r1, #0
	bl sub_080012C0
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	bl sub_080012F4
	ldr r2, [pc, #216]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08001314
	ldr r1, [pc, #208]
	add r2, sp, #324
	ldr r0, [r2, #0]
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	ldr r1, [pc, #200]
	ands r0, r1
	movs r1, #128
	lsls r1, r1, #1
	orrs r0, r1
	ldr r1, [pc, #196]
	ands r0, r1
	movs r1, #128
	lsls r1, r1, #9
	orrs r0, r1
	ldr r1, [pc, #188]
	ands r0, r1
	adds r1, #1
	orrs r0, r1
	str r0, [r2, #0]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08001A48
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl Bg_DrawLevelScreen
	adds r0, r4, #0
	bl sub_08001A8C
	ldr r1, [pc, #156]
	movs r2, #248
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1, #0]
	subs r1, #8
	adds r2, #64
	adds r0, r2, #0
	strh r0, [r1, #0]
	ldr r0, [pc, #144]
	ldrb r0, [r0, #0]
	bl sub_08001E60
	adds r0, r4, #0
	movs r1, #0
	bl sub_080012E4
	movs r4, #160
	lsls r4, r4, #19
	adds r1, r4, #0
	movs r2, #0
	movs r3, #240
	bl sub_08001EBC
	ldr r5, [pc, #116]
	ldr r0, [r5, #8]
	adds r1, r4, #0
	movs r2, #240
	movs r3, #16
	bl sub_08001EBC
	adds r0, r6, #0
	mov r1, r8
	movs r2, #0
	movs r3, #160
	bl sub_08001EBC
	adds r0, r5, #0
	movs r1, #31
	bl sub_08004848
	movs r0, #15
	bl sub_08004880
	bl sub_0800436C
	movs r0, #0
	movs r1, #192
	movs r2, #30
	bl Fade_Start
	movs r0, #152
	lsls r0, r0, #1
	add r0, sp
	str r0, [sp, #328]
	b .L0830EE64
	strb r4, [r4, #21]
	lsls r0, r0, #8
	strb r0, [r3, #15]
	lsls r0, r0, #8
	lsls r0, r0, #8
	lsls r0, r0, #20
	subs r4, #4
	lsls r0, r0, #12
	subs r3, #196
	lsls r0, r0, #12
	subs r1, #140
	lsls r0, r0, #12
	ldrsh r0, [r0, r4]
	lsrs r4, r0, #32
	ldr r1, [sp, #192]
	lsrs r2, r4, #32
	.2byte 0xff00 @ .raw
	.2byte 0xffff @ .raw
	lsls r7, r7, #3
	.2byte 0xffff @ .raw
	.2byte 0xffff @ .raw
	.2byte 0xff00 @ .raw
	.2byte 0xffff @ .raw
	lsls r7, r7, #3
	movs r0, r1
	lsls r0, r0, #16
	strb r7, [r4, #21]
	lsls r0, r0, #8
	movs r0, #72
	lsrs r5, r7, #32
.L0830EE54:
	bl VBlankIntrWait
	ldr r0, [pc, #80]
	movs r1, #120
	strh r1, [r0, #0]
	ldr r1, [pc, #80]
	bl sub_08002F64
.L0830EE64:
	bl Fade_IsBusy
	cmp r0, #0
	bne .L0830EE54
	movs r7, #0
	movs r1, #40
	str r1, [sp, #332]
	mov r5, sp
	mov sl, r1
	mov r8, r1
.L0830EE78:
	ldr r0, [pc, #56]
	lsls r1, r7, #2
	adds r4, r1, r0
	ldr r6, [r4, #0]
	adds r0, r6, #0
	mov r1, r9
	bl __udivsi3
	cmp r0, #0
	beq .L0830EEDC
	bl sub_0830A000
	cmp r0, #1
	bne .L0830EEBC
	ldr r0, [r4, #0]
	mov r1, r9
	bl __udivsi3
	adds r2, r0, #0
	adds r2, #6
	adds r0, r5, #0
	ldr r1, [pc, #20]
	movs r3, #0
	bl sub_080002E0
	b .L0830EED0
	subs r4, #4
	lsls r0, r0, #12
	subs r3, #196
	lsls r0, r0, #12
	ldrh r4, [r1, r0]
	lsls r0, r0, #12
	sub sp, #320
	lsrs r0, r2, #32
.L0830EEBC:
	ldr r0, [r4, #0]
	mov r1, r9
	bl __udivsi3
	adds r2, r0, #0
	adds r0, r5, #0
	ldr r1, [pc, #12]
	movs r3, #0
	bl sub_080002E0
.L0830EED0:
	adds r0, r5, #0
	mov r1, r8
	b .L0830EF0C
	movs r0, r0
	sub sp, #320
	lsrs r0, r2, #32
.L0830EEDC:
	cmp r6, #0
	beq .L0830EF38
	bl sub_0830A000
	cmp r0, #1
	bne .L0830EEFC
	adds r0, r5, #0
	ldr r1, [pc, #12]
	movs r2, #7
	movs r3, #0
	bl sub_080002E0
	b .L0830EF08
	movs r0, r0
	sub sp, #320
	lsrs r0, r2, #32
.L0830EEFC:
	adds r0, r5, #0
	ldr r1, [pc, #52]
	movs r2, #1
	movs r3, #0
	bl sub_080002E0
.L0830EF08:
	adds r0, r5, #0
	mov r1, sl
.L0830EF0C:
	movs r2, #130
	movs r3, #40
	bl sub_08000684
	adds r1, r7, #2
	adds r0, r5, #0
	bl sub_0800075C
	adds r2, r7, #6
	adds r0, r5, #0
	movs r1, #5
	bl sub_0800073C
	adds r0, r5, #0
	bl sub_0800060C
	adds r0, r5, #0
	bl Sprite_Draw
	b .L0830EF8A
	sub sp, #320
	lsrs r0, r2, #32
.L0830EF38:
	bl sub_0830A000
	cmp r0, #1
	bne .L0830EF54
	adds r0, r5, #0
	ldr r1, [pc, #12]
	movs r2, #0
	movs r3, #0
	bl sub_080002E0
	b .L0830EF60
	movs r0, r0
	sub sp, #320
	lsrs r0, r2, #32
.L0830EF54:
	adds r0, r5, #0
	ldr r1, [pc, #216]
	movs r2, #0
	movs r3, #0
	bl sub_080002E0
.L0830EF60:
	adds r0, r5, #0
	ldr r1, [sp, #332]
	movs r2, #130
	movs r3, #40
	bl sub_08000684
	adds r1, r7, #2
	adds r0, r5, #0
	bl sub_0800075C
	adds r2, r7, #6
	adds r0, r5, #0
	movs r1, #5
	bl sub_0800073C
	adds r0, r5, #0
	bl sub_0800060C
	adds r0, r5, #0
	bl Sprite_Draw
.L0830EF8A:
	ldr r2, [sp, #332]
	adds r2, #72
	str r2, [sp, #332]
	adds r5, #100
	movs r0, #72
	add sl, r0
	add r8, r0
	adds r7, #1
	cmp r7, #2
	bhi .L0830EFA0
	b .L0830EE78
.L0830EFA0:
	movs r3, #0
	add r2, sp, #300
	ldr r4, [pc, #140]
	ldr r1, [sp, #328]
.L0830EFA8:
	str r3, [r1, #0]
	adds r1, #8
	ldmia r4!, {r0}
	str r0, [r2, #0]
	adds r2, #8
	adds r3, #1
	cmp r3, #2
	bls .L0830EFA8
	movs r1, #0
	movs r7, #3
.L0830EFBC:
	subs r0, r7, r1
	adds r6, r1, #1
	cmp r0, #1
	ble .L0830EFE8
	add r4, sp, #300
	subs r5, r0, #1
.L0830EFC8:
	ldr r1, [r4, #0]
	ldr r0, [r4, #8]
	cmp r1, r0
	bls .L0830EFE0
	ldr r2, [r4, #0]
	ldr r3, [r4, #4]
	ldr r0, [r4, #8]
	ldr r1, [r4, #12]
	str r0, [r4, #0]
	str r1, [r4, #4]
	str r2, [r4, #8]
	str r3, [r4, #12]
.L0830EFE0:
	adds r4, #8
	subs r5, #1
	cmp r5, #0
	bne .L0830EFC8
.L0830EFE8:
	adds r1, r6, #0
	cmp r1, #2
	ble .L0830EFBC
	movs r0, #0
	ldr r1, [pc, #68]
	mov sl, r1
	movs r2, #120
	mov r9, r2
.L0830EFF8:
	movs r4, #0
	lsls r7, r0, #3
	adds r0, #1
	mov r8, r0
.L0830F000:
	bl VBlankIntrWait
	mov r0, r9
	mov r1, sl
	strh r0, [r1, #0]
	mov r0, sl
	ldr r1, [pc, #44]
	bl sub_08002F64
	adds r4, #1
	cmp r4, #89
	bls .L0830F000
	ldr r2, [sp, #328]
	adds r4, r2, r7
	ldr r1, [r4, #0]
	movs r0, #100
	muls r0, r1
	add r0, sp
	bl sub_08000604
	movs r6, #100
	ldr r5, [pc, #12]
	b .L0830F05E
	movs r0, r0
	sub sp, #320
	lsrs r0, r2, #32
	ldrh r4, [r1, r0]
	lsls r0, r0, #12
	subs r4, #4
	lsls r0, r0, #12
	subs r3, #196
	lsls r0, r0, #12
.L0830F040:
	bl VBlankIntrWait
	ldr r0, [r4, #0]
	muls r0, r6
	add r0, sp
	bl Sprite_Draw
	bl sub_080043B4
	mov r0, r9
	strh r0, [r5, #0]
	adds r0, r5, #0
	ldr r1, [pc, #68]
	bl sub_08002F64
.L0830F05E:
	ldr r0, [r4, #0]
	muls r0, r6
	add r0, sp
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830F040
	ldr r1, [sp, #328]
	adds r0, r1, r7
	ldr r1, [r0, #0]
	lsls r0, r1, #3
	adds r0, r0, r1
	adds r0, #5
	ldr r2, [pc, #40]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r3, [r1, #0]
	movs r1, #19
	ldr r2, [pc, #32]
	bl sub_08004968
	mov r0, r8
	cmp r0, #2
	bls .L0830EFF8
	add sp, #336
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.4byte 0x03003BC4
	.4byte 0x03005A0C
	.4byte 0x083DC6A0

	.thumb
	.align 1, 0
	.global sub_0830F0AC
	.thumb_func
sub_0830F0AC:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #444
	movs r0, #1
	negs r0, r0
	bl sub_08319148
	ldr r0, [pc, #268]
	ldrh r0, [r0, #0]
	movs r1, #5
	bl __udivsi3
	lsls r0, r0, #16
	lsrs r0, r0, #16
	mov r9, r0
	ldr r6, [pc, #256]
	ldr r0, [pc, #260]
	mov r8, r0
	adds r0, r6, #0
	mov r1, r8
	movs r2, #0
	movs r3, #32
	bl sub_08001EBC
	ldr r0, [pc, #248]
	movs r1, #120
	strh r1, [r0, #0]
	ldr r1, [pc, #244]
	bl sub_08002F64
	bl sub_08004D70
	bl sub_08001A6C
	ldr r4, [pc, #236]
	ldr r1, [pc, #236]
	adds r0, r4, #0
	bl sub_08001280
	adds r0, r4, #0
	movs r1, #0
	bl sub_080012C0
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	bl sub_080012F4
	ldr r2, [pc, #216]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08001314
	ldr r1, [pc, #208]
	add r2, sp, #432
	ldr r0, [r2, #0]
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	ldr r1, [pc, #200]
	ands r0, r1
	movs r1, #128
	lsls r1, r1, #1
	orrs r0, r1
	ldr r1, [pc, #196]
	ands r0, r1
	movs r1, #128
	lsls r1, r1, #9
	orrs r0, r1
	ldr r1, [pc, #188]
	ands r0, r1
	adds r1, #1
	orrs r0, r1
	str r0, [r2, #0]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08001A48
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl Bg_DrawLevelScreen
	adds r0, r4, #0
	bl sub_08001A8C
	ldr r1, [pc, #156]
	movs r2, #248
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1, #0]
	subs r1, #8
	adds r2, #64
	adds r0, r2, #0
	strh r0, [r1, #0]
	ldr r0, [pc, #144]
	ldrb r0, [r0, #0]
	bl sub_08001E60
	adds r0, r4, #0
	movs r1, #0
	bl sub_080012E4
	movs r4, #160
	lsls r4, r4, #19
	adds r1, r4, #0
	movs r2, #0
	movs r3, #240
	bl sub_08001EBC
	ldr r5, [pc, #116]
	ldr r0, [r5, #8]
	adds r1, r4, #0
	movs r2, #240
	movs r3, #16
	bl sub_08001EBC
	adds r0, r6, #0
	mov r1, r8
	movs r2, #0
	movs r3, #160
	bl sub_08001EBC
	adds r0, r5, #0
	movs r1, #31
	bl sub_08004848
	movs r0, #15
	bl sub_08004880
	bl sub_0800436C
	movs r0, #0
	movs r1, #192
	movs r2, #30
	bl Fade_Start
	movs r0, #202
	lsls r0, r0, #1
	add r0, sp
	str r0, [sp, #436]
	b .L0830F21C
	strb r4, [r4, #21]
	lsls r0, r0, #8
	strb r0, [r3, #15]
	lsls r0, r0, #8
	lsls r0, r0, #8
	lsls r0, r0, #20
	subs r4, #4
	lsls r0, r0, #12
	subs r3, #196
	lsls r0, r0, #12
	subs r1, #140
	lsls r0, r0, #12
	str r0, [r0, #64]
	lsrs r4, r0, #32
	ldr r1, [sp, #192]
	lsrs r2, r4, #32
	.2byte 0xff00 @ .raw
	.2byte 0xffff @ .raw
	lsls r7, r7, #3
	.2byte 0xffff @ .raw
	.2byte 0xffff @ .raw
	.2byte 0xff00 @ .raw
	.2byte 0xffff @ .raw
	lsls r7, r7, #3
	movs r0, r1
	lsls r0, r0, #16
	strb r7, [r4, #21]
	lsls r0, r0, #8
	movs r0, #72
	lsrs r5, r7, #32
.L0830F20C:
	bl VBlankIntrWait
	ldr r0, [pc, #80]
	movs r1, #120
	strh r1, [r0, #0]
	ldr r1, [pc, #80]
	bl sub_08002F64
.L0830F21C:
	bl Fade_IsBusy
	cmp r0, #0
	bne .L0830F20C
	movs r7, #0
	movs r1, #32
	str r1, [sp, #440]
	mov r5, sp
	mov sl, r1
	mov r8, r1
.L0830F230:
	ldr r0, [pc, #56]
	lsls r1, r7, #2
	adds r4, r1, r0
	ldr r6, [r4, #0]
	adds r0, r6, #0
	mov r1, r9
	bl __udivsi3
	cmp r0, #0
	beq .L0830F294
	bl sub_0830A000
	cmp r0, #1
	bne .L0830F274
	ldr r0, [r4, #0]
	mov r1, r9
	bl __udivsi3
	adds r2, r0, #0
	adds r2, #6
	adds r0, r5, #0
	ldr r1, [pc, #20]
	movs r3, #0
	bl sub_080002E0
	b .L0830F288
	subs r4, #4
	lsls r0, r0, #12
	subs r3, #196
	lsls r0, r0, #12
	ldrh r4, [r1, r0]
	lsls r0, r0, #12
	sub sp, #320
	lsrs r0, r2, #32
.L0830F274:
	ldr r0, [r4, #0]
	mov r1, r9
	bl __udivsi3
	adds r2, r0, #0
	adds r0, r5, #0
	ldr r1, [pc, #12]
	movs r3, #0
	bl sub_080002E0
.L0830F288:
	adds r0, r5, #0
	mov r1, r8
	b .L0830F2C4
	movs r0, r0
	sub sp, #320
	lsrs r0, r2, #32
.L0830F294:
	cmp r6, #0
	beq .L0830F2F0
	bl sub_0830A000
	cmp r0, #1
	bne .L0830F2B4
	adds r0, r5, #0
	ldr r1, [pc, #12]
	movs r2, #7
	movs r3, #0
	bl sub_080002E0
	b .L0830F2C0
	movs r0, r0
	sub sp, #320
	lsrs r0, r2, #32
.L0830F2B4:
	adds r0, r5, #0
	ldr r1, [pc, #52]
	movs r2, #1
	movs r3, #0
	bl sub_080002E0
.L0830F2C0:
	adds r0, r5, #0
	mov r1, sl
.L0830F2C4:
	movs r2, #130
	movs r3, #40
	bl sub_08000684
	adds r1, r7, #2
	adds r0, r5, #0
	bl sub_0800075C
	adds r2, r7, #6
	adds r0, r5, #0
	movs r1, #5
	bl sub_0800073C
	adds r0, r5, #0
	bl sub_0800060C
	adds r0, r5, #0
	bl Sprite_Draw
	b .L0830F342
	sub sp, #320
	lsrs r0, r2, #32
.L0830F2F0:
	bl sub_0830A000
	cmp r0, #1
	bne .L0830F30C
	adds r0, r5, #0
	ldr r1, [pc, #12]
	movs r2, #0
	movs r3, #0
	bl sub_080002E0
	b .L0830F318
	movs r0, r0
	sub sp, #320
	lsrs r0, r2, #32
.L0830F30C:
	adds r0, r5, #0
	ldr r1, [pc, #216]
	movs r2, #0
	movs r3, #0
	bl sub_080002E0
.L0830F318:
	adds r0, r5, #0
	ldr r1, [sp, #440]
	movs r2, #130
	movs r3, #40
	bl sub_08000684
	adds r1, r7, #2
	adds r0, r5, #0
	bl sub_0800075C
	adds r2, r7, #6
	adds r0, r5, #0
	movs r1, #5
	bl sub_0800073C
	adds r0, r5, #0
	bl sub_0800060C
	adds r0, r5, #0
	bl Sprite_Draw
.L0830F342:
	ldr r2, [sp, #440]
	adds r2, #56
	str r2, [sp, #440]
	adds r5, #100
	movs r0, #56
	add sl, r0
	add r8, r0
	adds r7, #1
	cmp r7, #3
	bhi .L0830F358
	b .L0830F230
.L0830F358:
	movs r3, #0
	add r2, sp, #400
	ldr r4, [pc, #140]
	ldr r1, [sp, #436]
.L0830F360:
	str r3, [r1, #0]
	adds r1, #8
	ldmia r4!, {r0}
	str r0, [r2, #0]
	adds r2, #8
	adds r3, #1
	cmp r3, #3
	bls .L0830F360
	movs r1, #0
	movs r7, #4
.L0830F374:
	subs r0, r7, r1
	adds r6, r1, #1
	cmp r0, #1
	ble .L0830F3A0
	add r4, sp, #400
	subs r5, r0, #1
.L0830F380:
	ldr r1, [r4, #0]
	ldr r0, [r4, #8]
	cmp r1, r0
	bls .L0830F398
	ldr r2, [r4, #0]
	ldr r3, [r4, #4]
	ldr r0, [r4, #8]
	ldr r1, [r4, #12]
	str r0, [r4, #0]
	str r1, [r4, #4]
	str r2, [r4, #8]
	str r3, [r4, #12]
.L0830F398:
	adds r4, #8
	subs r5, #1
	cmp r5, #0
	bne .L0830F380
.L0830F3A0:
	adds r1, r6, #0
	cmp r1, #3
	ble .L0830F374
	movs r0, #0
	ldr r1, [pc, #68]
	mov sl, r1
	movs r2, #120
	mov r9, r2
.L0830F3B0:
	movs r4, #0
	lsls r7, r0, #3
	adds r0, #1
	mov r8, r0
.L0830F3B8:
	bl VBlankIntrWait
	mov r0, r9
	mov r1, sl
	strh r0, [r1, #0]
	mov r0, sl
	ldr r1, [pc, #44]
	bl sub_08002F64
	adds r4, #1
	cmp r4, #89
	bls .L0830F3B8
	ldr r2, [sp, #436]
	adds r4, r2, r7
	ldr r1, [r4, #0]
	movs r0, #100
	muls r0, r1
	add r0, sp
	bl sub_08000604
	movs r6, #100
	ldr r5, [pc, #12]
	b .L0830F416
	movs r0, r0
	sub sp, #320
	lsrs r0, r2, #32
	ldrh r4, [r1, r0]
	lsls r0, r0, #12
	subs r4, #4
	lsls r0, r0, #12
	subs r3, #196
	lsls r0, r0, #12
.L0830F3F8:
	bl VBlankIntrWait
	ldr r0, [r4, #0]
	muls r0, r6
	add r0, sp
	bl Sprite_Draw
	bl sub_080043B4
	mov r0, r9
	strh r0, [r5, #0]
	adds r0, r5, #0
	ldr r1, [pc, #68]
	bl sub_08002F64
.L0830F416:
	ldr r0, [r4, #0]
	muls r0, r6
	add r0, sp
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830F3F8
	ldr r1, [sp, #436]
	adds r0, r1, r7
	ldr r1, [r0, #0]
	lsls r0, r1, #3
	subs r0, r0, r1
	adds r0, #4
	ldr r2, [pc, #40]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r3, [r1, #0]
	movs r1, #19
	ldr r2, [pc, #32]
	bl sub_08004968
	mov r0, r8
	cmp r0, #3
	bls .L0830F3B0
	add sp, #444
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.4byte 0x03003BC4
	.4byte 0x03005A0C
	.4byte 0x083DC6A0

	.thumb
	.align 1, 0
	.global sub_0830F464
	.thumb_func
sub_0830F464:
	push {r4, lr}
	bl sub_08004A1C
	ldr r2, [pc, #124]
	movs r0, #2
	movs r1, #11
	bl sub_08004914
	ldr r2, [pc, #116]
	movs r0, #2
	movs r1, #12
	bl sub_08004914
	ldr r4, [pc, #112]
	adds r0, r4, #0
	bl sub_08000604
	adds r0, r4, #0
	movs r1, #8
	movs r2, #96
	movs r3, #127
	bl sub_08000684
	adds r0, r4, #0
	movs r1, #0
	bl sub_08000680
	adds r0, r4, #0
	bl Sprite_Draw
	bl sub_080043B4
	movs r4, #0
.L0830F4A6:
	bl VBlankIntrWait
	ldr r0, [pc, #72]
	ldr r1, [pc, #72]
	bl sub_08002094
	movs r0, #2
	movs r1, #7
	ldr r2, [pc, #68]
	bl sub_08004914
	movs r0, #2
	movs r1, #8
	ldr r2, [pc, #60]
	bl sub_08004914
	movs r0, #2
	movs r1, #9
	ldr r2, [pc, #56]
	bl sub_08004914
	cmp r4, #0
	beq .L0830F508
	cmp r4, #1
	bne .L0830F514
	ldr r0, [pc, #20]
	movs r1, #8
	movs r2, #96
	movs r3, #127
	bl sub_08000684
	b .L0830F514
	movs r0, r0
	hlt 0x0004
	lsrs r5, r7, #32
	hlt 0x0020
	lsrs r5, r7, #32
	strb r0, [r0, #22]
	lsls r0, r0, #8
	lsrs r0, r2, #20
	lsls r0, r0, #12
	lsrs r2, r2, #20
	lsls r0, r0, #12
	stmia r6!, {r2, r5, r7}
	lsrs r5, r7, #32
	stmia r6!, {r6, r7}
	lsrs r5, r7, #32
	stmia r6!, {r2, r3, r4, r6, r7}
	lsrs r5, r7, #32
.L0830F508:
	ldr r0, [pc, #36]
	movs r1, #8
	movs r2, #104
	movs r3, #127
	bl sub_08000684
.L0830F514:
	ldr r1, [pc, #28]
	movs r0, #192
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L0830F53A
	movs r0, #5
	bl sub_083189D0
	cmp r4, #1
	bne .L0830F538
	movs r4, #0
	b .L0830F53A
	movs r0, r0
	strb r0, [r0, #22]
	lsls r0, r0, #8
	lsrs r2, r2, #20
	lsls r0, r0, #12
.L0830F538:
	movs r4, #1
.L0830F53A:
	ldr r0, [pc, #44]
	bl Sprite_Draw
	bl sub_080043B4
	ldr r1, [pc, #36]
	ldrh r2, [r1, #0]
	movs r0, #11
	ands r0, r2
	cmp r0, #0
	beq .L0830F4A6
	cmp r4, #0
	beq .L0830F55C
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq .L0830F574
.L0830F55C:
	ldr r0, [pc, #16]
	bl sub_08002094
	bl sub_08004A1C
	b .L0830F5B8
	strb r0, [r0, #22]
	lsls r0, r0, #8
	lsrs r2, r2, #20
	lsls r0, r0, #12
	lsrs r0, r2, #20
	lsls r0, r0, #12
.L0830F574:
	movs r0, #1
	negs r0, r0
	bl sub_08319148
	bl sub_083190E0
	bl sub_0831522C
	ldr r2, [pc, #56]
	movs r0, #0
	movs r1, #16
	bl sub_08004914
	movs r4, #0
.L0830F590:
	bl VBlankIntrWait
	adds r4, #1
	cmp r4, #44
	bls .L0830F590
	ldr r2, [pc, #40]
	movs r0, #0
	movs r1, #16
	bl sub_08004914
	movs r4, #0
.L0830F5A6:
	bl VBlankIntrWait
	adds r4, #1
	cmp r4, #44
	bls .L0830F5A6
	bl sub_083190F0
	bl sub_08004A1C
.L0830F5B8:
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083DC6F8
	.4byte 0x083DC718

	.thumb
	.align 1, 0
	.global sub_0830F5C8
	.thumb_func
sub_0830F5C8:
	push {r4, r5, r6, r7, lr}
	sub sp, #120
	ldr r1, [pc, #52]
	mov r0, sp
	movs r2, #120
	bl memcpy
	ldr r0, [pc, #48]
	ldrh r0, [r0, #0]
	cmp r0, #0
	bne .L0830F5E0
	b .L0830F772
.L0830F5E0:
	movs r2, #1
	ldr r1, [pc, #40]
.L0830F5E4:
	ldrh r0, [r1, #2]
	strh r0, [r1, #0]
	adds r1, #2
	adds r2, #1
	cmp r2, #11
	bls .L0830F5E4
	ldr r0, [pc, #24]
	ldr r1, [pc, #20]
	ldrh r1, [r1, #0]
	strh r1, [r0, #22]
	movs r4, #0
.L0830F5FA:
	movs r5, #0
	movs r3, #0
	adds r6, r4, #1
	b .L0830F618
	movs r0, r0
	ldmia r1!, {r3, r4, r5}
	lsrs r5, r7, #32
	lsrs r2, r2, #20
	lsls r0, r0, #12
	subs r4, #20
	lsls r0, r0, #12
.L0830F610:
	cmp r3, #11
	bne .L0830F616
	movs r5, #1
.L0830F616:
	adds r3, #1
.L0830F618:
	cmp r3, #11
	bhi .L0830F636
	ldr r2, [pc, #44]
	lsls r1, r3, #1
	adds r2, r1, r2
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r1, r1, r0
	mov r7, sp
	adds r0, r7, r1
	ldrh r2, [r2, #0]
	ldrh r0, [r0, #0]
	cmp r2, r0
	beq .L0830F610
.L0830F636:
	cmp r5, #0
	bne .L0830F63C
	b .L0830F76A
.L0830F63C:
	cmp r4, #4
	bls .L0830F642
	b .L0830F75A
.L0830F642:
	lsls r0, r4, #2
	ldr r1, [pc, #8]
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	subs r4, #20
	lsls r0, r0, #12
	ldmia r1!, {r4, r5, r7}
	lsrs r5, r7, #32
	ldr r1, [pc, #4]
	movs r0, #1
	strb r0, [r1, #0]
	b .L0830F71E
	ldr r2, [r6, r3]
	lsls r0, r0, #12
	ldr r5, [pc, #92]
	movs r4, #1
	strb r4, [r5, #1]
	movs r0, #0
	movs r1, #1
	movs r2, #100
	bl sub_082FB810
	strb r4, [r5, #2]
	movs r0, #0
	movs r1, #2
	movs r2, #10
	bl sub_082FB810
	strb r4, [r5, #3]
	movs r0, #0
	movs r1, #3
	movs r2, #100
	bl sub_082FB810
	strb r4, [r5, #4]
	movs r0, #0
	movs r1, #4
	movs r2, #5
	bl sub_082FB810
	strb r4, [r5, #5]
	movs r0, #0
	movs r1, #5
	movs r2, #5
	bl sub_082FB810
	ldr r1, [pc, #32]
	ldrh r0, [r1, #0]
	adds r0, #10
	strh r0, [r1, #0]
	lsls r0, r0, #16
	lsrs r0, r0, #16
	cmp r0, #99
	bls .L0830F6B4
	movs r0, #99
	strh r0, [r1, #0]
.L0830F6B4:
	ldr r0, [pc, #16]
	adds r0, #90
	movs r1, #255
	strh r1, [r0, #0]
	b .L0830F71E
	movs r0, r0
	adds r4, #228
	lsls r0, r0, #12
	adds r4, #220
	lsls r0, r0, #12
	movs r5, #12
	lsls r0, r0, #12
	ldr r0, [pc, #32]
	ldrb r1, [r0, #0]
	cmp r1, #3
	bhi .L0830F75A
	ldrb r0, [r0, #0]
	bl sub_08315020
	adds r1, r0, #0
	ldrb r0, [r1, #28]
	cmp r0, #0
	bne .L0830F75A
	movs r0, #1
	strb r0, [r1, #28]
	ldr r1, [pc, #12]
	ldrh r2, [r1, #0]
	movs r3, #250
	lsls r3, r3, #1
	b .L0830F71A
	strb r4, [r3, #21]
	lsls r0, r0, #8
	ldr r0, [r6, r3]
	lsls r0, r0, #12
	ldr r0, [pc, #44]
	ldrb r7, [r0, #0]
	cmp r7, #3
	bhi .L0830F75A
	ldrb r0, [r0, #0]
	bl sub_08315020
	adds r1, r0, #0
	ldrb r0, [r1, #29]
	cmp r0, #0
	bne .L0830F75A
	movs r0, #1
	strb r0, [r1, #29]
	ldr r1, [pc, #24]
	ldrh r2, [r1, #0]
	movs r3, #250
	lsls r3, r3, #2
.L0830F71A:
	adds r0, r2, r3
	strh r0, [r1, #0]
.L0830F71E:
	movs r0, #17
	bl sub_083189D0
	b .L0830F75A
	movs r0, r0
	strb r4, [r3, #21]
	lsls r0, r0, #8
	ldr r0, [r6, r3]
	lsls r0, r0, #12
	ldr r0, [pc, #72]
	ldrb r7, [r0, #0]
	cmp r7, #3
	bhi .L0830F75A
	ldrb r0, [r0, #0]
	bl sub_08315020
	adds r1, r0, #0
	ldrb r0, [r1, #30]
	cmp r0, #0
	bne .L0830F75A
	movs r0, #1
	strb r0, [r1, #30]
	ldr r1, [pc, #52]
	ldrh r2, [r1, #0]
	ldr r3, [pc, #52]
	adds r0, r2, r3
	strh r0, [r1, #0]
	movs r0, #17
	bl sub_083189D0
.L0830F75A:
	movs r1, #0
	movs r2, #0
	ldr r0, [pc, #40]
.L0830F760:
	strh r2, [r0, #0]
	adds r0, #2
	adds r1, #1
	cmp r1, #11
	bls .L0830F760
.L0830F76A:
	adds r4, r6, #0
	cmp r4, #4
	bhi .L0830F772
	b .L0830F5FA
.L0830F772:
	add sp, #120
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x0200755C
	.4byte 0x030058F0
	.4byte 0x00001388
	.4byte 0x03003C14

	.thumb
	.align 1, 0
	.global sub_0830F78C
	.thumb_func
sub_0830F78C:
	push {r4, r5, r6, lr}
	ldr r5, [sp, #16]
	lsls r3, r3, #16
	lsrs r6, r3, #16
	lsls r0, r0, #11
	movs r3, #192
	lsls r3, r3, #19
	adds r4, r0, r3
	lsls r2, r2, #5
	adds r1, r1, r2
	lsls r1, r1, #1
	adds r4, r4, r1
	cmp r4, #0
	beq .L0830F7C2
	ldrh r0, [r4, #0]
	bl sub_08004BA4
	lsls r0, r0, #24
	cmp r0, #0
	beq .L0830F7BC
	ldrh r0, [r4, #0]
	bl sub_08004CA0
	b .L0830F7C2
.L0830F7BC:
	ldrh r0, [r4, #0]
	bl sub_0831AE58
.L0830F7C2:
	orrs r5, r6
	strh r5, [r4, #0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_0830F7CC
	.thumb_func
sub_0830F7CC:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	str r0, [sp, #4]
	mov sl, r1
	mov r8, r2
	adds r6, r3, #0
	movs r7, #0
	cmp r7, r8
	bcs .L0830F82E
.L0830F7E6:
	movs r5, #0
	adds r0, r7, #1
	mov r9, r0
	cmp r5, r6
	bcs .L0830F828
	adds r4, r7, #0
.L0830F7F2:
	ldr r1, [sp, #40]
	adds r0, r1, #0
	muls r0, r6
	adds r0, r4, r0
	ldr r1, [sp, #44]
	ldr r2, [sp, #52]
	bl Glyph_Alloc
	adds r3, r0, #0
	lsls r3, r3, #16
	lsrs r3, r3, #16
	mov ip, r3
	mov r3, sl
	adds r2, r3, r5
	ldr r1, [sp, #56]
	lsls r0, r1, #12
	str r0, [sp, #0]
	movs r0, #31
	ldr r3, [sp, #4]
	adds r1, r3, r7
	mov r3, ip
	bl sub_0830F78C
	add r4, r8
	adds r5, #1
	cmp r5, r6
	bcc .L0830F7F2
.L0830F828:
	mov r7, r9
	cmp r7, r8
	bcc .L0830F7E6
.L0830F82E:
	movs r0, #1
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	.thumb
	.align 1, 0
	.global sub_0830F840
	.thumb_func
sub_0830F840:
	push {r4, r5, lr}
	ldr r1, [pc, #148]
	movs r2, #248
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1, #0]
	movs r2, #128
	lsls r2, r2, #19
	ldrh r0, [r2, #0]
	movs r3, #128
	lsls r3, r3, #1
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2, #0]
	ldr r0, [pc, #124]
	movs r4, #160
	lsls r4, r4, #19
	adds r1, r4, #0
	movs r2, #224
	movs r3, #16
	bl sub_08001EBC
	ldr r0, [pc, #112]
	adds r1, r4, #0
	movs r2, #240
	movs r3, #16
	bl sub_08001EBC
	movs r0, #14
	bl sub_08004880
	ldr r5, [pc, #100]
	ldr r1, [pc, #100]
	adds r0, r5, #0
	movs r2, #0
	movs r3, #0
	bl sub_080002E0
	ldr r4, [pc, #92]
	ldr r1, [pc, #96]
	adds r0, r4, #0
	movs r2, #1
	movs r3, #0
	bl sub_080002E0
	adds r0, r5, #0
	bl sub_0800060C
	adds r0, r4, #0
	bl sub_0800060C
	ldr r0, [pc, #76]
	movs r1, #0
	str r1, [r0, #0]
	ldr r0, [pc, #72]
	str r1, [r0, #0]
	movs r0, #1
	bl sub_083100D4
	movs r0, #1
	bl sub_08310110
	ldr r1, [pc, #60]
	movs r0, #1
	strb r0, [r1, #0]
	movs r0, #14
	bl sub_0830FDC8
	ldr r0, [pc, #52]
	bl sub_0830FDD4
	movs r0, #1
	pop {r4, r5}
	pop {r1}
	bx r1
	.2byte 0x0000
	.4byte 0x04000008
	.4byte 0x083DC738
	.4byte 0x083DC758
	.4byte 0x03003C90
	.4byte 0x080B56E0
	.4byte 0x03003CF4
	.4byte 0x080B5670
	.4byte 0x030059D0
	.4byte 0x030059CC
	.4byte 0x030059DC
	.4byte 0x083DC778

	.thumb
	.align 1, 0
	.global sub_0830F904
	.thumb_func
sub_0830F904:
	push {r4, r5, r6, r7, lr}
	sub sp, #20
	ldr r0, [pc, #456]
	bl sub_08000604
	ldr r5, [pc, #456]
	ldrb r0, [r5, #0]
	cmp r0, #0
	bne .L0830F934
	str r0, [sp, #0]
	ldr r0, [pc, #448]
	str r0, [sp, #4]
	movs r0, #31
	str r0, [sp, #8]
	movs r0, #81
	str r0, [sp, #12]
	movs r0, #14
	str r0, [sp, #16]
	movs r0, #16
	movs r1, #0
	movs r2, #14
	movs r3, #4
	bl sub_0830F7CC
.L0830F934:
	ldr r4, [pc, #424]
	bl sub_0800347C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r1, r1, r4
	ldrb r1, [r1, #0]
	cmp r1, #1
	bne .L0830F970
	ldrb r0, [r5, #0]
	cmp r0, #0
	bne .L0830F970
	str r0, [sp, #0]
	ldr r0, [pc, #396]
	str r0, [sp, #4]
	movs r0, #31
	str r0, [sp, #8]
	movs r0, #57
	str r0, [sp, #12]
	movs r0, #14
	str r0, [sp, #16]
	movs r0, #17
	movs r1, #1
	movs r2, #2
	movs r3, #2
	bl sub_0830F7CC
.L0830F970:
	ldr r4, [pc, #364]
	bl sub_0800347C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r4, #1
	adds r1, r1, r4
	ldrb r1, [r1, #0]
	cmp r1, #1
	bne .L0830F9B2
	ldr r0, [pc, #332]
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L0830F9B2
	movs r0, #2
	str r0, [sp, #0]
	ldr r0, [pc, #332]
	str r0, [sp, #4]
	movs r0, #31
	str r0, [sp, #8]
	movs r0, #57
	str r0, [sp, #12]
	movs r0, #14
	str r0, [sp, #16]
	movs r0, #19
	movs r1, #1
	movs r2, #2
	movs r3, #2
	bl sub_0830F7CC
.L0830F9B2:
	ldr r4, [pc, #300]
	bl sub_0800347C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r4, #2
	adds r1, r1, r4
	ldrb r1, [r1, #0]
	cmp r1, #1
	bne .L0830F9F4
	ldr r0, [pc, #264]
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L0830F9F4
	movs r0, #4
	str r0, [sp, #0]
	ldr r0, [pc, #264]
	str r0, [sp, #4]
	movs r0, #31
	str r0, [sp, #8]
	movs r0, #57
	str r0, [sp, #12]
	movs r0, #14
	str r0, [sp, #16]
	movs r0, #21
	movs r1, #1
	movs r2, #2
	movs r3, #2
	bl sub_0830F7CC
.L0830F9F4:
	ldr r4, [pc, #232]
	bl sub_0800347C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r4, #3
	adds r1, r1, r4
	ldrb r1, [r1, #0]
	cmp r1, #1
	bne .L0830FA36
	ldr r0, [pc, #200]
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L0830FA36
	movs r0, #6
	str r0, [sp, #0]
	ldr r0, [pc, #200]
	str r0, [sp, #4]
	movs r0, #31
	str r0, [sp, #8]
	movs r0, #57
	str r0, [sp, #12]
	movs r0, #14
	str r0, [sp, #16]
	movs r0, #23
	movs r1, #1
	movs r2, #2
	movs r3, #2
	bl sub_0830F7CC
.L0830FA36:
	ldr r4, [pc, #168]
	bl sub_0800347C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r4, #4
	adds r1, r1, r4
	ldrb r1, [r1, #0]
	cmp r1, #1
	bne .L0830FA78
	ldr r0, [pc, #132]
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L0830FA78
	movs r0, #8
	str r0, [sp, #0]
	ldr r0, [pc, #132]
	str r0, [sp, #4]
	movs r0, #31
	str r0, [sp, #8]
	movs r0, #57
	str r0, [sp, #12]
	movs r0, #14
	str r0, [sp, #16]
	movs r0, #25
	movs r1, #1
	movs r2, #2
	movs r3, #2
	bl sub_0830F7CC
.L0830FA78:
	ldr r4, [pc, #100]
	bl sub_0800347C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r4, #5
	adds r1, r1, r4
	ldrb r1, [r1, #0]
	cmp r1, #1
	bne .L0830FABA
	ldr r0, [pc, #68]
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L0830FABA
	movs r0, #10
	str r0, [sp, #0]
	ldr r0, [pc, #68]
	str r0, [sp, #4]
	movs r0, #31
	str r0, [sp, #8]
	movs r0, #57
	str r0, [sp, #12]
	movs r0, #14
	str r0, [sp, #16]
	movs r0, #27
	movs r1, #1
	movs r2, #2
	movs r3, #2
	bl sub_0830F7CC
.L0830FABA:
	ldr r0, [pc, #28]
	movs r1, #1
	strb r1, [r0, #0]
	ldr r0, [pc, #36]
	ldr r0, [r0, #0]
	cmp r0, #5
	bhi .L0830FB40
	lsls r0, r0, #2
	ldr r1, [pc, #32]
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	movs r0, r0
	subs r4, #144
	lsls r0, r0, #12
	ldr r3, [r1, r7]
	lsls r0, r0, #12
	bls .L0830FB00
	lsrs r5, r7, #32
	adds r4, #228
	lsls r0, r0, #12
	bvs .L0830FB08
	lsrs r5, r7, #32
	ldr r4, [r1, r7]
	lsls r0, r0, #12
	ldmia r1!, {r2, r6, r7}
	lsrs r5, r7, #32
	ldr r0, [pc, #4]
	movs r1, #136
	b .L0830FB24
	movs r0, r0
	subs r4, #144
	lsls r0, r0, #12
	ldr r0, [pc, #4]
	movs r1, #152
.L0830FB00:
	b .L0830FB24
	movs r0, r0
	subs r4, #144
	lsls r0, r0, #12
.L0830FB08:
	ldr r0, [pc, #4]
	movs r1, #168
	b .L0830FB24
	movs r0, r0
	subs r4, #144
	lsls r0, r0, #12
	ldr r0, [pc, #4]
	movs r1, #184
	b .L0830FB24
	movs r0, r0
	subs r4, #144
	lsls r0, r0, #12
	ldr r0, [pc, #12]
	movs r1, #200
.L0830FB24:
	movs r2, #8
	movs r3, #30
	bl sub_08000684
	b .L0830FB40
	movs r0, r0
	subs r4, #144
	lsls r0, r0, #12
	ldr r0, [pc, #88]
	movs r1, #216
	movs r2, #8
	movs r3, #30
	bl sub_08000684
.L0830FB40:
	bl sub_0800347C
	ldr r1, [pc, #76]
	lsls r0, r0, #24
	lsrs r0, r0, #23
	adds r0, r0, r1
	movs r1, #136
	lsls r1, r1, #2
	ldrh r0, [r0, #0]
	ands r1, r0
	cmp r1, #0
	beq .L0830FC2A
	ldr r1, [pc, #60]
	ldr r0, [r1, #0]
	cmp r0, #0
	ble .L0830FBD4
	lsls r0, r0, #24
	lsrs r4, r0, #24
	cmp r4, #0
	beq .L0830FC2A
	ldr r7, [pc, #48]
	adds r6, r1, #0
.L0830FB6C:
	subs r5, r4, #1
	cmp r5, #0
	ble .L0830FBA0
	bl sub_0800347C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	subs r1, #1
	adds r1, r4, r1
	adds r1, r1, r7
	ldrb r0, [r1, #0]
	cmp r0, #0
	beq .L0830FBB2
	str r5, [r6, #0]
	b .L0830FBFC
	subs r4, #144
	lsls r0, r0, #12
	lsrs r4, r3, #20
	lsls r0, r0, #12
	ldr r4, [r1, r7]
	lsls r0, r0, #12
	adds r4, #228
	lsls r0, r0, #12
.L0830FBA0:
	movs r0, #0
	str r0, [r6, #0]
	bl sub_0800347C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	ldr r1, [r6, #0]
	bl sub_082FB6D8
.L0830FBB2:
	lsls r0, r5, #24
	lsrs r4, r0, #24
	cmp r4, #0
	bne .L0830FB6C
	b .L0830FC2A
.L0830FBBC:
	ldr r4, [pc, #16]
	str r5, [r4, #0]
	bl sub_0800347C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	ldr r1, [r4, #0]
	bl sub_082FB6D8
	b .L0830FC96
	ldr r4, [r1, r7]
	lsls r0, r0, #12
.L0830FBD4:
	movs r5, #5
	ldr r7, [pc, #52]
	adds r6, r1, #0
.L0830FBDA:
	subs r4, r5, #1
	cmp r4, #0
	ble .L0830FC10
	bl sub_0800347C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	subs r1, #1
	adds r1, r5, r1
	adds r1, r1, r7
	ldrb r0, [r1, #0]
	cmp r0, #0
	beq .L0830FC22
	str r4, [r6, #0]
.L0830FBFC:
	bl sub_0800347C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	ldr r1, [r6, #0]
	bl sub_082FB6D8
	b .L0830FC2A
	adds r4, #228
	lsls r0, r0, #12
.L0830FC10:
	movs r0, #0
	str r0, [r6, #0]
	bl sub_0800347C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	ldr r1, [r6, #0]
	bl sub_082FB6D8
.L0830FC22:
	lsls r0, r4, #24
	lsrs r5, r0, #24
	cmp r5, #0
	bne .L0830FBDA
.L0830FC2A:
	bl sub_0800347C
	ldr r1, [pc, #368]
	lsls r0, r0, #24
	lsrs r0, r0, #23
	adds r0, r0, r1
	movs r1, #136
	lsls r1, r1, #1
	ldrh r0, [r0, #0]
	ands r1, r0
	cmp r1, #0
	beq .L0830FC96
	movs r7, #0
	ldr r0, [pc, #348]
	ldr r1, [r0, #0]
	adds r0, r1, #1
	cmp r0, #5
	bgt .L0830FC80
	lsls r0, r1, #24
	lsrs r4, r0, #24
	cmp r4, #5
	bhi .L0830FC80
	ldr r6, [pc, #336]
.L0830FC58:
	adds r5, r4, #1
	cmp r5, #5
	bgt .L0830FC80
	bl sub_0800347C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r1, #1
	adds r1, r4, r1
	adds r1, r1, r6
	ldrb r0, [r1, #0]
	cmp r0, #0
	bne .L0830FBBC
	lsls r0, r5, #24
	lsrs r4, r0, #24
	cmp r4, #5
	bls .L0830FC58
.L0830FC80:
	cmp r7, #0
	bne .L0830FC96
	ldr r4, [pc, #284]
	str r7, [r4, #0]
	bl sub_0800347C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	ldr r1, [r4, #0]
	bl sub_082FB6D8
.L0830FC96:
	bl sub_0800347C
	ldr r4, [pc, #260]
	lsls r0, r0, #24
	lsrs r0, r0, #23
	adds r0, r0, r4
	movs r5, #1
	movs r1, #1
	ldrh r0, [r0, #0]
	ands r1, r0
	cmp r1, #0
	beq .L0830FCE4
	movs r0, #16
	movs r1, #0
	movs r2, #13
	movs r3, #4
	bl sub_080049D4
	ldr r0, [pc, #240]
	bl sub_0800060C
	bl sub_0800347C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	ldr r1, [pc, #216]
	ldr r1, [r1, #0]
	bl sub_082FB6D8
	ldr r0, [pc, #220]
	movs r1, #0
	strb r1, [r0, #0]
	ldr r0, [pc, #220]
	strb r1, [r0, #0]
	ldr r1, [pc, #220]
	movs r0, #20
	strh r0, [r1, #0]
	ldr r0, [pc, #216]
	strb r5, [r0, #0]
.L0830FCE4:
	bl sub_0800347C
	lsls r0, r0, #24
	lsrs r0, r0, #23
	adds r0, r0, r4
	movs r1, #2
	ldrh r0, [r0, #0]
	ands r1, r0
	cmp r1, #0
	beq .L0830FD2E
	movs r0, #16
	movs r1, #0
	movs r2, #13
	movs r3, #4
	bl sub_080049D4
	ldr r0, [pc, #164]
	bl sub_0800060C
	bl sub_0800347C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	ldr r1, [pc, #144]
	ldr r1, [r1, #0]
	bl sub_082FB6D8
	ldr r0, [pc, #148]
	movs r1, #0
	strb r1, [r0, #0]
	ldr r0, [pc, #144]
	strb r1, [r0, #0]
	ldr r1, [pc, #152]
	movs r0, #10
	strh r0, [r1, #0]
	ldr r0, [pc, #144]
	strb r5, [r0, #0]
.L0830FD2E:
	bl sub_0800347C
	lsls r0, r0, #24
	lsrs r0, r0, #23
	adds r0, r0, r4
	movs r1, #4
	ldrh r0, [r0, #0]
	ands r1, r0
	cmp r1, #0
	beq .L0830FD72
	movs r0, #16
	movs r1, #0
	movs r2, #13
	movs r3, #4
	bl sub_080049D4
	ldr r0, [pc, #92]
	bl sub_0800060C
	bl sub_0800347C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	ldr r1, [pc, #68]
	ldr r1, [r1, #0]
	bl sub_082FB6D8
	ldr r0, [pc, #72]
	movs r1, #0
	strb r1, [r0, #0]
	ldr r0, [pc, #72]
	strb r1, [r0, #0]
	ldr r0, [pc, #76]
	strb r5, [r0, #0]
.L0830FD72:
	ldr r0, [pc, #56]
	bl Sprite_Draw
	bl sub_0800347C
	lsls r0, r0, #24
	lsrs r0, r0, #23
	adds r0, r0, r4
	movs r4, #0
	strh r4, [r0, #0]
	bl sub_0800347C
	ldr r1, [pc, #56]
	lsls r0, r0, #24
	lsrs r0, r0, #23
	adds r0, r0, r1
	strh r4, [r0, #0]
	movs r0, #1
	add sp, #20
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000
	.4byte 0x03000D1C
	.4byte 0x030059CC
	.4byte 0x030034E4
	.4byte 0x03003C90
	.4byte 0x030059CA
	.4byte 0x030059CB
	.4byte 0x030059F8
	.4byte 0x030059DC
	.4byte 0x030059FA
	.4byte 0x03000D14

	.thumb
	.align 1, 0
	.global sub_0830FDC8
	.thumb_func
sub_0830FDC8:
	ldr r1, [pc, #4]
	str r0, [r1, #0]
	bx lr
	.2byte 0x0000
	.4byte 0x030059D4

	.thumb
	.align 1, 0
	.global sub_0830FDD4
	.thumb_func
sub_0830FDD4:
	ldr r1, [pc, #4]
	str r0, [r1, #0]
	bx lr
	.2byte 0x0000
	.4byte 0x030059D8

	.thumb
	.align 1, 0
	.global sub_0830FDE0
	.thumb_func
sub_0830FDE0:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #12
	str r0, [sp, #4]
	mov sl, r1
	str r2, [sp, #8]
	mov r9, r3
	ldr r0, [pc, #456]
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq .L0830FDFE
	b .L0830FFB0
.L0830FDFE:
	ldr r0, [pc, #452]
	ldr r1, [sp, #4]
	str r1, [r0, #0]
	ldr r0, [pc, #448]
	mov r4, sl
	str r4, [r0, #0]
	ldr r0, [pc, #448]
	ldr r1, [sp, #8]
	str r1, [r0, #0]
	ldr r0, [pc, #444]
	str r3, [r0, #0]
	movs r0, #1
	ldr r1, [sp, #48]
	movs r2, #0
	bl Glyph_Alloc
	adds r3, r0, #0
	lsls r3, r3, #16
	lsrs r3, r3, #16
	ldr r4, [sp, #44]
	lsls r4, r4, #12
	str r4, [sp, #0]
	movs r0, #31
	ldr r1, [sp, #4]
	mov r2, sl
	bl sub_0830F78C
	movs r0, #1
	ldr r1, [sp, #48]
	movs r2, #0
	bl Glyph_Alloc
	adds r3, r0, #0
	lsls r3, r3, #16
	lsrs r3, r3, #16
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	adds r6, r0, r1
	movs r0, #128
	lsls r0, r0, #3
	orrs r0, r4
	str r0, [sp, #0]
	movs r0, #31
	adds r1, r6, #0
	mov r2, sl
	bl sub_0830F78C
	movs r0, #1
	ldr r1, [sp, #48]
	movs r2, #0
	bl Glyph_Alloc
	adds r3, r0, #0
	lsls r3, r3, #16
	lsrs r3, r3, #16
	mov r5, sl
	add r5, r9
	movs r0, #128
	lsls r0, r0, #4
	orrs r0, r4
	str r0, [sp, #0]
	movs r0, #31
	ldr r1, [sp, #4]
	adds r2, r5, #0
	bl sub_0830F78C
	movs r0, #1
	ldr r1, [sp, #48]
	movs r2, #0
	bl Glyph_Alloc
	adds r3, r0, #0
	lsls r3, r3, #16
	lsrs r3, r3, #16
	movs r0, #192
	lsls r0, r0, #4
	orrs r0, r4
	str r0, [sp, #0]
	movs r0, #31
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_0830F78C
	movs r7, #1
	mov r8, r4
	ldr r4, [sp, #8]
	cmp r7, r4
	bcs .L0830FED6
.L0830FEAE:
	movs r0, #2
	ldr r1, [sp, #48]
	movs r2, #0
	bl Glyph_Alloc
	adds r3, r0, #0
	lsls r3, r3, #16
	lsrs r3, r3, #16
	ldr r0, [sp, #4]
	adds r1, r0, r7
	mov r4, r8
	str r4, [sp, #0]
	movs r0, #31
	mov r2, sl
	bl sub_0830F78C
	adds r7, #1
	ldr r0, [sp, #8]
	cmp r7, r0
	bcc .L0830FEAE
.L0830FED6:
	movs r4, #1
	ldr r1, [sp, #8]
	cmp r4, r1
	bcs .L0830FF0C
	movs r7, #128
	lsls r7, r7, #4
	mov r0, r8
	orrs r7, r0
.L0830FEE6:
	movs r0, #2
	ldr r1, [sp, #48]
	movs r2, #0
	bl Glyph_Alloc
	adds r3, r0, #0
	lsls r3, r3, #16
	lsrs r3, r3, #16
	ldr r0, [sp, #4]
	adds r1, r0, r4
	str r7, [sp, #0]
	movs r0, #31
	adds r2, r5, #0
	bl sub_0830F78C
	adds r4, #1
	ldr r1, [sp, #8]
	cmp r4, r1
	bcc .L0830FEE6
.L0830FF0C:
	movs r5, #1
	cmp r5, r9
	bcs .L0830FF38
.L0830FF12:
	movs r0, #3
	ldr r1, [sp, #48]
	movs r2, #0
	bl Glyph_Alloc
	adds r3, r0, #0
	lsls r3, r3, #16
	lsrs r3, r3, #16
	mov r4, sl
	adds r2, r4, r5
	mov r0, r8
	str r0, [sp, #0]
	movs r0, #31
	ldr r1, [sp, #4]
	bl sub_0830F78C
	adds r5, #1
	cmp r5, r9
	bcc .L0830FF12
.L0830FF38:
	movs r5, #1
	cmp r5, r9
	bcs .L0830FF6A
	movs r4, #128
	lsls r4, r4, #3
	mov r1, r8
	orrs r4, r1
.L0830FF46:
	movs r0, #3
	ldr r1, [sp, #48]
	movs r2, #0
	bl Glyph_Alloc
	adds r3, r0, #0
	lsls r3, r3, #16
	lsrs r3, r3, #16
	mov r0, sl
	adds r2, r0, r5
	str r4, [sp, #0]
	movs r0, #31
	adds r1, r6, #0
	bl sub_0830F78C
	adds r5, #1
	cmp r5, r9
	bcc .L0830FF46
.L0830FF6A:
	movs r6, #1
	ldr r1, [sp, #8]
	cmp r6, r1
	bcs .L0830FFAA
.L0830FF72:
	movs r5, #1
	adds r7, r6, #1
	cmp r5, r9
	bcs .L0830FFA2
.L0830FF7A:
	movs r0, #4
	ldr r1, [sp, #48]
	movs r2, #0
	bl Glyph_Alloc
	adds r3, r0, #0
	lsls r3, r3, #16
	lsrs r3, r3, #16
	mov r4, sl
	adds r2, r4, r5
	mov r0, r8
	str r0, [sp, #0]
	movs r0, #31
	ldr r4, [sp, #4]
	adds r1, r4, r6
	bl sub_0830F78C
	adds r5, #1
	cmp r5, r9
	bcc .L0830FF7A
.L0830FFA2:
	adds r6, r7, #0
	ldr r0, [sp, #8]
	cmp r6, r0
	bcc .L0830FF72
.L0830FFAA:
	ldr r1, [pc, #20]
	movs r0, #1
	strb r0, [r1, #0]
.L0830FFB0:
	add sp, #12
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.4byte 0x030059C9
	.4byte 0x03003EE8
	.4byte 0x03003EEC
	.4byte 0x03003EF0
	.4byte 0x03003EF4

	.thumb
	.align 1, 0
	.global sub_0830FFD4
	.thumb_func
sub_0830FFD4:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r6, r0, #0
	adds r7, r1, #0
	mov r8, r2
	mov r9, r3
	ldr r5, [sp, #36]
	ldr r0, [pc, #48]
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L083100A8
	cmp r5, #18
	beq .L08310076
	adds r0, r5, #0
	subs r0, #16
	cmp r0, #1
	bhi .L08310034
	ldr r4, [pc, #32]
	ldr r1, [pc, #36]
	adds r0, r4, #0
	movs r2, #15
	movs r3, #0
	bl sub_080002E0
	cmp r5, #16
	bne .L08310028
	adds r0, r4, #0
	movs r1, #0
	movs r2, #4
	bl sub_0800073C
	b .L08310070
	movs r0, r0
	ldr r0, [r1, r7]
	lsls r0, r0, #12
	subs r4, #44
	lsls r0, r0, #12
	adds r4, #16
	lsrs r3, r1, #32
.L08310028:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #5
	bl sub_0800073C
	b .L08310070
.L08310034:
	cmp r5, #4
	bne .L08310064
	ldr r0, [pc, #28]
	ldr r0, [r0, #0]
	cmp r0, #23
	bne .L08310064
	ldr r4, [pc, #24]
	ldr r1, [pc, #28]
	adds r0, r4, #0
	movs r2, #4
	movs r3, #0
	bl sub_080002E0
	adds r0, r4, #0
	movs r1, #8
	bl sub_0800075C
	b .L08310070
	subs r7, #12
	lsls r0, r0, #12
	subs r4, #44
	lsls r0, r0, #12
	adds r4, #16
	lsrs r3, r1, #32
.L08310064:
	ldr r0, [pc, #88]
	ldr r1, [pc, #92]
	adds r2, r5, #0
	movs r3, #0
	bl sub_080002E0
.L08310070:
	ldr r0, [pc, #76]
	bl sub_08000604
.L08310076:
	ldr r0, [pc, #80]
	ldr r0, [r0, #0]
	str r0, [sp, #0]
	ldr r0, [pc, #76]
	ldr r0, [r0, #0]
	str r0, [sp, #4]
	adds r0, r6, #0
	adds r1, r7, #0
	mov r2, r8
	mov r3, r9
	bl sub_0830FDE0
	cmp r5, #18
	beq .L083100A2
	ldr r0, [pc, #44]
	lsls r1, r6, #3
	adds r1, #6
	lsls r2, r7, #3
	adds r2, #6
	movs r3, #30
	bl sub_08000684
.L083100A2:
	ldr r1, [pc, #44]
	movs r0, #1
	strb r0, [r1, #0]
.L083100A8:
	cmp r5, #18
	beq .L083100B2
	ldr r0, [pc, #16]
	bl Sprite_Draw
.L083100B2:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.4byte 0x03003C2C
	.4byte 0x080B3410
	.4byte 0x030059D4
	.4byte 0x030059D8
	.4byte 0x030059C8
