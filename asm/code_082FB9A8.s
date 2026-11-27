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
