	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_083033A8
	.thumb_func
sub_083033A8:
	push {r4, r5, r6, lr}
	sub sp, #4
	bl sub_0800436C
	bl sub_08004D70
	bl sub_08001A6C
	ldr r6, [pc, #308]
	ldr r1, [pc, #312]
	adds r0, r6, #0
	bl sub_08001280
	adds r0, r6, #0
	movs r1, #0
	bl sub_080012C0
	adds r0, r6, #0
	movs r1, #1
	movs r2, #0
	bl sub_080012F4
	ldr r2, [pc, #288]
	adds r0, r6, #0
	movs r1, #1
	bl sub_08001314
	adds r0, r6, #0
	movs r1, #2
	movs r2, #1
	bl sub_080012F4
	ldr r2, [pc, #272]
	adds r0, r6, #0
	movs r1, #2
	bl sub_08001314
	adds r0, r6, #0
	movs r1, #3
	movs r2, #2
	bl sub_080012F4
	ldr r2, [pc, #256]
	adds r0, r6, #0
	movs r1, #3
	bl sub_08001314
	ldr r1, [pc, #252]
	ldr r0, [sp, #0]
	ands r0, r1
	movs r4, #1
	orrs r0, r4
	ldr r1, [pc, #244]
	ands r0, r1
	movs r1, #128
	lsls r1, r1, #1
	orrs r0, r1
	ldr r1, [pc, #240]
	ands r0, r1
	movs r1, #128
	lsls r1, r1, #9
	orrs r0, r1
	ldr r1, [pc, #232]
	ands r0, r1
	adds r1, #1
	orrs r0, r1
	str r0, [sp, #0]
	mov r5, sp
	adds r0, r6, #0
	movs r1, #1
	mov r2, sp
	bl sub_08001A48
	mov r0, sp
	strb r4, [r0, #0]
	strb r4, [r5, #1]
	strb r4, [r5, #2]
	movs r0, #2
	strb r0, [r5, #3]
	adds r0, r6, #0
	movs r1, #2
	mov r2, sp
	bl sub_08001A48
	mov r0, sp
	strb r4, [r0, #0]
	strb r4, [r5, #1]
	strb r4, [r5, #2]
	movs r0, #3
	strb r0, [r5, #3]
	adds r0, r6, #0
	movs r1, #3
	mov r2, sp
	bl sub_08001A48
	adds r0, r6, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl Bg_DrawLevelScreen
	adds r0, r6, #0
	movs r1, #2
	movs r2, #0
	movs r3, #0
	bl Bg_DrawLevelScreen
	adds r0, r6, #0
	movs r1, #3
	movs r2, #0
	movs r3, #0
	bl Bg_DrawLevelScreen
	ldr r0, [pc, #136]
	movs r1, #31
	bl sub_08004848
	ldr r1, [pc, #132]
	movs r2, #248
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1, #0]
	adds r1, #2
	ldr r3, [pc, #124]
	adds r0, r3, #0
	strh r0, [r1, #0]
	adds r1, #2
	ldr r2, [pc, #120]
	adds r0, r2, #0
	strh r0, [r1, #0]
	adds r1, #2
	ldr r3, [pc, #116]
	adds r0, r3, #0
	strh r0, [r1, #0]
	movs r2, #128
	lsls r2, r2, #19
	ldrh r0, [r2, #0]
	movs r3, #250
	lsls r3, r3, #5
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2, #0]
	ldr r0, [pc, #96]
	movs r4, #160
	lsls r4, r4, #19
	adds r1, r4, #0
	movs r2, #224
	movs r3, #16
	bl sub_08001EBC
	ldr r0, [pc, #84]
	adds r1, r4, #0
	movs r2, #240
	movs r3, #16
	bl sub_08001EBC
	movs r0, #14
	bl sub_08004880
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x0300398C
	.4byte 0x080AAE80
	.4byte 0x082BCE10
	.4byte 0x082BF260
	.4byte 0x082BF730
	.4byte 0xFFFFFF00
	.4byte 0xFFFF00FF
	.4byte 0xFF00FFFF
	.4byte 0x00FFFFFF
	.4byte 0x083D2038
	.4byte 0x04000008
	.4byte 0x00001E81
	.4byte 0x00001D82
	.4byte 0x00001C83
	.4byte 0x083DC738
	.4byte 0x083DC758
