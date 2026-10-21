	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_08002844
	.thumb_func
sub_08002844:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r0, [sp, #20]
	lsls r3, r3, #24
	lsrs r5, r3, #24
	lsls r0, r0, #24
	lsrs r7, r0, #24
	movs r3, #0
	ldrb r0, [r4, #24]
	cmp r0, #0
	bne .L08002880
	ldrb r0, [r4, #30]
	cmp r0, #0
	beq .L08002880
	adds r0, r4, #0
	adds r0, #74
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L08002880
	str r6, [r4, #32]
	adds r2, #15
	movs r0, #16
	negs r0, r0
	ands r2, r0
	subs r0, #240
	adds r1, r2, r0
	ldr r0, [pc, #12]
	cmp r1, r0
	bls .L0800288C
.L08002880:
	adds r0, r4, #0
	bl sub_080023B0
	b .L080028DC
	.2byte 0xff00 @ .raw
	movs r3, r0
.L0800288C:
	adds r0, r6, r2
	str r0, [r4, #36]
	lsls r1, r7, #24
	movs r2, #128
	lsls r2, r2, #19
	adds r0, r1, r2
	asrs r0, r0, #24
	adds r2, r1, #0
	cmp r0, #8
	bhi .L080028C8
	lsls r0, r0, #2
	ldr r1, [pc, #8]
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	movs r0, r0
	adds r1, #100
	lsrs r5, r7, #32
	lsls r3, r5, #3
	asrs r1, r2, #24
	movs r0, #3
	subs r0, r0, r1
	b .L080028C6
	movs r0, #56
	adds r3, r5, #0
	b .L080028C6
	lsls r3, r5, #3
	asrs r0, r2, #24
	subs r0, #1
.L080028C6:
	orrs r3, r0
.L080028C8:
	movs r0, #63
	ands r3, r0
	lsls r0, r3, #1
	movs r2, #127
	negs r2, r2
	adds r1, r2, #0
	orrs r0, r1
	strb r0, [r4, #28]
	movs r0, #208
	strb r0, [r4, #24]
.L080028DC:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
