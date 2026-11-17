	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_0830E460
	.thumb_func
sub_0830E460:
	push {r4, r5, r6, r7, lr}
	movs r0, #43
	bl sub_083189D0
	ldr r2, [pc, #348]
	movs r0, #0
	strb r0, [r2, #0]
	ldr r5, [pc, #348]
	ldr r1, [r5, #0]
	adds r1, #32
	ldr r0, [pc, #344]
	ldmia r0!, {r3, r4, r6}
	stmia r1!, {r3, r4, r6}
	ldmia r0!, {r3, r4, r6}
	stmia r1!, {r3, r4, r6}
	ldr r0, [r0, #0]
	str r0, [r1, #0]
	ldr r7, [pc, #336]
	movs r6, #10
	str r6, [r7, #0]
	ldrb r0, [r2, #0]
	bl sub_08001E60
	ldr r0, [pc, #328]
	movs r1, #0
	bl sub_080012E4
	movs r4, #160
	lsls r4, r4, #19
	adds r1, r4, #0
	movs r2, #0
	movs r3, #240
	bl sub_08001EBC
	ldr r0, [pc, #308]
	ldr r0, [r0, #8]
	adds r1, r4, #0
	movs r2, #240
	movs r3, #16
	bl sub_08001EBC
	ldr r0, [pc, #300]
	ldr r1, [pc, #300]
	movs r2, #0
	movs r3, #32
	bl sub_08001EBC
	ldr r0, [r5, #0]
	adds r0, #1
	ldr r1, [pc, #292]
	bl strcmp
	adds r1, r0, #0
	cmp r1, #0
	bne .L0830E512
	ldr r0, [pc, #284]
	strb r1, [r0, #0]
	ldr r1, [pc, #284]
	movs r0, #1
	strb r0, [r1, #0]
	ldr r0, [pc, #280]
	str r6, [r0, #0]
	ldr r1, [r5, #0]
	adds r1, #72
	ldr r0, [pc, #276]
	ldmia r0!, {r2, r3, r4}
	stmia r1!, {r2, r3, r4}
	ldmia r0!, {r2, r3, r4}
	stmia r1!, {r2, r3, r4}
	ldr r0, [r0, #0]
	str r0, [r1, #0]
	ldr r1, [r5, #0]
	adds r1, #112
	ldr r0, [pc, #264]
	ldmia r0!, {r2, r3, r4}
	stmia r1!, {r2, r3, r4}
	ldmia r0!, {r2, r3, r4}
	stmia r1!, {r2, r3, r4}
	ldr r0, [r0, #0]
	str r0, [r1, #0]
	ldr r1, [r5, #0]
	adds r1, #152
	ldr r0, [pc, #248]
	ldmia r0!, {r2, r3, r4}
	stmia r1!, {r2, r3, r4}
	ldmia r0!, {r2, r3, r4}
	stmia r1!, {r2, r3, r4}
	ldr r0, [r0, #0]
	str r0, [r1, #0]
.L0830E512:
	ldr r0, [r5, #0]
	adds r0, #1
	ldr r1, [pc, #236]
	bl strcmp
	adds r1, r0, #0
	cmp r1, #0
	bne .L0830E554
	ldr r0, [pc, #200]
	strb r1, [r0, #0]
	ldr r1, [pc, #200]
	movs r0, #1
	strb r0, [r1, #0]
	ldr r0, [pc, #196]
	str r6, [r0, #0]
	ldr r1, [r5, #0]
	adds r1, #72
	ldr r0, [pc, #196]
	ldmia r0!, {r2, r3, r6}
	stmia r1!, {r2, r3, r6}
	ldmia r0!, {r2, r4, r6}
	stmia r1!, {r2, r4, r6}
	ldr r0, [r0, #0]
	str r0, [r1, #0]
	ldr r1, [r5, #0]
	adds r1, #112
	ldr r0, [pc, #184]
	ldmia r0!, {r3, r4, r6}
	stmia r1!, {r3, r4, r6}
	ldmia r0!, {r2, r3, r4}
	stmia r1!, {r2, r3, r4}
	ldr r0, [r0, #0]
	str r0, [r1, #0]
.L0830E554:
	ldr r0, [r5, #0]
	adds r0, #1
	ldr r1, [pc, #172]
	bl strcmp
	adds r1, r0, #0
	cmp r1, #0
	bne .L0830E57A
	ldr r0, [pc, #132]
	strb r1, [r0, #0]
	ldr r1, [r5, #0]
	adds r1, #72
	ldr r0, [pc, #144]
	ldmia r0!, {r2, r3, r6}
	stmia r1!, {r2, r3, r6}
	ldmia r0!, {r2, r4, r6}
	stmia r1!, {r2, r4, r6}
	ldr r0, [r0, #0]
	str r0, [r1, #0]
.L0830E57A:
	ldr r0, [r5, #0]
	adds r0, #1
	ldr r1, [pc, #140]
	bl strcmp
	adds r1, r0, #0
	cmp r1, #0
	bne .L0830E5A0
	ldr r0, [pc, #96]
	strb r1, [r0, #0]
	ldr r1, [r5, #0]
	adds r1, #72
	ldr r0, [pc, #108]
	ldmia r0!, {r3, r4, r6}
	stmia r1!, {r3, r4, r6}
	ldmia r0!, {r2, r3, r4}
	stmia r1!, {r2, r3, r4}
	ldr r0, [r0, #0]
	str r0, [r1, #0]
.L0830E5A0:
	movs r4, #1
	negs r4, r4
	ldr r0, [pc, #76]
	ldr r0, [r0, #0]
	bl sub_083167F8
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08318CA4
	ldr r0, [r7, #0]
	bl sub_08316810
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_083191AC
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.4byte 0x02007567
	.4byte 0x0200756C
	.4byte 0x083DC070
	.4byte 0x030059B8
	.4byte 0x0300398C
	.4byte 0x083D2048
	.4byte 0x020073D8
	.4byte 0x05000200
	.4byte 0x083DB3BC
	.4byte 0x02007561
	.4byte 0x02007566
	.4byte 0x030059B4
	.4byte 0x083DC18C
	.4byte 0x083DC2F8
	.4byte 0x083DC478
	.4byte 0x083DB3EC
	.4byte 0x083DB3F8
	.4byte 0x083DB410
