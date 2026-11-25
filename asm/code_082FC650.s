	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_082FC650
	.thumb_func
sub_082FC650:
	push {lr}
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	ldr r0, [pc, #16]
	ldr r0, [r0, #52]
	asrs r1, r0, #8
	movs r0, #185
	lsls r0, r0, #1
	cmp r1, r0
	ble .L082FC67C
	movs r0, #1
	b .L082FC682
	movs r5, #12
	lsls r0, r0, #12
.L082FC67C:
	cmp r1, #179
	bgt .L082FC698
	movs r0, #2
.L082FC682:
	movs r1, #0
	movs r2, #0
	movs r3, #35
	bl sub_08316098
	ldr r0, [pc, #4]
	bl sub_08316500
	b .L082FC69E
	stmia r6!, {r0, r4, r6}
	lsrs r7, r5, #32
.L082FC698:
	ldr r0, [pc, #8]
	bl sub_08316500
.L082FC69E:
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x082FC6A9

	.thumb
	.align 1, 0
	.global sub_082FC6A8
	.thumb_func
sub_082FC6A8:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	ldr r2, [pc, #96]
	ldr r0, [r2, #52]
	asrs r0, r0, #8
	cmp r0, #243
	bgt .L082FC6D2
	adds r1, r2, #0
	adds r1, #48
	movs r0, #0
	strb r0, [r1, #0]
.L082FC6D2:
	ldr r0, [r2, #52]
	asrs r0, r0, #8
	cmp r0, #244
	ble .L082FC6E2
	adds r1, r2, #0
	adds r1, #48
	movs r0, #1
	strb r0, [r1, #0]
.L082FC6E2:
	movs r0, #4
	str r0, [sp, #0]
	movs r0, #60
	str r0, [sp, #4]
	movs r4, #0
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #44]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #60
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #20]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x0300250C
	.4byte 0x083D69FC
	.4byte 0x082FC731
