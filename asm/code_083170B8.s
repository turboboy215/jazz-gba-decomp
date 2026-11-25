	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_083170B8
	.thumb_func
sub_083170B8:
	push {r4, lr}
	adds r4, r3, #0
	bl sub_083170A0
	adds r1, r0, #0
	adds r2, r1, #0
	cmp r1, #0
	bge .L083170CA
	negs r2, r1
.L083170CA:
	adds r0, r4, #0
	cmp r4, #0
	bge .L083170D2
	negs r0, r4
.L083170D2:
	cmp r2, r0
	ble .L083170E0
	adds r0, r1, #0
	bl sub_08317090
	adds r1, r0, #0
	muls r1, r4
.L083170E0:
	adds r0, r1, #0
	pop {r4}
	pop {r1}
	bx r1

	.thumb
	.align 1, 0
	.global sub_083170E8
	.thumb_func
sub_083170E8:
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_08317090
	adds r6, r0, #0
	cmp r4, #0
	beq .L08317112
	cmp r5, #0
	ble .L08317112
	negs r2, r5
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_083170A0
	adds r4, r0, #0
	bl sub_08317090
	cmp r6, r0
	beq .L08317112
	movs r4, #0
.L08317112:
	adds r0, r4, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.2byte 0x0000
	.4byte 0xE92D0F00
	.4byte 0xE3A0C301
	.4byte 0xE59FB02C
	.4byte 0xE28BA028
	.4byte 0xE3A09001
	.4byte 0xE3A08000
	.4byte 0xE5CC8208
	.4byte 0xE89A0003
	.4byte 0xE8AA0002
	.4byte 0xE8AA0001
	.4byte 0xE5DB0005
	.4byte 0xE5CB8005
	.4byte 0xE5CC9208
	.4byte 0xE8BD0F00
	.4byte 0xE12FFF1E
	.4byte 0x03000970

	.thumb
	.align 1, 0
	.global sub_0831715C
	.thumb_func
sub_0831715C:
	lsls r0, r0, #16
	lsrs r0, r0, #16
	movs r2, #0
	cmp r0, #4
	bne .L08317178
	ldr r1, [pc, #8]
	ldr r0, [pc, #8]
	str r0, [r1, #0]
	b .L08317194
	movs r0, r0
	lsrs r0, r1, #12
	lsls r0, r0, #12
	.2byte 0xfaf8 @ .raw
	lsrs r5, r7, #32
.L08317178:
	cmp r0, #64
	bne .L0831718C
	ldr r1, [pc, #4]
	ldr r0, [pc, #8]
	str r0, [r1, #0]
	b .L08317194
	lsrs r0, r1, #12
	lsls r0, r0, #12
	.2byte 0xfb04 @ .raw
	lsrs r5, r7, #32
.L0831718C:
	ldr r1, [pc, #8]
	ldr r0, [pc, #12]
	str r0, [r1, #0]
	movs r2, #1
.L08317194:
	adds r0, r2, #0
	bx lr
	.4byte 0x03000B08
	.4byte 0x083DFAF8
	.4byte 0x88084906
	.4byte 0xD0082800
	.4byte 0x38018808
	.4byte 0x04008008
	.4byte 0xD1022800
	.4byte 0x20014902
	.4byte 0x47707008
	.4byte 0x03005846
	.4byte 0x03005848

	.thumb
	.align 1, 0
	.global sub_083171C4
	.thumb_func
sub_083171C4:
	adds r2, r1, #0
	lsls r0, r0, #24
	lsrs r1, r0, #24
	cmp r1, #3
	bhi .L083171F8
	ldr r0, [pc, #24]
	strb r1, [r0, #0]
	ldr r1, [pc, #24]
	ldrb r0, [r0, #0]
	lsls r0, r0, #2
	ldr r3, [pc, #20]
	adds r0, r0, r3
	str r0, [r1, #0]
	ldr r0, [pc, #20]
	str r0, [r2, #0]
	movs r0, #0
	b .L083171FA
	movs r0, r0
	ldr r4, [r0, r1]
	lsls r0, r0, #12
	ldr r4, [r1, r1]
	lsls r0, r0, #12
	lsls r0, r0, #4
	lsls r0, r0, #16
	strb r1, [r4, #6]
	lsrs r1, r6, #32
.L083171F8:
	movs r0, #1
.L083171FA:
	bx lr

	.thumb
	.align 1, 0
	.global sub_083171FC
	.thumb_func
sub_083171FC:
	push {r4, r5, lr}
	ldr r2, [pc, #68]
	ldr r3, [pc, #68]
	ldrh r1, [r3, #0]
	strh r1, [r2, #0]
	movs r5, #0
	strh r5, [r3, #0]
	ldr r4, [pc, #64]
	ldr r1, [pc, #64]
	ldrb r1, [r1, #0]
	movs r2, #8
	lsls r2, r1
	ldrh r1, [r4, #0]
	orrs r1, r2
	strh r1, [r4, #0]
	movs r1, #1
	strh r1, [r3, #0]
	ldr r1, [pc, #52]
	strb r5, [r1, #0]
	ldr r2, [pc, #52]
	ldrh r1, [r0, #0]
	strh r1, [r2, #0]
	adds r0, #2
	ldr r3, [pc, #48]
	ldr r1, [r3, #0]
	ldrh r2, [r0, #0]
	strh r2, [r1, #0]
	adds r1, #2
	str r1, [r3, #0]
	ldrh r0, [r0, #2]
	strh r0, [r1, #0]
	subs r1, #2
	str r1, [r3, #0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.4byte 0x03005850
	.4byte 0x04000208
	.4byte 0x04000200
	.4byte 0x03005844
	.4byte 0x03005848
	.4byte 0x03005846
	.4byte 0x0300584C

	.thumb
	.align 1, 0
	.global sub_08317260
	.thumb_func
sub_08317260:
	ldr r1, [pc, #44]
	ldr r0, [r1, #0]
	movs r2, #0
	strh r2, [r0, #0]
	adds r0, #2
	str r0, [r1, #0]
	strh r2, [r0, #0]
	subs r0, #2
	str r0, [r1, #0]
	ldr r3, [pc, #32]
	strh r2, [r3, #0]
	ldr r2, [pc, #32]
	ldr r0, [pc, #32]
	ldrb r0, [r0, #0]
	movs r1, #8
	lsls r1, r0
	ldrh r0, [r2, #0]
	bics r0, r1
	strh r0, [r2, #0]
	ldr r0, [pc, #24]
	ldrh r0, [r0, #0]
	strh r0, [r3, #0]
	bx lr
	.2byte 0x0000
	.4byte 0x0300584C
	.4byte 0x04000208
	.4byte 0x04000200
	.4byte 0x03005844
	.4byte 0x03005850

	.thumb
	.align 1, 0
	.global sub_083172A4
	.thumb_func
sub_083172A4:
	push {r4, r5, r6, lr}
	lsls r2, r2, #16
	lsrs r2, r2, #16
	ldr r4, [pc, #88]
	ldrh r3, [r4, #0]
	adds r6, r3, #0
	movs r3, #0
	strh r3, [r4, #0]
	ldr r5, [pc, #80]
	ldrh r4, [r5, #0]
	ldr r3, [pc, #80]
	ands r4, r3
	ldr r3, [pc, #80]
	ldr r3, [r3, #0]
	ldrh r3, [r3, #6]
	orrs r3, r4
	strh r3, [r5, #0]
	ldr r3, [pc, #76]
	str r0, [r3, #0]
	ldr r0, [pc, #76]
	str r1, [r0, #0]
	ldr r1, [pc, #76]
	movs r0, #128
	lsls r0, r0, #24
	orrs r2, r0
	str r2, [r1, #0]
	adds r1, #2
	movs r2, #128
	lsls r2, r2, #8
	adds r0, r2, #0
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L083172F8
	ldr r2, [pc, #52]
	movs r0, #128
	lsls r0, r0, #8
	adds r1, r0, #0
.L083172F0:
	ldrh r0, [r2, #0]
	ands r0, r1
	cmp r0, #0
	bne .L083172F0
.L083172F8:
	ldr r0, [pc, #8]
	strh r6, [r0, #0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x04000208
	.4byte 0x04000204
	.4byte 0x0000F8FF
	.4byte 0x03000B08
	.4byte 0x040000D4
	.4byte 0x040000D8
	.4byte 0x040000DC
	.4byte 0x040000DE

	.thumb
	.align 1, 0
	.global sub_08317324
	.thumb_func
sub_08317324:
	push {r4, r5, r6, lr}
	sub sp, #136
	adds r5, r1, #0
	lsls r0, r0, #16
	lsrs r3, r0, #16
	ldr r0, [pc, #12]
	ldr r0, [r0, #0]
	ldrh r0, [r0, #4]
	cmp r3, r0
	bcc .L08317344
	ldr r0, [pc, #4]
	b .L083173CE
	lsrs r0, r1, #12
	lsls r0, r0, #12
	strh r7, [r7, #6]
	movs r0, r0
.L08317344:
	ldr r0, [pc, #144]
	adds r6, r0, #0
	ldr r0, [r0, #0]
	ldrb r1, [r0, #8]
	lsls r0, r1, #1
	mov r4, sp
	adds r2, r0, r4
	adds r2, #2
	movs r4, #0
	cmp r4, r1
	bcs .L0831736E
.L0831735A:
	strh r3, [r2, #0]
	subs r2, #2
	lsrs r3, r3, #1
	adds r0, r4, #1
	lsls r0, r0, #24
	lsrs r4, r0, #24
	ldr r0, [r6, #0]
	ldrb r0, [r0, #8]
	cmp r4, r0
	bcc .L0831735A
.L0831736E:
	movs r0, #1
	strh r0, [r2, #0]
	subs r2, #2
	strh r0, [r2, #0]
	movs r4, #208
	lsls r4, r4, #20
	ldr r0, [pc, #92]
	ldr r0, [r0, #0]
	ldrb r0, [r0, #8]
	lsls r2, r0, #16
	movs r0, #192
	lsls r0, r0, #10
	adds r2, r2, r0
	lsrs r2, r2, #16
	mov r0, sp
	adds r1, r4, #0
	bl sub_083172A4
	adds r0, r4, #0
	mov r1, sp
	movs r2, #68
	bl sub_083172A4
	add r2, sp, #8
	adds r5, #6
	movs r4, #0
	movs r6, #1
.L083173A4:
	movs r1, #0
	movs r3, #0
.L083173A8:
	lsls r1, r1, #17
	ldrh r0, [r2, #0]
	ands r0, r6
	lsrs r1, r1, #16
	orrs r1, r0
	adds r2, #2
	adds r0, r3, #1
	lsls r0, r0, #24
	lsrs r3, r0, #24
	cmp r3, #15
	bls .L083173A8
	strh r1, [r5, #0]
	subs r5, #2
	adds r0, r4, #1
	lsls r0, r0, #24
	lsrs r4, r0, #24
	cmp r4, #3
	bls .L083173A4
	movs r0, #0
.L083173CE:
	add sp, #136
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.2byte 0x0000
	.4byte 0x03000B08

	.thumb
	.align 1, 0
	.global sub_083173DC
	.thumb_func
sub_083173DC:
	push {r4, r5, lr}
	sub sp, #164
	adds r5, r1, #0
	lsls r0, r0, #16
	lsrs r4, r0, #16
	ldr r0, [pc, #12]
	ldr r0, [r0, #0]
	ldrh r0, [r0, #4]
	cmp r4, r0
	bcc .L083173FC
	ldr r0, [pc, #4]
	b .L083174A8
	lsrs r0, r1, #12
	lsls r0, r0, #12
	strh r7, [r7, #6]
	movs r0, r0
.L083173FC:
	ldr r0, [pc, #60]
	ldr r0, [r0, #0]
	ldrb r0, [r0, #8]
	lsls r0, r0, #1
	mov r1, sp
	adds r3, r0, r1
	adds r3, #132
	movs r0, #0
	strh r0, [r3, #0]
	subs r3, #2
	movs r1, #0
.L08317412:
	ldrh r2, [r5, #0]
	adds r5, #2
	movs r0, #0
.L08317418:
	strh r2, [r3, #0]
	subs r3, #2
	lsrs r2, r2, #1
	adds r0, #1
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #15
	bls .L08317418
	adds r0, r1, #1
	lsls r0, r0, #24
	lsrs r1, r0, #24
	cmp r1, #3
	bls .L08317412
	movs r1, #0
	ldr r0, [pc, #4]
	adds r2, r0, #0
	ldr r0, [r0, #0]
	b .L0831744E
	lsrs r0, r1, #12
	lsls r0, r0, #12
.L08317440:
	strh r4, [r3, #0]
	subs r3, #2
	lsrs r4, r4, #1
	adds r0, r1, #1
	lsls r0, r0, #24
	lsrs r1, r0, #24
	ldr r0, [r2, #0]
.L0831744E:
	ldrb r0, [r0, #8]
	cmp r1, r0
	bcc .L08317440
	movs r0, #0
	strh r0, [r3, #0]
	subs r3, #2
	movs r0, #1
	strh r0, [r3, #0]
	movs r1, #208
	lsls r1, r1, #20
	ldr r0, [pc, #76]
	ldr r0, [r0, #0]
	ldrb r0, [r0, #8]
	lsls r2, r0, #16
	movs r0, #134
	lsls r0, r0, #15
	adds r2, r2, r0
	lsrs r2, r2, #16
	mov r0, sp
	bl sub_083172A4
	ldr r0, [pc, #56]
	bl sub_083171FC
	movs r4, #0
	movs r1, #208
	lsls r1, r1, #20
	movs r3, #1
	ldr r2, [pc, #48]
.L08317488:
	ldrh r0, [r1, #0]
	ands r0, r3
	cmp r0, #0
	bne .L083174A2
	ldrb r0, [r2, #0]
	cmp r0, #0
	beq .L08317488
	ldrh r0, [r1, #0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne .L083174A2
	ldr r4, [pc, #24]
.L083174A2:
	bl sub_08317260
	adds r0, r4, #0
.L083174A8:
	add sp, #164
	pop {r4, r5}
	pop {r1}
	bx r1
	.4byte 0x03000B08
	.4byte 0x083DFB10
	.4byte 0x03005848
	.4byte 0x0000C001

	.thumb
	.align 1, 0
	.global sub_083174C0
	.thumb_func
sub_083174C0:
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r1, #0
	lsls r0, r0, #16
	lsrs r1, r0, #16
	movs r5, #0
	ldr r0, [pc, #12]
	ldr r0, [r0, #0]
	ldrh r0, [r0, #4]
	cmp r1, r0
	bcc .L083174E4
	ldr r0, [pc, #8]
	b .L0831750E
	movs r0, r0
	lsrs r0, r1, #12
	lsls r0, r0, #12
	strh r7, [r7, #6]
	movs r0, r0
.L083174E4:
	adds r0, r1, #0
	mov r1, sp
	bl sub_08317324
	mov r2, sp
	movs r3, #0
	b .L083174FC
.L083174F2:
	adds r0, r3, #1
	lsls r0, r0, #24
	lsrs r3, r0, #24
	cmp r3, #3
	bhi .L0831750C
.L083174FC:
	ldrh r1, [r4, #0]
	ldrh r0, [r2, #0]
	adds r2, #2
	adds r4, #2
	cmp r1, r0
	beq .L083174F2
	movs r5, #128
	lsls r5, r5, #8
.L0831750C:
	adds r0, r5, #0
.L0831750E:
	add sp, #8
	pop {r4, r5}
	pop {r1}
	bx r1
	.2byte 0x0000
