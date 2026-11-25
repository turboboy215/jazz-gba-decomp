	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_082FB9A8
	.thumb_func
sub_082FB9A8:
	push {r4, lr}
	ldr r4, [sp, #8]
	strb r1, [r0, #2]
	strh r2, [r0, #6]
	strh r3, [r0, #4]
	str r4, [r0, #20]
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082FB9BC
	.thumb_func
sub_082FB9BC:
	push {r4, lr}
	ldr r4, [sp, #8]
	strb r1, [r0, #8]
	strb r2, [r0, #10]
	strb r3, [r0, #9]
	strb r4, [r0, #11]
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082FB9D0
	.thumb_func
sub_082FB9D0:
	adds r1, r0, #0
	ldrb r2, [r1, #0]
	subs r0, r2, #1
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bls .L082FB9E4
	ldrh r0, [r1, #6]
	cmp r0, #0
	bne .L082FB9E8
.L082FB9E4:
	movs r0, #0
	b .L082FB9FA
.L082FB9E8:
	cmp r2, #0
	bne .L082FB9F8
	ldrb r0, [r1, #8]
	strb r0, [r1, #12]
	ldrb r0, [r1, #10]
	strb r0, [r1, #13]
	movs r0, #1
	strb r0, [r1, #0]
.L082FB9F8:
	movs r0, #1
.L082FB9FA:
	bx lr

	.thumb
	.align 1, 0
	.global sub_082FB9FC
	.thumb_func
sub_082FB9FC:
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0]
	cmp r0, #2
	bne .L082FBA16
	ldrb r0, [r4, #14]
	adds r1, r0, #0
	cmp r1, #0
	beq .L082FBA14
	subs r0, #1
	strb r0, [r4, #14]
	b .L082FBA16
.L082FBA14:
	strb r1, [r4, #0]
.L082FBA16:
	ldrb r0, [r4, #0]
	cmp r0, #1
	bne .L082FBA68
	ldrb r0, [r4, #12]
	cmp r0, #0
	bne .L082FBA64
	ldrb r0, [r4, #13]
	cmp r0, #0
	bne .L082FBA3C
	ldrb r1, [r4, #11]
	adds r0, r1, #0
	cmp r0, #0
	bne .L082FBA34
	strb r0, [r4, #0]
	b .L082FBA68
.L082FBA34:
	movs r0, #2
	strb r0, [r4, #0]
	strb r1, [r4, #14]
	b .L082FBA68
.L082FBA3C:
	subs r0, #1
	strb r0, [r4, #13]
	ldrb r0, [r4, #9]
	strb r0, [r4, #12]
	ldr r1, [r4, #20]
	adds r0, r4, #0
	bl sub_0831A7E8
	ldrh r2, [r4, #6]
	adds r1, r2, #0
	ldr r0, [pc, #12]
	cmp r1, r0
	beq .L082FBA68
	cmp r1, #0
	beq .L082FBA68
	subs r0, r2, #1
	strh r0, [r4, #6]
	b .L082FBA68
	.2byte 0xffff @ .raw
	movs r0, r0
.L082FBA64:
	subs r0, #1
	strb r0, [r4, #12]
.L082FBA68:
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082FBA70
	.thumb_func
sub_082FBA70:
	movs r1, #0
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne .L082FBA7A
	movs r1, #1
.L082FBA7A:
	adds r0, r1, #0
	bx lr
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082FBA80
	.thumb_func
sub_082FBA80:
	ldrh r2, [r0, #6]
	adds r1, r2, r1
	strh r1, [r0, #6]
	ldrh r2, [r0, #4]
	lsls r1, r1, #16
	lsrs r1, r1, #16
	cmp r1, r2
	bls .L082FBA92
	strh r2, [r0, #6]
.L082FBA92:
	bx lr

	.thumb
	.align 1, 0
	.global sub_082FBA94
	.thumb_func
sub_082FBA94:
	push {r4, lr}
	movs r0, #49
	bl sub_083189D0
	movs r0, #1
	movs r1, #192
	movs r2, #60
	bl Fade_Start
	b .L082FBAAC
.L082FBAA8:
	bl VBlankIntrWait
.L082FBAAC:
	bl Fade_IsBusy
	adds r4, r0, #0
	cmp r4, #0
	bne .L082FBAA8
	movs r0, #16
	movs r1, #0
	bl sub_08311C50
	ldr r0, [pc, #28]
	strh r4, [r0, #0]
	ldr r0, [pc, #28]
	strh r4, [r0, #0]
	ldr r0, [pc, #28]
	str r4, [r0, #64]
	str r4, [r0, #68]
	movs r0, #0
	movs r1, #192
	movs r2, #60
	bl Fade_Start
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x03000D14
	.4byte 0x03000D1C
	.4byte 0x0300250C

	.thumb
	.align 1, 0
	.global sub_082FBAE8
	.thumb_func
sub_082FBAE8:
	push {lr}
	movs r0, #6
	bl sub_08001E18
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082FBB12
	bl sub_0831650C
	bl sub_0831653C
	movs r1, #156
	negs r1, r1
	movs r0, #0
	movs r2, #60
	movs r3, #0
	bl sub_08316308
	ldr r0, [pc, #8]
	bl sub_08316500
.L082FBB12:
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x082FBB1D
