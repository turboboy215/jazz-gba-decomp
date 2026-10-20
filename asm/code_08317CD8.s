	.include "asm/macros.inc"
	.syntax unified
	.text

@ GAX2_init: [sure] "WHEN USING DIFFERENT FX_MIXING_RATE..." (2,296 bytes; the far branches to 08318542/083185BC are agbcc long jumps)
	.thumb
	.align 1, 0
	.global sub_08317CD8
	.thumb_func
sub_08317CD8:
	.global GAX2_init
	.thumb_set GAX2_init, sub_08317CD8
	.2byte 0xb5f0 @ push {r4, r5, r6, r7, lr}
	.2byte 0x4657 @ mov r7, sl
	.2byte 0x464e @ mov r6, r9
	.2byte 0x4645 @ mov r5, r8
	.2byte 0xb4e0 @ push {r5, r6, r7}
	.2byte 0xb081 @ sub sp, #4
	.2byte 0x1c07 @ adds r7, r0, #0
	.2byte 0x2600 @ movs r6, #0
	.2byte 0x480e @ ldr r0, [pc, #56]
	.2byte 0x6839 @ ldr r1, [r7, #0]
	.2byte 0x6001 @ str r1, [r0, #0]
	.2byte 0x6b39 @ ldr r1, [r7, #48]
	.2byte 0x4681 @ mov r9, r0
	.2byte 0x480d @ ldr r0, [pc, #52]
	.2byte 0x4684 @ mov ip, r0
	.2byte 0x2900 @ cmp r1, #0
	.2byte 0xd100 @ bne.n 0x8317cfc
	.2byte 0x6338 @ str r0, [r7, #48]
	.2byte 0x6afd @ ldr r5, [r7, #44]
	.2byte 0x2d00 @ cmp r5, #0
	.2byte 0xd100 @ bne.n 0x8317d04
	.2byte 0x823e @ strh r6, [r7, #16]
	.2byte 0x8938 @ ldrh r0, [r7, #8]
	.2byte 0x4909 @ ldr r1, [pc, #36]
	.2byte 0x6b3b @ ldr r3, [r7, #48]
	.2byte 0x4288 @ cmp r0, r1
	.2byte 0xd101 @ bne.n 0x8317d12
	.2byte 0x8b18 @ ldrh r0, [r3, #24]
	.2byte 0x8138 @ strh r0, [r7, #8]
	.2byte 0x8978 @ ldrh r0, [r7, #10]
	.2byte 0x4288 @ cmp r0, r1
	.2byte 0xd111 @ bne.n 0x8317d3c
	.2byte 0x2d00 @ cmp r5, #0
	.2byte 0xd00f @ beq.n 0x8317d3c
	.2byte 0x8b58 @ ldrh r0, [r3, #26]
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd00a @ beq.n 0x8317d38
	.2byte 0xe00a @ b.n 0x8317d3a
	.2byte 0x0b0c @ lsrs r4, r1, #12
	.2byte 0x0300 @ lsls r0, r0, #12
	.2byte 0xfbf0 @ .raw
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0xffff @ .raw
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x1c08 @ adds r0, r1, #0
	.2byte 0xe01a @ b.n 0x8317d6a
	.2byte 0x1c08 @ adds r0, r1, #0
	.2byte 0xe029 @ b.n 0x8317d8c
	.2byte 0x8938 @ ldrh r0, [r7, #8]
	.2byte 0x8178 @ strh r0, [r7, #10]
	.2byte 0x8a38 @ ldrh r0, [r7, #16]
	.2byte 0x4922 @ ldr r1, [pc, #136]
	.2byte 0x4288 @ cmp r0, r1
	.2byte 0xd101 @ bne.n 0x8317d48
	.2byte 0x7f18 @ ldrb r0, [r3, #28]
	.2byte 0x8238 @ strh r0, [r7, #16]
	.2byte 0x8a78 @ ldrh r0, [r7, #18]
	.2byte 0x4288 @ cmp r0, r1
	.2byte 0xd101 @ bne.n 0x8317d52
	.2byte 0x20ff @ movs r0, #255
	.2byte 0x8278 @ strh r0, [r7, #18]
	.2byte 0x893c @ ldrh r4, [r7, #8]
	.2byte 0x2100 @ movs r1, #0
	.2byte 0x4a1d @ ldr r2, [pc, #116]
	.2byte 0x4690 @ mov r8, r2
	.2byte 0x8810 @ ldrh r0, [r2, #0]
	.2byte 0x42a0 @ cmp r0, r4
	.2byte 0xd2e7 @ bcs.n 0x8317d30
	.2byte 0x3204 @ adds r2, #4
	.2byte 0x3101 @ adds r1, #1
	.2byte 0x290c @ cmp r1, #12
	.2byte 0xd9f8 @ bls.n 0x8317d5a
	.2byte 0x200c @ movs r0, #12
	.2byte 0x0080 @ lsls r0, r0, #2
	.2byte 0x4440 @ add r0, r8
	.2byte 0x8800 @ ldrh r0, [r0, #0]
	.2byte 0x8138 @ strh r0, [r7, #8]
	.2byte 0x2d00 @ cmp r5, #0
	.2byte 0xd00d @ beq.n 0x8317d92
	.2byte 0x897c @ ldrh r4, [r7, #10]
	.2byte 0x2100 @ movs r1, #0
	.2byte 0x4642 @ mov r2, r8
	.2byte 0x8810 @ ldrh r0, [r2, #0]
	.2byte 0x42a0 @ cmp r0, r4
	.2byte 0xd2d8 @ bcs.n 0x8317d34
	.2byte 0x3204 @ adds r2, #4
	.2byte 0x3101 @ adds r1, #1
	.2byte 0x290c @ cmp r1, #12
	.2byte 0xd9f8 @ bls.n 0x8317d7c
	.2byte 0x200c @ movs r0, #12
	.2byte 0x0080 @ lsls r0, r0, #2
	.2byte 0x4440 @ add r0, r8
	.2byte 0x8800 @ ldrh r0, [r0, #0]
	.2byte 0x8178 @ strh r0, [r7, #10]
	.2byte 0x8978 @ ldrh r0, [r7, #10]
	.2byte 0x4563 @ cmp r3, ip
	.2byte 0xd100 @ bne.n 0x8317d9c
	.2byte 0x8138 @ strh r0, [r7, #8]
	.2byte 0x0400 @ lsls r0, r0, #16
	.2byte 0x0c00 @ lsrs r0, r0, #16
	.2byte 0x893b @ ldrh r3, [r7, #8]
	.2byte 0x4298 @ cmp r0, r3
	.2byte 0xd018 @ beq.n 0x8317dd8
	.2byte 0x89f9 @ ldrh r1, [r7, #14]
	.2byte 0x2022 @ movs r0, #34
	.2byte 0x4008 @ ands r0, r1
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd013 @ beq.n 0x8317dd8
	.2byte 0x1c38 @ adds r0, r7, #0
	.2byte 0x3038 @ adds r0, #56
	.2byte 0x7800 @ ldrb r0, [r0, #0]
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd003 @ beq.n 0x8317dc2
	.2byte 0x4805 @ ldr r0, [pc, #20]
	.2byte 0x4905 @ ldr r1, [pc, #20]
	.2byte 0xf001, 0xf813 @ bl 0x8318de8
	.2byte 0x2000 @ movs r0, #0
	.2byte 0xf000, 0xfbfa @ bl 0x83185bc
	.2byte 0xffff @ .raw
	.2byte 0x0000 @ movs r0, r0
	.2byte 0xfbbc @ .raw
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0xfcb8 @ .raw
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0xfd18 @ .raw
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x4648 @ mov r0, r9
	.2byte 0x6804 @ ldr r4, [r0, #0]
	.2byte 0x1c22 @ adds r2, r4, #0
	.2byte 0x3280 @ adds r2, #128
	.2byte 0x8a38 @ ldrh r0, [r7, #16]
	.2byte 0x3004 @ adds r0, #4
	.2byte 0x2304 @ movs r3, #4
	.2byte 0x425b @ negs r3, r3
	.2byte 0x4018 @ ands r0, r3
	.2byte 0x308c @ adds r0, #140
	.2byte 0x6839 @ ldr r1, [r7, #0]
	.2byte 0x1809 @ adds r1, r1, r0
	.2byte 0x6011 @ str r1, [r2, #0]
	.2byte 0x3204 @ adds r2, #4
	.2byte 0x6879 @ ldr r1, [r7, #4]
	.2byte 0x398c @ subs r1, #140
	.2byte 0x8a38 @ ldrh r0, [r7, #16]
	.2byte 0x3004 @ adds r0, #4
	.2byte 0x4018 @ ands r0, r3
	.2byte 0x1a09 @ subs r1, r1, r0
	.2byte 0x6011 @ str r1, [r2, #0]
	.2byte 0x4832 @ ldr r0, [pc, #200]
	.2byte 0x6020 @ str r0, [r4, #0]
	.2byte 0x6067 @ str r7, [r4, #4]
	.2byte 0x2200 @ movs r2, #0
	.2byte 0x6562 @ str r2, [r4, #84]
	.2byte 0x6222 @ str r2, [r4, #32]
	.2byte 0x1c20 @ adds r0, r4, #0
	.2byte 0x305c @ adds r0, #92
	.2byte 0x7002 @ strb r2, [r0, #0]
	.2byte 0x4649 @ mov r1, r9
	.2byte 0x6808 @ ldr r0, [r1, #0]
	.2byte 0x305a @ adds r0, #90
	.2byte 0x7002 @ strb r2, [r0, #0]
	.2byte 0x6808 @ ldr r0, [r1, #0]
	.2byte 0x305b @ adds r0, #91
	.2byte 0x7002 @ strb r2, [r0, #0]
	.2byte 0x6808 @ ldr r0, [r1, #0]
	.2byte 0x305d @ adds r0, #93
	.2byte 0x2101 @ movs r1, #1
	.2byte 0x7001 @ strb r1, [r0, #0]
	.2byte 0x464b @ mov r3, r9
	.2byte 0x6818 @ ldr r0, [r3, #0]
	.2byte 0x6442 @ str r2, [r0, #68]
	.2byte 0x6402 @ str r2, [r0, #64]
	.2byte 0x2400 @ movs r4, #0
	.2byte 0x203b @ movs r0, #59
	.2byte 0x19c0 @ adds r0, r0, r7
	.2byte 0x4682 @ mov sl, r0
	.2byte 0x8a39 @ ldrh r1, [r7, #16]
	.2byte 0x428c @ cmp r4, r1
	.2byte 0xd209 @ bcs.n 0x8317e54
	.2byte 0x464a @ mov r2, r9
	.2byte 0x2100 @ movs r1, #0
	.2byte 0x6810 @ ldr r0, [r2, #0]
	.2byte 0x3088 @ adds r0, #136
	.2byte 0x1900 @ adds r0, r0, r4
	.2byte 0x7001 @ strb r1, [r0, #0]
	.2byte 0x3401 @ adds r4, #1
	.2byte 0x8a3b @ ldrh r3, [r7, #16]
	.2byte 0x429c @ cmp r4, r3
	.2byte 0xd3f7 @ bcc.n 0x8317e44
	.2byte 0x6af9 @ ldr r1, [r7, #44]
	.2byte 0x2900 @ cmp r1, #0
	.2byte 0xd040 @ beq.n 0x8317edc
	.2byte 0x4d1d @ ldr r5, [pc, #116]
	.2byte 0x682b @ ldr r3, [r5, #0]
	.2byte 0x6099 @ str r1, [r3, #8]
	.2byte 0x8a38 @ ldrh r0, [r7, #16]
	.2byte 0x0081 @ lsls r1, r0, #2
	.2byte 0x1809 @ adds r1, r1, r0
	.2byte 0x010e @ lsls r6, r1, #4
	.2byte 0x1c1c @ adds r4, r3, #0
	.2byte 0x3480 @ adds r4, #128
	.2byte 0x6822 @ ldr r2, [r4, #0]
	.2byte 0x2003 @ movs r0, #3
	.2byte 0x4010 @ ands r0, r2
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd00a @ beq.n 0x8317e8c
	.2byte 0x1d10 @ adds r0, r2, #4
	.2byte 0x2104 @ movs r1, #4
	.2byte 0x4249 @ negs r1, r1
	.2byte 0x4008 @ ands r0, r1
	.2byte 0x1a82 @ subs r2, r0, r2
	.2byte 0x6020 @ str r0, [r4, #0]
	.2byte 0x1c19 @ adds r1, r3, #0
	.2byte 0x3184 @ adds r1, #132
	.2byte 0x6808 @ ldr r0, [r1, #0]
	.2byte 0x1a80 @ subs r0, r0, r2
	.2byte 0x6008 @ str r0, [r1, #0]
	.2byte 0x6829 @ ldr r1, [r5, #0]
	.2byte 0x6848 @ ldr r0, [r1, #4]
	.2byte 0x3038 @ adds r0, #56
	.2byte 0x7800 @ ldrb r0, [r0, #0]
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd008 @ beq.n 0x8317eaa
	.2byte 0x1c08 @ adds r0, r1, #0
	.2byte 0x3084 @ adds r0, #132
	.2byte 0x6800 @ ldr r0, [r0, #0]
	.2byte 0x4286 @ cmp r6, r0
	.2byte 0xd903 @ bls.n 0x8317eaa
	.2byte 0x480c @ ldr r0, [pc, #48]
	.2byte 0x490c @ ldr r1, [pc, #48]
	.2byte 0xf000, 0xff9f @ bl 0x8318de8
	.2byte 0x4b09 @ ldr r3, [pc, #36]
	.2byte 0x681c @ ldr r4, [r3, #0]
	.2byte 0x1c21 @ adds r1, r4, #0
	.2byte 0x3184 @ adds r1, #132
	.2byte 0x6808 @ ldr r0, [r1, #0]
	.2byte 0x1b80 @ subs r0, r0, r6
	.2byte 0x6008 @ str r0, [r1, #0]
	.2byte 0x3904 @ subs r1, #4
	.2byte 0x680a @ ldr r2, [r1, #0]
	.2byte 0x1990 @ adds r0, r2, r6
	.2byte 0x6008 @ str r0, [r1, #0]
	.2byte 0x60e2 @ str r2, [r4, #12]
	.2byte 0x8a38 @ ldrh r0, [r7, #16]
	.2byte 0x6120 @ str r0, [r4, #16]
	.2byte 0x4699 @ mov r9, r3
	.2byte 0xe00d @ b.n 0x8317ee6
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x5833 @ ldr r3, [r6, r0]
	.2byte 0x4741 @ bx r8
	.2byte 0x0b0c @ lsrs r4, r1, #12
	.2byte 0x0300 @ lsls r0, r0, #12
	.2byte 0xfcb8 @ .raw
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0xfcc4 @ .raw
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x464c @ mov r4, r9
	.2byte 0x6820 @ ldr r0, [r4, #0]
	.2byte 0x6081 @ str r1, [r0, #8]
	.2byte 0x60c1 @ str r1, [r0, #12]
	.2byte 0x6101 @ str r1, [r0, #16]
	.2byte 0x4649 @ mov r1, r9
	.2byte 0x6808 @ ldr r0, [r1, #0]
	.2byte 0x3059 @ adds r0, #89
	.2byte 0x2100 @ movs r1, #0
	.2byte 0x7001 @ strb r1, [r0, #0]
	.2byte 0x89f9 @ ldrh r1, [r7, #14]
	.2byte 0x2040 @ movs r0, #64
	.2byte 0x4008 @ ands r0, r1
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd035 @ beq.n 0x8317f66
	.2byte 0x6af8 @ ldr r0, [r7, #44]
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd032 @ beq.n 0x8317f66
	.2byte 0x464a @ mov r2, r9
	.2byte 0x6814 @ ldr r4, [r2, #0]
	.2byte 0x1c23 @ adds r3, r4, #0
	.2byte 0x3380 @ adds r3, #128
	.2byte 0x681a @ ldr r2, [r3, #0]
	.2byte 0x2003 @ movs r0, #3
	.2byte 0x4010 @ ands r0, r2
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd00a @ beq.n 0x8317f28
	.2byte 0x1d10 @ adds r0, r2, #4
	.2byte 0x2104 @ movs r1, #4
	.2byte 0x4249 @ negs r1, r1
	.2byte 0x4008 @ ands r0, r1
	.2byte 0x1a82 @ subs r2, r0, r2
	.2byte 0x6018 @ str r0, [r3, #0]
	.2byte 0x1c21 @ adds r1, r4, #0
	.2byte 0x3184 @ adds r1, #132
	.2byte 0x6808 @ ldr r0, [r1, #0]
	.2byte 0x1a80 @ subs r0, r0, r2
	.2byte 0x6008 @ str r0, [r1, #0]
	.2byte 0x464b @ mov r3, r9
	.2byte 0x6819 @ ldr r1, [r3, #0]
	.2byte 0x6848 @ ldr r0, [r1, #4]
	.2byte 0x3038 @ adds r0, #56
	.2byte 0x7800 @ ldrb r0, [r0, #0]
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd009 @ beq.n 0x8317f4a
	.2byte 0x1c08 @ adds r0, r1, #0
	.2byte 0x3084 @ adds r0, #132
	.2byte 0x6801 @ ldr r1, [r0, #0]
	.2byte 0x483e @ ldr r0, [pc, #248]
	.2byte 0x4288 @ cmp r0, r1
	.2byte 0xd903 @ bls.n 0x8317f4a
	.2byte 0x483e @ ldr r0, [pc, #248]
	.2byte 0x493e @ ldr r1, [pc, #248]
	.2byte 0xf000, 0xff4f @ bl 0x8318de8
	.2byte 0x483e @ ldr r0, [pc, #248]
	.2byte 0x6803 @ ldr r3, [r0, #0]
	.2byte 0x1c19 @ adds r1, r3, #0
	.2byte 0x3184 @ adds r1, #132
	.2byte 0x6808 @ ldr r0, [r1, #0]
	.2byte 0x4c3c @ ldr r4, [pc, #240]
	.2byte 0x1900 @ adds r0, r0, r4
	.2byte 0x6008 @ str r0, [r1, #0]
	.2byte 0x3904 @ subs r1, #4
	.2byte 0x680a @ ldr r2, [r1, #0]
	.2byte 0x4c36 @ ldr r4, [pc, #216]
	.2byte 0x1910 @ adds r0, r2, r4
	.2byte 0x6008 @ str r0, [r1, #0]
	.2byte 0x615a @ str r2, [r3, #20]
	.2byte 0x4d37 @ ldr r5, [pc, #220]
	.2byte 0x682c @ ldr r4, [r5, #0]
	.2byte 0x1c23 @ adds r3, r4, #0
	.2byte 0x3380 @ adds r3, #128
	.2byte 0x681a @ ldr r2, [r3, #0]
	.2byte 0x2003 @ movs r0, #3
	.2byte 0x4010 @ ands r0, r2
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd00a @ beq.n 0x8317f8e
	.2byte 0x1d10 @ adds r0, r2, #4
	.2byte 0x2104 @ movs r1, #4
	.2byte 0x4249 @ negs r1, r1
	.2byte 0x4008 @ ands r0, r1
	.2byte 0x1a82 @ subs r2, r0, r2
	.2byte 0x6018 @ str r0, [r3, #0]
	.2byte 0x1c21 @ adds r1, r4, #0
	.2byte 0x3184 @ adds r1, #132
	.2byte 0x6808 @ ldr r0, [r1, #0]
	.2byte 0x1a80 @ subs r0, r0, r2
	.2byte 0x6008 @ str r0, [r1, #0]
	.2byte 0x6829 @ ldr r1, [r5, #0]
	.2byte 0x6848 @ ldr r0, [r1, #4]
	.2byte 0x3038 @ adds r0, #56
	.2byte 0x7800 @ ldrb r0, [r0, #0]
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd009 @ beq.n 0x8317fae
	.2byte 0x1c08 @ adds r0, r1, #0
	.2byte 0x3084 @ adds r0, #132
	.2byte 0x6801 @ ldr r1, [r0, #0]
	.2byte 0x2008 @ movs r0, #8
	.2byte 0x4288 @ cmp r0, r1
	.2byte 0xd903 @ bls.n 0x8317fae
	.2byte 0x4825 @ ldr r0, [pc, #148]
	.2byte 0x4925 @ ldr r1, [pc, #148]
	.2byte 0xf000, 0xff1d @ bl 0x8318de8
	.2byte 0x4825 @ ldr r0, [pc, #148]
	.2byte 0x6802 @ ldr r2, [r0, #0]
	.2byte 0x1c15 @ adds r5, r2, #0
	.2byte 0x3584 @ adds r5, #132
	.2byte 0x6829 @ ldr r1, [r5, #0]
	.2byte 0x3908 @ subs r1, #8
	.2byte 0x4688 @ mov r8, r1
	.2byte 0x6029 @ str r1, [r5, #0]
	.2byte 0x1c13 @ adds r3, r2, #0
	.2byte 0x3380 @ adds r3, #128
	.2byte 0x681c @ ldr r4, [r3, #0]
	.2byte 0x1c26 @ adds r6, r4, #0
	.2byte 0x3608 @ adds r6, #8
	.2byte 0x601e @ str r6, [r3, #0]
	.2byte 0x6254 @ str r4, [r2, #36]
	.2byte 0x6891 @ ldr r1, [r2, #8]
	.2byte 0x4681 @ mov r9, r0
	.2byte 0x2900 @ cmp r1, #0
	.2byte 0xd03b @ beq.n 0x831804c
	.2byte 0x8978 @ ldrh r0, [r7, #10]
	.2byte 0x8939 @ ldrh r1, [r7, #8]
	.2byte 0x4288 @ cmp r0, r1
	.2byte 0xd037 @ beq.n 0x831804c
	.2byte 0x2003 @ movs r0, #3
	.2byte 0x4030 @ ands r0, r6
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd009 @ beq.n 0x8317ff8
	.2byte 0x1c20 @ adds r0, r4, #0
	.2byte 0x300c @ adds r0, #12
	.2byte 0x2104 @ movs r1, #4
	.2byte 0x4249 @ negs r1, r1
	.2byte 0x4008 @ ands r0, r1
	.2byte 0x1b81 @ subs r1, r0, r6
	.2byte 0x6018 @ str r0, [r3, #0]
	.2byte 0x4642 @ mov r2, r8
	.2byte 0x1a51 @ subs r1, r2, r1
	.2byte 0x6029 @ str r1, [r5, #0]
	.2byte 0x464b @ mov r3, r9
	.2byte 0x6819 @ ldr r1, [r3, #0]
	.2byte 0x6848 @ ldr r0, [r1, #4]
	.2byte 0x3038 @ adds r0, #56
	.2byte 0x7800 @ ldrb r0, [r0, #0]
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd009 @ beq.n 0x831801a
	.2byte 0x1c08 @ adds r0, r1, #0
	.2byte 0x3084 @ adds r0, #132
	.2byte 0x6801 @ ldr r1, [r0, #0]
	.2byte 0x2008 @ movs r0, #8
	.2byte 0x4288 @ cmp r0, r1
	.2byte 0xd903 @ bls.n 0x831801a
	.2byte 0x480a @ ldr r0, [pc, #40]
	.2byte 0x490a @ ldr r1, [pc, #40]
	.2byte 0xf000, 0xfee7 @ bl 0x8318de8
	.2byte 0x4b0a @ ldr r3, [pc, #40]
	.2byte 0x681c @ ldr r4, [r3, #0]
	.2byte 0x1c21 @ adds r1, r4, #0
	.2byte 0x3184 @ adds r1, #132
	.2byte 0x6808 @ ldr r0, [r1, #0]
	.2byte 0x3808 @ subs r0, #8
	.2byte 0x6008 @ str r0, [r1, #0]
	.2byte 0x3904 @ subs r1, #4
	.2byte 0x680a @ ldr r2, [r1, #0]
	.2byte 0x1c10 @ adds r0, r2, #0
	.2byte 0x3008 @ adds r0, #8
	.2byte 0x6008 @ str r0, [r1, #0]
	.2byte 0x62a2 @ str r2, [r4, #40]
	.2byte 0x4699 @ mov r9, r3
	.2byte 0xe00d @ b.n 0x8318054
	.2byte 0x07a4 @ lsls r4, r4, #30
	.2byte 0x0000 @ movs r0, r0
	.2byte 0xfcb8 @ .raw
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0xfcc4 @ .raw
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x0b0c @ lsrs r4, r1, #12
	.2byte 0x0300 @ lsls r0, r0, #12
	.2byte 0xf85c @ .raw
	.2byte 0xffff @ .raw
	.2byte 0x464c @ mov r4, r9
	.2byte 0x6821 @ ldr r1, [r4, #0]
	.2byte 0x2000 @ movs r0, #0
	.2byte 0x6288 @ str r0, [r1, #40]
	.2byte 0x4649 @ mov r1, r9
	.2byte 0x6808 @ ldr r0, [r1, #0]
	.2byte 0x6a81 @ ldr r1, [r0, #40]
	.2byte 0x4248 @ negs r0, r1
	.2byte 0x4308 @ orrs r0, r1
	.2byte 0x0fc0 @ lsrs r0, r0, #31
	.2byte 0x4652 @ mov r2, sl
	.2byte 0x7010 @ strb r0, [r2, #0]
	.2byte 0x893a @ ldrh r2, [r7, #8]
	.2byte 0x2400 @ movs r4, #0
	.2byte 0x4b43 @ ldr r3, [pc, #268]
	.2byte 0x4698 @ mov r8, r3
	.2byte 0x4843 @ ldr r0, [pc, #268]
	.2byte 0x4682 @ mov sl, r0
	.2byte 0x4641 @ mov r1, r8
	.2byte 0x8808 @ ldrh r0, [r1, #0]
	.2byte 0x4290 @ cmp r0, r2
	.2byte 0xd204 @ bcs.n 0x8318082
	.2byte 0x3104 @ adds r1, #4
	.2byte 0x3401 @ adds r4, #1
	.2byte 0x2c0c @ cmp r4, #12
	.2byte 0xd9f8 @ bls.n 0x8318072
	.2byte 0x240c @ movs r4, #12
	.2byte 0x4649 @ mov r1, r9
	.2byte 0x6808 @ ldr r0, [r1, #0]
	.2byte 0x6a41 @ ldr r1, [r0, #36]
	.2byte 0x2008 @ movs r0, #8
	.2byte 0x7008 @ strb r0, [r1, #0]
	.2byte 0x464a @ mov r2, r9
	.2byte 0x6810 @ ldr r0, [r2, #0]
	.2byte 0x6a41 @ ldr r1, [r0, #36]
	.2byte 0x2001 @ movs r0, #1
	.2byte 0x7048 @ strb r0, [r1, #1]
	.2byte 0x6815 @ ldr r5, [r2, #0]
	.2byte 0x6a69 @ ldr r1, [r5, #36]
	.2byte 0x00a4 @ lsls r4, r4, #2
	.2byte 0x4444 @ add r4, r8
	.2byte 0x8820 @ ldrh r0, [r4, #0]
	.2byte 0x8048 @ strh r0, [r1, #2]
	.2byte 0x6a6e @ ldr r6, [r5, #36]
	.2byte 0x8871 @ ldrh r1, [r6, #2]
	.2byte 0x0148 @ lsls r0, r1, #5
	.2byte 0x1a40 @ subs r0, r0, r1
	.2byte 0x0080 @ lsls r0, r0, #2
	.2byte 0x1840 @ adds r0, r0, r1
	.2byte 0x00c0 @ lsls r0, r0, #3
	.2byte 0x4933 @ ldr r1, [pc, #204]
	.2byte 0xf002, 0xfbb5 @ bl 0x831a820
	.2byte 0x80b0 @ strh r0, [r6, #4]
	.2byte 0x8860 @ ldrh r0, [r4, #2]
	.2byte 0x87a8 @ strh r0, [r5, #60]
	.2byte 0x6aa8 @ ldr r0, [r5, #40]
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd026 @ beq.n 0x8318110
	.2byte 0x897a @ ldrh r2, [r7, #10]
	.2byte 0x2400 @ movs r4, #0
	.2byte 0x4641 @ mov r1, r8
	.2byte 0x8808 @ ldrh r0, [r1, #0]
	.2byte 0x4290 @ cmp r0, r2
	.2byte 0xd204 @ bcs.n 0x83180d8
	.2byte 0x3104 @ adds r1, #4
	.2byte 0x3401 @ adds r4, #1
	.2byte 0x2c0c @ cmp r4, #12
	.2byte 0xd9f8 @ bls.n 0x83180c8
	.2byte 0x240c @ movs r4, #12
	.2byte 0x464b @ mov r3, r9
	.2byte 0x6818 @ ldr r0, [r3, #0]
	.2byte 0x6a81 @ ldr r1, [r0, #40]
	.2byte 0x2008 @ movs r0, #8
	.2byte 0x7008 @ strb r0, [r1, #0]
	.2byte 0x6818 @ ldr r0, [r3, #0]
	.2byte 0x6a81 @ ldr r1, [r0, #40]
	.2byte 0x2001 @ movs r0, #1
	.2byte 0x7048 @ strb r0, [r1, #1]
	.2byte 0x681d @ ldr r5, [r3, #0]
	.2byte 0x6aa9 @ ldr r1, [r5, #40]
	.2byte 0x00a4 @ lsls r4, r4, #2
	.2byte 0x4444 @ add r4, r8
	.2byte 0x8820 @ ldrh r0, [r4, #0]
	.2byte 0x8048 @ strh r0, [r1, #2]
	.2byte 0x6aae @ ldr r6, [r5, #40]
	.2byte 0x8871 @ ldrh r1, [r6, #2]
	.2byte 0x0148 @ lsls r0, r1, #5
	.2byte 0x1a40 @ subs r0, r0, r1
	.2byte 0x0080 @ lsls r0, r0, #2
	.2byte 0x1840 @ adds r0, r0, r1
	.2byte 0x00c0 @ lsls r0, r0, #3
	.2byte 0x491e @ ldr r1, [pc, #120]
	.2byte 0xf002, 0xfb8b @ bl 0x831a820
	.2byte 0x80b0 @ strh r0, [r6, #4]
	.2byte 0x8860 @ ldrh r0, [r4, #2]
	.2byte 0x87e8 @ strh r0, [r5, #62]
	.2byte 0x4654 @ mov r4, sl
	.2byte 0x6821 @ ldr r1, [r4, #0]
	.2byte 0x7888 @ ldrb r0, [r1, #2]
	.2byte 0x2858 @ cmp r0, #88
	.2byte 0xd105 @ bne.n 0x8318126
	.2byte 0x7848 @ ldrb r0, [r1, #1]
	.2byte 0x2841 @ cmp r0, #65
	.2byte 0xd102 @ bne.n 0x8318126
	.2byte 0x7808 @ ldrb r0, [r1, #0]
	.2byte 0x2847 @ cmp r0, #71
	.2byte 0xd004 @ beq.n 0x8318130
	.2byte 0x4648 @ mov r0, r9
	.2byte 0x6801 @ ldr r1, [r0, #0]
	.2byte 0x8f88 @ ldrh r0, [r1, #60]
	.2byte 0x0040 @ lsls r0, r0, #1
	.2byte 0x8788 @ strh r0, [r1, #60]
	.2byte 0x4649 @ mov r1, r9
	.2byte 0x680b @ ldr r3, [r1, #0]
	.2byte 0x6a9a @ ldr r2, [r3, #40]
	.2byte 0x2a00 @ cmp r2, #0
	.2byte 0xd026 @ beq.n 0x8318188
	.2byte 0x6a59 @ ldr r1, [r3, #36]
	.2byte 0x8888 @ ldrh r0, [r1, #4]
	.2byte 0x8893 @ ldrh r3, [r2, #4]
	.2byte 0x4298 @ cmp r0, r3
	.2byte 0xd800 @ bhi.n 0x8318146
	.2byte 0x8890 @ ldrh r0, [r2, #4]
	.2byte 0x3004 @ adds r0, #4
	.2byte 0x0040 @ lsls r0, r0, #1
	.2byte 0x1c05 @ adds r5, r0, #0
	.2byte 0x4e0d @ ldr r6, [pc, #52]
	.2byte 0x6834 @ ldr r4, [r6, #0]
	.2byte 0x1c23 @ adds r3, r4, #0
	.2byte 0x3380 @ adds r3, #128
	.2byte 0x681a @ ldr r2, [r3, #0]
	.2byte 0x2003 @ movs r0, #3
	.2byte 0x4010 @ ands r0, r2
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd00a @ beq.n 0x8318174
	.2byte 0x1d10 @ adds r0, r2, #4
	.2byte 0x2104 @ movs r1, #4
	.2byte 0x4249 @ negs r1, r1
	.2byte 0x4008 @ ands r0, r1
	.2byte 0x1a82 @ subs r2, r0, r2
	.2byte 0x6018 @ str r0, [r3, #0]
	.2byte 0x1c21 @ adds r1, r4, #0
	.2byte 0x3184 @ adds r1, #132
	.2byte 0x6808 @ ldr r0, [r1, #0]
	.2byte 0x1a80 @ subs r0, r0, r2
	.2byte 0x6008 @ str r0, [r1, #0]
	.2byte 0x6831 @ ldr r1, [r6, #0]
	.2byte 0xe020 @ b.n 0x83181ba
	.2byte 0xfbbc @ .raw
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0xfbb8 @ .raw
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0xe94f @ .raw
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x0b0c @ lsrs r4, r1, #12
	.2byte 0x0300 @ lsls r0, r0, #12
	.2byte 0x6a58 @ ldr r0, [r3, #36]
	.2byte 0x8880 @ ldrh r0, [r0, #4]
	.2byte 0x0040 @ lsls r0, r0, #1
	.2byte 0x1c05 @ adds r5, r0, #0
	.2byte 0x3508 @ adds r5, #8
	.2byte 0x1c1c @ adds r4, r3, #0
	.2byte 0x3480 @ adds r4, #128
	.2byte 0x6822 @ ldr r2, [r4, #0]
	.2byte 0x2003 @ movs r0, #3
	.2byte 0x4010 @ ands r0, r2
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd00a @ beq.n 0x83181b6
	.2byte 0x1d10 @ adds r0, r2, #4
	.2byte 0x2104 @ movs r1, #4
	.2byte 0x4249 @ negs r1, r1
	.2byte 0x4008 @ ands r0, r1
	.2byte 0x1a82 @ subs r2, r0, r2
	.2byte 0x6020 @ str r0, [r4, #0]
	.2byte 0x1c19 @ adds r1, r3, #0
	.2byte 0x3184 @ adds r1, #132
	.2byte 0x6808 @ ldr r0, [r1, #0]
	.2byte 0x1a80 @ subs r0, r0, r2
	.2byte 0x6008 @ str r0, [r1, #0]
	.2byte 0x464c @ mov r4, r9
	.2byte 0x6821 @ ldr r1, [r4, #0]
	.2byte 0x6848 @ ldr r0, [r1, #4]
	.2byte 0x3038 @ adds r0, #56
	.2byte 0x7800 @ ldrb r0, [r0, #0]
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd008 @ beq.n 0x83181d6
	.2byte 0x1c08 @ adds r0, r1, #0
	.2byte 0x3084 @ adds r0, #132
	.2byte 0x6800 @ ldr r0, [r0, #0]
	.2byte 0x4285 @ cmp r5, r0
	.2byte 0xd903 @ bls.n 0x83181d6
	.2byte 0x4871 @ ldr r0, [pc, #452]
	.2byte 0x4971 @ ldr r1, [pc, #452]
	.2byte 0xf000, 0xfe09 @ bl 0x8318de8
	.2byte 0x4871 @ ldr r0, [pc, #452]
	.2byte 0x6803 @ ldr r3, [r0, #0]
	.2byte 0x1c19 @ adds r1, r3, #0
	.2byte 0x3184 @ adds r1, #132
	.2byte 0x6808 @ ldr r0, [r1, #0]
	.2byte 0x1b40 @ subs r0, r0, r5
	.2byte 0x6008 @ str r0, [r1, #0]
	.2byte 0x3904 @ subs r1, #4
	.2byte 0x680a @ ldr r2, [r1, #0]
	.2byte 0x1950 @ adds r0, r2, r5
	.2byte 0x6008 @ str r0, [r1, #0]
	.2byte 0x639a @ str r2, [r3, #56]
	.2byte 0x4e6b @ ldr r6, [pc, #428]
	.2byte 0x6833 @ ldr r3, [r6, #0]
	.2byte 0x2000 @ movs r0, #0
	.2byte 0x6498 @ str r0, [r3, #72]
	.2byte 0x6a58 @ ldr r0, [r3, #36]
	.2byte 0x8880 @ ldrh r0, [r0, #4]
	.2byte 0x0045 @ lsls r5, r0, #1
	.2byte 0x1c1c @ adds r4, r3, #0
	.2byte 0x3480 @ adds r4, #128
	.2byte 0x6822 @ ldr r2, [r4, #0]
	.2byte 0x2003 @ movs r0, #3
	.2byte 0x4010 @ ands r0, r2
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd00a @ beq.n 0x8318220
	.2byte 0x1d10 @ adds r0, r2, #4
	.2byte 0x2104 @ movs r1, #4
	.2byte 0x4249 @ negs r1, r1
	.2byte 0x4008 @ ands r0, r1
	.2byte 0x1a82 @ subs r2, r0, r2
	.2byte 0x6020 @ str r0, [r4, #0]
	.2byte 0x1c19 @ adds r1, r3, #0
	.2byte 0x3184 @ adds r1, #132
	.2byte 0x6808 @ ldr r0, [r1, #0]
	.2byte 0x1a80 @ subs r0, r0, r2
	.2byte 0x6008 @ str r0, [r1, #0]
	.2byte 0x6831 @ ldr r1, [r6, #0]
	.2byte 0x6848 @ ldr r0, [r1, #4]
	.2byte 0x3038 @ adds r0, #56
	.2byte 0x7800 @ ldrb r0, [r0, #0]
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd008 @ beq.n 0x831823e
	.2byte 0x1c08 @ adds r0, r1, #0
	.2byte 0x3084 @ adds r0, #132
	.2byte 0x6800 @ ldr r0, [r0, #0]
	.2byte 0x4285 @ cmp r5, r0
	.2byte 0xd903 @ bls.n 0x831823e
	.2byte 0x4857 @ ldr r0, [pc, #348]
	.2byte 0x4957 @ ldr r1, [pc, #348]
	.2byte 0xf000, 0xfdd5 @ bl 0x8318de8
	.2byte 0x4857 @ ldr r0, [pc, #348]
	.2byte 0x6803 @ ldr r3, [r0, #0]
	.2byte 0x1c19 @ adds r1, r3, #0
	.2byte 0x3184 @ adds r1, #132
	.2byte 0x6808 @ ldr r0, [r1, #0]
	.2byte 0x1b40 @ subs r0, r0, r5
	.2byte 0x6008 @ str r0, [r1, #0]
	.2byte 0x1c1a @ adds r2, r3, #0
	.2byte 0x3280 @ adds r2, #128
	.2byte 0x6811 @ ldr r1, [r2, #0]
	.2byte 0x1948 @ adds r0, r1, r5
	.2byte 0x6010 @ str r0, [r2, #0]
	.2byte 0x6319 @ str r1, [r3, #48]
	.2byte 0x6a58 @ ldr r0, [r3, #36]
	.2byte 0x8880 @ ldrh r0, [r0, #4]
	.2byte 0x1c0c @ adds r4, r1, #0
	.2byte 0x0046 @ lsls r6, r0, #1
	.2byte 0x2003 @ movs r0, #3
	.2byte 0x4020 @ ands r0, r4
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd008 @ beq.n 0x831827a
	.2byte 0x2200 @ movs r2, #0
	.2byte 0x2103 @ movs r1, #3
	.2byte 0x7022 @ strb r2, [r4, #0]
	.2byte 0x3401 @ adds r4, #1
	.2byte 0x3e01 @ subs r6, #1
	.2byte 0x1c20 @ adds r0, r4, #0
	.2byte 0x4008 @ ands r0, r1
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd1f8 @ bne.n 0x831826c
	.2byte 0x2000 @ movs r0, #0
	.2byte 0x9000 @ str r0, [sp, #0]
	.2byte 0x2520 @ movs r5, #32
	.2byte 0x426d @ negs r5, r5
	.2byte 0x4035 @ ands r5, r6
	.2byte 0x1c2a @ adds r2, r5, #0
	.2byte 0x2d00 @ cmp r5, #0
	.2byte 0xda00 @ bge.n 0x831828c
	.2byte 0x1cea @ adds r2, r5, #3
	.2byte 0x0252 @ lsls r2, r2, #9
	.2byte 0x0ad2 @ lsrs r2, r2, #11
	.2byte 0x2080 @ movs r0, #128
	.2byte 0x0440 @ lsls r0, r0, #17
	.2byte 0x4302 @ orrs r2, r0
	.2byte 0x4668 @ mov r0, sp
	.2byte 0x1c21 @ adds r1, r4, #0
	.2byte 0xf002, 0xf945 @ bl 0x831a528
	.2byte 0x1961 @ adds r1, r4, r5
	.2byte 0x1b70 @ subs r0, r6, r5
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xdd05 @ ble.n 0x83182b2
	.2byte 0x2200 @ movs r2, #0
	.2byte 0x700a @ strb r2, [r1, #0]
	.2byte 0x3101 @ adds r1, #1
	.2byte 0x3801 @ subs r0, #1
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd1fa @ bne.n 0x83182a8
	.2byte 0x4e3a @ ldr r6, [pc, #232]
	.2byte 0x6833 @ ldr r3, [r6, #0]
	.2byte 0x6a98 @ ldr r0, [r3, #40]
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd05c @ beq.n 0x8318376
	.2byte 0x8880 @ ldrh r0, [r0, #4]
	.2byte 0x0045 @ lsls r5, r0, #1
	.2byte 0x1c1c @ adds r4, r3, #0
	.2byte 0x3480 @ adds r4, #128
	.2byte 0x6822 @ ldr r2, [r4, #0]
	.2byte 0x2003 @ movs r0, #3
	.2byte 0x4010 @ ands r0, r2
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd00a @ beq.n 0x83182e4
	.2byte 0x1d10 @ adds r0, r2, #4
	.2byte 0x2104 @ movs r1, #4
	.2byte 0x4249 @ negs r1, r1
	.2byte 0x4008 @ ands r0, r1
	.2byte 0x1a82 @ subs r2, r0, r2
	.2byte 0x6020 @ str r0, [r4, #0]
	.2byte 0x1c19 @ adds r1, r3, #0
	.2byte 0x3184 @ adds r1, #132
	.2byte 0x6808 @ ldr r0, [r1, #0]
	.2byte 0x1a80 @ subs r0, r0, r2
	.2byte 0x6008 @ str r0, [r1, #0]
	.2byte 0x6831 @ ldr r1, [r6, #0]
	.2byte 0x6848 @ ldr r0, [r1, #4]
	.2byte 0x3038 @ adds r0, #56
	.2byte 0x7800 @ ldrb r0, [r0, #0]
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd008 @ beq.n 0x8318302
	.2byte 0x1c08 @ adds r0, r1, #0
	.2byte 0x3084 @ adds r0, #132
	.2byte 0x6800 @ ldr r0, [r0, #0]
	.2byte 0x4285 @ cmp r5, r0
	.2byte 0xd903 @ bls.n 0x8318302
	.2byte 0x4826 @ ldr r0, [pc, #152]
	.2byte 0x4926 @ ldr r1, [pc, #152]
	.2byte 0xf000, 0xfd73 @ bl 0x8318de8
	.2byte 0x4826 @ ldr r0, [pc, #152]
	.2byte 0x6803 @ ldr r3, [r0, #0]
	.2byte 0x1c19 @ adds r1, r3, #0
	.2byte 0x3184 @ adds r1, #132
	.2byte 0x6808 @ ldr r0, [r1, #0]
	.2byte 0x1b40 @ subs r0, r0, r5
	.2byte 0x6008 @ str r0, [r1, #0]
	.2byte 0x1c1a @ adds r2, r3, #0
	.2byte 0x3280 @ adds r2, #128
	.2byte 0x6811 @ ldr r1, [r2, #0]
	.2byte 0x1948 @ adds r0, r1, r5
	.2byte 0x6010 @ str r0, [r2, #0]
	.2byte 0x6359 @ str r1, [r3, #52]
	.2byte 0x6a98 @ ldr r0, [r3, #40]
	.2byte 0x8880 @ ldrh r0, [r0, #4]
	.2byte 0x1c0c @ adds r4, r1, #0
	.2byte 0x0046 @ lsls r6, r0, #1
	.2byte 0x2003 @ movs r0, #3
	.2byte 0x4020 @ ands r0, r4
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd008 @ beq.n 0x831833e
	.2byte 0x2200 @ movs r2, #0
	.2byte 0x2103 @ movs r1, #3
	.2byte 0x7022 @ strb r2, [r4, #0]
	.2byte 0x3401 @ adds r4, #1
	.2byte 0x3e01 @ subs r6, #1
	.2byte 0x1c20 @ adds r0, r4, #0
	.2byte 0x4008 @ ands r0, r1
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd1f8 @ bne.n 0x8318330
	.2byte 0x2000 @ movs r0, #0
	.2byte 0x9000 @ str r0, [sp, #0]
	.2byte 0x2520 @ movs r5, #32
	.2byte 0x426d @ negs r5, r5
	.2byte 0x4035 @ ands r5, r6
	.2byte 0x1c2a @ adds r2, r5, #0
	.2byte 0x2d00 @ cmp r5, #0
	.2byte 0xda00 @ bge.n 0x8318350
	.2byte 0x1cea @ adds r2, r5, #3
	.2byte 0x0252 @ lsls r2, r2, #9
	.2byte 0x0ad2 @ lsrs r2, r2, #11
	.2byte 0x2080 @ movs r0, #128
	.2byte 0x0440 @ lsls r0, r0, #17
	.2byte 0x4302 @ orrs r2, r0
	.2byte 0x4668 @ mov r0, sp
	.2byte 0x1c21 @ adds r1, r4, #0
	.2byte 0xf002, 0xf8e3 @ bl 0x831a528
	.2byte 0x1961 @ adds r1, r4, r5
	.2byte 0x1b70 @ subs r0, r6, r5
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xdd05 @ ble.n 0x8318376
	.2byte 0x2200 @ movs r2, #0
	.2byte 0x700a @ strb r2, [r1, #0]
	.2byte 0x3101 @ adds r1, #1
	.2byte 0x3801 @ subs r0, #1
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd1fa @ bne.n 0x831836c
	.2byte 0x89f9 @ ldrh r1, [r7, #14]
	.2byte 0x2010 @ movs r0, #16
	.2byte 0x4008 @ ands r0, r1
	.2byte 0x6b3b @ ldr r3, [r7, #48]
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd10e @ bne.n 0x83183a0
	.2byte 0x1c18 @ adds r0, r3, #0
	.2byte 0x30c4 @ adds r0, #196
	.2byte 0x6800 @ ldr r0, [r0, #0]
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd009 @ beq.n 0x83183a0
	.2byte 0x1c18 @ adds r0, r3, #0
	.2byte 0x30bc @ adds r0, #188
	.2byte 0xe008 @ b.n 0x83183a4
	.2byte 0x0000 @ movs r0, r0
	.2byte 0xfcb8 @ .raw
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0xfcc4 @ .raw
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x0b0c @ lsrs r4, r1, #12
	.2byte 0x0300 @ lsls r0, r0, #12
	.2byte 0x1c18 @ adds r0, r3, #0
	.2byte 0x30c0 @ adds r0, #192
	.2byte 0x6806 @ ldr r6, [r0, #0]
	.2byte 0x2e00 @ cmp r6, #0
	.2byte 0xd073 @ beq.n 0x8318492
	.2byte 0x4841 @ ldr r0, [pc, #260]
	.2byte 0x4680 @ mov r8, r0
	.2byte 0x6800 @ ldr r0, [r0, #0]
	.2byte 0x305c @ adds r0, #92
	.2byte 0x2101 @ movs r1, #1
	.2byte 0x7001 @ strb r1, [r0, #0]
	.2byte 0x4641 @ mov r1, r8
	.2byte 0x680c @ ldr r4, [r1, #0]
	.2byte 0x6a60 @ ldr r0, [r4, #36]
	.2byte 0x8840 @ ldrh r0, [r0, #2]
	.2byte 0x4370 @ muls r0, r6
	.2byte 0x21fa @ movs r1, #250
	.2byte 0x0089 @ lsls r1, r1, #2
	.2byte 0xf002, 0xfc9c @ bl 0x831ad00
	.2byte 0x1c06 @ adds r6, r0, #0
	.2byte 0x0075 @ lsls r5, r6, #1
	.2byte 0x1c23 @ adds r3, r4, #0
	.2byte 0x3380 @ adds r3, #128
	.2byte 0x681a @ ldr r2, [r3, #0]
	.2byte 0x2003 @ movs r0, #3
	.2byte 0x4010 @ ands r0, r2
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd00a @ beq.n 0x83183f0
	.2byte 0x1d10 @ adds r0, r2, #4
	.2byte 0x2104 @ movs r1, #4
	.2byte 0x4249 @ negs r1, r1
	.2byte 0x4008 @ ands r0, r1
	.2byte 0x1a82 @ subs r2, r0, r2
	.2byte 0x6018 @ str r0, [r3, #0]
	.2byte 0x1c21 @ adds r1, r4, #0
	.2byte 0x3184 @ adds r1, #132
	.2byte 0x6808 @ ldr r0, [r1, #0]
	.2byte 0x1a80 @ subs r0, r0, r2
	.2byte 0x6008 @ str r0, [r1, #0]
	.2byte 0x4642 @ mov r2, r8
	.2byte 0x6811 @ ldr r1, [r2, #0]
	.2byte 0x6848 @ ldr r0, [r1, #4]
	.2byte 0x3038 @ adds r0, #56
	.2byte 0x7800 @ ldrb r0, [r0, #0]
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd008 @ beq.n 0x8318410
	.2byte 0x1c08 @ adds r0, r1, #0
	.2byte 0x3084 @ adds r0, #132
	.2byte 0x6800 @ ldr r0, [r0, #0]
	.2byte 0x4285 @ cmp r5, r0
	.2byte 0xd903 @ bls.n 0x8318410
	.2byte 0x482a @ ldr r0, [pc, #168]
	.2byte 0x492b @ ldr r1, [pc, #172]
	.2byte 0xf000, 0xfcec @ bl 0x8318de8
	.2byte 0x4827 @ ldr r0, [pc, #156]
	.2byte 0x6803 @ ldr r3, [r0, #0]
	.2byte 0x1c19 @ adds r1, r3, #0
	.2byte 0x3184 @ adds r1, #132
	.2byte 0x6808 @ ldr r0, [r1, #0]
	.2byte 0x1b40 @ subs r0, r0, r5
	.2byte 0x6008 @ str r0, [r1, #0]
	.2byte 0x1c1a @ adds r2, r3, #0
	.2byte 0x3280 @ adds r2, #128
	.2byte 0x6811 @ ldr r1, [r2, #0]
	.2byte 0x1948 @ adds r0, r1, r5
	.2byte 0x6010 @ str r0, [r2, #0]
	.2byte 0x64d9 @ str r1, [r3, #76]
	.2byte 0x0070 @ lsls r0, r6, #1
	.2byte 0x6518 @ str r0, [r3, #80]
	.2byte 0x1c0c @ adds r4, r1, #0
	.2byte 0x1c06 @ adds r6, r0, #0
	.2byte 0x2003 @ movs r0, #3
	.2byte 0x4020 @ ands r0, r4
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd008 @ beq.n 0x831844c
	.2byte 0x2200 @ movs r2, #0
	.2byte 0x2103 @ movs r1, #3
	.2byte 0x7022 @ strb r2, [r4, #0]
	.2byte 0x3401 @ adds r4, #1
	.2byte 0x3e01 @ subs r6, #1
	.2byte 0x1c20 @ adds r0, r4, #0
	.2byte 0x4008 @ ands r0, r1
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd1f8 @ bne.n 0x831843e
	.2byte 0x2000 @ movs r0, #0
	.2byte 0x9000 @ str r0, [sp, #0]
	.2byte 0x2520 @ movs r5, #32
	.2byte 0x426d @ negs r5, r5
	.2byte 0x4035 @ ands r5, r6
	.2byte 0x1c2a @ adds r2, r5, #0
	.2byte 0x2d00 @ cmp r5, #0
	.2byte 0xda00 @ bge.n 0x831845e
	.2byte 0x1cea @ adds r2, r5, #3
	.2byte 0x0252 @ lsls r2, r2, #9
	.2byte 0x0ad2 @ lsrs r2, r2, #11
	.2byte 0x2080 @ movs r0, #128
	.2byte 0x0440 @ lsls r0, r0, #17
	.2byte 0x4302 @ orrs r2, r0
	.2byte 0x4668 @ mov r0, sp
	.2byte 0x1c21 @ adds r1, r4, #0
	.2byte 0xf002, 0xf85c @ bl 0x831a528
	.2byte 0x1961 @ adds r1, r4, r5
	.2byte 0x1b70 @ subs r0, r6, r5
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xdd05 @ ble.n 0x8318484
	.2byte 0x2200 @ movs r2, #0
	.2byte 0x700a @ strb r2, [r1, #0]
	.2byte 0x3101 @ adds r1, #1
	.2byte 0x3801 @ subs r0, #1
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd1fa @ bne.n 0x831847a
	.2byte 0x480d @ ldr r0, [pc, #52]
	.2byte 0x490e @ ldr r1, [pc, #56]
	.2byte 0xf7ff, 0xf846 @ bl 0x8317518
	.2byte 0x4908 @ ldr r1, [pc, #32]
	.2byte 0x6809 @ ldr r1, [r1, #0]
	.2byte 0x66c8 @ str r0, [r1, #108]
	.2byte 0x89f9 @ ldrh r1, [r7, #14]
	.2byte 0x2004 @ movs r0, #4
	.2byte 0x4008 @ ands r0, r1
	.2byte 0x0400 @ lsls r0, r0, #16
	.2byte 0x0c01 @ lsrs r1, r0, #16
	.2byte 0x2900 @ cmp r1, #0
	.2byte 0xd015 @ beq.n 0x83184cc
	.2byte 0x4808 @ ldr r0, [pc, #32]
	.2byte 0x4909 @ ldr r1, [pc, #36]
	.2byte 0xf7ff, 0xf838 @ bl 0x8317518
	.2byte 0x4901 @ ldr r1, [pc, #4]
	.2byte 0x6809 @ ldr r1, [r1, #0]
	.2byte 0x6708 @ str r0, [r1, #112]
	.2byte 0xe010 @ b.n 0x83184d2
	.2byte 0x0b0c @ lsrs r4, r1, #12
	.2byte 0x0300 @ lsls r0, r0, #12
	.2byte 0xfcb8 @ .raw
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0xfcc4 @ .raw
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0xa2ec @ add r2, pc, #944
	.2byte 0x0831 @ lsrs r1, r6, #32
	.2byte 0xa3e8 @ add r3, pc, #928
	.2byte 0x0831 @ lsrs r1, r6, #32
	.2byte 0xa220 @ add r2, pc, #128
	.2byte 0x0831 @ lsrs r1, r6, #32
	.2byte 0xa2ec @ add r2, pc, #944
	.2byte 0x0831 @ lsrs r1, r6, #32
	.2byte 0x4831 @ ldr r0, [pc, #196]
	.2byte 0x6800 @ ldr r0, [r0, #0]
	.2byte 0x6701 @ str r1, [r0, #112]
	.2byte 0x4831 @ ldr r0, [pc, #196]
	.2byte 0x4931 @ ldr r1, [pc, #196]
	.2byte 0xf7ff, 0xf81f @ bl 0x8317518
	.2byte 0x4d2e @ ldr r5, [pc, #184]
	.2byte 0x6829 @ ldr r1, [r5, #0]
	.2byte 0x6688 @ str r0, [r1, #104]
	.2byte 0x482f @ ldr r0, [pc, #188]
	.2byte 0x4930 @ ldr r1, [pc, #192]
	.2byte 0xf7ff, 0xf818 @ bl 0x8317518
	.2byte 0x6829 @ ldr r1, [r5, #0]
	.2byte 0x6608 @ str r0, [r1, #96]
	.2byte 0x482e @ ldr r0, [pc, #184]
	.2byte 0x492f @ ldr r1, [pc, #188]
	.2byte 0xf7ff, 0xf812 @ bl 0x8317518
	.2byte 0x6829 @ ldr r1, [r5, #0]
	.2byte 0x6648 @ str r0, [r1, #100]
	.2byte 0x3174 @ adds r1, #116
	.2byte 0x2000 @ movs r0, #0
	.2byte 0x8008 @ strh r0, [r1, #0]
	.2byte 0x6b38 @ ldr r0, [r7, #48]
	.2byte 0xf7ff, 0xfa36 @ bl 0x8317970
	.2byte 0x6829 @ ldr r1, [r5, #0]
	.2byte 0x1c08 @ adds r0, r1, #0
	.2byte 0x3080 @ adds r0, #128
	.2byte 0x6800 @ ldr r0, [r0, #0]
	.2byte 0x6788 @ str r0, [r1, #120]
	.2byte 0x1c08 @ adds r0, r1, #0
	.2byte 0x3084 @ adds r0, #132
	.2byte 0x6800 @ ldr r0, [r0, #0]
	.2byte 0x67c8 @ str r0, [r1, #124]
	.2byte 0xf7ff, 0xfb91 @ bl 0x8317c3c
	.2byte 0x6829 @ ldr r1, [r5, #0]
	.2byte 0x6a88 @ ldr r0, [r1, #40]
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd000 @ beq.n 0x8318524
	.2byte 0x62c8 @ str r0, [r1, #44]
	.2byte 0x2400 @ movs r4, #0
	.2byte 0x6828 @ ldr r0, [r5, #0]
	.2byte 0x6900 @ ldr r0, [r0, #16]
	.2byte 0x4284 @ cmp r4, r0
	.2byte 0xd20c @ bcs.n 0x8318548
	.2byte 0x1c2e @ adds r6, r5, #0
	.2byte 0x2500 @ movs r5, #0
	.2byte 0x6830 @ ldr r0, [r6, #0]
	.2byte 0x68c0 @ ldr r0, [r0, #12]
	.2byte 0x1940 @ adds r0, r0, r5
	.2byte 0xf001, 0xfcfa @ bl 0x8319f30
	.2byte 0x3550 @ adds r5, #80
	.2byte 0x3401 @ adds r4, #1
	.2byte 0x6830 @ ldr r0, [r6, #0]
	.2byte 0x6900 @ ldr r0, [r0, #16]
	.2byte 0x4284 @ cmp r4, r0
	.2byte 0xd3f4 @ bcc.n 0x8318532
	.2byte 0xf7ff, 0xfafa @ bl 0x8317b40
	.2byte 0x4b11 @ ldr r3, [pc, #68]
	.2byte 0x6818 @ ldr r0, [r3, #0]
	.2byte 0x2401 @ movs r4, #1
	.2byte 0x6544 @ str r4, [r0, #84]
	.2byte 0x6a01 @ ldr r1, [r0, #32]
	.2byte 0x0089 @ lsls r1, r1, #2
	.2byte 0x3018 @ adds r0, #24
	.2byte 0x1840 @ adds r0, r0, r1
	.2byte 0x6801 @ ldr r1, [r0, #0]
	.2byte 0x89f8 @ ldrh r0, [r7, #14]
	.2byte 0x08c0 @ lsrs r0, r0, #3
	.2byte 0x4020 @ ands r0, r4
	.2byte 0x2200 @ movs r2, #0
	.2byte 0x7608 @ strb r0, [r1, #24]
	.2byte 0x6818 @ ldr r0, [r3, #0]
	.2byte 0x6840 @ ldr r0, [r0, #4]
	.2byte 0x3039 @ adds r0, #57
	.2byte 0x7002 @ strb r2, [r0, #0]
	.2byte 0x6818 @ ldr r0, [r3, #0]
	.2byte 0x6840 @ ldr r0, [r0, #4]
	.2byte 0x303a @ adds r0, #58
	.2byte 0x7002 @ strb r2, [r0, #0]
	.2byte 0x89f9 @ ldrh r1, [r7, #14]
	.2byte 0x2002 @ movs r0, #2
	.2byte 0x4008 @ ands r0, r1
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd016 @ beq.n 0x83185b0
	.2byte 0x6b38 @ ldr r0, [r7, #48]
	.2byte 0x30a0 @ adds r0, #160
	.2byte 0x6800 @ ldr r0, [r0, #0]
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd011 @ beq.n 0x83185b0
	.2byte 0x6818 @ ldr r0, [r3, #0]
	.2byte 0x3059 @ adds r0, #89
	.2byte 0x7004 @ strb r4, [r0, #0]
	.2byte 0xe012 @ b.n 0x83185ba
	.2byte 0x0b0c @ lsrs r4, r1, #12
	.2byte 0x0300 @ lsls r0, r0, #12
	.2byte 0xa100 @ add r1, pc, #0
	.2byte 0x0831 @ lsrs r1, r6, #32
	.2byte 0xa220 @ add r2, pc, #128
	.2byte 0x0831 @ lsrs r1, r6, #32
	.2byte 0xa3fc @ add r3, pc, #1008
	.2byte 0x0831 @ lsrs r1, r6, #32
	.2byte 0xa470 @ add r4, pc, #448
	.2byte 0x0831 @ lsrs r1, r6, #32
	.2byte 0xa470 @ add r4, pc, #448
	.2byte 0x0831 @ lsrs r1, r6, #32
	.2byte 0xa528 @ add r5, pc, #160
	.2byte 0x0831 @ lsrs r1, r6, #32
	.2byte 0x4806 @ ldr r0, [pc, #24]
	.2byte 0x6800 @ ldr r0, [r0, #0]
	.2byte 0x3059 @ adds r0, #89
	.2byte 0x2100 @ movs r1, #0
	.2byte 0x7001 @ strb r1, [r0, #0]
	.2byte 0x2001 @ movs r0, #1
	.2byte 0xb001 @ add sp, #4
	.2byte 0xbc38 @ pop {r3, r4, r5}
	.2byte 0x4698 @ mov r8, r3
	.2byte 0x46a1 @ mov r9, r4
	.2byte 0x46aa @ mov sl, r5
	.2byte 0xbcf0 @ pop {r4, r5, r6, r7}
	.2byte 0xbc02 @ pop {r1}
	.2byte 0x4708 @ bx r1
	.4byte 0x03000B0C
