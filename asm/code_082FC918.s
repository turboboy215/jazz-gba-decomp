	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_082FC918
	.thumb_func
sub_082FC918:
	push {lr}
	movs r0, #1
	movs r1, #192
	movs r2, #30
	bl sub_08316F10
	b .L082FC92A
.L082FC926:
	bl VBlankIntrWait
.L082FC92A:
	bl sub_08316F50
	cmp r0, #0
	bne .L082FC926
	movs r0, #1
	bl sub_083100D4
	ldr r0, [pc, #52]
	ldrb r0, [r0, #0]
	cmp r0, #3
	bhi .L082FC964
	bl sub_083152BC
	adds r1, r0, #0
	ldrb r0, [r1, #3]
	cmp r0, #0
	bne .L082FC964
	movs r0, #1
	strb r0, [r1, #3]
	bl sub_083190E0
	movs r0, #1
	negs r0, r0
	bl sub_08319148
	bl sub_08315278
	bl sub_083190F0
.L082FC964:
	bl sub_0830693C
	bl sub_08302170
	pop {r0}
	bx r0
	.4byte 0x0200755C
