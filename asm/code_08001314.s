	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_08001314
	.thumb_func
sub_08001314:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #40
	mov sl, r0
	lsls r1, r1, #24
	lsrs r1, r1, #22
	mov r3, sl
	adds r3, #20
	adds r0, r3, r1
	str r2, [r0, #0]
	mov r0, sl
	adds r0, #36
	adds r0, r0, r1
	movs r1, #0
	str r1, [r0, #0]
	movs r6, #0
	movs r4, #0
	mov r8, r3
	mov r5, r8
	mov ip, r4
	mov r9, sp
.L08001344:
	movs r7, #0
	movs r1, #0
	cmp r1, r6
	bcs .L08001362
	mov r0, r8
	add r0, ip
	ldr r2, [r0, #0]
	mov r3, sp
.L08001354:
	ldmia r3!, {r0}
	cmp r2, r0
	bne .L0800135C
	movs r7, #1
.L0800135C:
	adds r1, #1
	cmp r1, r6
	bcc .L08001354
.L08001362:
	ldr r0, [r5, #0]
	cmp r0, #0
	beq .L08001378
	cmp r7, #0
	bne .L08001378
	mov r1, r9
	adds r1, #4
	mov r9, r1
	subs r1, #4
	stmia r1!, {r0}
	adds r6, #1
.L08001378:
	adds r5, #4
	movs r3, #4
	add ip, r3
	adds r4, #1
	cmp r4, #3
	bls .L08001344
	movs r0, #0
	str r0, [sp, #20]
	movs r4, #1
	cmp r4, r6
	bcs .L080013AE
	mov r2, sp
.L08001390:
	movs r1, #2
	ldr r0, [r2, #0]
	ldrh r3, [r0, #2]
	cmp r3, #4
	bne .L0800139C
	movs r1, #1
.L0800139C:
	ldrh r0, [r0, #0]
	muls r1, r0
	ldr r0, [r2, #20]
	adds r0, r0, r1
	str r0, [r2, #24]
	adds r2, #4
	adds r4, #1
	cmp r4, r6
	bcc .L08001390
.L080013AE:
	movs r4, #0
	add r0, sp, #20
	mov r9, r0
.L080013B4:
	movs r5, #1
	negs r5, r5
	movs r1, #0
	adds r7, r4, #1
	cmp r1, r6
	bcs .L080013D6
	lsls r0, r4, #2
	add r0, r8
	ldr r2, [r0, #0]
	mov r3, sp
.L080013C8:
	ldmia r3!, {r0}
	cmp r2, r0
	bne .L080013D0
	adds r5, r1, #0
.L080013D0:
	adds r1, #1
	cmp r1, r6
	bcc .L080013C8
.L080013D6:
	movs r0, #1
	negs r0, r0
	cmp r5, r0
	beq .L080013EE
	lsls r0, r4, #2
	mov r1, sl
	adds r1, #36
	adds r1, r1, r0
	lsls r0, r5, #2
	add r0, r9
	ldr r0, [r0, #0]
	str r0, [r1, #0]
.L080013EE:
	adds r4, r7, #0
	cmp r4, #3
	bls .L080013B4
	add sp, #40
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
