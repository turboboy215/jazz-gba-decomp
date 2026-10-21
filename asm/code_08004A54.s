	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_08004A54
	.thumb_func
sub_08004A54:
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r0, r4, #0
	bl sub_08004A40
	adds r2, r0, #0
	cmp r2, #0
	beq .L08004A86
	ldrb r0, [r4, #0]
	adds r3, r5, r2
	cmp r0, #0
	beq .L08004A82
	adds r1, r4, #0
	subs r0, r5, #1
	adds r2, r2, r0
.L08004A74:
	ldrb r0, [r1, #0]
	strb r0, [r2, #0]
	subs r2, #1
	adds r1, #1
	ldrb r0, [r1, #0]
	cmp r0, #0
	bne .L08004A74
.L08004A82:
	movs r0, #0
	strb r0, [r3, #0]
.L08004A86:
	pop {r4, r5}
	pop {r0}
	bx r0
