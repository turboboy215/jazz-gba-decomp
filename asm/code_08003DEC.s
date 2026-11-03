	.include "asm/macros.inc"
	.syntax unified
	.text

@ Oam_SetPosSorted: [sure] re-links OAM entry idx into the z-sorted used list, priority = number of thresholds (0x03001258) below z, sets x/y (near miss)
	.thumb
	.align 1, 0
	.global sub_08003DEC
	.thumb_func
sub_08003DEC:
	.global Oam_SetPosSorted
	.thumb_set Oam_SetPosSorted, sub_08003DEC
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	lsls r0, r0, #24
	lsrs r4, r0, #24
	lsls r1, r1, #16
	lsrs r1, r1, #16
	mov r9, r1
	lsls r2, r2, #16
	lsrs r2, r2, #16
	mov r8, r2
	ldr r0, [pc, #68]
	ldrb r2, [r0, #0]
	movs r7, #255
	lsls r3, r3, #24
	lsrs r6, r3, #24
	adds r5, r0, #0
	ldr r0, [pc, #60]
	mov ip, r0
	cmp r2, #255
	beq .L08003E2C
	mov r3, ip
.L08003E1A:
	lsls r0, r2, #3
	adds r0, r0, r3
	ldrb r1, [r0, #7]
	cmp r1, r6
	bcs .L08003E2C
	adds r7, r2, #0
	ldrb r2, [r0, #6]
	cmp r2, #255
	bne .L08003E1A
.L08003E2C:
	lsls r3, r4, #3
	mov r0, r8
	lsls r0, r0, #24
	mov r8, r0
	cmp r4, r7
	beq .L08003E92
	cmp r4, r2
	beq .L08003E92
	ldrb r1, [r5, #0]
	cmp r1, r4
	bne .L08003E5E
	ldr r0, [pc, #12]
	adds r0, r3, r0
	ldrb r0, [r0, #6]
	strb r0, [r5, #0]
	b .L08003E74
	asrs r0, r4, #9
	lsls r0, r0, #12
	lsrs r0, r3, #25
	lsls r0, r0, #12
.L08003E54:
	mov r5, ip
	adds r0, r3, r5
	ldrb r0, [r0, #6]
	strb r0, [r1, #6]
	b .L08003E74
.L08003E5E:
	ldrb r0, [r5, #0]
	cmp r0, #255
	beq .L08003E74
	ldr r5, [pc, #28]
.L08003E66:
	lsls r0, r0, #3
	adds r1, r0, r5
	ldrb r0, [r1, #6]
	cmp r0, r4
	beq .L08003E54
	cmp r0, #255
	bne .L08003E66
.L08003E74:
	ldr r1, [pc, #12]
	adds r0, r3, r1
	strb r2, [r0, #6]
	cmp r7, #255
	bne .L08003E8C
	ldr r0, [pc, #8]
	strb r4, [r0, #0]
	b .L08003E92
	lsrs r0, r3, #25
	lsls r0, r0, #12
	asrs r0, r4, #9
	lsls r0, r0, #12
.L08003E8C:
	lsls r0, r7, #3
	adds r0, r0, r1
	strb r4, [r0, #6]
.L08003E92:
	ldr r0, [pc, #92]
	adds r0, r3, r0
	strb r6, [r0, #7]
	movs r4, #0
	movs r1, #0
	ldr r2, [pc, #84]
.L08003E9E:
	ldrb r0, [r2, #0]
	adds r2, #1
	cmp r6, r0
	bls .L08003EA8
	adds r4, #1
.L08003EA8:
	adds r1, #1
	cmp r1, #3
	bne .L08003E9E
	ldr r2, [pc, #64]
	adds r2, r3, r2
	ldr r0, [pc, #68]
	ldrh r1, [r2, #4]
	ands r0, r1
	lsls r1, r4, #10
	orrs r0, r1
	strh r0, [r2, #4]
	movs r0, #255
	lsls r0, r0, #8
	ldrh r3, [r2, #0]
	ands r0, r3
	mov r5, r8
	lsrs r1, r5, #24
	orrs r0, r1
	strh r0, [r2, #0]
	movs r1, #254
	lsls r1, r1, #8
	ldrh r0, [r2, #2]
	ands r1, r0
	ldr r5, [pc, #36]
	adds r3, r5, #0
	mov r0, r9
	ands r0, r3
	orrs r1, r0
	strh r1, [r2, #2]
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x03000E58
	.4byte 0x03001258
	.4byte 0x0000F3FF
	.4byte 0x000001FF
