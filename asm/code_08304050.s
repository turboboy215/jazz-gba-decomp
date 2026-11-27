	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_08304050
	.thumb_func
sub_08304050:
	push {lr}
	sub sp, #48
	ldr r1, [pc, #128]
	mov r0, sp
	movs r2, #48
	bl memcpy
	ldr r2, [pc, #124]
	ldrb r0, [r2, #0]
	cmp r0, #1
	bne .L0830406E
	ldr r1, [pc, #120]
	movs r0, #0
	strh r0, [r1, #0]
	strb r0, [r2, #0]
.L0830406E:
	ldr r1, [pc, #116]
	ldr r2, [pc, #116]
	adds r0, r2, #0
	strh r0, [r1, #0]
	ldr r1, [pc, #116]
	ldrh r0, [r1, #0]
	adds r0, #1
	strh r0, [r1, #0]
	lsls r0, r0, #16
	lsrs r0, r0, #16
	cmp r0, #4
	bls .L0830409C
	movs r2, #0
	strh r2, [r1, #0]
	ldr r1, [pc, #84]
	ldrh r0, [r1, #0]
	adds r0, #1
	strh r0, [r1, #0]
	lsls r0, r0, #16
	lsrs r0, r0, #16
	cmp r0, #23
	bls .L0830409C
	strh r2, [r1, #0]
.L0830409C:
	ldr r2, [pc, #80]
	ldr r0, [pc, #64]
	ldrh r0, [r0, #0]
	lsls r0, r0, #1
	mov r3, sp
	adds r1, r3, r0
	movs r3, #128
	lsls r3, r3, #5
	adds r0, r3, #0
	ldrh r1, [r1, #0]
	orrs r0, r1
	strh r0, [r2, #0]
	ldr r1, [pc, #60]
	ldr r0, [r1, #0]
	adds r0, #1
	str r0, [r1, #0]
	cmp r0, #3
	bls .L083040D0
	movs r0, #0
	str r0, [r1, #0]
	ldr r0, [pc, #48]
	movs r1, #3
	movs r2, #1
	movs r3, #0
	bl sub_08001404
.L083040D0:
	add sp, #48
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D9168
	.4byte 0x0300592C
	.4byte 0x0300592E
	.4byte 0x04000050
	.4byte 0x00003F42
	.4byte 0x03005930
	.4byte 0x04000052
	.4byte 0x03005934
	.4byte 0x0300398C
