	.include "asm/macros.inc"
	.syntax unified
	.text

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
