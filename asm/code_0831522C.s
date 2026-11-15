	.include "asm/macros.inc"
	.syntax unified
	.text

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
