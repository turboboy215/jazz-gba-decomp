	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_082FDA74
	.thumb_func
sub_082FDA74:
	push {r4, lr}
	sub sp, #12
	movs r0, #1
	bl sub_08001E18
	lsls r0, r0, #24
	lsrs r4, r0, #24
	cmp r4, #0
	bne .L082FDAD2
	bl sub_0831650C
	bl sub_0831654C
	bl sub_0831653C
	ldr r0, [pc, #72]
	str r4, [r0, #64]
	movs r0, #8
	movs r1, #180
	movs r2, #0
	movs r3, #0
	bl sub_08316098
	str r4, [sp, #0]
	movs r0, #180
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #40]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #180
	bl sub_08316178
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	movs r0, #8
	bl sub_083164C8
.L082FDAD2:
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x0300250C
	.4byte 0x083D6FE4
