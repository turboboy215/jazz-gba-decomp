	.include "asm/macros.inc"
	.syntax unified
	.text

@ Fade_Start: [sure] REG_BLDCNT = mode | 0x3F (0x80 brighten, 0xC0 darken), step = 0x110000 / frames
	.thumb
	.align 1, 0
	.global sub_08316F10
	.thumb_func
sub_08316F10:
	.global Fade_Start
	.thumb_set Fade_Start, sub_08316F10
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r5, r1, #0
	cmp r2, #0
	beq .L08316F3A
	ldr r0, [pc, #36]
	strb r3, [r0, #0]
	ldr r1, [pc, #36]
	movs r0, #0
	str r0, [r1, #0]
	ldr r4, [pc, #32]
	movs r0, #136
	lsls r0, r0, #13
	adds r1, r2, #0
	bl __udivsi3
	str r0, [r4, #0]
	ldr r1, [pc, #24]
	movs r0, #63
	orrs r5, r0
	strh r5, [r1, #0]
.L08316F3A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.4byte 0x03005840
	.4byte 0x03005A4C
	.4byte 0x0300583C
	.4byte 0x04000050

@ Fade_IsBusy: [likely] nonzero while the fade counter at 0x03005A4C is below 0x110000
	.thumb
	.align 1, 0
	.global sub_08316F50
	.thumb_func
sub_08316F50:
	.global Fade_IsBusy
	.thumb_set Fade_IsBusy, sub_08316F50
	ldr r0, [pc, #12]
	ldr r3, [r0, #0]
	ldr r0, [pc, #12]
	cmp r3, r0
	bls .L08316F68
	movs r0, #0
	b .L08316F98
	movs r0, r0
	ldrh r4, [r1, r1]
	lsls r0, r0, #12
	.2byte 0xffff @ .raw
	movs r0, r2
.L08316F68:
	ldr r0, [pc, #16]
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L08316F84
	ldr r2, [pc, #12]
	lsrs r1, r3, #16
	movs r0, #16
	subs r0, r0, r1
	strh r0, [r2, #0]
	b .L08316F8A
	ldr r0, [r0, r1]
	lsls r0, r0, #12
	lsls r4, r2, #1
	lsls r0, r0, #16
.L08316F84:
	ldr r1, [pc, #20]
	lsrs r0, r3, #16
	strh r0, [r1, #0]
.L08316F8A:
	ldr r2, [pc, #20]
	ldr r1, [pc, #20]
	ldr r0, [r2, #0]
	ldr r1, [r1, #0]
	adds r0, r0, r1
	str r0, [r2, #0]
	movs r0, #1
.L08316F98:
	bx lr
	.2byte 0x0000
	.4byte 0x04000054
	.4byte 0x03005A4C
	.4byte 0x0300583C

	.thumb
	.align 1, 0
	.global sub_08316FA8
	.thumb_func
sub_08316FA8:
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r4, r1, #0
	adds r1, r2, #0
	movs r5, #0
	movs r0, #136
	lsls r0, r0, #13
	bl __udivsi3
	adds r6, r0, #0
	ldr r1, [pc, #24]
	movs r0, #63
	orrs r4, r0
	strh r4, [r1, #0]
	ldr r4, [pc, #20]
.L08316FC6:
	bl VBlankIntrWait
	cmp r7, #0
	bne .L08316FE0
	lsrs r1, r5, #16
	movs r0, #16
	subs r0, r0, r1
	b .L08316FE2
	movs r0, r0
	lsls r0, r2, #1
	lsls r0, r0, #16
	lsls r4, r2, #1
	lsls r0, r0, #16
.L08316FE0:
	lsrs r0, r5, #16
.L08316FE2:
	strh r0, [r4, #0]
	adds r5, r5, r6
	ldr r0, [pc, #12]
	cmp r5, r0
	bls .L08316FC6
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x0010FFFF

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

	.thumb
	.align 1, 0
	.global sub_08317074
	.thumb_func
sub_08317074:
	push {lr}
	ldr r1, [pc, #20]
	movs r0, #255
	strh r0, [r1, #0]
	adds r1, #4
	movs r0, #16
	strh r0, [r1, #0]
	bl VBlankIntrWait
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x04000050
