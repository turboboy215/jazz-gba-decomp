	.include "asm/macros.inc"
	.syntax unified
	.text

@ Sprite_Init: [likely] sets bank/anim, creates one Obj per non-empty layer (08004408), frees on failure
	.thumb
	.align 1, 0
	.global sub_080002E0
	.thumb_func
sub_080002E0:
	.global Sprite_Init
	.thumb_set Sprite_Init, sub_080002E0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #12
	adds r5, r0, #0
	mov r8, r1
	str r2, [sp, #8]
	mov r9, r3
	mov r0, r8
	adds r1, r2, #0
	bl sub_0800079C
	str r0, [sp, #4]
	mov r0, r8
	str r0, [r5, #48]
	movs r0, #0
	str r0, [r5, #12]
	strb r0, [r5, #1]
	adds r0, r5, #0
	ldr r1, [sp, #8]
	bl sub_08000680
	adds r0, r5, #0
	mov r1, r9
	bl sub_0800065C
	ldr r4, [pc, #148]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08000730
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08000738
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08000734
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0800075C
	adds r0, r5, #0
	bl sub_08000604
	movs r4, #0
	ldr r1, [sp, #4]
	ldrh r1, [r1, #2]
	cmp r4, r1
	bcs .L080003D4
	mov sl, r4
	adds r6, r5, #0
	adds r6, #52
.L08000350:
	mov r0, r8
	ldr r1, [sp, #8]
	mov r2, r9
	adds r3, r4, #0
	bl sub_080007AC
	ldr r1, [pc, #84]
	ldrh r0, [r0, #4]
	ands r1, r0
	ldr r7, [pc, #80]
	cmp r1, r7
	beq .L080003B8
	mov r0, r8
	ldr r1, [sp, #8]
	mov r2, r9
	adds r3, r4, #0
	bl sub_080007CC
	ldrh r1, [r0, #0]
	ldrh r2, [r0, #2]
	ldrb r7, [r0, #12]
	lsls r3, r7, #31
	lsrs r3, r3, #31
	adds r0, #16
	str r0, [sp, #0]
	adds r0, r6, #0
	bl Obj_Create
	lsls r0, r0, #24
	cmp r0, #0
	bne .L080003C4
	adds r3, r4, #0
	cmp r3, #11
	bhi .L080003A4
	adds r0, r5, #0
	adds r0, #52
	add r0, sl
	movs r1, #0
.L0800039C:
	adds r3, #1
	cmp r3, #11
	bls .L0800039C
	str r1, [r0, #0]
.L080003A4:
	adds r0, r5, #0
	bl sub_080005D4
	movs r0, #0
	b .L080003EA
	movs r0, r0
	.2byte 0xffff @ .raw
	movs r0, r0
	subs r7, #255
	movs r0, r0
.L080003B8:
	lsls r0, r4, #2
	adds r1, r5, #0
	adds r1, #52
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1, #0]
.L080003C4:
	movs r0, #4
	add sl, r0
	adds r6, #4
	adds r4, #1
	ldr r1, [sp, #4]
	ldrh r1, [r1, #2]
	cmp r4, r1
	bcc .L08000350
.L080003D4:
	cmp r4, #11
	bhi .L080003E8
	movs r1, #0
	lsls r0, r4, #2
	adds r0, #52
	adds r0, r0, r5
.L080003E0:
	stmia r0!, {r1}
	adds r4, #1
	cmp r4, #11
	bls .L080003E0
.L080003E8:
	movs r0, #1
.L080003EA:
	add sp, #12
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000
