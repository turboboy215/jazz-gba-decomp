	.include "asm/macros.inc"
	.syntax unified
	.text

@ ResBank_SetSlot: [likely] copies a 4-byte slot record (nonmatching)
	.thumb
	.align 1, 0
	.global sub_08001A48
	.thumb_func
sub_08001A48:
	.global ResBank_SetSlot
	.thumb_set ResBank_SetSlot, sub_08001A48
	lsls r1, r1, #2
	adds r3, r0, r1
	ldrb r1, [r2, #0]
	adds r0, r3, #0
	adds r0, #116
	strb r1, [r0, #0]
	ldrb r0, [r2, #1]
	adds r1, r3, #0
	adds r1, #117
	strb r0, [r1, #0]
	ldrb r0, [r2, #3]
	adds r1, #2
	strb r0, [r1, #0]
	ldrb r1, [r2, #2]
	adds r0, r3, #0
	adds r0, #118
	strb r1, [r0, #0]
	bx lr
