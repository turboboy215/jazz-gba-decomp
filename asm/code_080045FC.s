	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_080045FC
	.thumb_func
sub_080045FC:
	lsls r0, r0, #24
	lsrs r3, r0, #24
	ldr r1, [pc, #20]
	ldr r2, [r1, #0]
	ldrb r0, [r1, #0]
	cmp r3, #255
	beq .L08004648
	cmp r2, r3
	bne .L08004620
	ldr r0, [pc, #12]
	adds r0, r3, r0
	ldrb r0, [r0, #0]
	str r0, [r1, #0]
	b .L0800463C
	movs r2, #236
	lsls r0, r0, #12
	movs r2, #104
	lsls r0, r0, #12
.L08004620:
	ldr r2, [pc, #0]
	b .L0800462A
	movs r2, #104
	lsls r0, r0, #12
.L08004628:
	ldrb r0, [r1, #0]
.L0800462A:
	cmp r0, #255
	beq .L0800463C
	adds r1, r0, r2
	ldrb r0, [r1, #0]
	cmp r0, r3
	bne .L08004628
	adds r0, r3, r2
	ldrb r0, [r0, #0]
	strb r0, [r1, #0]
.L0800463C:
	ldr r0, [pc, #12]
	adds r0, r3, r0
	ldr r2, [pc, #12]
	ldr r1, [r2, #0]
	strb r1, [r0, #0]
	str r3, [r2, #0]
.L08004648:
	bx lr
	.2byte 0x0000
	.4byte 0x03002268
	.4byte 0x030022E8
