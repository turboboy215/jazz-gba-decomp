	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_08300A64
	.thumb_func
sub_08300A64:
	push {lr}
	movs r0, #49
	bl sub_083189D0
	movs r0, #1
	movs r1, #192
	movs r2, #60
	bl sub_08316F10
	b .L08300A7C
.L08300A78:
	bl VBlankIntrWait
.L08300A7C:
	bl sub_08316F50
	cmp r0, #0
	bne .L08300A78
	ldr r0, [pc, #16]
	ldr r0, [r0, #0]
	cmp r0, #9
	beq .L08300AAA
	cmp r0, #9
	bhi .L08300A9C
	cmp r0, #4
	beq .L08300AA6
	b .L08300AC0
	movs r0, r0
	subs r7, #12
	lsls r0, r0, #12
.L08300A9C:
	cmp r0, #14
	beq .L08300AAE
	cmp r0, #19
	beq .L08300AB8
	b .L08300AC0
.L08300AA6:
	movs r0, #5
	b .L08300AB0
.L08300AAA:
	movs r0, #10
	b .L08300AB0
.L08300AAE:
	movs r0, #15
.L08300AB0:
	movs r1, #0
	bl sub_08311C50
	b .L08300AC0
.L08300AB8:
	movs r0, #20
	movs r1, #0
	bl sub_08311C50
.L08300AC0:
	ldr r0, [pc, #28]
	movs r1, #0
	strh r1, [r0, #0]
	ldr r0, [pc, #28]
	strh r1, [r0, #0]
	ldr r0, [pc, #28]
	str r1, [r0, #64]
	str r1, [r0, #68]
	movs r0, #0
	movs r1, #192
	movs r2, #60
	bl sub_08316F10
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x03000D14
	.4byte 0x03000D1C
	.4byte 0x0300250C

	.thumb
	.align 1, 0
	.global sub_08300AEC
	.thumb_func
sub_08300AEC:
	push {r4, lr}
	bl sub_0831654C
	bl sub_0831650C
	movs r0, #0
	movs r1, #0
	bl sub_082FB6D8
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #35
	bl sub_08316098
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #80
	bl sub_08316098
	ldr r4, [pc, #56]
	ldr r0, [r4, #0]
	cmp r0, #4
	bne .L08300B24
	ldr r0, [pc, #52]
	bl sub_08316500
.L08300B24:
	ldr r0, [r4, #0]
	cmp r0, #9
	bne .L08300B30
	ldr r0, [pc, #44]
	bl sub_08316500
.L08300B30:
	ldr r0, [r4, #0]
	cmp r0, #14
	bne .L08300B3C
	ldr r0, [pc, #36]
	bl sub_08316500
.L08300B3C:
	ldr r0, [r4, #0]
	cmp r0, #19
	bne .L08300B48
	ldr r0, [pc, #28]
	bl sub_08316500
.L08300B48:
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x03003F0C
	.4byte 0x08300B65
	.4byte 0x08301099
	.4byte 0x083013CD
	.4byte 0x08301941
