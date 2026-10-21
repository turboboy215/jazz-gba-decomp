	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_08001EBC
	.thumb_func
sub_08001EBC:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	mov ip, r3
	lsls r2, r2, #1
	adds r5, r1, r2
	movs r6, #0
	cmp r6, ip
	beq .L08001F1E
	ldr r1, [pc, #88]
	mov sl, r1
	movs r7, #31
	mov r8, r7
	ldr r1, [pc, #84]
	mov r9, r1
	adds r4, r0, #0
.L08001EE0:
	ldrh r1, [r4, #0]
	adds r4, #2
	movs r2, #31
	ands r2, r1
	mov r7, r9
	ldrb r7, [r7, #0]
	lsls r3, r7, #5
	adds r2, r2, r3
	add r2, sl
	lsls r1, r1, #16
	lsrs r0, r1, #21
	mov r7, r8
	ands r0, r7
	adds r0, r0, r3
	add r0, sl
	lsrs r1, r1, #26
	ands r1, r7
	adds r1, r1, r3
	add r1, sl
	ldrb r0, [r0, #0]
	lsls r0, r0, #5
	ldrb r2, [r2, #0]
	orrs r0, r2
	ldrb r1, [r1, #0]
	lsls r1, r1, #10
	orrs r0, r1
	strh r0, [r5, #0]
	adds r5, #2
	adds r6, #1
	cmp r6, ip
	bne .L08001EE0
.L08001F1E:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.4byte 0x083D2FD8
	.4byte 0x03005859
