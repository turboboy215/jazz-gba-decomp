	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_082FDE90
	.thumb_func
sub_082FDE90:
	push {r4, r5, lr}
	sub sp, #8
	bl sub_0831650C
	bl sub_0831654C
	movs r4, #1
	negs r4, r4
	movs r5, #0
	str r5, [sp, #0]
	movs r0, #24
	movs r1, #7
	adds r2, r4, #0
	movs r3, #1
	bl sub_083160FC
	str r5, [sp, #0]
	movs r0, #25
	movs r1, #7
	adds r2, r4, #0
	movs r3, #1
	bl sub_083160FC
	str r5, [sp, #0]
	movs r0, #26
	movs r1, #7
	adds r2, r4, #0
	movs r3, #1
	bl sub_083160FC
	str r5, [sp, #0]
	movs r0, #27
	movs r1, #7
	adds r2, r4, #0
	movs r3, #1
	bl sub_083160FC
	str r5, [sp, #0]
	movs r0, #28
	movs r1, #7
	adds r2, r4, #0
	movs r3, #1
	bl sub_083160FC
	str r5, [sp, #0]
	movs r0, #58
	movs r1, #7
	adds r2, r4, #0
	movs r3, #1
	bl sub_083160FC
	str r5, [sp, #0]
	movs r0, #59
	movs r1, #7
	adds r2, r4, #0
	movs r3, #1
	bl sub_083160FC
	movs r0, #28
	add r1, sp, #4
	bl sub_082EA468
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082FDF18
	ldr r0, [sp, #4]
	adds r0, #226
	strb r5, [r0, #0]
.L082FDF18:
	ldr r0, [pc, #12]
	bl sub_08316500
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x082FDF2D

	.thumb
	.align 1, 0
	.global sub_082FDF2C
	.thumb_func
sub_082FDF2C:
	push {r4, r5, r6, lr}
	sub sp, #12
	movs r6, #0
	movs r4, #24
	add r5, sp, #8
	b .L082FDF3A
.L082FDF38:
	adds r4, #1
.L082FDF3A:
	cmp r4, #28
	bhi .L082FDF4E
	adds r0, r4, #0
	add r1, sp, #4
	bl sub_082EA468
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082FDF38
	movs r6, #1
.L082FDF4E:
	movs r4, #58
.L082FDF50:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_082EA468
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082FDF88
	ldr r1, [sp, #8]
	adds r0, r1, #0
	adds r0, #230
	ldrb r2, [r0, #0]
	cmp r2, #1
	bne .L082FDF84
	adds r1, #226
	ldrb r0, [r1, #0]
	cmp r0, #0
	beq .L082FDF84
	movs r0, #0
	strb r0, [r1, #0]
	str r2, [sp, #0]
	adds r0, r4, #0
	movs r1, #7
	movs r2, #0
	movs r3, #1
	bl sub_083160FC
.L082FDF84:
	movs r6, #1
	b .L082FDF8E
.L082FDF88:
	adds r4, #1
	cmp r4, #59
	bls .L082FDF50
.L082FDF8E:
	ldr r0, [pc, #44]
	bl sub_08301E4C
	ldr r0, [pc, #40]
	bl sub_08301E40
	movs r0, #1
	negs r0, r0
	bl sub_083164DC
	cmp r6, #0
	bne .L082FDFB4
	bl sub_08301E84
	bl sub_083164F4
	ldr r0, [pc, #20]
	bl sub_08316500
.L082FDFB4:
	add sp, #12
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.4byte 0x000012F0
	.4byte 0x00001396
	.4byte 0x082FDFC9
