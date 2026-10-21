	.include "asm/macros.inc"
	.syntax unified
	.text

@ Map_HitCeiling: [likely] scans tiles above y+dy for COLL_SOLID (nonmatching)
	.thumb
	.align 1, 0
	.global sub_08000900
	.thumb_func
sub_08000900:
	.global Map_HitCeiling
	.thumb_set Map_HitCeiling, sub_08000900
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	mov r8, r0
	mov r9, r1
	adds r7, r2, #0
	adds r4, r3, #0
	ldr r5, [sp, #28]
	ldr r6, [sp, #32]
	cmp r4, #0
	bne .L0800091C
	movs r4, #1
	negs r4, r4
.L0800091C:
	cmp r5, #0
	bne .L08000924
	movs r5, #1
	negs r5, r5
.L08000924:
	cmp r6, #0
	bne .L0800092A
	movs r6, #1
.L0800092A:
	adds r0, r7, #0
	bl sub_080008F0
	cmp r0, #1
	beq .L0800096A
	mov r0, r8
	asrs r1, r0, #8
	adds r4, r1, r4
	mov r2, r9
	adds r0, r2, r7
	asrs r0, r0, #8
	adds r5, r0, r5
	cmp r5, #0
	bge .L0800094C
	b .L0800096A
.L08000948:
	movs r0, #1
	b .L0800096C
.L0800094C:
	adds r0, r1, r6
	cmp r4, r0
	bge .L0800096A
	adds r6, r0, #0
.L08000954:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080008BC
	lsls r0, r0, #16
	lsrs r0, r0, #16
	cmp r0, #10
	beq .L08000948
	adds r4, #8
	cmp r4, r6
	blt .L08000954
.L0800096A:
	movs r0, #0
.L0800096C:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
