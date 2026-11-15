	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_08312CA4
	.thumb_func
sub_08312CA4:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, [pc, #104]
	ldrh r1, [r5, #4]
	ldrh r2, [r5, #6]
	bl sub_08001B50
	adds r7, r0, #0
	ldrh r0, [r5, #10]
	lsls r4, r0, #3
	ldrh r1, [r7, #0]
	lsls r0, r1, #3
	adds r0, r0, r4
	mov r9, r0
	ldrh r0, [r5, #12]
	lsls r6, r0, #3
	ldrh r1, [r7, #2]
	lsls r0, r1, #3
	adds r0, r0, r6
	mov r8, r0
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08302058
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08312D20
	adds r0, r4, #0
	mov r1, r8
	bl sub_08302058
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08312D20
	mov r0, r9
	adds r1, r6, #0
	bl sub_08302058
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08312D20
	mov r0, r9
	mov r1, r8
	bl sub_08302058
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08312D20
	ldrh r0, [r5, #20]
	bl sub_08316920
	adds r0, r5, #0
	bl sub_08313054
	b .L08312D76
	movs r0, r0
	subs r1, #140
	lsls r0, r0, #12
.L08312D20:
	ldrh r0, [r5, #8]
	adds r0, #1
	movs r1, #0
	mov r8, r1
	strh r0, [r5, #8]
	lsls r0, r0, #16
	lsrs r0, r0, #16
	ldrh r7, [r7, #4]
	cmp r0, r7
	bcc .L08312D3E
	mov r0, r8
	strh r0, [r5, #8]
	ldrh r0, [r5, #6]
	adds r0, #1
	strh r0, [r5, #6]
.L08312D3E:
	ldrh r4, [r5, #6]
	ldr r6, [pc, #64]
	ldrh r1, [r5, #4]
	adds r0, r6, #0
	bl sub_08001B40
	ldr r0, [r0, #0]
	cmp r4, r0
	bcc .L08312D62
	ldrh r1, [r5, #4]
	adds r0, r6, #0
	bl sub_08001B40
	ldrh r0, [r0, #0]
	subs r0, #1
	strh r0, [r5, #6]
	mov r1, r8
	strh r1, [r5, #8]
.L08312D62:
	ldrb r1, [r5, #2]
	ldrh r2, [r5, #4]
	ldrh r3, [r5, #6]
	ldrh r0, [r5, #10]
	str r0, [sp, #0]
	ldrh r0, [r5, #12]
	str r0, [sp, #4]
	adds r0, r6, #0
	bl sub_0831AE38
.L08312D76:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.4byte 0x0300398C

	.thumb
	.align 1, 0
	.global sub_08312D88
	.thumb_func
sub_08312D88:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, [pc, #104]
	ldrh r1, [r5, #4]
	ldrh r2, [r5, #6]
	bl sub_08001B50
	adds r7, r0, #0
	ldrh r0, [r5, #10]
	lsls r4, r0, #3
	ldrh r1, [r7, #0]
	lsls r0, r1, #3
	adds r0, r0, r4
	mov r9, r0
	ldrh r0, [r5, #12]
	lsls r6, r0, #3
	ldrh r1, [r7, #2]
	lsls r0, r1, #3
	adds r0, r0, r6
	mov r8, r0
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08302058
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08312E04
	adds r0, r4, #0
	mov r1, r8
	bl sub_08302058
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08312E04
	mov r0, r9
	adds r1, r6, #0
	bl sub_08302058
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08312E04
	mov r0, r9
	mov r1, r8
	bl sub_08302058
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08312E04
	ldrh r0, [r5, #20]
	bl sub_08316920
	adds r0, r5, #0
	bl sub_08313054
	b .L08312E4C
	movs r0, r0
	subs r1, #140
	lsls r0, r0, #12
.L08312E04:
	ldrh r0, [r5, #8]
	adds r0, #1
	movs r1, #0
	mov r8, r1
	strh r0, [r5, #8]
	lsls r0, r0, #16
	lsrs r0, r0, #16
	ldrh r7, [r7, #4]
	cmp r0, r7
	bcc .L08312E22
	mov r0, r8
	strh r0, [r5, #8]
	ldrh r0, [r5, #6]
	adds r0, #1
	strh r0, [r5, #6]
.L08312E22:
	ldrh r4, [r5, #6]
	ldr r6, [pc, #52]
	ldrh r1, [r5, #4]
	adds r0, r6, #0
	bl sub_08001B40
	ldr r0, [r0, #0]
	cmp r4, r0
	bcc .L08312E38
	mov r1, r8
	strh r1, [r5, #6]
.L08312E38:
	ldrb r1, [r5, #2]
	ldrh r2, [r5, #4]
	ldrh r3, [r5, #6]
	ldrh r0, [r5, #10]
	str r0, [sp, #0]
	ldrh r0, [r5, #12]
	str r0, [sp, #4]
	adds r0, r6, #0
	bl sub_0831AE38
.L08312E4C:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x0300398C

	.thumb
	.align 1, 0
	.global sub_08312E60
	.thumb_func
sub_08312E60:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, [pc, #100]
	ldrh r1, [r5, #4]
	ldrh r2, [r5, #6]
	bl sub_08001B50
	ldrh r1, [r5, #10]
	lsls r4, r1, #3
	ldrh r2, [r0, #0]
	lsls r1, r2, #3
	adds r1, r1, r4
	mov r8, r1
	ldrh r1, [r5, #12]
	lsls r6, r1, #3
	ldrh r0, [r0, #2]
	lsls r0, r0, #3
	adds r7, r6, r0
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08302058
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08312ED4
	adds r0, r4, #0
	adds r1, r7, #0
	bl sub_08302058
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08312ED4
	mov r0, r8
	adds r1, r6, #0
	bl sub_08302058
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08312ED4
	mov r0, r8
	adds r1, r7, #0
	bl sub_08302058
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08312ED4
	ldrh r0, [r5, #20]
	bl sub_08316920
	adds r0, r5, #0
	bl sub_08313054
	b .L08312EE8
	subs r1, #140
	lsls r0, r0, #12
.L08312ED4:
	ldr r0, [pc, #28]
	ldrb r1, [r5, #2]
	ldrh r2, [r5, #4]
	ldrh r3, [r5, #6]
	ldrh r4, [r5, #10]
	str r4, [sp, #0]
	ldrh r4, [r5, #12]
	str r4, [sp, #4]
	bl sub_0831AE38
.L08312EE8:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.4byte 0x0300398C
	.4byte 0x81012100
	.4byte 0x490180C1
	.4byte 0x47706101
	.4byte 0x08312D89
	.4byte 0x81012100
	.4byte 0x490180C1
	.4byte 0x47706101
	.4byte 0x08312CA5

	.thumb
	.align 1, 0
	.global sub_08312F18
	.thumb_func
sub_08312F18:
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	strh r0, [r4, #8]
	strh r0, [r4, #6]
	ldr r0, [pc, #40]
	str r0, [r4, #16]
	ldrb r0, [r4, #3]
	bl sub_08001E18
	lsls r0, r0, #24
	lsrs r0, r0, #24
	ldrb r1, [r4, #1]
	cmp r1, r0
	bne .L08312F44
	ldr r0, [pc, #24]
	ldrh r1, [r4, #4]
	bl sub_08001B40
	ldrh r0, [r0, #0]
	subs r0, #1
	strh r0, [r4, #6]
.L08312F44:
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x08312F55
	.4byte 0x0300398C

	.thumb
	.align 1, 0
	.global sub_08312F54
	.thumb_func
sub_08312F54:
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #3]
	bl sub_08001E18
	lsls r0, r0, #24
	lsrs r0, r0, #24
	ldrb r1, [r4, #1]
	cmp r1, r0
	bne .L08312F70
	adds r0, r4, #0
	bl sub_08312CA4
	b .L08312F7A
.L08312F70:
	movs r0, #0
	strh r0, [r4, #6]
	adds r0, r4, #0
	bl sub_08312E60
.L08312F7A:
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x81012100
	.4byte 0x490180C1
	.4byte 0x47706101
	.4byte 0x08312F91

	.thumb
	.align 1, 0
	.global sub_08312F90
	.thumb_func
sub_08312F90:
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #3]
	bl sub_08001E18
	lsls r0, r0, #24
	lsrs r0, r0, #24
	ldrb r1, [r4, #1]
	cmp r1, r0
	bne .L08312FA8
	movs r0, #1
	b .L08312FAA
.L08312FA8:
	movs r0, #0
.L08312FAA:
	strh r0, [r4, #6]
	adds r0, r4, #0
	bl sub_08312E60
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x81012100
	.4byte 0x61014901
	.4byte 0x00004770
	.4byte 0x08312FC9

	.thumb
	.align 1, 0
	.global sub_08312FC8
	.thumb_func
sub_08312FC8:
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	bl sub_08001E18
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #0
	beq .L08312FDC
	movs r0, #1
.L08312FDC:
	strh r0, [r4, #6]
	adds r0, r4, #0
	bl sub_08312E60
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x80C12100
	.4byte 0x61014901
	.4byte 0x00004770
	.4byte 0x08312FFD

	.thumb
	.align 1, 0
	.global sub_08312FFC
	.thumb_func
sub_08312FFC:
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #7
	bl sub_08001E18
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08313012
	adds r0, r4, #0
	bl sub_08312E60
.L08313012:
	pop {r4}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_08313018
	.thumb_func
sub_08313018:
	movs r1, #0
	movs r2, #0
	ldr r0, [pc, #12]
.L0831301E:
	strb r2, [r0, #0]
	adds r0, #24
	adds r1, #1
	cmp r1, #10
	bne .L0831301E
	bx lr
	.2byte 0x0000
	.4byte 0x03003F14

	.thumb
	.align 1, 0
	.global sub_08313030
	.thumb_func
sub_08313030:
	adds r3, r0, #0
	movs r2, #0
	ldr r1, [pc, #12]
.L08313036:
	ldrb r0, [r1, #0]
	cmp r0, #0
	bne .L08313048
	str r1, [r3, #0]
	movs r0, #1
	b .L08313052
	movs r0, r0
	subs r7, #20
	lsls r0, r0, #12
.L08313048:
	adds r1, #24
	adds r2, #1
	cmp r2, #10
	bls .L08313036
	movs r0, #0
.L08313052:
	bx lr

	.thumb
	.align 1, 0
	.global sub_08313054
	.thumb_func
sub_08313054:
	movs r1, #0
	strb r1, [r0, #0]
	bx lr
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_0831305C
	.thumb_func
sub_0831305C:
	push {r4, r5, lr}
	movs r5, #0
	movs r4, #0
.L08313062:
	ldr r0, [pc, #32]
	adds r2, r4, r0
	ldrb r0, [r2, #0]
	cmp r0, #0
	beq .L08313074
	ldr r1, [r2, #16]
	adds r0, r2, #0
	bl sub_0831A7E8
.L08313074:
	adds r4, #24
	adds r5, #1
	cmp r5, #10
	bne .L08313062
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x03003F14

	.thumb
	.align 1, 0
	.global sub_08313088
	.thumb_func
sub_08313088:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	adds r5, r1, #0
	bl sub_0800436C
	bl sub_08309FF4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083130AE
	ldr r1, [pc, #40]
	movs r0, #76
	muls r0, r7
	adds r0, r0, r1
	ldrb r0, [r0, #21]
	bl sub_08001DBC
.L083130AE:
	bl sub_08004D70
	bl sub_08001A6C
	ldr r1, [pc, #20]
	movs r0, #76
	muls r0, r7
	adds r1, r0, r1
	ldrb r0, [r1, #4]
	cmp r0, #0
	beq .L083130D0
	ldr r0, [r1, #0]
	bl sub_08301BC4
	b .L083130D6
	subs r1, #204
	lsrs r5, r7, #32
.L083130D0:
	ldr r0, [r1, #0]
	bl sub_08301B9C
.L083130D6:
	ldr r0, [pc, #36]
	ldr r1, [pc, #36]
	ldr r1, [r1, #0]
	bl sub_08001280
	movs r4, #0
	lsls r6, r7, #2
	cmp r4, r5
	bcs .L08313110
.L083130E8:
	adds r0, r4, #0
	adds r1, r7, #0
	movs r2, #1
	bl sub_082F1E14
	adds r4, #1
	cmp r4, r5
	bcc .L083130E8
	b .L08313110
	movs r0, r0
	subs r1, #140
	lsls r0, r0, #12
	ldr r4, [r6, r3]
	lsls r0, r0, #12
.L08313104:
	adds r0, r4, #0
	adds r1, r7, #0
	movs r2, #0
	bl sub_082F1E14
	adds r4, #1
.L08313110:
	cmp r4, #3
	bls .L08313104
	ldr r0, [pc, #288]
	ldr r4, [pc, #292]
	movs r3, #128
	lsls r3, r3, #1
	adds r1, r4, #0
	movs r2, #0
	bl sub_08001EBC
	ldr r1, [pc, #280]
	ldr r0, [r1, #52]
	asrs r0, r0, #8
	ldr r1, [r1, #56]
	asrs r1, r1, #8
	adds r2, r7, #0
	bl sub_08301BD8
	bl sub_082F4A84
	bl sub_083142F8
	bl sub_0831125C
	bl sub_08313018
	bl sub_08309C98
	ldr r5, [pc, #248]
	adds r0, r5, #0
	bl sub_083168BC
	ldr r0, [pc, #244]
	adds r0, r6, r0
	ldr r1, [r0, #0]
	movs r0, #3
	bl sub_08316900
	ldr r0, [pc, #236]
	adds r0, r6, r0
	ldr r1, [r0, #0]
	movs r0, #7
	bl sub_08316900
	adds r0, r5, #0
	bl sub_08316E18
	ldr r0, [pc, #224]
	movs r1, #31
	bl sub_08004848
	bl sub_0830F840
	movs r0, #14
	bl sub_08004880
	ldr r0, [pc, #208]
	movs r1, #224
	lsls r1, r1, #1
	adds r4, r4, r1
	adds r1, r4, #0
	movs r2, #8
	bl CpuFastSet
	movs r2, #128
	lsls r2, r2, #19
	ldrh r0, [r2, #0]
	movs r3, #130
	lsls r3, r3, #5
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2, #0]
	ldr r1, [pc, #180]
	movs r0, #0
	strb r0, [r1, #0]
	movs r4, #0
	movs r1, #0
	movs r6, #1
	negs r6, r6
	mov r8, r6
	ldr r0, [pc, #168]
	ldr r2, [pc, #172]
	mov ip, r2
	ldr r5, [pc, #172]
	ldr r3, [pc, #172]
	ldr r2, [pc, #176]
.L083131BC:
	mov r6, ip
	adds r6, #4
	mov ip, r6
	subs r6, #4
	stmia r6!, {r1}
	strb r1, [r2, #0]
	adds r2, #1
	strb r1, [r3, #0]
	adds r3, #1
	strb r1, [r5, #0]
	adds r5, #1
	mov r6, r8
	str r6, [r0, #0]
	str r6, [r0, #4]
	adds r0, #8
	adds r4, #1
	cmp r4, #3
	bls .L083131BC
	ldr r0, [pc, #140]
	movs r4, #0
	strb r4, [r0, #0]
	ldr r0, [pc, #140]
	strb r4, [r0, #0]
	ldr r1, [pc, #140]
	movs r0, #1
	strb r0, [r1, #0]
	ldr r1, [pc, #136]
	movs r0, #30
	strb r0, [r1, #0]
	movs r0, #0
	movs r1, #192
	movs r2, #30
	bl Fade_Start
	ldr r0, [pc, #124]
	strb r4, [r0, #0]
	bl sub_0830A000
	cmp r0, #1
	bne .L08313232
	movs r3, #0
	movs r4, #0
	ldr r1, [pc, #112]
	ldr r2, [pc, #72]
.L08313214:
	ldrb r0, [r1, #5]
	cmp r0, #20
	bne .L08313226
	ldr r0, [r1, #52]
	str r0, [r2, #0]
	ldr r0, [r1, #56]
	str r0, [r2, #4]
	adds r2, #8
	adds r3, #1
.L08313226:
	cmp r3, #3
	bhi .L08313232
	adds r1, #248
	adds r4, #1
	cmp r4, #15
	bls .L08313214
.L08313232:
	movs r4, #0
	ldr r5, [pc, #36]
	b .L0831329C
	ldr r7, [pc, #272]
	lsrs r5, r7, #32
	lsls r0, r0, #8
	lsls r0, r0, #20
	movs r5, #12
	lsls r0, r0, #12
	subs r1, #140
	lsls r0, r0, #12
	tst r4, r3
	lsrs r5, r7, #32
	adds r6, #180
	lsrs r5, r7, #32
	movs r0, #72
	lsrs r5, r7, #32
	str r4, [r0, r5]
	lsrs r5, r7, #32
	ldrh r0, [r6, r0]
	lsls r0, r0, #12
	eors r4, r3
	lsls r0, r0, #12
	ldrh r4, [r1, r0]
	lsls r0, r0, #12
	ldrh r4, [r4, r0]
	lsls r0, r0, #12
	ldrh r0, [r4, r0]
	lsls r0, r0, #12
	ldrh r4, [r3, r0]
	lsls r0, r0, #12
	ldrh r1, [r6, r0]
	lsls r0, r0, #12
	ldrh r2, [r6, r0]
	lsls r0, r0, #12
	ldrh r3, [r6, r0]
	lsls r0, r0, #12
	ldrh r0, [r7, r0]
	lsls r0, r0, #12
	ldrh r1, [r7, r0]
	lsls r0, r0, #12
	ldr r4, [pc, #512]
	lsls r0, r0, #8
.L08313288:
	ldr r2, [r5, #0]
	asrs r2, r2, #8
	ldr r3, [r5, #4]
	asrs r3, r3, #8
	adds r0, r4, #0
	adds r1, r7, #0
	bl sub_082F2074
	adds r5, #8
	adds r4, #1
.L0831329C:
	bl sub_0800314C
	cmp r4, r0
	bcc .L08313288
	ldr r0, [pc, #96]
	bl sub_08002BA0
	movs r0, #1
	bl sub_083100D4
	bl sub_08004A1C
	bl sub_0800347C
	ldr r1, [pc, #80]
	strb r0, [r1, #0]
	ldr r0, [pc, #80]
	movs r5, #0
	str r5, [r0, #0]
	ldr r4, [pc, #80]
	adds r0, r4, #0
	bl sub_083177CC
	adds r0, r4, #0
	adds r0, #56
	strb r5, [r0, #0]
	ldr r0, [pc, #68]
	strh r0, [r4, #8]
	ldr r0, [pc, #68]
	str r0, [r4, #44]
	ldr r0, [pc, #68]
	str r0, [r4, #0]
	movs r0, #128
	lsls r0, r0, #5
	str r0, [r4, #4]
	adds r0, r4, #0
	bl GAX2_init
	movs r4, #1
	negs r4, r4
	ldr r0, [pc, #52]
	ldr r0, [r0, #0]
	bl sub_08316810
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_083191AC
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083142ED
	.4byte 0x03005A3A
	.4byte 0x030059F0
	.4byte 0x030046E0
	.4byte 0x00002377
	.4byte 0x083D1C5C
	.4byte 0x0300471C
	.4byte 0x030059B8

	.thumb
	.align 1, 0
	.global sub_08313328
	.thumb_func
sub_08313328:
	push {r4, r5, lr}
	movs r5, #0
.L0831332C:
	ldr r4, [pc, #60]
	bl sub_0800347C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r1, r5, r1
	adds r1, r1, r4
	ldrb r1, [r1, #0]
	cmp r1, #1
	bne .L083133F4
	ldr r0, [pc, #40]
	adds r0, r5, r0
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L083133F4
	movs r0, #5
	movs r1, #18
	movs r2, #19
	movs r3, #2
	bl sub_080049D4
	subs r0, r5, #1
	cmp r0, #4
	bhi .L083133F4
	lsls r0, r0, #2
	ldr r1, [pc, #12]
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	adds r4, #228
	lsls r0, r0, #12
	eors r4, r2
	lsls r0, r0, #12
	.2byte 0xf308 @ .raw
	lsrs r5, r7, #32
	ldr r2, [pc, #12]
	movs r0, #5
	movs r1, #18
	bl sub_08004914
	ldr r2, [pc, #8]
	b .L083133CC
	movs r0, r0
	.2byte 0xf278 @ .raw
	lsrs r5, r7, #32
	.2byte 0xf290 @ .raw
	lsrs r5, r7, #32
	ldr r2, [pc, #12]
	movs r0, #5
	movs r1, #18
	bl sub_08004914
	ldr r2, [pc, #8]
	b .L083133CC
	movs r0, r0
	.2byte 0xf278 @ .raw
	lsrs r5, r7, #32
	.2byte 0xf2a8 @ .raw
	lsrs r5, r7, #32
	ldr r2, [pc, #12]
	movs r0, #5
	movs r1, #18
	bl sub_08004914
	ldr r2, [pc, #8]
	b .L083133CC
	movs r0, r0
	.2byte 0xf278 @ .raw
	lsrs r5, r7, #32
	.2byte 0xf2c0 @ .raw
	lsrs r5, r7, #32
	ldr r2, [pc, #20]
	movs r0, #5
	movs r1, #18
	bl sub_08004914
	ldr r2, [pc, #16]
.L083133CC:
	movs r0, #5
	movs r1, #19
	bl sub_08004914
	b .L083133F4
	movs r0, r0
	.2byte 0xf278 @ .raw
	lsrs r5, r7, #32
	.2byte 0xf2d8 @ .raw
	lsrs r5, r7, #32
	ldr r2, [pc, #56]
	movs r0, #5
	movs r1, #18
	bl sub_08004914
	ldr r2, [pc, #52]
	movs r0, #5
	movs r1, #19
	bl sub_08004914
.L083133F4:
	bl sub_0800347C
	ldr r2, [pc, #40]
	adds r2, r5, r2
	ldr r3, [pc, #40]
	lsls r0, r0, #24
	lsrs r0, r0, #24
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r1, r5, r1
	adds r1, r1, r3
	ldrb r0, [r1, #0]
	strb r0, [r2, #0]
	adds r5, #1
	cmp r5, #5
	bls .L0831332C
	pop {r4, r5}
	pop {r0}
	bx r0
	.4byte 0x083DF278
	.4byte 0x083DF2F0
	.4byte 0x03004054
	.4byte 0x030034E4

	.thumb
	.align 1, 0
	.global sub_0831342C
	.thumb_func
sub_0831342C:
	push {r4, r5, r6, lr}
	ldr r6, [pc, #220]
	ldr r1, [pc, #220]
	ldr r4, [pc, #224]
	ldrb r2, [r4, #0]
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrh r0, [r0, #0]
	strh r0, [r6, #0]
	ldr r5, [pc, #216]
	ldrb r1, [r4, #0]
	lsls r0, r1, #5
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r5
	adds r1, r0, #0
	adds r1, #90
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bge .L0831345A
	movs r0, #0
	strh r0, [r1, #0]
.L0831345A:
	ldrb r1, [r4, #0]
	lsls r0, r1, #5
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r3, r0, r5
	adds r0, r3, #0
	adds r0, #90
	ldrh r0, [r0, #0]
	lsls r2, r0, #24
	ldr r0, [pc, #172]
	adds r1, r1, r0
	ldrb r1, [r1, #0]
	lsls r1, r1, #22
	orrs r1, r2
	adds r0, r3, #0
	adds r0, #93
	ldrb r0, [r0, #0]
	lsls r0, r0, #17
	orrs r0, r1
	adds r1, r3, #0
	adds r1, #48
	lsrs r0, r0, #16
	ldrb r1, [r1, #0]
	orrs r0, r1
	strh r0, [r6, #2]
	ldrb r1, [r4, #0]
	lsls r0, r1, #5
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r1, r5, #0
	adds r1, #52
	adds r0, r0, r1
	ldr r0, [r0, #0]
	asrs r0, r0, #8
	strh r0, [r6, #4]
	ldrb r2, [r4, #0]
	lsls r0, r2, #5
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r1, #4
	adds r0, r0, r1
	ldr r0, [r0, #0]
	asrs r0, r0, #8
	strh r0, [r6, #6]
	ldrb r1, [r4, #0]
	lsls r0, r1, #5
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r1, r5, #0
	adds r1, #64
	adds r0, r0, r1
	ldr r0, [r0, #0]
	strh r0, [r6, #8]
	ldrb r2, [r4, #0]
	lsls r0, r2, #5
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r1, #4
	adds r0, r0, r1
	ldr r0, [r0, #0]
	strh r0, [r6, #10]
	ldrb r0, [r4, #0]
	lsls r1, r0, #5
	subs r1, r1, r0
	lsls r1, r1, #3
	adds r1, r1, r5
	ldr r2, [pc, #64]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0, #0]
	movs r2, #31
	ands r0, r2
	lsls r0, r0, #8
	ldrb r1, [r1, #7]
	orrs r0, r1
	strh r0, [r6, #12]
	ldrb r1, [r4, #0]
	lsls r0, r1, #5
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r1, r5, #0
	adds r1, #96
	adds r0, r0, r1
	ldr r0, [r0, #0]
	ldrh r0, [r0, #6]
	strh r0, [r6, #14]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.4byte 0x03004044
	.4byte 0x03000D14
	.4byte 0x03005A3A
	.4byte 0x0300250C
	.4byte 0x03005A20
	.4byte 0x03005A0C

	.thumb
	.align 1, 0
	.global sub_08313524
	.thumb_func
sub_08313524:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, [pc, #32]
	ldr r0, [r0, #0]
	cmp r0, #10
	bhi .L08313538
	b .L0831373A
.L08313538:
	ldr r1, [pc, #24]
	movs r0, #0
	str r0, [r1, #0]
	adds r7, r1, #0
	ldr r0, [pc, #20]
	mov r9, r0
	movs r2, #2
	add r2, r9
	mov r8, r2
	ldr r6, [pc, #16]
	mov sl, r6
	b .L08313660
	ldr r0, [r6, r7]
	lsls r0, r0, #12
	ldrh r4, [r6, r0]
	lsls r0, r0, #12
	ands r4, r0
	lsls r0, r0, #12
	movs r5, #108
	lsls r0, r0, #12
.L08313560:
	ldr r0, [pc, #100]
	ldrb r0, [r0, #0]
	cmp r0, r5
	beq .L0831365A
	ldr r3, [pc, #96]
	lsls r2, r5, #1
	adds r3, r2, r3
	lsls r4, r5, #4
	mov r0, r9
	adds r1, r4, r0
	ldr r0, [pc, #88]
	adds r2, r2, r0
	ldrh r0, [r1, #0]
	ldrh r6, [r2, #0]
	eors r0, r6
	ldrh r6, [r1, #0]
	ands r0, r6
	movs r6, #0
	strh r0, [r3, #0]
	ldrh r0, [r1, #0]
	strh r0, [r2, #0]
	ldr r3, [pc, #72]
	lsls r0, r5, #5
	subs r0, r0, r5
	lsls r0, r0, #3
	adds r0, r0, r3
	add r4, r8
	ldrh r2, [r4, #0]
	lsrs r1, r2, #8
	adds r0, #90
	strh r1, [r0, #0]
	ldr r0, [pc, #56]
	adds r0, r5, r0
	ldrb r4, [r4, #0]
	lsrs r1, r4, #6
	strb r1, [r0, #0]
	ldr r2, [r7, #0]
	lsls r1, r2, #4
	add r1, r8
	movs r4, #1
	movs r0, #1
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L083135DC
	lsls r0, r2, #5
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r0, r0, r3
	adds r0, #48
	strb r4, [r0, #0]
	b .L083135E8
	ldrh r2, [r7, r0]
	lsls r0, r0, #12
	lsrs r4, r3, #20
	lsls r0, r0, #12
	lsrs r4, r2, #20
	lsls r0, r0, #12
	movs r5, #12
	lsls r0, r0, #12
	ldrh r0, [r4, r0]
	lsls r0, r0, #12
.L083135DC:
	lsls r0, r2, #5
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r0, r0, r3
	adds r0, #48
	strb r6, [r0, #0]
.L083135E8:
	ldr r3, [r7, #0]
	lsls r0, r3, #4
	add r0, r8
	movs r1, #63
	ldrh r0, [r0, #0]
	ands r1, r0
	ldr r2, [pc, #136]
	lsls r0, r3, #5
	subs r0, r0, r3
	lsls r0, r0, #3
	adds r0, r0, r2
	adds r0, #93
	lsrs r1, r1, #1
	ldrb r0, [r0, #0]
	cmp r1, r0
	beq .L08313612
	cmp r1, #5
	bhi .L08313612
	adds r0, r3, #0
	bl sub_082FB6D8
.L08313612:
	ldr r2, [pc, #112]
	ldr r5, [pc, #112]
	ldr r1, [r5, #0]
	lsls r0, r1, #2
	adds r3, r0, r2
	ldr r6, [pc, #108]
	lsls r1, r1, #4
	adds r0, r6, #0
	adds r0, #12
	adds r2, r1, r0
	ldrh r0, [r2, #0]
	lsrs r1, r0, #8
	movs r4, #31
	ands r1, r4
	ldr r0, [r3, #0]
	cmp r0, r1
	beq .L08313642
	ldr r1, [pc, #88]
	movs r0, #0
	strb r0, [r1, #0]
	ldrh r2, [r2, #0]
	lsrs r0, r2, #8
	ands r0, r4
	str r0, [r3, #0]
.L08313642:
	ldr r1, [r5, #0]
	lsls r0, r1, #5
	subs r0, r0, r1
	lsls r0, r0, #3
	add r0, sl
	ldr r2, [r0, #0]
	lsls r1, r1, #4
	adds r0, r6, #0
	adds r0, #14
	adds r1, r1, r0
	ldrh r0, [r1, #0]
	strh r0, [r2, #6]
.L0831365A:
	ldr r0, [r7, #0]
	adds r0, #1
	str r0, [r7, #0]
.L08313660:
	bl sub_0800314C
	ldr r5, [r7, #0]
	cmp r5, r0
	bcs .L0831366C
	b .L08313560
.L0831366C:
	ldr r0, [pc, #36]
	ldr r1, [r0, #0]
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	bne .L0831373A
	ldr r0, [pc, #12]
	str r1, [r0, #0]
	adds r6, r0, #0
	b .L08313730
	movs r5, #12
	lsls r0, r0, #12
	ldrh r4, [r1, r0]
	lsls r0, r0, #12
	ldrh r4, [r6, r0]
	lsls r0, r0, #12
	ands r4, r0
	lsls r0, r0, #12
	ldrh r1, [r6, r0]
	lsls r0, r0, #12
	ldr r0, [r6, r7]
	lsls r0, r0, #12
.L08313698:
	ldr r0, [pc, #172]
	ldrb r0, [r0, #0]
	cmp r2, r0
	beq .L0831372A
	ldr r5, [pc, #168]
	lsls r0, r2, #5
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r1, r5, #0
	adds r1, #52
	adds r3, r0, r1
	ldr r4, [pc, #160]
	lsls r0, r2, #4
	adds r1, r4, #4
	adds r0, r0, r1
	ldrh r0, [r0, #0]
	lsls r1, r0, #8
	ldr r0, [r3, #0]
	cmp r0, r1
	beq .L083136C2
	str r1, [r3, #0]
.L083136C2:
	ldr r2, [r6, #0]
	lsls r0, r2, #5
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r1, r5, #0
	adds r1, #56
	adds r3, r0, r1
	lsls r2, r2, #4
	adds r0, r4, #6
	adds r2, r2, r0
	ldrh r2, [r2, #0]
	lsls r1, r2, #8
	ldr r0, [r3, #0]
	cmp r0, r1
	beq .L083136E2
	str r1, [r3, #0]
.L083136E2:
	ldr r3, [r6, #0]
	lsls r2, r3, #5
	subs r2, r2, r3
	lsls r2, r2, #3
	adds r1, r5, #0
	adds r1, #64
	adds r1, r2, r1
	lsls r3, r3, #4
	adds r0, r4, #0
	adds r0, #8
	adds r0, r3, r0
	movs r7, #0
	ldrsh r0, [r0, r7]
	str r0, [r1, #0]
	adds r1, r5, #0
	adds r1, #68
	adds r1, r2, r1
	adds r0, r4, #0
	adds r0, #10
	adds r0, r3, r0
	movs r7, #0
	ldrsh r0, [r0, r7]
	str r0, [r1, #0]
	adds r2, r2, r5
	adds r0, r4, #0
	adds r0, #12
	adds r3, r3, r0
	movs r1, #15
	ldrh r3, [r3, #0]
	ands r1, r3
	ldrb r0, [r2, #7]
	cmp r0, r1
	beq .L0831372A
	adds r0, r2, #0
	bl sub_082F1CC0
.L0831372A:
	ldr r0, [r6, #0]
	adds r0, #1
	str r0, [r6, #0]
.L08313730:
	bl sub_0800314C
	ldr r2, [r6, #0]
	cmp r2, r0
	bcc .L08313698
.L0831373A:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.4byte 0x03005A3A
	.4byte 0x0300250C
	.4byte 0x03004004

	.thumb
	.align 1, 0
	.global sub_08313754
	.thumb_func
sub_08313754:
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r7, r0, #0
	ldr r0, [pc, #116]
	ldr r5, [pc, #116]
	ldrb r2, [r5, #0]
	lsls r1, r2, #5
	subs r1, r1, r2
	lsls r1, r1, #3
	adds r1, r1, r0
	adds r1, #90
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	ble .L08313774
	b .L08313872
.L08313774:
	ldr r6, [pc, #96]
	adds r0, r2, r6
	ldrb r4, [r0, #0]
	cmp r4, #0
	bne .L08313872
	bl sub_08004A1C
	bl sub_083114B0
	ldr r1, [pc, #84]
	ldrb r0, [r1, #0]
	cmp r0, #0
	beq .L08313790
	strb r4, [r1, #0]
.L08313790:
	ldrb r4, [r5, #0]
	adds r1, r4, r6
	movs r0, #1
	strb r0, [r1, #0]
	ldr r4, [pc, #68]
	ldrb r0, [r5, #0]
	adds r2, r0, r4
	ldr r1, [pc, #68]
	adds r0, r0, r1
	ldrb r0, [r0, #0]
	strb r0, [r2, #0]
	ldr r0, [pc, #64]
	ldrb r1, [r5, #0]
	adds r0, r1, r0
	ldrb r1, [r0, #0]
	adds r1, #1
	strb r1, [r0, #0]
	bl sub_0830A000
	cmp r0, #1
	beq .L08313800
	ldrb r0, [r5, #0]
	adds r1, r0, r4
	ldrb r2, [r1, #0]
	cmp r0, r2
	beq .L083137F0
	ldr r0, [pc, #36]
	lsls r1, r2, #2
	adds r1, r1, r0
	ldr r0, [r1, #0]
	adds r0, #1
	b .L083137FE
	movs r5, #12
	lsls r0, r0, #12
	ldrh r2, [r7, r0]
	lsls r0, r0, #12
	ldrh r4, [r3, r0]
	lsls r0, r0, #12
	ldrh r1, [r7, r0]
	lsls r0, r0, #12
	ldrh r0, [r4, r0]
	lsls r0, r0, #12
	ldr r4, [r5, r3]
	lsls r0, r0, #12
	ldrh r4, [r4, r0]
	lsls r0, r0, #12
	ldrh r4, [r1, r0]
	lsls r0, r0, #12
.L083137F0:
	ldr r1, [pc, #88]
	lsls r0, r0, #2
	adds r1, r0, r1
	ldr r0, [r1, #0]
	cmp r0, #0
	beq .L08313800
	subs r0, #1
.L083137FE:
	str r0, [r1, #0]
.L08313800:
	ldr r4, [pc, #76]
	ldr r2, [pc, #80]
	ldr r3, [pc, #80]
	ldrb r1, [r3, #0]
	lsls r0, r1, #5
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r1, r2, #0
	adds r1, #52
	adds r0, r0, r1
	ldr r0, [r0, #0]
	asrs r0, r0, #8
	str r0, [r4, #0]
	ldr r1, [pc, #64]
	ldrb r4, [r3, #0]
	lsls r0, r4, #5
	subs r0, r0, r4
	lsls r0, r0, #3
	adds r2, #56
	adds r0, r0, r2
	ldr r0, [r0, #0]
	asrs r0, r0, #8
	str r0, [r1, #0]
	ldr r1, [pc, #48]
	ldrb r0, [r3, #0]
	adds r1, r0, r1
	ldrb r2, [r1, #0]
	cmp r2, r0
	beq .L08313868
	ldr r2, [pc, #40]
	ldrb r3, [r1, #0]
	adds r3, #1
	movs r0, #6
	movs r1, #14
	bl sub_08004968
	b .L08313872
	movs r0, r0
	ldrh r4, [r1, r0]
	lsls r0, r0, #12
	ldrh r0, [r5, r0]
	lsls r0, r0, #12
	movs r5, #12
	lsls r0, r0, #12
	ldrh r2, [r7, r0]
	lsls r0, r0, #12
	ldrh r4, [r5, r0]
	lsls r0, r0, #12
	ldrh r0, [r4, r0]
	lsls r0, r0, #12
	.2byte 0xf31c @ .raw
	lsrs r5, r7, #32
.L08313868:
	ldr r2, [pc, #132]
	movs r0, #4
	movs r1, #14
	bl sub_08004914
.L08313872:
	ldr r2, [pc, #128]
	ldr r1, [pc, #128]
	ldrb r3, [r1, #0]
	lsls r0, r3, #5
	subs r0, r0, r3
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrb r0, [r0, #1]
	cmp r0, #0
	beq .L08313888
	b .L08313A5E
.L08313888:
	ldr r2, [pc, #112]
	movs r0, #4
	movs r1, #15
	bl sub_08004914
	bl sub_0830A000
	cmp r0, #1
	bne .L08313918
	ldr r2, [pc, #100]
	ldr r5, [pc, #100]
	ldr r3, [r5, #0]
	ldr r4, [pc, #100]
	ldrb r0, [r4, #0]
	str r0, [sp, #0]
	movs r0, #1
	movs r1, #7
	bl sub_08004968
	ldr r2, [pc, #92]
	ldr r3, [r5, #4]
	ldrb r0, [r4, #1]
	str r0, [sp, #0]
	movs r0, #1
	movs r1, #8
	bl sub_08004968
	bl sub_0800314C
	cmp r0, #2
	bls .L083138D6
	ldr r2, [pc, #72]
	ldr r3, [r5, #8]
	ldrb r0, [r4, #2]
	str r0, [sp, #0]
	movs r0, #1
	movs r1, #9
	bl sub_08004968
.L083138D6:
	bl sub_0800314C
	cmp r0, #3
	bls .L0831396C
	ldr r2, [pc, #52]
	ldr r3, [r5, #12]
	ldrb r0, [r4, #3]
	str r0, [sp, #0]
	movs r0, #1
	movs r1, #10
	bl sub_08004968
	b .L0831396C
	.2byte 0xf334 @ .raw
	lsrs r5, r7, #32
	movs r5, #12
	lsls r0, r0, #12
	ldrh r2, [r7, r0]
	lsls r0, r0, #12
	.2byte 0xf348 @ .raw
	lsrs r5, r7, #32
	.2byte 0xf360 @ .raw
	lsrs r5, r7, #32
	ldrh r4, [r1, r0]
	lsls r0, r0, #12
	ldrh r4, [r4, r0]
	lsls r0, r0, #12
	.2byte 0xf380 @ .raw
	lsrs r5, r7, #32
	.2byte 0xf3a0 @ .raw
	lsrs r5, r7, #32
	.2byte 0xf3c0 @ .raw
	lsrs r5, r7, #32
.L08313918:
	ldr r2, [pc, #332]
	ldr r5, [pc, #336]
	ldr r3, [r5, #0]
	ldr r4, [pc, #336]
	ldrb r0, [r4, #0]
	str r0, [sp, #0]
	movs r0, #1
	movs r1, #7
	bl sub_08004968
	ldr r2, [pc, #324]
	ldr r3, [r5, #4]
	ldrb r0, [r4, #1]
	str r0, [sp, #0]
	movs r0, #1
	movs r1, #8
	bl sub_08004968
	bl sub_0800314C
	cmp r0, #2
	bls .L08313954
	ldr r2, [pc, #304]
	ldr r3, [r5, #8]
	ldrb r0, [r4, #2]
	str r0, [sp, #0]
	movs r0, #1
	movs r1, #9
	bl sub_08004968
.L08313954:
	bl sub_0800314C
	cmp r0, #3
	bls .L0831396C
	ldr r2, [pc, #284]
	ldr r3, [r5, #12]
	ldrb r0, [r4, #3]
	str r0, [sp, #0]
	movs r0, #1
	movs r1, #10
	bl sub_08004968
.L0831396C:
	ldr r2, [pc, #272]
	ldr r0, [pc, #276]
	ldrb r0, [r0, #0]
	lsls r1, r0, #1
	adds r1, r1, r2
	movs r0, #32
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L0831398C
	ldr r1, [pc, #260]
	ldr r0, [r1, #0]
	cmp r0, #4
	bls .L0831398C
	subs r0, #5
	str r0, [r1, #0]
.L0831398C:
	ldr r2, [pc, #240]
	ldr r0, [pc, #244]
	ldrb r0, [r0, #0]
	lsls r1, r0, #1
	adds r1, r1, r2
	movs r0, #16
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L083139B6
	ldr r2, [pc, #228]
	ldr r0, [pc, #232]
	ldr r0, [r0, #8]
	ldr r0, [r0, #0]
	lsls r0, r0, #3
	subs r0, #120
	ldr r1, [r2, #0]
	cmp r1, r0
	bcs .L083139B6
	adds r0, r1, #5
	str r0, [r2, #0]
.L083139B6:
	ldr r2, [pc, #200]
	ldr r0, [pc, #200]
	ldrb r0, [r0, #0]
	lsls r1, r0, #1
	adds r1, r1, r2
	movs r0, #64
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L083139D6
	ldr r1, [pc, #196]
	ldr r0, [r1, #0]
	cmp r0, #4
	bls .L083139D6
	subs r0, #5
	str r0, [r1, #0]
.L083139D6:
	ldr r2, [pc, #168]
	ldr r0, [pc, #168]
	ldrb r0, [r0, #0]
	lsls r1, r0, #1
	adds r1, r1, r2
	movs r0, #128
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L08313A00
	ldr r2, [pc, #164]
	ldr r0, [pc, #156]
	ldr r0, [r0, #8]
	ldr r0, [r0, #4]
	lsls r0, r0, #3
	subs r0, #32
	ldr r1, [r2, #0]
	cmp r1, r0
	bcs .L08313A00
	adds r0, r1, #5
	str r0, [r2, #0]
.L08313A00:
	ldr r0, [pc, #144]
	ldr r5, [pc, #128]
	ldrb r4, [r5, #0]
	lsls r1, r4, #1
	adds r1, r1, r0
	movs r0, #1
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L08313A5E
	ldr r1, [pc, #128]
	movs r0, #255
	strh r0, [r1, #0]
	adds r1, #4
	movs r0, #16
	strh r0, [r1, #0]
	bl sub_08004A1C
	ldr r1, [pc, #116]
	movs r0, #1
	strb r0, [r1, #0]
	ldrb r0, [r5, #0]
	ldr r3, [pc, #112]
	lsls r4, r0, #3
	adds r1, r4, r3
	ldr r2, [r1, #0]
	asrs r2, r2, #8
	adds r3, #4
	adds r4, r4, r3
	ldr r3, [r4, #0]
	asrs r3, r3, #8
	adds r1, r7, #0
	bl sub_082F2074
	movs r0, #0
	movs r1, #192
	movs r2, #15
	bl Fade_Start
	ldr r1, [pc, #84]
	movs r0, #20
	strb r0, [r1, #0]
	ldr r0, [pc, #80]
	ldrb r5, [r5, #0]
	adds r0, r5, r0
	movs r1, #0
	strb r1, [r0, #0]
.L08313A5E:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083DF3E0
	.4byte 0x03005A0C
	.4byte 0x03005A24
	.4byte 0x083DF400
	.4byte 0x083DF420
	.4byte 0x083DF440
	.4byte 0x03000D14
	.4byte 0x03005A3A
	.4byte 0x03005A28
	.4byte 0x0300398C
	.4byte 0x03005A2C
	.4byte 0x03000D1C
	.4byte 0x04000050
	.4byte 0x030059DC
	.4byte 0x0300405C
	.4byte 0x03005A38
	.4byte 0x03005A1C

	.thumb
	.align 1, 0
	.global sub_08313AAC
	.thumb_func
sub_08313AAC:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	ldr r1, [pc, #4]
	movs r0, #0
	b .L08313D54
	movs r0, r0
	ldrh r4, [r6, r0]
	lsls r0, r0, #12
.L08313AC0:
	ldr r7, [pc, #156]
	ldrb r0, [r7, #0]
	cmp r1, r0
	bne .L08313ACA
	b .L08313D4E
.L08313ACA:
	ldr r6, [pc, #152]
	lsls r0, r1, #5
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r6
	adds r0, #90
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	ble .L08313AE0
	b .L08313CE8
.L08313AE0:
	ldr r0, [pc, #132]
	adds r2, r1, r0
	ldrb r1, [r2, #0]
	cmp r1, #0
	beq .L08313AEC
	b .L08313D4E
.L08313AEC:
	movs r0, #1
	strb r0, [r2, #0]
	ldr r0, [pc, #120]
	strb r1, [r0, #0]
	ldr r5, [pc, #120]
	ldr r1, [r4, #0]
	adds r0, r1, r5
	ldrb r0, [r0, #0]
	cmp r1, r0
	bne .L08313B02
	b .L08313C84
.L08313B02:
	bl sub_0830A000
	cmp r0, #1
	beq .L08313B1C
	ldr r2, [pc, #104]
	ldr r0, [r4, #0]
	adds r0, r0, r5
	ldrb r0, [r0, #0]
	lsls r1, r0, #2
	adds r1, r1, r2
	ldr r0, [r1, #0]
	adds r0, #1
	str r0, [r1, #0]
.L08313B1C:
	ldr r0, [pc, #88]
	ldr r1, [r4, #0]
	adds r1, r1, r0
	ldrb r0, [r1, #0]
	adds r0, #1
	strb r0, [r1, #0]
	movs r0, #5
	movs r1, #18
	movs r2, #19
	movs r3, #2
	bl sub_080049D4
	ldr r0, [r4, #0]
	adds r2, r0, r5
	ldrb r1, [r2, #0]
	ldrb r7, [r7, #0]
	cmp r1, r7
	bne .L08313B42
	b .L08313C70
.L08313B42:
	lsls r0, r1, #5
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r6
	adds r0, #93
	ldrb r0, [r0, #0]
	cmp r0, #5
	bls .L08313B54
	b .L08313D4E
.L08313B54:
	lsls r0, r0, #2
	ldr r1, [pc, #36]
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	movs r0, r0
	ldrh r2, [r7, r0]
	lsls r0, r0, #12
	movs r5, #12
	lsls r0, r0, #12
	ldrh r4, [r3, r0]
	lsls r0, r0, #12
	ldrh r1, [r6, r0]
	lsls r0, r0, #12
	ldrh r0, [r4, r0]
	lsls r0, r0, #12
	ldrh r4, [r1, r0]
	lsls r0, r0, #12
	ldrh r4, [r4, r0]
	lsls r0, r0, #12
	.2byte 0xf5b0 @ .raw
	lsrs r5, r7, #32
	ldr r2, [pc, #24]
	ldr r1, [pc, #28]
	ldr r4, [pc, #28]
	ldr r0, [r4, #0]
	adds r0, r0, r1
	ldrb r3, [r0, #0]
	adds r3, #1
	movs r0, #5
	movs r1, #18
	bl sub_08004968
	ldr r2, [pc, #16]
	b .L08313C50
	movs r0, r0
	.2byte 0xf460 @ .raw
	lsrs r5, r7, #32
	ldrh r0, [r4, r0]
	lsls r0, r0, #12
	ldrh r4, [r6, r0]
	lsls r0, r0, #12
	.2byte 0xf478 @ .raw
	lsrs r5, r7, #32
	ldr r2, [pc, #24]
	ldr r1, [pc, #28]
	ldr r4, [pc, #28]
	ldr r0, [r4, #0]
	adds r0, r0, r1
	ldrb r3, [r0, #0]
	adds r3, #1
	movs r0, #5
	movs r1, #18
	bl sub_08004968
	ldr r2, [pc, #16]
	b .L08313C50
	movs r0, r0
	.2byte 0xf490 @ .raw
	lsrs r5, r7, #32
	ldrh r0, [r4, r0]
	lsls r0, r0, #12
	ldrh r4, [r6, r0]
	lsls r0, r0, #12
	.2byte 0xf4a8 @ .raw
	lsrs r5, r7, #32
	ldr r2, [pc, #0]
	b .L08313C3A
	.2byte 0xf4c0 @ .raw
	lsrs r5, r7, #32
	ldr r2, [pc, #24]
	ldr r4, [pc, #28]
	ldr r3, [r4, #0]
	adds r3, #1
	movs r0, #5
	movs r1, #18
	bl sub_08004968
	ldr r2, [pc, #16]
	ldr r1, [pc, #20]
	ldr r0, [r4, #0]
	adds r0, r0, r1
	ldrb r3, [r0, #0]
	b .L08313C52
	.2byte 0xf4f0 @ .raw
	lsrs r5, r7, #32
	ldrh r4, [r6, r0]
	lsls r0, r0, #12
	.2byte 0xf508 @ .raw
	lsrs r5, r7, #32
	ldrh r0, [r4, r0]
	lsls r0, r0, #12
	ldr r2, [pc, #24]
	ldr r4, [pc, #28]
	ldr r3, [r4, #0]
	adds r3, #1
	movs r0, #5
	movs r1, #18
	bl sub_08004968
	ldr r2, [pc, #16]
	ldr r1, [pc, #20]
	ldr r0, [r4, #0]
	adds r0, r0, r1
	ldrb r3, [r0, #0]
	b .L08313C52
	.2byte 0xf520 @ .raw
	lsrs r5, r7, #32
	ldrh r4, [r6, r0]
	lsls r0, r0, #12
	.2byte 0xf538 @ .raw
	lsrs r5, r7, #32
	ldrh r0, [r4, r0]
	lsls r0, r0, #12
	ldr r2, [pc, #36]
.L08313C3A:
	ldr r1, [pc, #40]
	ldr r4, [pc, #40]
	ldr r0, [r4, #0]
	adds r0, r0, r1
	ldrb r3, [r0, #0]
	adds r3, #1
	movs r0, #5
	movs r1, #18
	bl sub_08004968
	ldr r2, [pc, #28]
.L08313C50:
	ldr r3, [r4, #0]
.L08313C52:
	adds r3, #1
	movs r0, #5
	movs r1, #19
	bl sub_08004968
	b .L08313D4E
	movs r0, r0
	.2byte 0xf550 @ .raw
	lsrs r5, r7, #32
	ldrh r0, [r4, r0]
	lsls r0, r0, #12
	ldrh r4, [r6, r0]
	lsls r0, r0, #12
	.2byte 0xf4d8 @ .raw
	lsrs r5, r7, #32
.L08313C70:
	ldr r2, [pc, #12]
	adds r3, r0, #1
	movs r0, #5
	movs r1, #18
	bl sub_08004968
	b .L08313D4E
	movs r0, r0
	.2byte 0xf568 @ .raw
	lsrs r5, r7, #32
.L08313C84:
	movs r0, #5
	movs r1, #18
	movs r2, #19
	movs r3, #2
	bl sub_080049D4
	ldr r2, [pc, #64]
	ldr r3, [r4, #0]
	adds r3, #1
	movs r0, #5
	movs r1, #18
	bl sub_08004968
	ldr r2, [pc, #56]
	movs r0, #5
	movs r1, #19
	bl sub_08004968
	bl sub_0830A000
	cmp r0, #1
	beq .L08313CC6
	ldr r0, [pc, #40]
	ldr r1, [r4, #0]
	adds r1, r1, r5
	ldrb r1, [r1, #0]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1, #0]
	cmp r0, #0
	beq .L08313CC6
	subs r0, #1
	str r0, [r1, #0]
.L08313CC6:
	ldr r1, [pc, #24]
	ldr r0, [pc, #24]
	ldr r0, [r0, #0]
	adds r0, r0, r1
	ldrb r1, [r0, #0]
	adds r1, #1
	b .L08313D4C
	.2byte 0xf580 @ .raw
	lsrs r5, r7, #32
	.2byte 0xf598 @ .raw
	lsrs r5, r7, #32
	ldrh r4, [r1, r0]
	lsls r0, r0, #12
	ldrh r4, [r4, r0]
	lsls r0, r0, #12
	ldrh r4, [r6, r0]
	lsls r0, r0, #12
.L08313CE8:
	ldr r0, [pc, #44]
	adds r0, r1, r0
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne .L08313D4E
	bl sub_0830A000
	cmp r0, #1
	bne .L08313D20
	ldr r0, [r4, #0]
	ldr r3, [pc, #28]
	lsls r4, r0, #3
	adds r1, r4, r3
	ldr r2, [r1, #0]
	asrs r2, r2, #8
	adds r3, #4
	adds r4, r4, r3
	ldr r3, [r4, #0]
	asrs r3, r3, #8
	mov r1, r8
	bl sub_082F2074
	b .L08313D42
	movs r0, r0
	ldrh r4, [r3, r0]
	lsls r0, r0, #12
	eors r4, r3
	lsls r0, r0, #12
.L08313D20:
	ldr r0, [r4, #0]
	lsls r3, r0, #5
	subs r3, r3, r0
	lsls r3, r3, #3
	adds r1, r6, #0
	adds r1, #52
	adds r1, r3, r1
	ldr r2, [r1, #0]
	asrs r2, r2, #8
	adds r1, r6, #0
	adds r1, #56
	adds r3, r3, r1
	ldr r3, [r3, #0]
	asrs r3, r3, #8
	mov r1, r8
	bl sub_082F2074
.L08313D42:
	ldr r1, [pc, #44]
	ldr r0, [pc, #44]
	ldr r0, [r0, #0]
	adds r0, r0, r1
	movs r1, #0
.L08313D4C:
	strb r1, [r0, #0]
.L08313D4E:
	ldr r1, [pc, #36]
	ldr r0, [r1, #0]
	adds r0, #1
.L08313D54:
	str r0, [r1, #0]
	ldr r4, [pc, #28]
	bl sub_0800314C
	ldr r1, [r4, #0]
	cmp r1, r0
	bcs .L08313D64
	b .L08313AC0
.L08313D64:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x03005A1C
	.4byte 0x03005A34

	.thumb
	.align 1, 0
	.global sub_08313D78
	.thumb_func
sub_08313D78:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	mov sl, r1
	movs r0, #0
	mov r8, r0
	bl sub_08309FF4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08313D9C
	ldr r0, [pc, #0]
	b .L08313D9E
	.2byte 0xf6aa @ .raw
	lsrs r5, r7, #32
.L08313D9C:
	ldr r0, [pc, #64]
.L08313D9E:
	adds r0, r6, r0
	ldrb r6, [r0, #0]
	movs r2, #128
	lsls r2, r2, #19
	ldrh r0, [r2, #0]
	movs r3, #130
	lsls r3, r3, #5
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2, #0]
	bl sub_0800314C
	adds r1, r0, #0
	adds r0, r6, #0
	bl sub_08313088
	mov r4, r8
	cmp r4, #0
	beq .L08313DC6
	b .L083142D2
.L08313DC6:
	ldr r7, [pc, #28]
	mov r9, r7
.L08313DCA:
	bl Fade_IsBusy
	bl sub_0800347C
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08313DE8
	bl VBlankIntrWait
	b .L08313DF0
	movs r0, r0
	.2byte 0xf6b5 @ .raw
	lsrs r5, r7, #32
	ldrh r2, [r7, r0]
	lsls r0, r0, #12
.L08313DE8:
	movs r0, #1
	movs r1, #7
	bl IntrWait
.L08313DF0:
	bl sub_080043B4
	ldr r0, [pc, #36]
	mov r2, r9
	ldrb r2, [r2, #0]
	lsls r1, r2, #5
	mov r3, r9
	ldrb r3, [r3, #0]
	subs r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r0
	adds r0, r1, #0
	adds r0, #90
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r0, #0
	ble .L08313E20
	adds r0, r1, #0
	bl sub_08312174
	b .L08313E2C
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
.L08313E20:
	ldr r0, [pc, #44]
	ldr r0, [r0, #0]
	ldr r1, [pc, #44]
	ldr r1, [r1, #0]
	bl sub_08301D98
.L08313E2C:
	bl sub_08311F7C
	bl sub_0831342C
	ldr r0, [pc, #32]
	ldr r1, [pc, #36]
	bl sub_08002F64
	ldr r0, [pc, #32]
	ldr r0, [r0, #0]
	cmp r0, #120
	bls .L08313EE0
	movs r0, #1
	movs r1, #192
	movs r2, #10
	bl Fade_Start
	b .L08313E68
	ldrh r0, [r5, r0]
	lsls r0, r0, #12
	ldrh r4, [r5, r0]
	lsls r0, r0, #12
	eors r4, r0
	lsls r0, r0, #12
	ands r4, r0
	lsls r0, r0, #12
	ldr r0, [r4, r2]
	lsls r0, r0, #12
.L08313E64:
	bl VBlankIntrWait
.L08313E68:
	bl Fade_IsBusy
	adds r4, r0, #0
	cmp r4, #0
	bne .L08313E64
	bl sub_08004D70
	bl sub_08001A6C
	ldr r0, [pc, #76]
	strh r4, [r0, #0]
	ldr r1, [pc, #76]
	ldr r3, [pc, #76]
	adds r0, r3, #0
	strh r0, [r1, #0]
	subs r1, #8
	movs r4, #138
	lsls r4, r4, #5
	adds r0, r4, #0
	strh r0, [r1, #0]
	bl sub_08004A1C
	movs r1, #160
	lsls r1, r1, #19
	movs r7, #213
	lsls r7, r7, #7
	adds r0, r7, #0
	strh r0, [r1, #0]
	bl sub_0800436C
	bl VBlankIntrWait
	movs r0, #9
	movs r1, #6
	ldr r2, [pc, #36]
	bl sub_08004914
	movs r0, #1
	movs r1, #13
	ldr r2, [pc, #32]
	bl sub_08004914
	movs r0, #7
	movs r1, #14
	ldr r2, [pc, #24]
	bl sub_08004914
.L08313EC6:
	b .L08313EC6
	lsls r0, r2, #1
	lsls r0, r0, #16
	movs r0, r1
	lsls r0, r0, #16
	subs r1, r0, #4
	movs r0, r0
	.2byte 0xf5c8 @ .raw
	lsrs r5, r7, #32
	.2byte 0xf5d4 @ .raw
	lsrs r5, r7, #32
	.2byte 0xf5f0 @ .raw
	lsrs r5, r7, #32
.L08313EE0:
	ldr r0, [pc, #32]
	ldr r1, [r0, #0]
	cmp r1, #0
	beq .L08313FA0
	ldr r1, [pc, #28]
	ldrb r0, [r1, #0]
	adds r0, #1
	strb r0, [r1, #0]
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #59
	bls .L08313F7A
	movs r0, #1
	movs r1, #192
	movs r2, #10
	bl Fade_Start
	b .L08313F10
	ldrh r0, [r1, r0]
	lsls r0, r0, #12
	ldrh r2, [r6, r0]
	lsls r0, r0, #12
.L08313F0C:
	bl VBlankIntrWait
.L08313F10:
	bl Fade_IsBusy
	adds r4, r0, #0
	cmp r4, #0
	bne .L08313F0C
	bl sub_08004D70
	bl sub_08001A6C
	ldr r0, [pc, #96]
	strh r4, [r0, #0]
	ldr r1, [pc, #96]
	ldr r2, [pc, #96]
	adds r0, r2, #0
	strh r0, [r1, #0]
	subs r1, #8
	movs r3, #138
	lsls r3, r3, #5
	adds r0, r3, #0
	strh r0, [r1, #0]
	bl sub_08004A1C
	movs r1, #160
	lsls r1, r1, #19
	movs r4, #213
	lsls r4, r4, #7
	adds r0, r4, #0
	strh r0, [r1, #0]
	bl sub_0800436C
	bl VBlankIntrWait
	movs r0, #9
	movs r1, #6
	ldr r2, [pc, #56]
	bl sub_08004914
	movs r0, #1
	movs r1, #13
	ldr r2, [pc, #52]
	bl sub_08004914
	movs r0, #7
	movs r1, #14
	ldr r2, [pc, #44]
	bl sub_08004914
	movs r4, #0
.L08313F70:
	bl VBlankIntrWait
	adds r4, #1
	cmp r4, #119
	bls .L08313F70
.L08313F7A:
	ldr r1, [pc, #32]
	movs r0, #0
	str r0, [r1, #0]
	b .L08313FA8
	movs r0, r0
	lsls r0, r2, #1
	lsls r0, r0, #16
	movs r0, r1
	lsls r0, r0, #16
	subs r1, r0, #4
	movs r0, r0
	.2byte 0xf5c8 @ .raw
	lsrs r5, r7, #32
	.2byte 0xf5d4 @ .raw
	lsrs r5, r7, #32
	.2byte 0xf5f0 @ .raw
	lsrs r5, r7, #32
	ldrh r0, [r1, r0]
	lsls r0, r0, #12
.L08313FA0:
	ldr r0, [pc, #84]
	strb r1, [r0, #0]
	bl sub_08313524
.L08313FA8:
	bl sub_08311FCC
	adds r0, r6, #0
	bl sub_08313AAC
	ldr r3, [pc, #72]
	mov r7, r9
	ldrb r4, [r7, #0]
	lsls r0, r4, #5
	subs r0, r0, r4
	lsls r5, r0, #3
	adds r2, r5, r3
	movs r0, #90
	adds r0, r0, r2
	mov ip, r0
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	ble .L08313FEC
	ldr r1, [pc, #48]
	lsls r0, r4, #2
	adds r0, r0, r1
	ldrb r0, [r0, #0]
	mov r7, ip
	movs r4, #0
	ldrsh r1, [r7, r4]
	adds r2, #93
	ldrb r2, [r2, #0]
	adds r3, #96
	adds r3, r5, r3
	ldr r3, [r3, #0]
	ldrh r3, [r3, #6]
	bl sub_08310A8C
.L08313FEC:
	ldr r1, [pc, #20]
	movs r0, #0
	str r0, [r1, #0]
	adds r4, r1, #0
	b .L08314034
	movs r0, r0
	ldrh r2, [r6, r0]
	lsls r0, r0, #12
	movs r5, #12
	lsls r0, r0, #12
	ldrh r4, [r1, r0]
	lsls r0, r0, #12
	ldrh r4, [r6, r0]
	lsls r0, r0, #12
.L08314008:
	ldr r3, [pc, #20]
	lsls r0, r1, #5
	subs r0, r0, r1
	lsls r2, r0, #3
	adds r0, r2, r3
	ldrb r0, [r0, #1]
	cmp r0, #0
	beq .L08314024
	adds r0, r1, #0
	bl sub_082F234C
	b .L0831402E
	movs r5, #12
	lsls r0, r0, #12
.L08314024:
	adds r0, r3, #0
	adds r0, #100
	adds r0, r2, r0
	bl sub_08000704
.L0831402E:
	ldr r0, [r4, #0]
	adds r0, #1
	str r0, [r4, #0]
.L08314034:
	bl sub_0800314C
	ldr r1, [r4, #0]
	cmp r1, r0
	bcc .L08314008
	bl sub_08309CD4
	bl sub_082F4BBC
	ldr r0, [pc, #36]
	bl sub_08316E18
	bl sub_083149CC
	bl sub_0831305C
	bl sub_082F4BEC
	bl sub_08314A3C
	bl sub_08309D20
	ldr r1, [pc, #12]
	movs r0, #0
	str r0, [r1, #0]
	adds r4, r1, #0
	b .L08314080
	movs r0, r0
	subs r1, #140
	lsls r0, r0, #12
	ldrh r4, [r6, r0]
	lsls r0, r0, #12
.L08314074:
	adds r0, r1, #0
	bl sub_082F27E8
	ldr r0, [r4, #0]
	adds r0, #1
	str r0, [r4, #0]
.L08314080:
	bl sub_0800314C
	ldr r1, [r4, #0]
	cmp r1, r0
	bcc .L08314074
	adds r0, r6, #0
	bl sub_08313754
	ldr r1, [pc, #8]
	movs r0, #0
	str r0, [r1, #0]
	adds r4, r1, #0
	ldr r5, [pc, #4]
	b .L08314116
	ldrh r4, [r6, r0]
	lsls r0, r0, #12
	ldrh r4, [r1, r0]
	lsls r0, r0, #12
.L083140A4:
	lsls r0, r2, #2
	adds r1, r0, r5
	ldr r0, [r1, #0]
	cmp r0, sl
	bcc .L08314112
	movs r4, #0
	adds r5, r1, #0
	b .L083140BA
.L083140B4:
	movs r0, #1
	mov r8, r0
	adds r4, #1
.L083140BA:
	cmp r4, #14
	bhi .L083140E0
	bl VBlankIntrWait
	bl sub_0831342C
	ldr r0, [pc, #52]
	ldr r1, [pc, #52]
	bl sub_08002F64
	cmp r4, #6
	bhi .L083140D6
	bl sub_08313524
.L083140D6:
	ldr r0, [r5, #0]
	cmp r0, sl
	bcs .L083140B4
	movs r1, #0
	mov r8, r1
.L083140E0:
	mov r2, r8
	cmp r2, #0
	beq .L08314120
	bl sub_083114B0
	bl sub_08004A1C
	movs r0, #1
	movs r1, #192
	movs r2, #30
	bl Fade_Start
	b .L08314108
	movs r0, r0
	eors r4, r0
	lsls r0, r0, #12
	ands r4, r0
	lsls r0, r0, #12
.L08314104:
	bl VBlankIntrWait
.L08314108:
	bl Fade_IsBusy
	cmp r0, #0
	bne .L08314104
	b .L08314120
.L08314112:
	adds r0, r2, #1
	str r0, [r4, #0]
.L08314116:
	bl sub_0800314C
	ldr r2, [r4, #0]
	cmp r2, r0
	bcc .L083140A4
.L08314120:
	ldr r0, [pc, #40]
	mov r3, r9
	ldrb r2, [r3, #0]
	lsls r1, r2, #1
	adds r1, r1, r0
	movs r0, #8
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L08314166
	ldr r0, [pc, #24]
	adds r0, r2, r0
	ldrb r5, [r0, #0]
	cmp r5, #0
	bne .L08314166
	ldr r4, [pc, #20]
	ldrb r0, [r4, #0]
	cmp r0, #0
	bne .L08314158
	movs r0, #1
	strb r0, [r4, #0]
	b .L08314166
	lsrs r4, r3, #20
	lsls r0, r0, #12
	ldrh r4, [r3, r0]
	lsls r0, r0, #12
	ldrh r1, [r7, r0]
	lsls r0, r0, #12
.L08314158:
	movs r0, #6
	movs r1, #2
	movs r2, #17
	movs r3, #4
	bl sub_080049D4
	strb r5, [r4, #0]
.L08314166:
	ldr r0, [pc, #132]
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne .L0831417A
	ldr r0, [pc, #128]
	ldrb r1, [r0, #0]
	cmp r1, #0
	bne .L0831417A
	ldr r0, [pc, #124]
	strb r1, [r0, #0]
.L0831417A:
	ldr r0, [pc, #124]
	ldrb r1, [r0, #0]
	cmp r1, #0
	beq .L08314278
	bl sub_08309FF4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08314198
	ldr r0, [pc, #108]
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq .L08314198
	bl sub_083112A4
.L08314198:
	ldr r0, [pc, #88]
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L08314280
	bl sub_0830A000
	cmp r0, #1
	bne .L08314214
	ldr r4, [pc, #84]
	ldr r3, [r4, #0]
	movs r0, #6
	movs r1, #2
	ldr r2, [pc, #80]
	bl sub_08004968
	ldr r3, [r4, #4]
	movs r0, #6
	movs r1, #3
	ldr r2, [pc, #72]
	bl sub_08004968
	bl sub_0800314C
	cmp r0, #2
	bls .L083141D6
	ldr r3, [r4, #8]
	movs r0, #6
	movs r1, #4
	ldr r2, [pc, #56]
	bl sub_08004968
.L083141D6:
	bl sub_0800314C
	cmp r0, #3
	bls .L08314256
	ldr r3, [r4, #12]
	movs r0, #6
	movs r1, #5
	ldr r2, [pc, #40]
	bl sub_08004968
	b .L08314256
	ldrh r3, [r6, r0]
	lsls r0, r0, #12
	ldr r2, [r1, r7]
	lsls r0, r0, #12
	ldrh r1, [r6, r0]
	lsls r0, r0, #12
	ldrh r1, [r7, r0]
	lsls r0, r0, #12
	strb r1, [r5, #21]
	lsls r0, r0, #8
	ldrh r4, [r1, r0]
	lsls r0, r0, #12
	.2byte 0xf600 @ .raw
	lsrs r5, r7, #32
	.2byte 0xf614 @ .raw
	lsrs r5, r7, #32
	.2byte 0xf628 @ .raw
	lsrs r5, r7, #32
	.2byte 0xf63c @ .raw
	lsrs r5, r7, #32
.L08314214:
	ldr r4, [pc, #72]
	ldr r3, [r4, #0]
	movs r0, #6
	movs r1, #2
	ldr r2, [pc, #68]
	bl sub_08004968
	ldr r3, [r4, #4]
	movs r0, #6
	movs r1, #3
	ldr r2, [pc, #60]
	bl sub_08004968
	bl sub_0800314C
	cmp r0, #2
	bls .L08314242
	ldr r3, [r4, #8]
	movs r0, #6
	movs r1, #4
	ldr r2, [pc, #44]
	bl sub_08004968
.L08314242:
	bl sub_0800314C
	cmp r0, #3
	bls .L08314256
	ldr r3, [r4, #12]
	movs r0, #6
	movs r1, #5
	ldr r2, [pc, #28]
	bl sub_08004968
.L08314256:
	ldr r1, [pc, #28]
	movs r0, #1
	strb r0, [r1, #0]
	b .L08314280
	movs r0, r0
	ldrh r4, [r1, r0]
	lsls r0, r0, #12
	.2byte 0xf650 @ .raw
	lsrs r5, r7, #32
	.2byte 0xf664 @ .raw
	lsrs r5, r7, #32
	.2byte 0xf678 @ .raw
	lsrs r5, r7, #32
	.2byte 0xf68c @ .raw
	lsrs r5, r7, #32
	ldrh r1, [r6, r0]
	lsls r0, r0, #12
.L08314278:
	ldr r0, [pc, #28]
	strb r1, [r0, #0]
	bl sub_083114B0
.L08314280:
	ldr r0, [pc, #24]
	ldrb r4, [r0, #0]
	cmp r4, #0
	beq .L083142A4
	movs r0, #15
	movs r1, #1
	bl sub_08004994
	ldr r1, [pc, #12]
	movs r0, #1
	strb r0, [r1, #0]
	b .L083142BE
	ldrh r1, [r6, r0]
	lsls r0, r0, #12
	ldr r2, [r1, r7]
	lsls r0, r0, #12
	ldrh r3, [r6, r0]
	lsls r0, r0, #12
.L083142A4:
	bl sub_0800347C
	adds r3, r0, #0
	lsls r3, r3, #24
	lsrs r3, r3, #24
	adds r3, #1
	movs r0, #15
	movs r1, #1
	ldr r2, [pc, #40]
	bl sub_08004968
	ldr r0, [pc, #40]
	strb r4, [r0, #0]
.L083142BE:
	bl sub_08313328
	ldr r1, [pc, #36]
	ldr r0, [r1, #0]
	adds r0, #1
	str r0, [r1, #0]
	mov r4, r8
	cmp r4, #0
	bne .L083142D2
	b .L08313DCA
.L083142D2:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.4byte 0x083DF6A0
	.4byte 0x03005A33
	.4byte 0x030059F0
	.4byte 0x20014901
	.4byte 0x47706008
	.4byte 0x03005A08

	.thumb
	.align 1, 0
	.global sub_083142F8
	.thumb_func
sub_083142F8:
	movs r1, #0
	ldr r0, [pc, #16]
	movs r2, #0
	adds r0, #2
.L08314300:
	strb r2, [r0, #0]
	adds r0, #140
	adds r1, #1
	cmp r1, #8
	bne .L08314300
	bx lr
	.4byte 0x0300407C

	.thumb
	.align 1, 0
	.global sub_08314310
	.thumb_func
sub_08314310:
	adds r2, r0, #0
	ldr r1, [pc, #20]
	movs r0, #140
	lsls r0, r0, #3
	adds r3, r1, r0
.L0831431A:
	ldrb r0, [r1, #2]
	cmp r0, #0
	bne .L0831432C
	str r1, [r2, #0]
	movs r0, #1
	b .L08314334
	movs r0, r0
	eors r4, r7
	lsls r0, r0, #12
.L0831432C:
	adds r1, #140
	cmp r1, r3
	bne .L0831431A
	movs r0, #0
.L08314334:
	bx lr
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08314338
	.thumb_func
sub_08314338:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #12
	mov r8, r0
	mov r9, r1
	adds r5, r2, #0
	ldr r0, [sp, #44]
	add r2, sp, #48
	add r4, sp, #52
	ldr r1, [sp, #56]
	lsls r3, r3, #24
	lsrs r3, r3, #24
	mov sl, r3
	lsls r0, r0, #16
	lsrs r6, r0, #16
	ldrb r2, [r2, #0]
	str r2, [sp, #8]
	ldrb r4, [r4, #0]
	str r4, [sp, #4]
	lsls r1, r1, #16
	lsrs r4, r1, #16
	mov r0, sp
	bl sub_08314310
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08314440
	ldr r0, [sp, #0]
	movs r3, #0
	movs r2, #1
	strb r2, [r0, #2]
	ldr r0, [sp, #0]
	strb r5, [r0, #0]
	ldr r1, [sp, #0]
	mov r7, r8
	lsls r0, r7, #8
	str r0, [r1, #20]
	ldr r1, [sp, #0]
	mov r7, r9
	lsls r0, r7, #8
	str r0, [r1, #24]
	ldr r0, [sp, #0]
	adds r0, #36
	movs r1, #39
	strb r1, [r0, #0]
	ldr r0, [sp, #0]
	strb r2, [r0, #3]
	ldr r0, [sp, #0]
	strb r4, [r0, #1]
	ldr r0, [sp, #0]
	mov r1, sl
	strb r1, [r0, #4]
	ldr r1, [sp, #0]
	lsls r0, r6, #4
	subs r0, r0, r6
	lsls r0, r0, #2
	strh r0, [r1, #16]
	ldr r0, [sp, #0]
	mov r2, sp
	ldrb r2, [r2, #4]
	strb r2, [r0, #5]
	ldr r0, [sp, #0]
	strh r3, [r0, #12]
	ldr r7, [sp, #8]
	cmp r7, #0
	beq .L08314420
	cmp r5, #10
	bhi .L08314404
	lsls r0, r5, #2
	ldr r1, [pc, #4]
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0xf6bc @ .raw
	lsrs r5, r7, #32
	ldr r1, [sp, #0]
	movs r0, #250
	str r0, [r1, #8]
	b .L08314408
	ldr r1, [sp, #0]
	movs r0, #125
	str r0, [r1, #8]
	b .L08314408
	ldr r1, [sp, #0]
	movs r0, #100
	str r0, [r1, #8]
	b .L08314408
	ldr r1, [sp, #0]
	movs r0, #75
	str r0, [r1, #8]
	b .L08314408
	ldr r1, [sp, #0]
	movs r0, #200
	str r0, [r1, #8]
	b .L08314408
	ldr r1, [sp, #0]
	movs r0, #50
	str r0, [r1, #8]
	b .L08314408
.L08314404:
	ldr r0, [sp, #0]
	str r3, [r0, #8]
.L08314408:
	ldr r2, [sp, #0]
	adds r0, r2, #0
	adds r0, #40
	ldr r1, [pc, #12]
	ldrb r2, [r2, #0]
	movs r3, #0
	bl sub_080002E0
	b .L08314436
	movs r0, r0
	lsls r0, r4, #3
	lsrs r4, r3, #32
.L08314420:
	ldr r0, [sp, #0]
	ldr r1, [sp, #8]
	str r1, [r0, #8]
	ldr r2, [sp, #0]
	adds r0, r2, #0
	adds r0, #40
	ldr r1, [pc, #12]
	ldrb r2, [r2, #0]
	movs r3, #0
	bl sub_080002E0
.L08314436:
	movs r0, #1
	b .L08314442
	movs r0, r0
	movs r1, #48
	lsrs r7, r3, #32
.L08314440:
	movs r0, #0
.L08314442:
	add sp, #12
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08314454
	.thumb_func
sub_08314454:
	push {lr}
	movs r1, #0
	strb r1, [r0, #2]
	adds r0, #40
	bl sub_080005D4
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_08314464
	.thumb_func
sub_08314464:
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	adds r5, r2, #0
	cmp r0, #10
	bls .L08314470
	b .L08314886
.L08314470:
	lsls r0, r0, #2
	ldr r1, [pc, #8]
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	movs r0, r0
	.2byte 0xf6e8 @ .raw
	lsrs r5, r7, #32
	bl sub_08003490
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083144B6
	ldr r0, [pc, #124]
	ldrb r2, [r4, #0]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #1
	adds r0, #5
	adds r1, r1, r0
	ldrb r0, [r1, #0]
	cmp r0, #0
	bne .L083144B0
	movs r0, #1
	strb r0, [r1, #0]
	ldr r0, [pc, #104]
	bl sub_0831638C
	ldrb r0, [r4, #0]
	movs r1, #5
	bl sub_082FB6D8
.L083144B0:
	ldr r1, [pc, #92]
	movs r0, #1
	strb r0, [r1, #0]
.L083144B6:
	ldr r1, [pc, #80]
	ldrb r2, [r4, #0]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r1, #5
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0, #0]
	ldrb r0, [r4, #0]
	movs r1, #5
	movs r2, #3
	bl sub_082FB810
	bl sub_0800347C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	ldrb r1, [r4, #0]
	cmp r1, r0
	beq .L083144E2
	b .L08314886
.L083144E2:
	ldr r0, [r5, #20]
	asrs r0, r0, #8
	ldr r1, [r5, #24]
	asrs r1, r1, #8
	bl sub_08302078
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083144F6
	b .L08314886
.L083144F6:
	ldr r0, [r5, #8]
	cmp r0, #0
	bne .L083144FE
	b .L083147E4
.L083144FE:
	ldrb r0, [r4, #0]
	movs r1, #5
	movs r2, #3
	b .L08314868
	movs r0, r0
	adds r4, #228
	lsls r0, r0, #12
	ldr r6, [pc, #612]
	lsrs r1, r6, #32
	ldr r4, [r3, r7]
	lsls r0, r0, #12
	ldr r0, [pc, #32]
	ldrb r2, [r4, #0]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrb r0, [r1, #0]
	cmp r0, #0
	bne .L08314530
	movs r0, #1
	strb r0, [r1, #0]
	ldr r0, [pc, #16]
	bl sub_0831638C
.L08314530:
	ldr r1, [pc, #12]
	movs r0, #1
	strb r0, [r1, #0]
	b .L08314886
	adds r4, #228
	lsls r0, r0, #12
	ldmia r7!, {r0, r4, r5}
	lsrs r7, r5, #32
	ldr r4, [r3, r7]
	lsls r0, r0, #12
	adds r1, r4, #0
	adds r1, #92
	ldrb r0, [r1, #0]
	adds r0, #1
	strb r0, [r1, #0]
	movs r0, #7
	bl sub_083189D0
	b .L08314886
	bl sub_08003490
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0831458C
	ldr r0, [pc, #120]
	ldrb r2, [r4, #0]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #1
	adds r0, #3
	adds r1, r1, r0
	ldrb r0, [r1, #0]
	cmp r0, #0
	bne .L08314586
	movs r0, #1
	strb r0, [r1, #0]
	ldr r0, [pc, #100]
	bl sub_0831638C
	movs r0, #0
	movs r1, #3
	bl sub_082FB6D8
.L08314586:
	ldr r1, [pc, #92]
	movs r0, #1
	strb r0, [r1, #0]
.L0831458C:
	ldr r1, [pc, #76]
	ldrb r2, [r4, #0]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r1, #3
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0, #0]
	ldrb r0, [r4, #0]
	movs r1, #3
	movs r2, #40
	bl sub_082FB810
	bl sub_0800347C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	ldrb r1, [r4, #0]
	cmp r1, r0
	beq .L083145B8
	b .L08314886
.L083145B8:
	ldr r0, [r5, #20]
	asrs r0, r0, #8
	ldr r1, [r5, #24]
	asrs r1, r1, #8
	bl sub_08302078
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083145CC
	b .L08314886
.L083145CC:
	ldr r0, [r5, #8]
	cmp r0, #0
	bne .L083145D4
	b .L083147E4
.L083145D4:
	ldrb r0, [r4, #0]
	movs r1, #3
	movs r2, #40
	b .L08314868
	adds r4, #228
	lsls r0, r0, #12
	ldr r3, [pc, #724]
	lsrs r1, r6, #32
	ldr r4, [r3, r7]
	lsls r0, r0, #12
	adds r1, r4, #0
	adds r1, #90
.L083145EC:
	movs r0, #255
	strh r0, [r1, #0]
.L083145F0:
	bl sub_0800347C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	ldrb r4, [r4, #0]
	cmp r4, r0
	beq .L08314600
	b .L08314886
.L08314600:
	ldr r0, [r5, #20]
	asrs r0, r0, #8
	ldr r1, [r5, #24]
	asrs r1, r1, #8
	bl sub_08302078
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08314614
	b .L08314886
.L08314614:
	b .L083147E4
	bl sub_08003490
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08314632
	ldr r6, [pc, #128]
	ldrb r0, [r6, #0]
	cmp r0, #0
	bne .L08314632
	ldr r0, [pc, #124]
	bl sub_0831638C
	movs r0, #1
	strb r0, [r6, #0]
.L08314632:
	ldr r1, [pc, #120]
	movs r0, #1
	strb r0, [r1, #0]
	ldr r6, [pc, #116]
	ldrb r2, [r4, #0]
	lsls r0, r2, #1
	adds r0, r0, r6
	ldrh r1, [r0, #0]
	adds r1, #5
	strh r1, [r0, #0]
	ldrb r1, [r4, #0]
	lsls r0, r1, #1
	adds r1, r0, r6
	ldrh r2, [r1, #0]
	cmp r2, #99
	bls .L08314656
	movs r0, #99
	strh r0, [r1, #0]
.L08314656:
	bl sub_0800347C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	ldrb r1, [r4, #0]
	cmp r1, r0
	beq .L08314666
	b .L08314886
.L08314666:
	ldr r0, [r5, #20]
	asrs r0, r0, #8
	ldr r1, [r5, #24]
	asrs r1, r1, #8
	bl sub_08302078
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0831467A
	b .L08314886
.L0831467A:
	ldr r0, [r5, #8]
	cmp r0, #0
	bne .L08314682
	b .L083147E4
.L08314682:
	ldrb r2, [r4, #0]
	lsls r0, r2, #1
	adds r0, r0, r6
	ldrh r1, [r0, #0]
	adds r1, #5
	strh r1, [r0, #0]
	ldrb r4, [r4, #0]
	lsls r0, r4, #1
	adds r1, r0, r6
	ldrh r0, [r1, #0]
	cmp r0, #99
	bhi .L0831469C
	b .L0831486C
.L0831469C:
	movs r0, #99
	strh r0, [r1, #0]
	b .L0831486C
	movs r0, r0
	cmp r0, #236
	lsls r0, r0, #12
	ldr r7, [pc, #340]
	lsrs r1, r6, #32
	ldr r4, [r3, r7]
	lsls r0, r0, #12
	adds r4, #220
	lsls r0, r0, #12
	adds r1, r4, #0
	adds r1, #90
	ldrh r0, [r1, #0]
	adds r0, #128
	strh r0, [r1, #0]
	lsls r0, r0, #16
	asrs r0, r0, #16
	cmp r0, #255
	ble .L083145F0
	b .L083145EC
	bl sub_08003490
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083146FE
	ldr r0, [pc, #120]
	ldrb r2, [r4, #0]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #1
	adds r0, #2
	adds r1, r1, r0
	ldrb r0, [r1, #0]
	cmp r0, #0
	bne .L083146F8
	movs r0, #1
	strb r0, [r1, #0]
	ldr r0, [pc, #100]
	bl sub_0831638C
	movs r0, #0
	movs r1, #2
	bl sub_082FB6D8
.L083146F8:
	ldr r1, [pc, #88]
	movs r0, #1
	strb r0, [r1, #0]
.L083146FE:
	ldr r1, [pc, #76]
	ldrb r2, [r4, #0]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r1, #2
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0, #0]
	ldrb r0, [r4, #0]
	movs r1, #2
	movs r2, #10
	bl sub_082FB810
	bl sub_0800347C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	ldrb r1, [r4, #0]
	cmp r1, r0
	beq .L0831472A
	b .L08314886
.L0831472A:
	ldr r0, [r5, #20]
	asrs r0, r0, #8
	ldr r1, [r5, #24]
	asrs r1, r1, #8
	bl sub_08302078
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0831473E
	b .L08314886
.L0831473E:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq .L083147E4
	ldrb r0, [r4, #0]
	movs r1, #2
	movs r2, #10
	b .L08314868
	adds r4, #228
	lsls r0, r0, #12
	ldr r4, [pc, #804]
	lsrs r1, r6, #32
	ldr r4, [r3, r7]
	lsls r0, r0, #12
	bl sub_08003490
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0831478E
	ldr r0, [pc, #116]
	ldrb r2, [r4, #0]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #1
	adds r0, #4
	adds r1, r1, r0
	ldrb r0, [r1, #0]
	cmp r0, #0
	bne .L08314788
	movs r0, #1
	strb r0, [r1, #0]
	ldr r0, [pc, #96]
	bl sub_0831638C
	movs r0, #0
	movs r1, #4
	bl sub_082FB6D8
.L08314788:
	ldr r1, [pc, #84]
	movs r0, #1
	strb r0, [r1, #0]
.L0831478E:
	ldr r1, [pc, #72]
	ldrb r2, [r4, #0]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r1, #4
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0, #0]
	ldrb r0, [r4, #0]
	movs r1, #4
	movs r2, #6
	bl sub_082FB810
	bl sub_0800347C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	ldrb r1, [r4, #0]
	cmp r1, r0
	bne .L08314886
	ldr r0, [r5, #20]
	asrs r0, r0, #8
	ldr r1, [r5, #24]
	asrs r1, r1, #8
	bl sub_08302078
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08314886
	ldr r0, [r5, #8]
	cmp r0, #0
	beq .L083147E4
	ldrb r0, [r4, #0]
	movs r1, #4
	movs r2, #4
	b .L08314868
	adds r4, #228
	lsls r0, r0, #12
	ldr r5, [pc, #532]
	lsrs r1, r6, #32
	ldr r4, [r3, r7]
	lsls r0, r0, #12
.L083147E4:
	movs r0, #31
	bl sub_083189D0
	b .L08314886
	bl sub_08003490
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08314822
	ldr r0, [pc, #124]
	ldrb r2, [r4, #0]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #1
	adds r0, #1
	adds r1, r1, r0
	ldrb r0, [r1, #0]
	cmp r0, #0
	bne .L0831481C
	movs r0, #1
	strb r0, [r1, #0]
	ldr r0, [pc, #104]
	bl sub_0831638C
	movs r0, #0
	movs r1, #1
	bl sub_082FB6D8
.L0831481C:
	ldr r1, [pc, #92]
	movs r0, #1
	strb r0, [r1, #0]
.L08314822:
	ldr r1, [pc, #80]
	ldrb r2, [r4, #0]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r1, #1
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0, #0]
	ldrb r0, [r4, #0]
	movs r2, #75
	bl sub_082FB810
	bl sub_0800347C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	ldrb r1, [r4, #0]
	cmp r1, r0
	bne .L08314886
	ldr r0, [r5, #20]
	asrs r0, r0, #8
	ldr r1, [r5, #24]
	asrs r1, r1, #8
	bl sub_08302078
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08314886
	ldr r0, [r5, #8]
	cmp r0, #0
	beq .L08314880
	ldrb r0, [r4, #0]
	movs r1, #1
	movs r2, #50
.L08314868:
	bl sub_082FB810
.L0831486C:
	movs r0, #17
	bl sub_083189D0
	b .L08314886
	adds r4, #228
	lsls r0, r0, #12
	ldr r2, [pc, #996]
	lsrs r1, r6, #32
	ldr r4, [r3, r7]
	lsls r0, r0, #12
.L08314880:
	movs r0, #31
	bl sub_083189D0
.L08314886:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_0831488C
	.thumb_func
sub_0831488C:
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #4]
	cmp r0, #0
	bne .L08314898
	b .L0831498A
.L08314898:
	ldrb r0, [r5, #5]
	cmp r0, #0
	beq .L08314900
	ldrb r0, [r5, #0]
	subs r0, #1
	cmp r0, #9
	bhi .L08314900
	lsls r0, r0, #2
	ldr r1, [pc, #4]
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0xf714 @ .raw
	lsrs r5, r7, #32
	ldr r0, [pc, #4]
	adds r0, #126
	ldrh r0, [r0, #0]
	b .L083148F8
	adds r4, #252
	lsls r0, r0, #12
	ldr r0, [pc, #4]
	adds r0, #78
	ldrh r0, [r0, #0]
	b .L083148F8
	adds r4, #252
	lsls r0, r0, #12
	ldr r0, [pc, #4]
	ldrh r0, [r0, #0]
	b .L083148F8
	movs r0, r0
	adds r4, #220
	lsls r0, r0, #12
	movs r0, #50
	str r0, [r5, #8]
	b .L08314900
	ldr r0, [pc, #4]
	ldrh r0, [r0, #54]
	b .L083148F8
	adds r4, #252
	lsls r0, r0, #12
	ldr r0, [pc, #4]
	adds r0, #102
	ldrh r0, [r0, #0]
	b .L083148F8
	adds r4, #252
	lsls r0, r0, #12
	ldr r0, [pc, #80]
	ldrh r0, [r0, #30]
.L083148F8:
	cmp r0, #0
	beq .L08314900
	movs r0, #10
	strh r0, [r5, #12]
.L08314900:
	ldrh r1, [r5, #12]
	movs r2, #12
	ldrsh r0, [r5, r2]
	cmp r0, #0
	bgt .L08314984
	bl sub_08003490
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08314950
	movs r7, #0
	movs r6, #0
.L08314918:
	ldr r0, [pc, #48]
	adds r4, r6, r0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq .L0831493E
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08000ECC
	lsls r0, r0, #24
	cmp r0, #0
	beq .L0831493E
	ldrb r0, [r5, #0]
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_08314464
	ldrh r0, [r5, #16]
	strh r0, [r5, #12]
.L0831493E:
	adds r6, #248
	adds r7, #1
	cmp r7, #3
	bls .L08314918
	b .L083149BC
	adds r4, #252
	lsls r0, r0, #12
	movs r5, #12
	lsls r0, r0, #12
.L08314950:
	ldr r6, [pc, #40]
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_08000ECC
	lsls r0, r0, #24
	cmp r0, #0
	beq .L083149BC
	ldr r4, [pc, #28]
	ldr r0, [r5, #8]
	ldrh r1, [r4, #0]
	cmp r1, r0
	bcc .L083149BC
	ldrb r0, [r5, #0]
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_08314464
	ldrh r0, [r5, #16]
	strh r0, [r5, #12]
	b .L083149B4
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
	ldr r0, [r6, r3]
	lsls r0, r0, #12
.L08314984:
	subs r0, r1, #1
	strh r0, [r5, #12]
	b .L083149BC
.L0831498A:
	ldr r6, [pc, #56]
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_08000ECC
	lsls r0, r0, #24
	cmp r0, #0
	beq .L083149BC
	ldr r4, [pc, #44]
	ldr r0, [r5, #8]
	ldrh r1, [r4, #0]
	cmp r1, r0
	bcc .L083149BC
	ldrb r0, [r5, #0]
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_08314464
	adds r0, r5, #0
	bl sub_08314454
.L083149B4:
	ldrh r2, [r4, #0]
	ldrh r5, [r5, #8]
	subs r0, r2, r5
	strh r0, [r4, #0]
.L083149BC:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x0300250C
	.4byte 0x030058F0

	.thumb
	.align 1, 0
	.global sub_083149CC
	.thumb_func
sub_083149CC:
	push {r4, r5, lr}
	movs r5, #0
.L083149D0:
	movs r0, #140
	adds r1, r5, #0
	muls r1, r0
	ldr r0, [pc, #56]
	adds r4, r1, r0
	ldrb r0, [r4, #2]
	cmp r0, #0
	beq .L08314A2E
	bl sub_08003490
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08314A28
	adds r0, r4, #0
	adds r0, #40
	ldr r1, [r4, #20]
	asrs r1, r1, #8
	ldr r2, [r4, #24]
	asrs r2, r2, #8
	bl sub_083020A8
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08314A06
	ldrb r0, [r4, #4]
	cmp r0, #0
	beq .L08314A14
.L08314A06:
	adds r0, r4, #0
	bl sub_0831488C
	b .L08314A2E
	movs r0, r0
	eors r4, r7
	lsls r0, r0, #12
.L08314A14:
	ldrb r0, [r4, #3]
	cmp r0, #0
	beq .L08314A20
	ldrb r0, [r4, #1]
	bl sub_08316920
.L08314A20:
	adds r0, r4, #0
	bl sub_08314454
	b .L08314A2E
.L08314A28:
	adds r0, r4, #0
	bl sub_0831488C
.L08314A2E:
	adds r5, #1
	cmp r5, #8
	bne .L083149D0
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08314A3C
	.thumb_func
sub_08314A3C:
	push {r4, r5, r6, lr}
	movs r6, #0
.L08314A40:
	movs r0, #140
	adds r1, r6, #0
	muls r1, r0
	ldr r0, [pc, #92]
	adds r5, r1, r0
	ldrb r0, [r5, #2]
	cmp r0, #0
	beq .L08314AB8
	adds r4, r5, #0
	adds r4, #40
	ldr r1, [r5, #20]
	asrs r1, r1, #8
	ldr r2, [r5, #24]
	asrs r2, r2, #8
	adds r0, r4, #0
	bl sub_083020A8
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08314AAC
	ldrb r0, [r5, #4]
	cmp r0, #0
	beq .L08314A76
	movs r1, #12
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bgt .L08314AAC
.L08314A76:
	adds r0, r4, #0
	bl sub_08000604
	adds r0, r4, #0
	bl sub_08000704
	ldr r1, [r5, #20]
	asrs r1, r1, #8
	ldr r3, [pc, #32]
	ldr r0, [r3, #8]
	subs r1, r1, r0
	ldr r2, [r5, #24]
	asrs r2, r2, #8
	ldr r0, [r3, #12]
	subs r2, r2, r0
	adds r0, r5, #0
	adds r0, #36
	ldrb r3, [r0, #0]
	adds r0, r4, #0
	bl sub_08000684
	b .L08314AB2
	movs r0, r0
	eors r4, r7
	lsls r0, r0, #12
	subs r0, #204
	lsls r0, r0, #12
.L08314AAC:
	adds r0, r4, #0
	bl sub_0800060C
.L08314AB2:
	adds r0, r4, #0
	bl Sprite_Draw
.L08314AB8:
	adds r6, #1
	cmp r6, #8
	bne .L08314A40
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_08314AC4
	.thumb_func
sub_08314AC4:
	push {r4, lr}
	adds r3, r0, #0
	ldr r2, [pc, #24]
	movs r0, #245
	lsls r0, r0, #2
	adds r4, r2, r0
.L08314AD0:
	ldrb r0, [r2, #2]
	cmp r0, #0
	beq .L08314AE8
	ldrb r0, [r2, #1]
	cmp r0, r3
	bne .L08314AE8
	str r2, [r1, #0]
	movs r0, #1
	b .L08314AF0
	movs r0, r0
	eors r4, r7
	lsls r0, r0, #12
.L08314AE8:
	adds r2, #140
	cmp r2, r4
	bls .L08314AD0
	movs r0, #0
.L08314AF0:
	pop {r4}
	pop {r1}
	bx r1
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08314AF8
	.thumb_func
sub_08314AF8:
	push {r4, lr}
	sub sp, #12
	bl sub_0831654C
	bl sub_0831650C
	bl sub_0831653C
	ldr r0, [pc, #76]
	movs r4, #0
	str r4, [r0, #64]
	movs r0, #8
	movs r1, #10
	movs r2, #0
	movs r3, #0
	bl sub_08316098
	str r4, [sp, #0]
	movs r0, #120
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #44]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #120
	bl sub_08316178
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	movs r0, #8
	bl sub_083164C8
	ldr r0, [pc, #20]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x0300250C
	.4byte 0x083DF73C
	.4byte 0x08314B65

	.thumb
	.align 1, 0
	.global sub_08314B64
	.thumb_func
sub_08314B64:
	push {r4, lr}
	sub sp, #12
	bl sub_0831654C
	bl sub_0831650C
	bl sub_0831653C
	movs r4, #0
	str r4, [sp, #0]
	movs r0, #120
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #36]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #120
	bl sub_08316178
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	movs r0, #8
	bl sub_083164C8
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083DF770

	.thumb
	.align 1, 0
	.global sub_08314BB4
	.thumb_func
sub_08314BB4:
	push {r4, lr}
	sub sp, #12
	bl sub_0831654C
	bl sub_0831650C
	bl sub_0831653C
	ldr r0, [pc, #76]
	movs r4, #0
	str r4, [r0, #64]
	movs r0, #8
	movs r1, #10
	movs r2, #0
	movs r3, #0
	bl sub_08316098
	str r4, [sp, #0]
	movs r0, #120
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #44]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #120
	bl sub_08316178
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	movs r0, #8
	bl sub_083164C8
	ldr r0, [pc, #20]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x0300250C
	.4byte 0x083DF794
	.4byte 0x08314C21

	.thumb
	.align 1, 0
	.global sub_08314C20
	.thumb_func
sub_08314C20:
	push {r4, lr}
	sub sp, #12
	bl sub_0831654C
	bl sub_0831650C
	bl sub_0831653C
	movs r4, #0
	str r4, [sp, #0]
	movs r0, #120
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #40]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #120
	bl sub_08316178
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	movs r0, #8
	bl sub_083164C8
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x083DF7B0
	.4byte 0x08314C79

	.thumb
	.align 1, 0
	.global sub_08314C78
	.thumb_func
sub_08314C78:
	push {r4, lr}
	sub sp, #12
	bl sub_0831654C
	bl sub_0831650C
	bl sub_0831653C
	movs r4, #0
	str r4, [sp, #0]
	movs r0, #120
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #36]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #120
	bl sub_08316178
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	movs r0, #8
	bl sub_083164C8
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083DF7E8

	.thumb
	.align 1, 0
	.global sub_08314CC8
	.thumb_func
sub_08314CC8:
	push {r4, lr}
	sub sp, #12
	bl sub_0831654C
	bl sub_0831650C
	bl sub_0831653C
	ldr r0, [pc, #76]
	movs r4, #0
	str r4, [r0, #64]
	movs r0, #8
	movs r1, #10
	movs r2, #0
	movs r3, #0
	bl sub_08316098
	str r4, [sp, #0]
	movs r0, #240
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #5
	bl sub_0831628C
	ldr r2, [pc, #44]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #240
	bl sub_08316178
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	movs r0, #8
	bl sub_083164C8
	ldr r0, [pc, #20]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x0300250C
	.4byte 0x083DF800
	.4byte 0x08314D35

	.thumb
	.align 1, 0
	.global sub_08314D34
	.thumb_func
sub_08314D34:
	push {r4, lr}
	sub sp, #12
	bl sub_0831654C
	bl sub_0831650C
	bl sub_0831653C
	movs r4, #0
	str r4, [sp, #0]
	movs r0, #120
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #36]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #120
	bl sub_08316178
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	movs r0, #8
	bl sub_083164C8
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083DF848

	.thumb
	.align 1, 0
	.global sub_08314D84
	.thumb_func
sub_08314D84:
	push {r4, lr}
	sub sp, #12
	bl sub_0831654C
	bl sub_0831650C
	bl sub_0831653C
	ldr r0, [pc, #76]
	movs r4, #0
	str r4, [r0, #64]
	movs r0, #8
	movs r1, #10
	movs r2, #0
	movs r3, #0
	bl sub_08316098
	str r4, [sp, #0]
	movs r0, #120
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #44]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #120
	bl sub_08316178
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	movs r0, #8
	bl sub_083164C8
	ldr r0, [pc, #20]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x0300250C
	.4byte 0x083DF86C
	.4byte 0x08314DF1

	.thumb
	.align 1, 0
	.global sub_08314DF0
	.thumb_func
sub_08314DF0:
	push {r4, lr}
	sub sp, #12
	bl sub_0831654C
	bl sub_0831650C
	bl sub_0831653C
	movs r4, #0
	str r4, [sp, #0]
	movs r0, #120
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #40]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #120
	bl sub_08316178
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	movs r0, #8
	bl sub_083164C8
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x083DF894
	.4byte 0x08314E49

	.thumb
	.align 1, 0
	.global sub_08314E48
	.thumb_func
sub_08314E48:
	push {r4, lr}
	sub sp, #12
	bl sub_0831654C
	bl sub_0831650C
	bl sub_0831653C
	movs r4, #0
	str r4, [sp, #0]
	movs r0, #120
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #36]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #120
	bl sub_08316178
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	movs r0, #8
	bl sub_083164C8
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083DF8C8

	.thumb
	.align 1, 0
	.global sub_08314E98
	.thumb_func
sub_08314E98:
	push {r4, lr}
	sub sp, #12
	bl sub_0831654C
	bl sub_0831650C
	bl sub_0831653C
	ldr r0, [pc, #76]
	movs r4, #0
	str r4, [r0, #64]
	movs r0, #8
	movs r1, #10
	movs r2, #0
	movs r3, #0
	bl sub_08316098
	str r4, [sp, #0]
	movs r0, #120
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #44]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #120
	bl sub_08316178
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	movs r0, #8
	bl sub_083164C8
	ldr r0, [pc, #20]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x0300250C
	.4byte 0x083DF8E8
	.4byte 0x08314F05

	.thumb
	.align 1, 0
	.global sub_08314F04
	.thumb_func
sub_08314F04:
	push {r4, lr}
	sub sp, #12
	bl sub_0831654C
	bl sub_0831650C
	bl sub_0831653C
	movs r4, #0
	str r4, [sp, #0]
	movs r0, #120
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #36]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #120
	bl sub_08316178
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	movs r0, #8
	bl sub_083164C8
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083DF910

	.thumb
	.align 1, 0
	.global sub_08314F54
	.thumb_func
sub_08314F54:
	push {r4, lr}
	sub sp, #12
	bl sub_0831654C
	bl sub_0831650C
	bl sub_0831653C
	ldr r0, [pc, #76]
	movs r4, #0
	str r4, [r0, #64]
	movs r0, #8
	movs r1, #10
	movs r2, #0
	movs r3, #0
	bl sub_08316098
	str r4, [sp, #0]
	movs r0, #180
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #5
	bl sub_0831628C
	ldr r2, [pc, #44]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #180
	bl sub_08316178
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	movs r0, #8
	bl sub_083164C8
	ldr r0, [pc, #20]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x0300250C
	.4byte 0x083DF930
	.4byte 0x08314FC1

	.thumb
	.align 1, 0
	.global sub_08314FC0
	.thumb_func
sub_08314FC0:
	push {r4, lr}
	sub sp, #12
	bl sub_0831654C
	bl sub_0831650C
	bl sub_0831653C
	movs r4, #0
	str r4, [sp, #0]
	movs r0, #220
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #5
	bl sub_0831628C
	ldr r2, [pc, #36]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #220
	bl sub_08316178
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	movs r0, #8
	bl sub_083164C8
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083DF974

	.thumb
	.align 1, 0
	.global sub_08315010
	.thumb_func
sub_08315010:
	movs r1, #0
	cmp r1, r0
	bcs .L0831501C
.L08315016:
	adds r1, #1
	cmp r1, r0
	bcc .L08315016
.L0831501C:
	bx lr
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08315020
	.thumb_func
sub_08315020:
	lsls r0, r0, #5
	ldr r1, [pc, #4]
	adds r0, r0, r1
	bx lr
	.4byte 0x030044E4

	.thumb
	.align 1, 0
	.global sub_0831502C
	.thumb_func
sub_0831502C:
	lsls r0, r0, #5
	ldr r1, [pc, #56]
	adds r0, r0, r1
	movs r3, #0
	strb r3, [r0, #0]
	movs r1, #10
	strb r1, [r0, #1]
	strb r1, [r0, #2]
	strb r3, [r0, #3]
	movs r1, #1
	strb r1, [r0, #4]
	movs r1, #0
	strh r3, [r0, #6]
	movs r2, #3
	strb r2, [r0, #15]
	strb r1, [r0, #16]
	strb r1, [r0, #8]
	strb r1, [r0, #9]
	strb r1, [r0, #10]
	strb r1, [r0, #11]
	strb r1, [r0, #12]
	strb r1, [r0, #13]
	strb r1, [r0, #14]
	strb r1, [r0, #17]
	strh r3, [r0, #18]
	strh r3, [r0, #20]
	strh r3, [r0, #22]
	strh r3, [r0, #24]
	strh r3, [r0, #26]
	bx lr
	.4byte 0x030044E4

	.thumb
	.align 1, 0
	.global sub_0831506C
	.thumb_func
sub_0831506C:
	push {r4, lr}
	lsls r0, r0, #5
	ldr r2, [pc, #136]
	adds r4, r0, r2
	ldr r0, [pc, #136]
	ldrb r0, [r0, #0]
	strb r0, [r4, #0]
	ldr r0, [pc, #136]
	ldr r0, [r0, #0]
	strb r0, [r4, #2]
	ldr r0, [pc, #132]
	ldr r0, [r0, #0]
	strb r0, [r4, #1]
	ldr r0, [pc, #132]
	ldrb r0, [r0, #0]
	strb r0, [r4, #4]
	ldr r0, [pc, #128]
	ldrb r0, [r0, #0]
	strb r0, [r4, #3]
	ldr r0, [pc, #128]
	ldrh r0, [r0, #0]
	strh r0, [r4, #6]
	ldr r0, [pc, #124]
	adds r0, #92
	ldrb r0, [r0, #0]
	strb r0, [r4, #15]
	strb r1, [r4, #16]
	movs r3, #0
	adds r1, r4, #0
	adds r1, #8
	ldr r2, [pc, #112]
.L083150AA:
	ldrb r0, [r2, #0]
	adds r2, #1
	strb r0, [r1, #0]
	adds r1, #1
	adds r3, #1
	cmp r3, #5
	bls .L083150AA
	ldr r0, [pc, #100]
	ldrb r0, [r0, #0]
	strb r0, [r4, #14]
	ldr r0, [pc, #100]
	ldrh r0, [r0, #0]
	strb r0, [r4, #17]
	movs r0, #0
	movs r1, #1
	bl sub_082FB834
	strh r0, [r4, #18]
	movs r0, #0
	movs r1, #2
	bl sub_082FB834
	strh r0, [r4, #20]
	movs r0, #0
	movs r1, #3
	bl sub_082FB834
	strh r0, [r4, #22]
	movs r0, #0
	movs r1, #4
	bl sub_082FB834
	strh r0, [r4, #24]
	movs r0, #0
	movs r1, #5
	bl sub_082FB834
	strh r0, [r4, #26]
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x030044E4
	.4byte 0x02007567
	.4byte 0x030059B4
	.4byte 0x030059B8
	.4byte 0x02007566
	.4byte 0x02007561
	.4byte 0x030058F0
	.4byte 0x0300250C
	.4byte 0x030034E4
	.4byte 0x030028EC
	.4byte 0x030034DC

	.thumb
	.align 1, 0
	.global sub_08315128
	.thumb_func
sub_08315128:
	push {r4, lr}
	movs r4, #0
	ldr r3, [pc, #16]
	ldr r2, [pc, #20]
.L08315130:
	ldrb r1, [r2, #0]
	adds r2, #1
	ldrb r0, [r3, #0]
	adds r3, #1
	cmp r1, r0
	beq .L08315148
	movs r0, #0
	b .L08315150
	add ip, fp
	lsls r0, r0, #12
	.2byte 0xf9bc @ .raw
	lsrs r5, r7, #32
.L08315148:
	adds r4, #1
	cmp r4, #7
	bls .L08315130
	movs r0, #1
.L08315150:
	pop {r4}
	pop {r1}
	bx r1
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08315158
	.thumb_func
sub_08315158:
	push {r4, lr}
	bl sub_083151F0
	bl sub_08315128
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083151A0
	movs r1, #0
	ldr r3, [pc, #60]
	movs r2, #0
	ldr r0, [pc, #60]
.L08315170:
	strb r2, [r0, #0]
	adds r0, #1
	adds r1, #1
	cmp r1, r3
	bls .L08315170
	movs r3, #0
	ldr r2, [pc, #44]
	ldr r1, [pc, #48]
.L08315180:
	ldrb r0, [r1, #0]
	adds r1, #1
	strb r0, [r2, #0]
	adds r2, #1
	adds r3, #1
	cmp r3, #7
	bls .L08315180
	movs r4, #0
.L08315190:
	adds r0, r4, #0
	bl sub_0831502C
	adds r4, #1
	cmp r4, #3
	bls .L08315190
	bl sub_083151B4
.L083151A0:
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x000001FF
	.4byte 0x030044DC
	.4byte 0x083DF9BC

	.thumb
	.align 1, 0
	.global sub_083151B4
	.thumb_func
sub_083151B4:
	push {r4, r5, lr}
	movs r0, #4
	bl sub_0831715C
	ldr r1, [pc, #40]
	movs r0, #3
	bl sub_083171C4
	movs r4, #0
	ldr r5, [pc, #36]
.L083151C8:
	lsls r0, r4, #16
	lsrs r0, r0, #16
	adds r1, r5, #0
	bl sub_083173DC
	movs r0, #250
	lsls r0, r0, #2
	bl sub_08315010
	adds r5, #8
	adds r4, #1
	cmp r4, #63
	bls .L083151C8
	pop {r4, r5}
	pop {r0}
	bx r0
	.4byte 0x03005874
	.4byte 0x030044DC

	.thumb
	.align 1, 0
	.global sub_083151F0
	.thumb_func
sub_083151F0:
	push {r4, r5, lr}
	movs r0, #4
	bl sub_0831715C
	ldr r1, [pc, #40]
	movs r0, #3
	bl sub_083171C4
	movs r4, #0
	ldr r5, [pc, #36]
.L08315204:
	lsls r0, r4, #16
	lsrs r0, r0, #16
	adds r1, r5, #0
	bl sub_08317324
	movs r0, #250
	lsls r0, r0, #2
	bl sub_08315010
	adds r5, #8
	adds r4, #1
	cmp r4, #63
	bls .L08315204
	pop {r4, r5}
	pop {r0}
	bx r0
	.4byte 0x03005874
	.4byte 0x030044DC

	.thumb
	.align 1, 0
	.global sub_0831522C
	.thumb_func
sub_0831522C:
	push {r4, lr}
	movs r1, #0
	ldr r3, [pc, #56]
	movs r2, #0
	ldr r0, [pc, #56]
.L08315236:
	strb r2, [r0, #0]
	adds r0, #1
	adds r1, #1
	cmp r1, r3
	bls .L08315236
	movs r3, #0
	ldr r2, [pc, #44]
	ldr r1, [pc, #44]
.L08315246:
	ldrb r0, [r1, #0]
	adds r1, #1
	strb r0, [r2, #0]
	adds r2, #1
	adds r3, #1
	cmp r3, #7
	bls .L08315246
	movs r4, #0
.L08315256:
	adds r0, r4, #0
	bl sub_0831502C
	adds r4, #1
	cmp r4, #3
	bls .L08315256
	bl sub_083151B4
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x000001FF
	.4byte 0x030044DC
	.4byte 0x083DF9BC

	.thumb
	.align 1, 0
	.global sub_08315278
	.thumb_func
sub_08315278:
	push {r4, r5, lr}
	movs r0, #4
	bl sub_0831715C
	ldr r1, [pc, #48]
	movs r0, #3
	bl sub_083171C4
	ldr r4, [pc, #44]
	movs r0, #62
	adds r1, r4, #0
	bl sub_083173DC
	movs r5, #250
	lsls r5, r5, #2
	adds r0, r5, #0
	bl sub_08315010
	adds r4, #8
	movs r0, #63
	adds r1, r4, #0
	bl sub_083173DC
	adds r0, r5, #0
	bl sub_08315010
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x03005874
	.4byte 0x030046CC

	.thumb
	.align 1, 0
	.global sub_083152BC
	.thumb_func
sub_083152BC:
	ldr r0, [pc, #0]
	bx lr
	.4byte 0x030046CC

	.thumb
	.align 1, 0
	.global sub_083152C4
	.thumb_func
sub_083152C4:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	ldr r2, [pc, #416]
	adds r0, r2, #0
	adds r0, #172
	movs r1, #0
	strb r1, [r0, #0]
	adds r0, #1
	strb r1, [r0, #0]
	adds r0, #1
	strb r1, [r0, #0]
	adds r0, #1
	strb r1, [r0, #0]
	adds r0, #1
	strb r1, [r0, #0]
	ldr r0, [pc, #392]
	strb r1, [r0, #0]
	ldr r0, [pc, #392]
	str r1, [r0, #0]
	ldr r0, [pc, #392]
	strh r1, [r0, #0]
	ldr r0, [pc, #392]
	strh r1, [r0, #0]
	ldr r0, [pc, #392]
	str r1, [r0, #0]
	ldr r0, [pc, #392]
	str r1, [r0, #0]
	ldr r0, [pc, #392]
	str r1, [r0, #0]
	movs r6, #0
	ldr r4, [pc, #392]
	movs r3, #0
	adds r1, r4, #0
	movs r5, #0
	adds r2, r1, #0
	adds r2, #8
.L08315312:
	strb r3, [r1, #0]
	str r3, [r2, #0]
	str r3, [r2, #4]
	str r3, [r2, #8]
	adds r0, r4, #0
	adds r0, #20
	adds r0, r5, r0
	str r3, [r0, #0]
	str r3, [r1, #24]
	adds r1, #28
	adds r2, #28
	adds r5, #28
	adds r6, #1
	cmp r6, #9
	bls .L08315312
	movs r6, #0
	ldr r4, [pc, #352]
	movs r3, #0
	adds r1, r4, #0
	movs r5, #0
	adds r2, r1, #0
	adds r2, #8
.L0831533E:
	strb r3, [r1, #0]
	str r3, [r2, #0]
	str r3, [r2, #4]
	str r3, [r2, #8]
	adds r0, r4, #0
	adds r0, #20
	adds r0, r5, r0
	str r3, [r0, #0]
	str r3, [r1, #24]
	adds r1, #28
	adds r2, #28
	adds r5, #28
	adds r6, #1
	cmp r6, #19
	bls .L0831533E
	movs r5, #0
	ldr r2, [pc, #312]
	movs r4, #0
	adds r3, r2, #0
	adds r6, r3, #4
.L08315366:
	lsls r1, r5, #5
	strb r4, [r3, #0]
	str r4, [r6, #0]
	adds r6, #32
	adds r0, r2, #0
	adds r0, #8
	adds r0, r1, r0
	str r4, [r0, #0]
	adds r0, r2, #0
	adds r0, #12
	adds r0, r1, r0
	str r4, [r0, #0]
	adds r0, r2, #0
	adds r0, #16
	adds r0, r1, r0
	str r4, [r0, #0]
	adds r0, r2, #0
	adds r0, #20
	adds r0, r1, r0
	str r4, [r0, #0]
	adds r0, r2, #0
	adds r0, #24
	adds r1, r1, r0
	movs r0, #18
	str r0, [r1, #0]
	str r4, [r3, #28]
	adds r3, #32
	adds r5, #1
	cmp r5, #9
	bls .L08315366
	movs r6, #0
	ldr r2, [pc, #244]
	movs r3, #0
	adds r1, r2, #0
	movs r4, #0
	adds r5, r1, #4
.L083153AE:
	strb r3, [r1, #0]
	str r3, [r5, #0]
	str r3, [r5, #4]
	adds r0, r2, #0
	adds r0, #12
	adds r0, r4, r0
	str r3, [r0, #0]
	adds r0, r2, #0
	adds r0, #16
	adds r0, r4, r0
	str r3, [r0, #0]
	adds r0, r2, #0
	adds r0, #20
	adds r0, r4, r0
	str r3, [r0, #0]
	str r3, [r1, #24]
	adds r1, #28
	adds r5, #28
	adds r4, #28
	adds r6, #1
	cmp r6, #4
	bls .L083153AE
	movs r6, #0
	ldr r7, [pc, #192]
	movs r0, #116
	mov r8, r0
	movs r4, #0
	movs r0, #112
	adds r0, r0, r7
	mov sl, r0
	movs r0, #116
	mov r9, r0
.L083153EE:
	mov r0, r8
	muls r0, r6
	adds r0, r0, r7
	strb r4, [r0, #0]
	strh r4, [r0, #2]
	strh r4, [r0, #4]
	adds r0, #106
	strb r4, [r0, #0]
	movs r1, #0
	adds r0, r6, #1
	mov ip, r0
	mov r5, r9
	muls r5, r6
.L08315408:
	movs r2, #0
	lsls r0, r1, #1
	adds r3, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r1, #6
	adds r0, r0, r1
	adds r0, r0, r5
	adds r0, r0, r7
.L0831541A:
	strb r4, [r0, #0]
	adds r0, #1
	adds r2, #1
	cmp r2, #24
	bls .L0831541A
	adds r1, r3, #0
	cmp r1, #3
	bls .L08315408
	mov r1, r8
	muls r1, r6
	adds r0, r7, #0
	adds r0, #108
	adds r0, r1, r0
	str r4, [r0, #0]
	add r1, sl
	str r4, [r1, #0]
	mov r6, ip
	cmp r6, #14
	bls .L083153EE
	movs r1, #0
	ldr r0, [pc, #96]
	str r1, [r0, #0]
	ldr r0, [pc, #96]
	str r1, [r0, #0]
	ldr r0, [pc, #96]
	str r1, [r0, #0]
	ldr r0, [pc, #96]
	str r1, [r0, #0]
	ldr r0, [pc, #96]
	str r1, [r0, #0]
	ldr r0, [pc, #96]
	str r1, [r0, #0]
	ldr r0, [pc, #96]
	str r1, [r0, #0]
	movs r0, #1
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000
	.4byte 0x02007978
	.4byte 0x0200796C
	.4byte 0x02007970
	.4byte 0x02007974
	.4byte 0x02007976
	.4byte 0x02007968
	.4byte 0x03005A3C
	.4byte 0x03005A40
	.4byte 0x02007A3C
	.4byte 0x02007B54
	.4byte 0x02008450
	.4byte 0x02008590
	.4byte 0x02007D84
	.4byte 0x0200861C
	.4byte 0x02008624
	.4byte 0x02008628
	.4byte 0x02008620
	.4byte 0x0200862C
	.4byte 0x02007A34
	.4byte 0x02007A38

	.thumb
	.align 1, 0
	.global sub_083154C0
	.thumb_func
sub_083154C0:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	movs r6, #0
	ldr r4, [pc, #356]
	movs r3, #0
	adds r1, r4, #0
	movs r5, #0
	adds r2, r1, #0
	adds r2, #8
.L083154D8:
	strb r3, [r1, #0]
	str r3, [r2, #0]
	str r3, [r2, #4]
	str r3, [r2, #8]
	adds r0, r4, #0
	adds r0, #20
	adds r0, r5, r0
	str r3, [r0, #0]
	str r3, [r1, #24]
	adds r1, #28
	adds r2, #28
	adds r5, #28
	adds r6, #1
	cmp r6, #9
	bls .L083154D8
	movs r6, #0
	ldr r4, [pc, #316]
	movs r3, #0
	adds r1, r4, #0
	movs r5, #0
	adds r2, r1, #0
	adds r2, #8
.L08315504:
	strb r3, [r1, #0]
	str r3, [r2, #0]
	str r3, [r2, #4]
	str r3, [r2, #8]
	adds r0, r4, #0
	adds r0, #20
	adds r0, r5, r0
	str r3, [r0, #0]
	str r3, [r1, #24]
	adds r1, #28
	adds r2, #28
	adds r5, #28
	adds r6, #1
	cmp r6, #19
	bls .L08315504
	movs r5, #0
	ldr r2, [pc, #276]
	movs r4, #0
	adds r3, r2, #0
	adds r6, r3, #4
.L0831552C:
	lsls r1, r5, #5
	strb r4, [r3, #0]
	str r4, [r6, #0]
	adds r6, #32
	adds r0, r2, #0
	adds r0, #8
	adds r0, r1, r0
	str r4, [r0, #0]
	adds r0, r2, #0
	adds r0, #12
	adds r0, r1, r0
	str r4, [r0, #0]
	adds r0, r2, #0
	adds r0, #16
	adds r0, r1, r0
	str r4, [r0, #0]
	adds r0, r2, #0
	adds r0, #20
	adds r0, r1, r0
	str r4, [r0, #0]
	adds r0, r2, #0
	adds r0, #24
	adds r1, r1, r0
	movs r0, #18
	str r0, [r1, #0]
	str r4, [r3, #28]
	adds r3, #32
	adds r5, #1
	cmp r5, #9
	bls .L0831552C
	movs r6, #0
	ldr r2, [pc, #212]
	movs r3, #0
	adds r1, r2, #0
	movs r4, #0
	adds r5, r1, #4
.L08315574:
	strb r3, [r1, #0]
	str r3, [r5, #0]
	str r3, [r5, #4]
	adds r0, r2, #0
	adds r0, #12
	adds r0, r4, r0
	str r3, [r0, #0]
	adds r0, r2, #0
	adds r0, #16
	adds r0, r4, r0
	str r3, [r0, #0]
	adds r0, r2, #0
	adds r0, #20
	adds r0, r4, r0
	str r3, [r0, #0]
	str r3, [r1, #24]
	adds r1, #28
	adds r5, #28
	adds r4, #28
	adds r6, #1
	cmp r6, #4
	bls .L08315574
	movs r6, #0
	ldr r7, [pc, #160]
	movs r0, #116
	mov r8, r0
	movs r4, #0
	movs r0, #112
	adds r0, r0, r7
	mov sl, r0
	movs r0, #116
	mov r9, r0
.L083155B4:
	mov r0, r8
	muls r0, r6
	adds r0, r0, r7
	strb r4, [r0, #0]
	strh r4, [r0, #2]
	strh r4, [r0, #4]
	adds r0, #106
	strb r4, [r0, #0]
	movs r1, #0
	adds r0, r6, #1
	mov ip, r0
	mov r5, r9
	muls r5, r6
.L083155CE:
	movs r2, #0
	lsls r0, r1, #1
	adds r3, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r1, #6
	adds r0, r0, r1
	adds r0, r0, r5
	adds r0, r0, r7
.L083155E0:
	strb r4, [r0, #0]
	adds r0, #1
	adds r2, #1
	cmp r2, #24
	bls .L083155E0
	adds r1, r3, #0
	cmp r1, #3
	bls .L083155CE
	mov r1, r8
	muls r1, r6
	adds r0, r7, #0
	adds r0, #108
	adds r0, r1, r0
	str r4, [r0, #0]
	add r1, sl
	str r4, [r1, #0]
	mov r6, ip
	cmp r6, #14
	bls .L083155B4
	movs r1, #0
	ldr r0, [pc, #60]
	str r1, [r0, #0]
	ldr r0, [pc, #60]
	str r1, [r0, #0]
	ldr r0, [pc, #60]
	str r1, [r0, #0]
	ldr r0, [pc, #60]
	str r1, [r0, #0]
	ldr r0, [pc, #60]
	str r1, [r0, #0]
	ldr r0, [pc, #60]
	str r1, [r0, #0]
	ldr r0, [pc, #60]
	str r1, [r0, #0]
	movs r0, #1
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.4byte 0x02007A3C
	.4byte 0x02007B54
	.4byte 0x02008450
	.4byte 0x02008590
	.4byte 0x02007D84
	.4byte 0x0200861C
	.4byte 0x02008624
	.4byte 0x02008628
	.4byte 0x02008620
	.4byte 0x0200862C
	.4byte 0x02007A34
	.4byte 0x02007A38

	.thumb
	.align 1, 0
	.global sub_08315664
	.thumb_func
sub_08315664:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #116
	ldr r0, [pc, #120]
	ldr r1, [pc, #124]
	bl sub_08002094
	movs r0, #0
	str r0, [sp, #68]
	str r0, [sp, #72]
	str r0, [sp, #76]
	str r0, [sp, #80]
	str r0, [sp, #84]
	str r0, [sp, #64]
	ldr r0, [pc, #108]
	movs r1, #0
	adds r0, #12
.L0831568C:
	str r1, [r0, #0]
	str r1, [r0, #4]
	adds r0, #8
	ldr r2, [sp, #64]
	adds r2, #1
	str r2, [sp, #64]
	cmp r2, #19
	bls .L0831568C
	ldr r0, [pc, #84]
	movs r2, #0
	str r2, [r0, #8]
	str r2, [r0, #0]
	str r2, [r0, #4]
	adds r1, r0, #0
	adds r1, #180
	str r2, [r1, #0]
	adds r0, #184
	str r2, [r0, #0]
	str r2, [sp, #64]
	ldr r3, [pc, #68]
	ldr r0, [r3, #0]
	cmp r2, r0
	bcs .L0831571E
	ldr r4, [pc, #64]
	adds r6, r3, #0
	adds r2, r4, #0
	movs r5, #0
.L083156C2:
	ldrb r0, [r2, #0]
	cmp r0, #1
	bne .L08315704
	movs r1, #1
	str r1, [sp, #68]
	adds r0, r4, #0
	adds r0, #12
	adds r1, r5, r0
	ldr r0, [r1, #0]
	cmp r0, #0
	bne .L08315700
	strb r0, [r2, #0]
	ldr r0, [r3, #0]
	subs r0, #1
	ldr r3, [sp, #64]
	cmp r3, r0
	bcs .L08315704
	add r0, sp, #68
	ldrb r0, [r0, #0]
	strb r0, [r2, #28]
	b .L08315704
	mov ip, fp
	lsls r0, r0, #12
	mov lr, fp
	lsls r0, r0, #12
	ldrb r0, [r7, #5]
	lsls r0, r0, #8
	strh r4, [r3, #48]
	lsls r0, r0, #8
	ldrb r4, [r7, #8]
	lsls r0, r0, #8
.L08315700:
	subs r0, #1
	str r0, [r1, #0]
.L08315704:
	ldr r1, [sp, #68]
	cmp r1, #0
	bne .L0831571E
	adds r2, #28
	adds r5, #28
	ldr r3, [sp, #64]
	adds r3, #1
	str r3, [sp, #64]
	adds r3, r6, #0
	ldr r0, [r3, #0]
	ldr r1, [sp, #64]
	cmp r1, r0
	bcc .L083156C2
.L0831571E:
	movs r7, #0
	ldr r1, [pc, #116]
	ldr r0, [r1, #0]
	ldr r2, [sp, #64]
	lsls r2, r2, #3
	str r2, [sp, #92]
	cmp r7, r0
	bcs .L083157CA
	ldr r5, [pc, #108]
	mov r9, r1
.L08315732:
	lsls r0, r7, #3
	subs r0, r0, r7
	lsls r4, r0, #2
	adds r3, r4, r5
	mov r8, r3
	ldrb r0, [r3, #0]
	mov ip, r0
	adds r6, r7, #1
	cmp r0, #1
	bne .L083157C0
	adds r0, r5, #0
	adds r0, #24
	adds r0, r4, r0
	ldr r0, [r0, #0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq .L0831575A
	movs r1, #1
	str r1, [sp, #72]
.L0831575A:
	adds r0, r5, #0
	adds r0, #12
	adds r3, r4, r0
	ldr r1, [r3, #0]
	cmp r1, #0
	bne .L083157BC
	adds r0, #8
	adds r2, r4, r0
	ldr r0, [r2, #0]
	cmp r0, #0
	beq .L083157A0
	adds r0, r5, #0
	adds r0, #16
	adds r0, r4, r0
	ldr r0, [r0, #0]
	str r0, [r3, #0]
	ldr r0, [r2, #0]
	subs r0, #1
	str r0, [r2, #0]
	mov r2, r9
	ldr r0, [r2, #0]
	subs r0, #1
	cmp r7, r0
	bcs .L083157C0
	lsls r0, r6, #3
	subs r0, r0, r6
	lsls r0, r0, #2
	adds r0, r0, r5
	mov r3, ip
	strb r3, [r0, #0]
	b .L083157C0
	strh r0, [r4, #48]
	lsls r0, r0, #8
	ldrb r4, [r2, #13]
	lsls r0, r0, #8
.L083157A0:
	mov r4, r8
	strb r1, [r4, #0]
	mov r1, r9
	ldr r0, [r1, #0]
	subs r0, #1
	cmp r7, r0
	bcs .L083157C0
	lsls r0, r6, #3
	subs r0, r0, r6
	lsls r0, r0, #2
	adds r0, r0, r5
	mov r2, ip
	strb r2, [r0, #0]
	b .L083157C0
.L083157BC:
	subs r0, r1, #1
	str r0, [r3, #0]
.L083157C0:
	adds r7, r6, #0
	mov r3, r9
	ldr r0, [r3, #0]
	cmp r7, r0
	bcc .L08315732
.L083157CA:
	movs r4, #0
	mov r9, r4
	ldr r3, [pc, #80]
	ldr r0, [r3, #0]
	cmp r9, r0
	bcs .L0831589A
	ldr r6, [pc, #76]
	ldr r5, [pc, #76]
	mov ip, r5
	adds r5, r6, #0
	movs r7, #0
	movs r0, #255
	mov sl, r0
.L083157E4:
	ldrb r1, [r5, #0]
	cmp r1, #1
	bne .L08315884
	movs r2, #1
	str r2, [sp, #84]
	mov r8, ip
	mov r0, r8
	adds r0, #176
	strb r2, [r0, #0]
	adds r0, r6, #0
	adds r0, #24
	adds r2, r7, r0
	ldr r1, [r2, #0]
	cmp r1, #0
	bne .L08315880
	adds r0, r6, #4
	adds r4, r7, r0
	ldr r0, [r4, #0]
	cmp r0, #0
	bne .L0831582C
	strb r1, [r5, #0]
	ldr r0, [r3, #0]
	subs r0, #1
	cmp r9, r0
	bcs .L08315884
	add r0, sp, #84
	ldrb r0, [r0, #0]
	strb r0, [r5, #28]
	b .L08315884
	movs r0, r0
	strh r4, [r5, #48]
	lsls r0, r0, #8
	strh r0, [r2, #44]
	lsls r0, r0, #8
	ldrb r0, [r7, #5]
	lsls r0, r0, #8
.L0831582C:
	adds r0, r6, #0
	adds r0, #16
	adds r2, r7, r0
	subs r0, #8
	adds r0, r7, r0
	ldr r1, [r2, #0]
	ldr r0, [r0, #0]
	adds r1, r1, r0
	str r1, [r2, #0]
	adds r0, r6, #0
	adds r0, #20
	adds r3, r7, r0
	ldr r0, [r3, #0]
	ldr r1, [r5, #12]
	adds r0, r0, r1
	str r0, [r3, #0]
	ldr r0, [r2, #0]
	asrs r1, r0, #8
	cmp r1, #0
	beq .L08315862
	mov r0, r8
	adds r0, #180
	str r1, [r0, #0]
	ldr r0, [r2, #0]
	mov r1, sl
	ands r0, r1
	str r0, [r2, #0]
.L08315862:
	ldr r0, [r3, #0]
	asrs r1, r0, #8
	cmp r1, #0
	beq .L08315878
	mov r0, ip
	adds r0, #184
	str r1, [r0, #0]
	ldr r0, [r3, #0]
	mov r2, sl
	ands r0, r2
	str r0, [r3, #0]
.L08315878:
	ldr r0, [r4, #0]
	subs r0, #1
	str r0, [r4, #0]
	b .L08315884
.L08315880:
	subs r0, r1, #1
	str r0, [r2, #0]
.L08315884:
	ldr r3, [sp, #84]
	cmp r3, #0
	bne .L0831589A
	adds r5, #28
	adds r7, #28
	movs r4, #1
	add r9, r4
	ldr r3, [pc, #108]
	ldr r0, [r3, #0]
	cmp r9, r0
	bcc .L083157E4
.L0831589A:
	movs r5, #0
	str r5, [sp, #88]
	ldr r3, [pc, #100]
	ldr r0, [r3, #0]
	cmp r5, r0
	bcc .L083158A8
	b .L08315A32
.L083158A8:
	ldr r0, [pc, #92]
	mov r9, r0
	str r5, [sp, #100]
	mov r1, r9
	adds r1, #106
	str r1, [sp, #104]
	mov sl, r9
.L083158B6:
	mov r2, sl
	ldrb r2, [r2, #0]
	cmp r2, #1
	beq .L083158C0
	b .L08315A0C
.L083158C0:
	movs r4, #1
	str r4, [sp, #76]
	mov r0, r9
	adds r0, #112
	ldr r5, [sp, #100]
	adds r1, r5, r0
	ldr r2, [r1, #0]
	cmp r2, #0
	beq .L083158D4
	b .L08315A08
.L083158D4:
	subs r0, #4
	adds r0, r5, r0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne .L08315914
	mov r0, sl
	strb r2, [r0, #0]
	ldr r1, [pc, #40]
	str r2, [r1, #0]
	ldr r4, [pc, #40]
	str r2, [r4, #0]
	ldr r0, [r3, #0]
	subs r0, #1
	ldr r5, [sp, #88]
	cmp r5, r0
	bcc .L083158F6
	b .L08315A0C
.L083158F6:
	add r0, sp, #76
	ldrb r0, [r0, #0]
	ldr r1, [sp, #104]
	strb r0, [r1, #10]
	b .L08315A0C
	strh r4, [r5, #48]
	lsls r0, r0, #8
	strh r4, [r4, #48]
	lsls r0, r0, #8
	ldrb r4, [r0, #22]
	lsls r0, r0, #8
	ldrb r4, [r6, #8]
	lsls r0, r0, #8
	ldrb r0, [r7, #8]
	lsls r0, r0, #8
.L08315914:
	ldr r3, [pc, #32]
	ldr r1, [r3, #0]
	cmp r1, #24
	bls .L08315940
	ldr r1, [sp, #104]
	ldrb r0, [r1, #0]
	cmp r0, #0
	beq .L0831594C
	ldr r1, [pc, #20]
	ldr r0, [r1, #0]
	adds r0, #1
	ldr r4, [sp, #104]
	ldrb r4, [r4, #0]
	cmp r0, r4
	bcs .L0831594C
	str r2, [r3, #0]
	str r0, [r1, #0]
	b .L0831594C
	ldrb r0, [r7, #8]
	lsls r0, r0, #8
	ldrb r4, [r6, #8]
	lsls r0, r0, #8
.L08315940:
	ldr r5, [sp, #76]
	ands r0, r5
	cmp r0, #0
	beq .L0831594C
	adds r0, r1, #1
	str r0, [r3, #0]
.L0831594C:
	ldr r1, [pc, #120]
	movs r0, #3
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L08315974
	movs r0, #25
	ldr r1, [pc, #112]
	str r0, [r1, #0]
	ldr r2, [sp, #104]
	ldrb r0, [r2, #0]
	subs r0, #1
	ldr r3, [pc, #104]
	str r0, [r3, #0]
	mov r0, r9
	adds r0, #108
	ldr r4, [sp, #100]
	adds r0, r4, r0
	movs r1, #1
	str r1, [r0, #0]
.L08315974:
	movs r6, #0
	ldr r3, [pc, #88]
	ldr r0, [r3, #0]
	adds r0, #1
	cmp r6, r0
	bcs .L083159F6
	ldr r2, [pc, #80]
	movs r0, #116
	ldr r5, [sp, #88]
	adds r1, r5, #0
	muls r1, r0
	adds r0, r2, #6
	adds r5, r1, r0
	mov r8, r6
	adds r7, r5, #0
	adds r4, r1, r2
.L08315994:
	ldrb r0, [r5, #0]
	adds r5, #25
	cmp r0, #0
	beq .L083159E6
	ldr r0, [r3, #0]
	cmp r6, r0
	bne .L083159D8
	add r0, sp, #4
	movs r1, #0
	movs r2, #25
	bl memset
	mov r0, r8
	adds r1, r7, r0
	ldr r3, [pc, #24]
	ldr r2, [r3, #0]
	add r0, sp, #4
	bl strncpy
	ldrh r0, [r4, #2]
	ldrh r2, [r4, #4]
	adds r1, r2, r6
	add r2, sp, #4
	bl sub_08004914
	b .L083159E6
	mov lr, fp
	lsls r0, r0, #12
	ldrb r0, [r7, #8]
	lsls r0, r0, #8
	ldrb r4, [r6, #8]
	lsls r0, r0, #8
	ldrb r4, [r0, #22]
	lsls r0, r0, #8
.L083159D8:
	ldrh r0, [r4, #2]
	ldrh r3, [r4, #4]
	adds r1, r3, r6
	mov r3, r8
	adds r2, r7, r3
	bl sub_08004914
.L083159E6:
	movs r0, #25
	add r8, r0
	adds r6, #1
	ldr r3, [pc, #20]
	ldr r0, [r3, #0]
	adds r0, #1
	cmp r6, r0
	bcc .L08315994
.L083159F6:
	mov r1, r9
	adds r1, #108
	ldr r2, [sp, #100]
	adds r1, r2, r1
	ldr r0, [r1, #0]
	subs r0, #1
	b .L08315A0A
	ldrb r4, [r6, #8]
	lsls r0, r0, #8
.L08315A08:
	subs r0, r2, #1
.L08315A0A:
	str r0, [r1, #0]
.L08315A0C:
	ldr r3, [sp, #76]
	cmp r3, #0
	bne .L08315A32
	ldr r4, [sp, #100]
	adds r4, #116
	str r4, [sp, #100]
	ldr r5, [sp, #104]
	adds r5, #116
	str r5, [sp, #104]
	movs r0, #116
	add sl, r0
	ldr r1, [sp, #88]
	adds r1, #1
	str r1, [sp, #88]
	ldr r3, [pc, #128]
	ldr r0, [r3, #0]
	cmp r1, r0
	bcs .L08315A32
	b .L083158B6
.L08315A32:
	movs r2, #0
	mov r8, r2
	ldr r3, [pc, #120]
	ldr r0, [r3, #0]
	cmp r8, r0
	bcc .L08315A40
	b .L08315BBA
.L08315A40:
	ldr r5, [pc, #112]
	movs r4, #1
	str r4, [sp, #96]
	movs r0, #32
	mov sl, r0
	movs r7, #0
	adds r6, r5, #0
	movs r1, #16
	adds r1, r1, r6
	mov r9, r1
.L08315A54:
	ldrb r2, [r6, #0]
	cmp r2, #1
	beq .L08315A5C
	b .L08315B98
.L08315A5C:
	movs r4, #1
	str r4, [sp, #80]
	adds r0, r5, #0
	adds r0, #28
	adds r2, r7, r0
	ldr r1, [r2, #0]
	cmp r1, #0
	beq .L08315A6E
	b .L08315B94
.L08315A6E:
	subs r0, #8
	adds r0, r7, r0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne .L08315B3C
	strb r1, [r6, #0]
	ldr r0, [r3, #0]
	subs r0, #1
	cmp r8, r0
	bcs .L08315A94
	ldr r0, [r6, #44]
	ldr r4, [sp, #96]
	cmp r0, #0
	bne .L08315AC0
	mov r0, sl
	add r0, r9
	ldr r0, [r0, #0]
	cmp r0, #0
	bne .L08315AC0
.L08315A94:
	ldr r0, [pc, #32]
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L08315B1C
	ldr r0, [pc, #28]
	ldr r0, [r0, #0]
	cmp r0, #0
	beq .L08315B1C
	movs r0, #1
	bl sub_083100D4
	b .L08315B1C
	strh r4, [r4, #48]
	lsls r0, r0, #8
	strh r0, [r5, #48]
	lsls r0, r0, #8
	strh r0, [r2, #34]
	lsls r0, r0, #8
	ldrb r4, [r5, #5]
	lsls r0, r0, #8
	ldrb r0, [r6, #5]
	lsls r0, r0, #8
.L08315AC0:
	lsls r2, r4, #5
	ldr r1, [pc, #32]
	adds r0, r2, r1
	ldr r1, [r6, #12]
	ldr r0, [r0, #0]
	cmp r1, r0
	bhi .L08315ADC
	mov r3, r9
	adds r0, r7, r3
	adds r1, r2, r3
	ldr r2, [r0, #0]
	ldr r0, [r1, #0]
	cmp r2, r0
	bls .L08315AE8
.L08315ADC:
	movs r0, #1
	bl sub_083100D4
	b .L08315AEE
	strh r4, [r3, #34]
	lsls r0, r0, #8
.L08315AE8:
	movs r0, #0
	bl sub_083100D4
.L08315AEE:
	lsls r4, r4, #5
	adds r0, r5, #4
	adds r0, r4, r0
	ldr r0, [r0, #0]
	adds r1, r5, #0
	adds r1, #8
	adds r1, r4, r1
	ldr r1, [r1, #0]
	ldr r3, [pc, #48]
	adds r2, r4, r3
	ldr r2, [r2, #0]
	str r2, [sp, #112]
	adds r2, r4, #0
	add r2, r9
	ldr r3, [r2, #0]
	mov ip, r3
	ldr r2, [pc, #36]
	adds r4, r4, r2
	ldr r4, [r4, #0]
	str r4, [sp, #0]
	ldr r2, [sp, #112]
	bl sub_0830FFD4
.L08315B1C:
	ldr r0, [pc, #24]
	ldr r0, [r0, #0]
	subs r0, #1
	cmp r8, r0
	bcs .L08315B82
	mov r3, sl
	adds r1, r3, r5
	movs r0, #1
	strb r0, [r1, #0]
	b .L08315B82
	strh r4, [r3, #34]
	lsls r0, r0, #8
	strh r0, [r5, #34]
	lsls r0, r0, #8
	strh r0, [r5, #48]
	lsls r0, r0, #8
.L08315B3C:
	ldr r4, [r6, #12]
	adds r2, r5, #0
	adds r2, #16
	cmp r4, #0
	bne .L08315B50
	mov r1, r9
	adds r0, r7, r1
	ldr r0, [r0, #0]
	cmp r0, #0
	beq .L08315B6C
.L08315B50:
	adds r0, r5, #4
	adds r0, r7, r0
	ldr r0, [r0, #0]
	adds r1, r5, #0
	adds r1, #8
	adds r1, r7, r1
	ldr r1, [r1, #0]
	adds r2, r7, r2
	ldr r3, [r2, #0]
	ldr r2, [r6, #24]
	str r2, [sp, #0]
	adds r2, r4, #0
	bl sub_0830FFD4
.L08315B6C:
	ldr r1, [pc, #32]
	movs r0, #3
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L08315B82
	adds r0, r5, #0
	adds r0, #20
	adds r0, r7, r0
	movs r1, #1
	str r1, [r0, #0]
.L08315B82:
	adds r1, r5, #0
	adds r1, #20
	adds r1, r7, r1
	ldr r0, [r1, #0]
	subs r0, #1
	str r0, [r1, #0]
	b .L08315B98
	mov lr, fp
	lsls r0, r0, #12
.L08315B94:
	subs r0, r1, #1
	str r0, [r2, #0]
.L08315B98:
	ldr r2, [sp, #80]
	cmp r2, #0
	bne .L08315BBA
	ldr r3, [sp, #96]
	adds r3, #1
	str r3, [sp, #96]
	movs r4, #32
	add sl, r4
	adds r7, #32
	adds r6, #32
	movs r0, #1
	add r8, r0
	ldr r3, [pc, #248]
	ldr r0, [r3, #0]
	cmp r8, r0
	bcs .L08315BBA
	b .L08315A54
.L08315BBA:
	ldr r3, [pc, #244]
	ldrh r1, [r3, #0]
	cmp r1, #0
	beq .L08315C1A
	ldr r4, [pc, #240]
	ldrh r2, [r4, #0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq .L08315C1A
	movs r5, #0
	str r5, [sp, #68]
	str r5, [sp, #72]
	str r5, [sp, #76]
	str r5, [sp, #80]
	str r5, [sp, #84]
	adds r0, r2, #0
	bics r0, r1
	strh r0, [r4, #0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq .L08315BEE
	ldr r1, [pc, #204]
	movs r0, #20
	strh r0, [r1, #0]
.L08315BEE:
	movs r0, #2
	ldrh r1, [r3, #0]
	ands r0, r1
	cmp r0, #0
	beq .L08315BFE
	ldr r1, [pc, #192]
	movs r0, #20
	strh r0, [r1, #0]
.L08315BFE:
	movs r0, #1
	ldrh r2, [r3, #0]
	ands r0, r2
	cmp r0, #0
	beq .L08315C0E
	ldr r1, [pc, #180]
	movs r0, #20
	strh r0, [r1, #0]
.L08315C0E:
	movs r1, #0
	add r4, sp, #80
	ldrh r4, [r4, #0]
	strh r4, [r3, #0]
	ldr r0, [pc, #172]
	strb r1, [r0, #0]
.L08315C1A:
	ldr r5, [sp, #68]
	cmp r5, #0
	beq .L08315C22
	b .L08316008
.L08315C22:
	ldr r0, [sp, #76]
	cmp r0, #0
	beq .L08315C2A
	b .L08316008
.L08315C2A:
	ldr r1, [sp, #72]
	cmp r1, #0
	beq .L08315C32
	b .L08316008
.L08315C32:
	ldr r2, [sp, #80]
	cmp r2, #0
	beq .L08315C3A
	b .L08316008
.L08315C3A:
	ldr r3, [sp, #84]
	cmp r3, #0
	beq .L08315C42
	b .L08316008
.L08315C42:
	ldr r3, [pc, #128]
	ldrb r0, [r3, #0]
	cmp r0, #0
	beq .L08315C4C
	b .L08315E1C
.L08315C4C:
	ldr r1, [pc, #120]
	ldr r0, [r1, #0]
	cmp r0, #0
	beq .L08315D00
	subs r0, #1
	str r0, [r1, #0]
	add r6, sp, #32
	ldr r0, [pc, #80]
	ldr r0, [r0, #0]
	lsls r0, r0, #5
	ldr r5, [pc, #104]
	adds r1, r6, #0
	adds r0, r0, r5
	ldmia r0!, {r2, r3, r4}
	stmia r1!, {r2, r3, r4}
	ldmia r0!, {r2, r3, r4}
	stmia r1!, {r2, r3, r4}
	ldmia r0!, {r2, r4}
	stmia r1!, {r2, r4}
	ldr r0, [pc, #92]
	ldr r4, [r0, #0]
	ldr r1, [pc, #92]
	movs r0, #1
	str r0, [r1, #0]
	bl sub_083154C0
	bl sub_0831A7F4
	adds r5, #32
	ldrb r0, [r5, #0]
	cmp r0, #0
	beq .L08315CF8
	ldr r1, [r5, #12]
	cmp r1, #0
	beq .L08315CF8
	ldr r5, [r5, #16]
	cmp r5, #0
	beq .L08315CF8
	ldr r0, [r6, #12]
	cmp r0, r1
	bhi .L08315CA4
	ldr r0, [r6, #16]
	cmp r0, r5
	bls .L08315CD8
.L08315CA4:
	movs r0, #1
	bl sub_083100D4
	b .L08315CDE
	strh r0, [r5, #48]
	lsls r0, r0, #8
	ldrb r6, [r6, #5]
	lsls r0, r0, #8
	mov lr, fp
	lsls r0, r0, #12
	ldr r4, [r7, r7]
	lsls r0, r0, #12
	ldr r2, [r7, r7]
	lsls r0, r0, #12
	ldr r0, [r7, r7]
	lsls r0, r0, #12
	ldrb r4, [r5, #5]
	lsls r0, r0, #8
	ldrb r0, [r5, #5]
	lsls r0, r0, #8
	strh r0, [r6, #32]
	lsls r0, r0, #8
	ldrh r4, [r7, r0]
	lsls r0, r0, #12
	ldrb r0, [r7, #5]
	lsls r0, r0, #8
.L08315CD8:
	movs r0, #0
	bl sub_083100D4
.L08315CDE:
	ldr r4, [pc, #20]
	ldr r0, [r4, #4]
	ldr r1, [r4, #8]
	ldr r2, [r4, #12]
	ldr r3, [r4, #16]
	ldr r4, [r4, #24]
	str r4, [sp, #0]
	bl sub_0830FFD4
	b .L0831600E
	movs r0, r0
	strh r0, [r2, #34]
	lsls r0, r0, #8
.L08315CF8:
	movs r0, #1
	bl sub_083100D4
	b .L0831600E
.L08315D00:
	ldr r5, [pc, #144]
	ldr r0, [r5, #0]
	cmp r0, #0
	beq .L08315DDC
	ldr r0, [pc, #140]
	ldr r0, [r0, #0]
	lsls r0, r0, #5
	ldr r6, [pc, #140]
	add r1, sp, #4
	adds r0, r0, r6
	ldmia r0!, {r2, r3, r4}
	stmia r1!, {r2, r3, r4}
	ldmia r0!, {r2, r3, r4}
	stmia r1!, {r2, r3, r4}
	ldmia r0!, {r3, r4}
	stmia r1!, {r3, r4}
	bl sub_083154C0
	ldr r4, [pc, #120]
	adds r0, r4, #0
	adds r0, #172
	add r1, sp, #80
	ldrb r1, [r1, #0]
	strb r1, [r0, #0]
	adds r0, #1
	add r2, sp, #80
	ldrb r2, [r2, #0]
	strb r2, [r0, #0]
	adds r0, #1
	add r3, sp, #80
	ldrb r3, [r3, #0]
	strb r3, [r0, #0]
	adds r0, #1
	add r1, sp, #80
	ldrb r1, [r1, #0]
	strb r1, [r0, #0]
	ldr r0, [pc, #88]
	ldr r1, [r5, #0]
	str r1, [r0, #0]
	ldr r2, [sp, #80]
	str r2, [r5, #0]
	bl sub_0831A7E8
	ldr r0, [pc, #80]
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L08315D68
	adds r0, r4, #0
	adds r0, #176
	add r3, sp, #80
	ldrb r3, [r3, #0]
	strb r3, [r0, #0]
.L08315D68:
	adds r1, r6, #0
	adds r1, #32
	ldrb r0, [r1, #0]
	cmp r0, #0
	beq .L08315DCC
	ldr r2, [r1, #12]
	cmp r2, #0
	beq .L08315DCC
	ldr r1, [r1, #16]
	cmp r1, #0
	beq .L08315DCC
	ldr r0, [sp, #16]
	cmp r0, r2
	bhi .L08315D8A
	ldr r0, [sp, #20]
	cmp r0, r1
	bls .L08315DAC
.L08315D8A:
	movs r0, #1
	bl sub_083100D4
	b .L08315DB2
	movs r0, r0
	ldrh r0, [r0, r1]
	lsls r0, r0, #12
	strh r0, [r5, #48]
	lsls r0, r0, #8
	strh r0, [r6, #32]
	lsls r0, r0, #8
	ldrb r0, [r7, #5]
	lsls r0, r0, #8
	ldrh r4, [r7, r0]
	lsls r0, r0, #12
	strh r0, [r2, #44]
	lsls r0, r0, #8
.L08315DAC:
	movs r0, #0
	bl sub_083100D4
.L08315DB2:
	ldr r4, [pc, #20]
	ldr r0, [r4, #4]
	ldr r1, [r4, #8]
	ldr r2, [r4, #12]
	ldr r3, [r4, #16]
	ldr r4, [r4, #24]
	str r4, [sp, #0]
	bl sub_0830FFD4
	b .L08315DD2
	movs r0, r0
	strh r0, [r2, #34]
	lsls r0, r0, #8
.L08315DCC:
	movs r0, #1
	bl sub_083100D4
.L08315DD2:
	ldr r1, [pc, #4]
	movs r0, #2
	b .L0831600C
	ldrb r0, [r7, #5]
	lsls r0, r0, #8
.L08315DDC:
	ldr r4, [pc, #56]
	adds r0, r4, #0
	adds r0, #172
	add r5, sp, #80
	ldrb r5, [r5, #0]
	strb r5, [r0, #0]
	adds r0, #1
	add r1, sp, #80
	ldrb r1, [r1, #0]
	strb r1, [r0, #0]
	adds r0, #1
	add r2, sp, #80
	ldrb r2, [r2, #0]
	strb r2, [r0, #0]
	adds r0, #1
	add r3, sp, #80
	ldrb r3, [r3, #0]
	strb r3, [r0, #0]
	adds r0, #1
	add r5, sp, #80
	ldrb r5, [r5, #0]
	strb r5, [r0, #0]
	movs r0, #1
	bl sub_083100D4
	bl sub_083154C0
	ldr r0, [sp, #80]
	str r0, [r4, #0]
	b .L0831600E
	ldrb r0, [r7, #5]
	lsls r0, r0, #8
.L08315E1C:
	ldr r0, [pc, #88]
	ldr r2, [pc, #92]
	ldrh r1, [r2, #0]
	ldrh r0, [r0, #0]
	ands r0, r1
	cmp r0, #0
	beq .L08315E98
	add r4, sp, #80
	ldrb r4, [r4, #0]
	strb r4, [r3, #0]
	ldr r0, [pc, #76]
	ldr r5, [sp, #80]
	str r5, [r0, #0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq .L08315E44
	ldr r1, [pc, #68]
	movs r0, #20
	strh r0, [r1, #0]
.L08315E44:
	movs r0, #2
	ldrh r1, [r2, #0]
	ands r0, r1
	cmp r0, #0
	beq .L08315E54
	ldr r1, [pc, #56]
	movs r0, #20
	strh r0, [r1, #0]
.L08315E54:
	movs r0, #1
	ldrh r3, [r2, #0]
	ands r0, r3
	cmp r0, #0
	beq .L08315E64
	ldr r1, [pc, #44]
	movs r0, #20
	strh r0, [r1, #0]
.L08315E64:
	add r4, sp, #80
	ldrh r4, [r4, #0]
	strh r4, [r2, #0]
	ldr r0, [pc, #36]
	add r5, sp, #80
	ldrh r5, [r5, #0]
	strh r5, [r0, #0]
	ldr r1, [pc, #32]
	movs r0, #4
	b .L0831600C
	mov lr, fp
	lsls r0, r0, #12
	ldrb r4, [r6, #5]
	lsls r0, r0, #8
	ldrb r0, [r6, #5]
	lsls r0, r0, #8
	ldr r4, [r7, r7]
	lsls r0, r0, #12
	ldr r2, [r7, r7]
	lsls r0, r0, #12
	ldr r0, [r7, r7]
	lsls r0, r0, #12
	ldrb r6, [r6, #5]
	lsls r0, r0, #8
	ldrb r0, [r7, #5]
	lsls r0, r0, #8
.L08315E98:
	ldr r1, [pc, #44]
	movs r0, #3
	str r0, [r1, #0]
	ldr r0, [pc, #44]
	ldr r0, [r0, #0]
	movs r1, #10
	bl __umodsi3
	cmp r0, #0
	bne .L08315F38
	ldr r2, [pc, #32]
	ldr r0, [r2, #0]
	cmp r0, #0
	bne .L08315ED8
	ldr r1, [pc, #28]
	ldr r0, [r1, #0]
	adds r0, #1
	str r0, [r1, #0]
	cmp r0, #7
	bls .L08315EEC
	movs r0, #6
	str r0, [r1, #0]
	movs r0, #1
	b .L08315EEA
	ldrb r0, [r7, #5]
	lsls r0, r0, #8
	ldr r0, [r6, r7]
	lsls r0, r0, #12
	ldrh r0, [r1, r1]
	lsls r0, r0, #12
	ldrh r4, [r0, r1]
	lsls r0, r0, #12
.L08315ED8:
	ldr r1, [pc, #272]
	ldr r0, [r1, #0]
	subs r0, #1
	str r0, [r1, #0]
	cmp r0, #4
	bhi .L08315EEC
	movs r0, #6
	str r0, [r1, #0]
	ldr r0, [sp, #80]
.L08315EEA:
	str r0, [r2, #0]
.L08315EEC:
	ldr r0, [pc, #252]
	ldr r0, [r0, #0]
	ldr r1, [pc, #252]
	movs r2, #0
	bl Glyph_Alloc
	adds r3, r0, #0
	lsls r3, r3, #16
	lsrs r3, r3, #16
	ldr r2, [pc, #244]
	ldr r0, [pc, #244]
	ldr r4, [r0, #0]
	subs r4, #1
	lsls r4, r4, #5
	adds r1, r2, #4
	adds r1, r4, r1
	adds r0, r2, #0
	adds r0, #12
	adds r0, r4, r0
	ldr r1, [r1, #0]
	ldr r0, [r0, #0]
	adds r1, r1, r0
	subs r1, #1
	adds r0, r2, #0
	adds r0, #8
	adds r0, r4, r0
	adds r2, #16
	adds r4, r4, r2
	ldr r2, [r0, #0]
	ldr r0, [r4, #0]
	adds r2, r2, r0
	subs r2, #1
	movs r0, #224
	lsls r0, r0, #8
	str r0, [sp, #0]
	movs r0, #31
	bl sub_0830F78C
.L08315F38:
	ldr r6, [pc, #192]
	ldr r0, [r6, #0]
	cmp r0, #0
	beq .L0831600E
	ldr r5, [pc, #176]
	ldr r0, [pc, #180]
	ldr r4, [r0, #0]
	subs r4, #1
	lsls r4, r4, #5
	adds r0, r5, #4
	adds r0, r4, r0
	ldr r0, [r0, #0]
	adds r1, r5, #0
	adds r1, #8
	adds r1, r4, r1
	ldr r1, [r1, #0]
	adds r2, r5, #0
	adds r2, #12
	adds r2, r4, r2
	ldr r2, [r2, #0]
	adds r3, r5, #0
	adds r3, #16
	adds r3, r4, r3
	ldr r3, [r3, #0]
	adds r5, #24
	adds r4, r4, r5
	ldr r4, [r4, #0]
	str r4, [sp, #0]
	bl sub_0830FFD4
	ldr r4, [r6, #0]
	cmp r4, #0
	beq .L0831600E
.L08315F7A:
	movs r5, #0
	ldr r2, [pc, #128]
	ldr r0, [r2, #0]
	subs r0, r0, r4
	movs r1, #116
	muls r0, r1
	ldr r1, [pc, #124]
	adds r0, r0, r1
	adds r0, #106
	subs r3, r4, #1
	mov sl, r3
	ldrb r0, [r0, #0]
	cmp r5, r0
	bcs .L08315FE4
	adds r7, r1, #0
	mov r9, r2
	movs r0, #116
	mov r8, r0
	adds r3, r7, #6
	movs r6, #0
.L08315FA2:
	mov r1, r9
	ldr r0, [r1, #0]
	subs r0, r0, r4
	mov r2, r8
	muls r2, r0
	adds r0, r6, r2
	adds r0, r0, r3
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq .L08315FCA
	adds r1, r2, r7
	ldrh r0, [r1, #2]
	ldrh r1, [r1, #4]
	adds r1, r1, r5
	adds r2, r2, r3
	adds r2, r2, r6
	str r3, [sp, #108]
	bl sub_08004914
	ldr r3, [sp, #108]
.L08315FCA:
	adds r6, #25
	adds r5, #1
	mov r2, r9
	ldr r0, [r2, #0]
	subs r0, r0, r4
	mov r1, r8
	muls r1, r0
	adds r0, r1, #0
	adds r0, r0, r7
	adds r0, #106
	ldrb r0, [r0, #0]
	cmp r5, r0
	bcc .L08315FA2
.L08315FE4:
	mov r4, sl
	cmp r4, #0
	bne .L08315F7A
	b .L0831600E
	ldrh r4, [r0, r1]
	lsls r0, r0, #12
	stmia r7!, {r3, r4, r5, r6}
	lsrs r5, r7, #32
	strh r0, [r2, #34]
	lsls r0, r0, #8
	strh r0, [r5, #48]
	lsls r0, r0, #8
	ldrb r0, [r6, #5]
	lsls r0, r0, #8
	strh r4, [r4, #48]
	lsls r0, r0, #8
	ldrb r4, [r0, #22]
	lsls r0, r0, #8
.L08316008:
	ldr r1, [pc, #124]
	movs r0, #5
.L0831600C:
	str r0, [r1, #0]
.L0831600E:
	ldr r2, [pc, #120]
	ldr r1, [pc, #120]
	ldr r4, [sp, #92]
	ldr r5, [sp, #64]
	subs r0, r4, r5
	lsls r0, r0, #2
	adds r1, #8
	adds r0, r0, r1
	ldr r0, [r0, #0]
	str r0, [r2, #4]
	movs r0, #0
	str r0, [sp, #64]
	ldr r1, [pc, #104]
	ldr r0, [r1, #0]
	ldr r3, [sp, #64]
	cmp r3, r0
	bcs .L08316074
	ldr r5, [pc, #96]
	adds r7, r2, #0
	adds r7, #16
	adds r6, r1, #0
	adds r3, r5, #0
	movs r4, #0
.L0831603C:
	ldrb r0, [r3, #0]
	cmp r0, #1
	bne .L08316064
	ldr r1, [r2, #8]
	adds r0, r1, #1
	str r0, [r2, #8]
	lsls r1, r1, #3
	adds r0, r2, #0
	adds r0, #12
	adds r1, r1, r0
	adds r0, r5, #4
	adds r0, r4, r0
	ldr r0, [r0, #0]
	str r0, [r1, #0]
	ldr r0, [r2, #8]
	subs r0, #1
	lsls r0, r0, #3
	adds r0, r0, r7
	ldr r1, [r3, #8]
	str r1, [r0, #0]
.L08316064:
	adds r3, #28
	adds r4, #28
	ldr r1, [sp, #64]
	adds r1, #1
	str r1, [sp, #64]
	ldr r0, [r6, #0]
	cmp r1, r0
	bcc .L0831603C
.L08316074:
	ldr r0, [pc, #16]
	add sp, #116
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000
	.4byte 0x02007978
	.4byte 0x02007A3C
	.4byte 0x02008620
	.4byte 0x02007B54

	.thumb
	.align 1, 0
	.global sub_08316098
	.thumb_func
sub_08316098:
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	ldr r0, [pc, #8]
	ldr r1, [r0, #0]
	cmp r1, #9
	bls .L083160B0
	movs r0, #0
	b .L083160F2
	strh r4, [r3, #48]
	lsls r0, r0, #8
.L083160B0:
	adds r2, r1, #1
	str r2, [r0, #0]
	ldr r0, [pc, #64]
	mov ip, r0
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r1, r0, #2
	mov r0, ip
	adds r0, #8
	adds r0, r1, r0
	str r4, [r0, #0]
	mov r0, ip
	adds r0, #12
	adds r0, r1, r0
	str r3, [r0, #0]
	mov r0, ip
	adds r0, #16
	adds r0, r1, r0
	str r3, [r0, #0]
	mov r0, ip
	adds r0, #20
	adds r0, r1, r0
	str r5, [r0, #0]
	mov r0, ip
	adds r0, #24
	adds r0, r1, r0
	str r6, [r0, #0]
	cmp r2, #1
	bne .L083160F0
	mov r3, ip
	adds r0, r1, r3
	strb r2, [r0, #0]
.L083160F0:
	movs r0, #1
.L083160F2:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.4byte 0x02007A3C

	.thumb
	.align 1, 0
	.global sub_083160FC
	.thumb_func
sub_083160FC:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r7, [sp, #20]
	ldr r5, [pc, #8]
	ldr r1, [r5, #0]
	cmp r1, #19
	bls .L08316114
	movs r0, #0
	b .L0831616C
	strh r0, [r4, #48]
	lsls r0, r0, #8
.L08316114:
	adds r0, r1, #1
	str r0, [r5, #0]
	ldr r0, [pc, #88]
	mov ip, r0
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r1, r0, #2
	mov r0, ip
	adds r0, #4
	adds r0, r1, r0
	str r4, [r0, #0]
	mov r0, ip
	adds r0, #8
	adds r0, r1, r0
	str r6, [r0, #0]
	mov r0, ip
	adds r0, #12
	adds r0, r1, r0
	str r7, [r0, #0]
	mov r0, ip
	adds r0, #16
	adds r0, r1, r0
	str r7, [r0, #0]
	mov r0, ip
	adds r0, #20
	adds r0, r1, r0
	str r2, [r0, #0]
	mov r0, ip
	adds r0, #24
	adds r0, r1, r0
	str r3, [r0, #0]
	movs r2, #1
	ands r3, r2
	cmp r3, #0
	beq .L08316160
	mov r3, ip
	adds r0, r1, r3
	strb r2, [r0, #0]
.L08316160:
	ldr r0, [r5, #0]
	cmp r0, #1
	bne .L0831616A
	mov r1, ip
	strb r0, [r1, #0]
.L0831616A:
	movs r0, #1
.L0831616C:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000
	.4byte 0x02007B54

	.thumb
	.align 1, 0
	.global sub_08316178
	.thumb_func
sub_08316178:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	adds r6, r1, #0
	mov ip, r2
	adds r7, r3, #0
	ldr r4, [pc, #8]
	ldr r1, [r4, #0]
	cmp r1, #14
	bls .L08316198
	movs r0, #0
	b .L08316278
	strh r4, [r4, #48]
	lsls r0, r0, #8
.L08316198:
	adds r0, r1, #1
	str r0, [r4, #0]
	ldr r3, [pc, #64]
	movs r0, #116
	mov r8, r0
	mov r0, r8
	muls r0, r1
	adds r1, r0, #0
	adds r2, r1, r3
	strh r5, [r2, #2]
	strh r6, [r2, #4]
	adds r0, r3, #0
	adds r0, #108
	adds r0, r1, r0
	str r7, [r0, #0]
	adds r0, r3, #0
	adds r0, #112
	adds r1, r1, r0
	ldr r0, [sp, #28]
	str r0, [r1, #0]
	movs r5, #0
	adds r2, #106
	movs r0, #1
	strb r0, [r2, #0]
	mov r1, ip
	cmp r1, #0
	bne .L083161E4
	ldr r0, [r4, #0]
	subs r0, #1
	mov r1, r8
	muls r1, r0
	adds r0, r1, #0
	adds r0, r0, r3
	movs r1, #0
	strb r1, [r0, #6]
	b .L0831626A
	ldrb r4, [r0, #22]
	lsls r0, r0, #8
.L083161E4:
	adds r0, r3, #6
	mov r8, r0
	mov r9, r3
	mov r7, r9
	adds r6, r4, #0
	mov r3, ip
.L083161F0:
	ldrb r1, [r3, #0]
	cmp r1, #10
	bne .L08316232
	ldr r0, [r6, #0]
	subs r0, #1
	movs r4, #116
	adds r2, r0, #0
	muls r2, r4
	adds r0, r2, r7
	adds r0, #106
	ldrb r1, [r0, #0]
	cmp r1, #3
	bhi .L08316230
	subs r1, #1
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r1
	adds r0, r5, r0
	adds r0, r0, r2
	add r0, r8
	movs r1, #0
	strb r1, [r0, #0]
	ldr r0, [r6, #0]
	subs r0, #1
	muls r0, r4
	adds r0, r0, r7
	adds r0, #106
	ldrb r1, [r0, #0]
	adds r1, #1
	strb r1, [r0, #0]
	movs r5, #0
.L08316230:
	adds r3, #1
.L08316232:
	ldr r0, [r6, #0]
	subs r0, #1
	movs r1, #116
	adds r2, r0, #0
	muls r2, r1
	mov r1, r9
	adds r0, r2, r1
	adds r0, #106
	ldrb r1, [r0, #0]
	subs r1, #1
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r1
	adds r0, r5, r0
	adds r0, r0, r2
	add r0, r8
	ldrb r1, [r3, #0]
	strb r1, [r0, #0]
	ldrb r0, [r3, #0]
	cmp r0, #0
	beq .L0831626A
	adds r5, #1
	adds r3, #1
	mov r0, ip
	adds r0, #99
	cmp r3, r0
	bls .L083161F0
.L0831626A:
	ldr r0, [pc, #24]
	ldr r1, [r0, #0]
	cmp r1, #1
	bne .L08316276
	ldr r0, [pc, #20]
	strb r1, [r0, #0]
.L08316276:
	movs r0, #1
.L08316278:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.4byte 0x02008624
	.4byte 0x02007D84

	.thumb
	.align 1, 0
	.global sub_0831628C
	.thumb_func
sub_0831628C:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	adds r7, r3, #0
	ldr r1, [pc, #12]
	ldr r0, [r1, #0]
	cmp r0, #9
	bls .L083162A8
	movs r0, #0
	b .L083162FC
	movs r0, r0
	strh r0, [r5, #48]
	lsls r0, r0, #8
.L083162A8:
	adds r3, r0, #1
	str r3, [r1, #0]
	ldr r1, [pc, #84]
	mov ip, r1
	lsls r2, r0, #5
	mov r0, ip
	adds r0, #4
	adds r0, r2, r0
	str r4, [r0, #0]
	mov r0, ip
	adds r0, #8
	adds r0, r2, r0
	str r5, [r0, #0]
	mov r0, ip
	adds r0, #12
	adds r0, r2, r0
	str r6, [r0, #0]
	mov r0, ip
	adds r0, #16
	adds r0, r2, r0
	str r7, [r0, #0]
	mov r0, ip
	adds r0, #24
	adds r0, r2, r0
	ldr r1, [sp, #20]
	str r1, [r0, #0]
	mov r0, ip
	adds r0, #20
	adds r0, r2, r0
	ldr r1, [sp, #24]
	str r1, [r0, #0]
	mov r0, ip
	adds r0, #28
	adds r0, r2, r0
	ldr r1, [sp, #28]
	str r1, [r0, #0]
	cmp r3, #1
	bne .L083162FA
	mov r1, ip
	adds r0, r2, r1
	strb r3, [r0, #0]
.L083162FA:
	movs r0, #1
.L083162FC:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000
	.4byte 0x02008450

	.thumb
	.align 1, 0
	.global sub_08316308
	.thumb_func
sub_08316308:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	mov ip, r0
	mov r9, r1
	adds r7, r2, #0
	mov sl, r3
	ldr r0, [pc, #12]
	ldr r1, [r0, #0]
	cmp r1, #4
	bls .L0831632C
	movs r0, #0
	b .L0831637A
	movs r0, r0
	strh r4, [r5, #48]
	lsls r0, r0, #8
.L0831632C:
	adds r2, r1, #1
	mov r8, r2
	str r2, [r0, #0]
	ldr r6, [pc, #84]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r5, r0, #2
	adds r4, r6, #0
	adds r4, #8
	adds r4, r5, r4
	mov r1, ip
	lsls r0, r1, #8
	adds r1, r7, #0
	bl __divsi3
	str r0, [r4, #0]
	adds r4, r6, #0
	adds r4, #12
	adds r4, r5, r4
	mov r2, r9
	lsls r0, r2, #8
	adds r1, r7, #0
	bl __divsi3
	str r0, [r4, #0]
	adds r0, r6, #4
	adds r0, r5, r0
	str r7, [r0, #0]
	adds r0, r6, #0
	adds r0, #24
	adds r0, r5, r0
	mov r1, sl
	str r1, [r0, #0]
	mov r2, r8
	cmp r2, #1
	bne .L08316378
	adds r0, r5, r6
	strb r2, [r0, #0]
.L08316378:
	movs r0, #1
.L0831637A:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.4byte 0x02008590

	.thumb
	.align 1, 0
	.global sub_0831638C
	.thumb_func
sub_0831638C:
	push {r4, lr}
	adds r4, r0, #0
	bl sub_083152C4
	bl sub_0831A7F4
	ldr r0, [pc, #8]
	str r4, [r0, #0]
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1
	.4byte 0x03005A3C

	.thumb
	.align 1, 0
	.global sub_083163A8
	.thumb_func
sub_083163A8:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	sub sp, #188
	adds r4, r0, #0
	bl sub_083152C4
	bl sub_0831A7F4
	ldr r0, [pc, #104]
	str r4, [r0, #0]
	ldr r1, [pc, #104]
	ldr r0, [r1, #52]
	asrs r5, r0, #8
	ldr r0, [r1, #56]
	asrs r4, r0, #8
	add r6, sp, #172
	add r0, sp, #176
	mov r9, r0
	movs r0, #173
	add r0, sp
	mov r8, r0
	adds r7, r1, #0
.L083163D8:
	bl VBlankIntrWait
	bl sub_08315664
	adds r1, r0, #0
	mov r0, sp
	movs r2, #188
	bl memcpy
	bl sub_080043B4
	ldrb r0, [r6, #0]
	cmp r0, #0
	bne .L083163F8
	bl sub_08311F7C
.L083163F8:
	mov r1, r9
	ldrb r0, [r1, #0]
	cmp r0, #0
	bne .L08316444
	ldrb r0, [r6, #0]
	cmp r0, #0
	beq .L08316438
	ldr r0, [r7, #52]
	asrs r0, r0, #8
	ldr r1, [pc, #36]
	ldr r1, [r1, #0]
	adds r0, r0, r1
	ldr r1, [r7, #56]
	asrs r1, r1, #8
	ldr r2, [pc, #28]
	ldr r2, [r2, #0]
	adds r1, r1, r2
	bl sub_08301D98
	ldr r0, [r7, #52]
	asrs r5, r0, #8
	ldr r0, [r7, #56]
	asrs r4, r0, #8
	b .L08316458
	ldrh r4, [r7, r0]
	lsls r0, r0, #12
	movs r5, #12
	lsls r0, r0, #12
	ldr r0, [r7, r3]
	lsls r0, r0, #12
	ldr r4, [r7, r3]
	lsls r0, r0, #12
.L08316438:
	ldr r0, [pc, #4]
	bl sub_08312174
	b .L08316458
	movs r5, #12
	lsls r0, r0, #12
.L08316444:
	add r0, sp, #180
	ldr r0, [r0, #0]
	adds r5, r5, r0
	add r0, sp, #184
	ldr r0, [r0, #0]
	adds r4, r4, r0
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08301D98
.L08316458:
	ldrb r0, [r6, #0]
	cmp r0, #0
	beq .L08316468
	ldr r1, [sp, #4]
	movs r0, #0
	bl sub_082F2760
	b .L0831646E
.L08316468:
	movs r0, #0
	bl sub_082F234C
.L0831646E:
	mov r1, r8
	ldrb r0, [r1, #0]
	cmp r0, #0
	bne .L0831647A
	bl sub_082EA2DC
.L0831647A:
	bl sub_082F4BBC
	movs r0, #0
	bl sub_082F27E8
	bl sub_082EA3A4
	bl sub_082F4BEC
	ldr r0, [sp, #0]
	cmp r0, #0
	bne .L083163D8
	movs r0, #1
	add sp, #188
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_083164A4
	.thumb_func
sub_083164A4:
	lsls r0, r0, #16
	lsrs r0, r0, #16
	ldr r3, [pc, #16]
	movs r2, #1
	strb r2, [r3, #0]
	ldr r2, [pc, #16]
	ldrh r3, [r2, #0]
	orrs r0, r3
	strh r0, [r2, #0]
	ldr r0, [pc, #12]
	str r1, [r0, #0]
	bx lr
	.4byte 0x0200796C
	.4byte 0x02007974
	.4byte 0x02007970

	.thumb
	.align 1, 0
	.global sub_083164C8
	.thumb_func
sub_083164C8:
	lsls r0, r0, #16
	lsrs r0, r0, #16
	ldr r1, [pc, #8]
	ldrh r2, [r1, #0]
	orrs r0, r2
	strh r0, [r1, #0]
	bx lr
	.2byte 0x0000
	.4byte 0x02007976

	.thumb
	.align 1, 0
	.global sub_083164DC
	.thumb_func
sub_083164DC:
	adds r1, r0, #0
	ldr r0, [pc, #12]
	ldr r0, [r0, #0]
	cmp r0, #1
	beq .L083164EA
	ldr r0, [pc, #8]
	str r1, [r0, #0]
.L083164EA:
	bx lr
	.4byte 0x02007978
	.4byte 0x02007968

	.thumb
	.align 1, 0
	.global sub_083164F4
	.thumb_func
sub_083164F4:
	ldr r1, [pc, #4]
	movs r0, #0
	str r0, [r1, #0]
	bx lr
	.4byte 0x02007968

	.thumb
	.align 1, 0
	.global sub_08316500
	.thumb_func
sub_08316500:
	ldr r1, [pc, #4]
	str r0, [r1, #0]
	bx lr
	.2byte 0x0000
	.4byte 0x03005A40

	.thumb
	.align 1, 0
	.global sub_0831650C
	.thumb_func
sub_0831650C:
	ldr r0, [pc, #16]
	adds r0, #172
	movs r2, #0
	movs r1, #1
	strb r1, [r0, #0]
	ldr r0, [pc, #12]
	strh r2, [r0, #0]
	ldr r0, [pc, #12]
	strh r2, [r0, #0]
	bx lr
	.4byte 0x02007978
	.4byte 0x03000D1C
	.4byte 0x03000D14

	.thumb
	.align 1, 0
	.global sub_0831652C
	.thumb_func
sub_0831652C:
	ldr r0, [pc, #8]
	adds r0, #173
	movs r1, #1
	strb r1, [r0, #0]
	bx lr
	.2byte 0x0000
	.4byte 0x02007978

	.thumb
	.align 1, 0
	.global sub_0831653C
	.thumb_func
sub_0831653C:
	ldr r0, [pc, #8]
	adds r0, #174
	movs r1, #1
	strb r1, [r0, #0]
	bx lr
	.2byte 0x0000
	.4byte 0x02007978

	.thumb
	.align 1, 0
	.global sub_0831654C
	.thumb_func
sub_0831654C:
	push {r4, lr}
	ldr r0, [pc, #28]
	adds r0, #175
	movs r1, #1
	strb r1, [r0, #0]
	ldr r4, [pc, #24]
	ldrb r0, [r4, #0]
	cmp r0, #1
	bne .L08316562
	bl sub_08004A1C
.L08316562:
	movs r0, #0
	strb r0, [r4, #0]
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x02007978
	.4byte 0x030059DD

	.thumb
	.align 1, 0
	.global sub_08316574
	.thumb_func
sub_08316574:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831652C
	movs r5, #0
	str r5, [sp, #0]
	movs r0, #240
	mov r8, r0
	str r0, [sp, #4]
	movs r4, #15
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #236]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #120
	bl sub_08316178
	ldr r2, [pc, #224]
	str r5, [sp, #0]
	movs r0, #6
	movs r1, #4
	movs r3, #120
	bl sub_08316178
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #15
	bl sub_08316098
	movs r0, #8
	movs r1, #0
	movs r2, #0
	movs r3, #240
	bl sub_08316098
	movs r0, #150
	movs r1, #30
	movs r2, #60
	movs r3, #255
	bl sub_08316308
	str r5, [sp, #0]
	mov r0, r8
	str r0, [sp, #4]
	movs r4, #60
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #156]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #240
	bl sub_08316178
	movs r6, #5
	str r6, [sp, #0]
	mov r0, r8
	str r0, [sp, #4]
	str r5, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #124]
	str r5, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #240
	bl sub_08316178
	str r6, [sp, #0]
	mov r0, r8
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #96]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #240
	bl sub_08316178
	movs r0, #55
	negs r0, r0
	movs r3, #210
	lsls r3, r3, #1
	movs r1, #13
	adds r2, r3, #0
	bl sub_08316308
	str r6, [sp, #0]
	movs r0, #1
	str r0, [sp, #4]
	str r5, [sp, #8]
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #52]
	str r5, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #1
	bl sub_08316178
	movs r0, #8
	movs r1, #1
	bl sub_083164A4
	add sp, #12
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.4byte 0x083DF9C4
	.4byte 0x083DF9E0
	.4byte 0x083DF9E8
	.4byte 0x083DF9FC
	.4byte 0x083DFA18
	.4byte 0x083DFA2C

	.thumb
	.align 1, 0
	.global sub_083166A4
	.thumb_func
sub_083166A4:
	push {r4, r5, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831652C
	movs r0, #5
	str r0, [sp, #0]
	movs r5, #200
	str r5, [sp, #4]
	movs r4, #0
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #96]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #200
	bl sub_08316178
	str r4, [sp, #0]
	str r5, [sp, #4]
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #68]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #200
	bl sub_08316178
	movs r3, #200
	lsls r3, r3, #1
	movs r0, #8
	movs r1, #0
	movs r2, #0
	bl sub_08316098
	movs r0, #200
	movs r1, #200
	movs r2, #100
	movs r3, #0
	bl sub_08316308
	movs r1, #200
	negs r1, r1
	adds r0, r1, #0
	movs r2, #100
	movs r3, #0
	bl sub_08316308
	movs r0, #4
	bl sub_083164DC
	add sp, #12
	pop {r4, r5}
	pop {r0}
	bx r0
	.4byte 0x083DFA4C
	.4byte 0x083DFA58

	.thumb
	.align 1, 0
	.global sub_08316734
	.thumb_func
sub_08316734:
	push {r4, r5, r6, lr}
	sub sp, #12
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #60
	bl sub_08316098
	movs r4, #0
	str r4, [sp, #0]
	movs r6, #240
	str r6, [sp, #4]
	movs r5, #60
	str r5, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #136]
	str r5, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #240
	bl sub_08316178
	movs r0, #5
	str r0, [sp, #0]
	str r6, [sp, #4]
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #108]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #120
	bl sub_08316178
	ldr r2, [pc, #96]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #3
	movs r3, #120
	bl sub_08316178
	str r4, [sp, #0]
	str r6, [sp, #4]
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #68]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #240
	bl sub_08316178
	movs r3, #150
	lsls r3, r3, #2
	movs r0, #8
	movs r1, #0
	movs r2, #0
	bl sub_08316098
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #58
	bl sub_08316098
	movs r0, #8
	movs r1, #0
	movs r2, #0
	movs r3, #2
	bl sub_08316098
	add sp, #12
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.4byte 0x083DFA5C
	.4byte 0x083DFA6C
	.4byte 0x083DFA80
	.4byte 0x083DFA94
