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

@ Map_SnapToSlope: [likely] moves *py onto the slope surface (nonmatching)
	.thumb
	.align 1, 0
	.global sub_08000A70
	.thumb_func
sub_08000A70:
	.global Map_SnapToSlope
	.thumb_set Map_SnapToSlope, sub_08000A70
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r1
	adds r7, r2, #0
	ldr r0, [r0, #0]
	asrs r6, r0, #8
	ldr r0, [r1, #0]
	asrs r4, r0, #8
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_080008BC
	lsls r0, r0, #16
	lsrs r5, r0, #16
	adds r0, r5, #0
	bl sub_08000978
	cmp r0, #0
	bne .L08000AC4
	cmp r7, #0
	beq .L08000AEA
	adds r4, #8
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_080008BC
	lsls r0, r0, #16
	lsrs r5, r0, #16
	adds r0, r5, #0
	bl sub_08000978
	cmp r0, #0
	beq .L08000AEA
	b .L08000AC4
.L08000AB6:
	subs r4, #8
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_080008BC
	lsls r0, r0, #16
	lsrs r5, r0, #16
.L08000AC4:
	cmp r5, #9
	beq .L08000AB6
	adds r0, r4, #0
	adds r0, #8
	movs r1, #8
	negs r1, r1
	ands r0, r1
	subs r4, r0, #1
	ldr r1, [pc, #28]
	movs r0, #7
	ands r6, r0
	lsls r0, r5, #3
	adds r0, r6, r0
	adds r0, r0, r1
	ldrb r0, [r0, #0]
	subs r4, r4, r0
	lsls r0, r4, #8
	mov r1, r8
	str r0, [r1, #0]
.L08000AEA:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.4byte 0x083D1D80

@ Map_GetSlopeDir: [likely] switch over slope types 1-9 -> 1..4 (jump table in rodata)
	.thumb
	.align 1, 0
	.global sub_08000AF8
	.thumb_func
sub_08000AF8:
	.global Map_GetSlopeDir
	.thumb_set Map_GetSlopeDir, sub_08000AF8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_080008BC
	lsls r0, r0, #16
	lsrs r1, r0, #16
	ldr r2, [pc, #48]
	ldr r0, [r2, #32]
	cmp r4, r0
	ble .L08000B50
	ldr r0, [r2, #24]
	cmp r4, r0
	bge .L08000B50
	cmp r1, #9
	bne .L08000B26
	subs r5, #8
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080008BC
	lsls r0, r0, #16
	lsrs r1, r0, #16
.L08000B26:
	subs r0, r1, #1
	cmp r0, #8
	bhi .L08000B50
	lsls r0, r0, #2
	ldr r1, [pc, #12]
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	movs r0, r0
	subs r0, #204
	lsls r0, r0, #12
	adds r4, r3, #5
	lsrs r5, r7, #32
	movs r0, #4
	b .L08000B52
	movs r0, #1
	b .L08000B52
	movs r0, #3
	b .L08000B52
	movs r0, #2
	b .L08000B52
.L08000B50:
	movs r0, #0
.L08000B52:
	pop {r4, r5}
	pop {r1}
	bx r1
