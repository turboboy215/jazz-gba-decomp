	.include "asm/macros.inc"
	.syntax unified
	.text

@ ResBank_GetCell: [likely] cell value from table 16 entry 0, 4/8/16-bit by header byte 8
	.thumb
	.align 1, 0
	.global sub_08001BCC
	.thumb_func
sub_08001BCC:
	.global ResBank_GetCell
	.thumb_set ResBank_GetCell, sub_08001BCC
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r7, r1, #0
	adds r6, r2, #0
	movs r1, #0
	bl sub_08001A30
	adds r5, r0, #0
	adds r0, r4, #0
	bl sub_08001BA0
	adds r3, r0, #0
	ldrb r4, [r5, #8]
	cmp r4, #1
	bne .L08001C00
	adds r2, r5, #0
	adds r2, #12
	lsrs r1, r6, #1
	ldr r0, [r5, #0]
	lsrs r0, r0, #1
	muls r0, r1
	lsrs r1, r7, #1
	adds r0, r0, r1
	adds r2, r2, r0
	ldrb r0, [r2, #0]
	b .L08001C32
.L08001C00:
	cmp r4, #2
	bne .L08001C1C
	adds r2, r5, #0
	adds r2, #12
	lsrs r1, r6, #1
	ldr r0, [r5, #0]
	lsrs r0, r0, #1
	muls r0, r1
	lsrs r1, r7, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0, #0]
	b .L08001C32
.L08001C1C:
	adds r2, r5, #0
	adds r2, #12
	lsrs r1, r6, #1
	ldr r0, [r5, #0]
	lsrs r0, r0, #1
	muls r0, r1
	lsrs r1, r7, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0, #0]
.L08001C32:
	ldrb r4, [r3, #4]
	cmp r4, #1
	bne .L08001C4E
	adds r1, r3, #0
	adds r1, #8
	lsls r0, r0, #2
	ands r6, r4
	lsls r2, r6, #1
	ands r4, r7
	adds r0, r0, r2
	adds r0, r0, r4
	adds r1, r1, r0
	ldrb r0, [r1, #0]
	b .L08001C80
.L08001C4E:
	cmp r4, #2
	beq .L08001C6A
	adds r3, #8
	lsls r0, r0, #2
	movs r1, #1
	ands r6, r1
	lsls r2, r6, #1
	ands r7, r1
	adds r0, r0, r2
	adds r0, r0, r7
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0, #0]
	b .L08001C80
.L08001C6A:
	adds r3, #8
	lsls r0, r0, #2
	movs r1, #1
	ands r6, r1
	lsls r2, r6, #1
	ands r7, r1
	adds r0, r0, r2
	adds r0, r0, r7
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r0, [r0, #0]
.L08001C80:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000
