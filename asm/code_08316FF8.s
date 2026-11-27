	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_08316FF8
	.thumb_func
sub_08316FF8:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r5, #1
	ldr r0, [pc, #92]
	ldr r1, [pc, #96]
	mov ip, r1
	ldr r6, [pc, #96]
	movs r3, #3
	mov r8, r3
	adds r4, r0, #0
	adds r4, #60
.L08317010:
	lsls r2, r5, #2
	ldr r7, [pc, #88]
	adds r3, r2, r7
	ldr r0, [pc, #88]
	adds r2, r2, r0
	ldr r1, [r4, #0]
	mov r0, r8
	ldrb r7, [r6, #0]
	ands r0, r7
	add r0, ip
	ldrb r0, [r0, #0]
	lsls r0, r0, #24
	asrs r0, r0, #24
	adds r1, r1, r0
	strh r1, [r3, #0]
	ldr r1, [r4, #4]
	ldrb r0, [r6, #0]
	adds r0, #2
	mov r3, r8
	ands r0, r3
	add r0, ip
	ldrb r0, [r0, #0]
	lsls r0, r0, #24
	asrs r0, r0, #24
	adds r1, r1, r0
	strh r1, [r2, #0]
	adds r4, #8
	adds r5, #1
	cmp r5, #3
	bls .L08317010
	ldr r1, [pc, #24]
	ldrb r0, [r1, #0]
	adds r0, #1
	strb r0, [r1, #0]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x0300398C
	.4byte 0x083DFAE8
	.4byte 0x03005A50
	.4byte 0x04000010
	.4byte 0x04000012
