	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_080006AC
	.thumb_func
sub_080006AC:
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08000654
	adds r0, r4, #0
	bl sub_08000838
	strh r0, [r4, #10]
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
