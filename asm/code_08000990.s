	.include "asm/macros.inc"
	.syntax unified
	.text

@ Map_HitWall: [likely] scans the leading edge column for COLL_SOLID (nonmatching)
	.thumb
	.align 1, 0
	.global sub_08000990
	.thumb_func
sub_08000990:
	.global Map_HitWall
	.thumb_set Map_HitWall, sub_08000990
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	mov r9, r0
	mov sl, r1
	mov r8, r2
	adds r4, r3, #0
	ldr r6, [sp, #32]
	ldr r5, [sp, #36]
	ldr r7, [sp, #40]
	cmp r4, #0
	bne .L080009B0
	movs r4, #1
	negs r4, r4
.L080009B0:
	cmp r6, #0
	bne .L080009B8
	movs r6, #1
	negs r6, r6
.L080009B8:
	cmp r5, #0
	bne .L080009BE
	movs r5, #1
.L080009BE:
	cmp r7, #0
	bne .L080009C4
	movs r7, #1
.L080009C4:
	mov r0, r8
	bl sub_080008F0
	adds r3, r4, #0
	cmp r0, #1
	bne .L080009D2
	adds r3, r5, #0
.L080009D2:
	mov r0, r9
	add r0, r8
	asrs r0, r0, #8
	adds r0, r0, r3
	mov r8, r0
	mov r1, sl
	asrs r0, r1, #8
	adds r4, r0, r6
	adds r1, r0, r7
	adds r5, r0, #0
	cmp r4, r1
	bge .L08000A0A
.L080009EA:
	cmp r4, #0
	blt .L08000A02
	mov r0, r8
	adds r1, r4, #0
	bl sub_080008BC
	lsls r0, r0, #16
	lsrs r0, r0, #16
	cmp r0, #10
	bne .L08000A02
	movs r0, #1
	b .L08000A0C
.L08000A02:
	adds r4, #8
	adds r0, r5, r7
	cmp r4, r0
	blt .L080009EA
.L08000A0A:
	movs r0, #0
.L08000A0C:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000

@ Map_OnSlope: [likely] slope tile at (x, y) or below (nonmatching)
	.thumb
	.align 1, 0
	.global sub_08000A1C
	.thumb_func
sub_08000A1C:
	.global Map_OnSlope
	.thumb_set Map_OnSlope, sub_08000A1C
	push {r4, r5, r6, lr}
	adds r6, r2, #0
	asrs r5, r0, #8
	asrs r4, r1, #8
	ldr r0, [pc, #60]
	ldr r0, [r0, #8]
	ldr r0, [r0, #4]
	lsls r0, r0, #3
	subs r0, #8
	cmp r4, r0
	bhi .L08000A60
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080008BC
	lsls r0, r0, #16
	lsrs r0, r0, #16
	bl sub_08000978
	cmp r0, #0
	bne .L08000A68
	cmp r6, #0
	beq .L08000A60
	adds r4, #8
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080008BC
	lsls r0, r0, #16
	lsrs r0, r0, #16
	bl sub_08000978
	cmp r0, #0
	bne .L08000A68
.L08000A60:
	movs r0, #0
	b .L08000A6A
	subs r1, #140
	lsls r0, r0, #12
.L08000A68:
	movs r0, #1
.L08000A6A:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
