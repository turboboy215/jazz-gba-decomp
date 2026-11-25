	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_08301B9C
	.thumb_func
sub_08301B9C:
	push {r4, r5, lr}
	movs r3, #0
	ldr r5, [pc, #24]
	ldr r4, [pc, #28]
	adds r2, r0, #0
.L08301BA6:
	ldr r0, [r4, #0]
	adds r0, r0, r3
	ldrb r1, [r2, #0]
	adds r2, #1
	strb r1, [r0, #0]
	adds r3, #1
	cmp r3, r5
	bls .L08301BA6
	pop {r4, r5}
	pop {r0}
	bx r0
	.4byte 0x0001FFFF
	.4byte 0x030058F4
