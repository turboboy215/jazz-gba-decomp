	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_083163A8
	.thumb_func
sub_083163A8:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	sub sp, #188
	adds r4, r0, #0
	bl sub_083152C4
	bl sub_0831A7F4
	ldr r0, [pc, #104]
	str r4, [r0, #0]
	ldr r1, [pc, #104]
	ldr r0, [r1, #52]
	asrs r5, r0, #8
	ldr r0, [r1, #56]
	asrs r4, r0, #8
	add r6, sp, #172
	add r0, sp, #176
	mov r9, r0
	movs r0, #173
	add r0, sp
	mov r8, r0
	adds r7, r1, #0
.L083163D8:
	bl VBlankIntrWait
	bl sub_08315664
	adds r1, r0, #0
	mov r0, sp
	movs r2, #188
	bl memcpy
	bl sub_080043B4
	ldrb r0, [r6, #0]
	cmp r0, #0
	bne .L083163F8
	bl sub_08311F7C
.L083163F8:
	mov r1, r9
	ldrb r0, [r1, #0]
	cmp r0, #0
	bne .L08316444
	ldrb r0, [r6, #0]
	cmp r0, #0
	beq .L08316438
	ldr r0, [r7, #52]
	asrs r0, r0, #8
	ldr r1, [pc, #36]
	ldr r1, [r1, #0]
	adds r0, r0, r1
	ldr r1, [r7, #56]
	asrs r1, r1, #8
	ldr r2, [pc, #28]
	ldr r2, [r2, #0]
	adds r1, r1, r2
	bl sub_08301D98
	ldr r0, [r7, #52]
	asrs r5, r0, #8
	ldr r0, [r7, #56]
	asrs r4, r0, #8
	b .L08316458
	ldrh r4, [r7, r0]
	lsls r0, r0, #12
	movs r5, #12
	lsls r0, r0, #12
	ldr r0, [r7, r3]
	lsls r0, r0, #12
	ldr r4, [r7, r3]
	lsls r0, r0, #12
.L08316438:
	ldr r0, [pc, #4]
	bl sub_08312174
	b .L08316458
	movs r5, #12
	lsls r0, r0, #12
.L08316444:
	add r0, sp, #180
	ldr r0, [r0, #0]
	adds r5, r5, r0
	add r0, sp, #184
	ldr r0, [r0, #0]
	adds r4, r4, r0
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08301D98
.L08316458:
	ldrb r0, [r6, #0]
	cmp r0, #0
	beq .L08316468
	ldr r1, [sp, #4]
	movs r0, #0
	bl sub_082F2760
	b .L0831646E
.L08316468:
	movs r0, #0
	bl sub_082F234C
.L0831646E:
	mov r1, r8
	ldrb r0, [r1, #0]
	cmp r0, #0
	bne .L0831647A
	bl sub_082EA2DC
.L0831647A:
	bl sub_082F4BBC
	movs r0, #0
	bl sub_082F27E8
	bl sub_082EA3A4
	bl sub_082F4BEC
	ldr r0, [sp, #0]
	cmp r0, #0
	bne .L083163D8
	movs r0, #1
	add sp, #188
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000
