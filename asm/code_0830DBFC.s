	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_0830DBFC
	.thumb_func
sub_0830DBFC:
	push {r4, lr}
	ldr r1, [pc, #220]
	movs r0, #32
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L0830DC52
	movs r0, #4
	bl sub_083189D0
	ldr r1, [pc, #204]
	ldrb r0, [r1, #0]
	cmp r0, #0
	beq .L0830DC1C
	subs r0, #1
	strb r0, [r1, #0]
.L0830DC1C:
	ldrb r0, [r1, #0]
	bl sub_08001E60
	ldr r0, [pc, #192]
	movs r1, #0
	bl sub_080012E4
	movs r4, #160
	lsls r4, r4, #19
	adds r1, r4, #0
	movs r2, #0
	movs r3, #240
	bl sub_08001EBC
	ldr r0, [pc, #172]
	ldr r0, [r0, #8]
	adds r1, r4, #0
	movs r2, #240
	movs r3, #16
	bl sub_08001EBC
	ldr r0, [pc, #164]
	ldr r1, [pc, #164]
	movs r2, #0
	movs r3, #32
	bl sub_08001EBC
.L0830DC52:
	ldr r1, [pc, #136]
	movs r0, #17
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L0830DCA6
	movs r0, #4
	bl sub_083189D0
	ldr r1, [pc, #120]
	ldrb r0, [r1, #0]
	cmp r0, #6
	bhi .L0830DC70
	adds r0, #1
	strb r0, [r1, #0]
.L0830DC70:
	ldrb r0, [r1, #0]
	bl sub_08001E60
	ldr r0, [pc, #108]
	movs r1, #0
	bl sub_080012E4
	movs r4, #160
	lsls r4, r4, #19
	adds r1, r4, #0
	movs r2, #0
	movs r3, #240
	bl sub_08001EBC
	ldr r0, [pc, #88]
	ldr r0, [r0, #8]
	adds r1, r4, #0
	movs r2, #240
	movs r3, #16
	bl sub_08001EBC
	ldr r0, [pc, #80]
	ldr r1, [pc, #80]
	movs r2, #0
	movs r3, #32
	bl sub_08001EBC
.L0830DCA6:
	ldr r0, [pc, #76]
	ldr r1, [r0, #0]
	movs r0, #216
	lsls r0, r0, #1
	adds r2, r1, r0
	ldrb r3, [r2, #0]
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #3
	adds r1, r1, r0
	ldrh r0, [r1, #62]
	adds r1, #64
	ldrh r1, [r1, #0]
	movs r2, #25
	movs r3, #0
	bl sub_080049D4
	ldr r0, [pc, #20]
	ldrb r0, [r0, #0]
	cmp r0, #7
	bls .L0830DCD2
	b .L0830DE1C
.L0830DCD2:
	lsls r0, r0, #2
	ldr r1, [pc, #32]
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	lsrs r2, r2, #20
	lsls r0, r0, #12
	strb r7, [r4, #21]
	lsls r0, r0, #8
	subs r1, #140
	lsls r0, r0, #12
	movs r0, #72
	lsrs r5, r7, #32
	strb r0, [r3, #15]
	lsls r0, r0, #8
	lsls r0, r0, #8
	lsls r0, r0, #20
	strb r4, [r5, #21]
	lsls r0, r0, #8
	stmia r1!, {r4, r6}
	lsrs r5, r7, #32
	ldr r0, [pc, #24]
	ldr r2, [r0, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #8]
	b .L0830DE10
	movs r0, r0
	strb r4, [r5, #21]
	lsls r0, r0, #8
	stmia r0!, {r4, r5, r6}
	lsrs r5, r7, #32
	ldr r0, [pc, #24]
	ldr r2, [r0, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #8]
	b .L0830DE10
	movs r0, r0
	strb r4, [r5, #21]
	lsls r0, r0, #8
	stmia r0!, {r2, r3, r7}
	lsrs r5, r7, #32
	ldr r0, [pc, #24]
	ldr r2, [r0, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #8]
	b .L0830DE10
	movs r0, r0
	strb r4, [r5, #21]
	lsls r0, r0, #8
	stmia r0!, {r3, r5, r7}
	lsrs r5, r7, #32
	ldr r0, [pc, #24]
	ldr r2, [r0, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #8]
	b .L0830DE10
	movs r0, r0
	strb r4, [r5, #21]
	lsls r0, r0, #8
	stmia r0!, {r2, r6, r7}
	lsrs r5, r7, #32
	ldr r0, [pc, #24]
	ldr r2, [r0, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #8]
	b .L0830DE10
	movs r0, r0
	strb r4, [r5, #21]
	lsls r0, r0, #8
	stmia r0!, {r5, r6, r7}
	lsrs r5, r7, #32
	ldr r0, [pc, #24]
	ldr r2, [r0, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #8]
	b .L0830DE10
	movs r0, r0
	strb r4, [r5, #21]
	lsls r0, r0, #8
	stmia r0!, {r2, r3, r4, r5, r6, r7}
	lsrs r5, r7, #32
	ldr r0, [pc, #24]
	ldr r2, [r0, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #8]
	b .L0830DE10
	movs r0, r0
	strb r4, [r5, #21]
	lsls r0, r0, #8
	stmia r1!, {r3, r4}
	lsrs r5, r7, #32
	ldr r0, [pc, #40]
	ldr r2, [r0, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #24]
.L0830DE10:
	ldmia r0!, {r2, r3, r4}
	stmia r1!, {r2, r3, r4}
	ldmia r0!, {r2, r3, r4}
	stmia r1!, {r2, r3, r4}
	ldr r0, [r0, #0]
	str r0, [r1, #0]
.L0830DE1C:
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x0200756C
	.4byte 0x083DC134

	.thumb
	.align 1, 0
	.global sub_0830DE2C
	.thumb_func
sub_0830DE2C:
	push {r4, lr}
	ldr r1, [pc, #112]
	movs r0, #32
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L0830DE4C
	movs r0, #4
	bl sub_083189D0
	ldr r1, [pc, #96]
	ldrb r0, [r1, #0]
	cmp r0, #0
	beq .L0830DE4C
	subs r0, #1
	strb r0, [r1, #0]
.L0830DE4C:
	ldr r1, [pc, #80]
	movs r0, #17
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L0830DE6A
	movs r0, #4
	bl sub_083189D0
	ldr r1, [pc, #68]
	ldrb r0, [r1, #0]
	cmp r0, #2
	bhi .L0830DE6A
	adds r0, #1
	strb r0, [r1, #0]
.L0830DE6A:
	ldr r4, [pc, #60]
	ldr r1, [r4, #0]
	movs r0, #216
	lsls r0, r0, #1
	adds r2, r1, r0
	ldrb r3, [r2, #0]
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #3
	adds r1, r1, r0
	ldrh r0, [r1, #62]
	adds r1, #64
	ldrh r1, [r1, #0]
	movs r2, #25
	movs r3, #0
	bl sub_080049D4
	ldr r0, [pc, #20]
	ldrb r0, [r0, #0]
	cmp r0, #1
	beq .L0830DED4
	cmp r0, #1
	bgt .L0830DEAC
	cmp r0, #0
	beq .L0830DEB6
	b .L0830DF2E
	movs r0, r0
	lsrs r2, r2, #20
	lsls r0, r0, #12
	strb r6, [r4, #21]
	lsls r0, r0, #8
	strb r4, [r5, #21]
	lsls r0, r0, #8
.L0830DEAC:
	cmp r0, #2
	beq .L0830DEF0
	cmp r0, #3
	beq .L0830DF0C
	b .L0830DF2E
.L0830DEB6:
	ldr r2, [r4, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #4]
	b .L0830DF22
	movs r0, r0
	stmia r1!, {r4, r5, r6}
	lsrs r5, r7, #32
.L0830DED4:
	ldr r2, [r4, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #0]
	b .L0830DF22
	stmia r1!, {r2, r3, r7}
	lsrs r5, r7, #32
.L0830DEF0:
	ldr r2, [r4, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #0]
	b .L0830DF22
	stmia r1!, {r3, r5, r7}
	lsrs r5, r7, #32
.L0830DF0C:
	ldr r2, [r4, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #16]
.L0830DF22:
	ldmia r0!, {r2, r3, r4}
	stmia r1!, {r2, r3, r4}
	ldmia r0!, {r2, r3, r4}
	stmia r1!, {r2, r3, r4}
	ldr r0, [r0, #0]
	str r0, [r1, #0]
.L0830DF2E:
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x083DC1C4

	.thumb
	.align 1, 0
	.global sub_0830DF38
	.thumb_func
sub_0830DF38:
	push {r4, r5, lr}
	ldr r1, [pc, #132]
	movs r0, #32
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L0830DF58
	movs r0, #4
	bl sub_083189D0
	ldr r1, [pc, #116]
	ldr r0, [r1, #0]
	cmp r0, #0
	beq .L0830DF58
	subs r0, #1
	str r0, [r1, #0]
.L0830DF58:
	ldr r1, [pc, #100]
	movs r0, #17
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L0830DF76
	movs r0, #4
	bl sub_083189D0
	ldr r1, [pc, #88]
	ldr r0, [r1, #0]
	cmp r0, #10
	bhi .L0830DF76
	adds r0, #1
	str r0, [r1, #0]
.L0830DF76:
	ldr r0, [pc, #80]
	ldr r1, [r0, #0]
	movs r0, #216
	lsls r0, r0, #1
	adds r2, r1, r0
	ldrb r3, [r2, #0]
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #3
	adds r1, r1, r0
	ldrh r0, [r1, #62]
	adds r1, #64
	ldrh r1, [r1, #0]
	movs r2, #25
	movs r3, #0
	bl sub_080049D4
	movs r5, #1
	negs r5, r5
	ldr r4, [pc, #36]
	ldr r0, [r4, #0]
	bl sub_083167F8
	adds r1, r0, #0
	adds r0, r5, #0
	bl sub_08318CA4
	ldr r0, [r4, #0]
	cmp r0, #11
	bls .L0830DFB4
	b .L0830E180
.L0830DFB4:
	lsls r0, r0, #2
	ldr r1, [pc, #20]
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	movs r0, r0
	lsrs r2, r2, #20
	lsls r0, r0, #12
	ldr r4, [r6, r6]
	lsls r0, r0, #12
	strb r4, [r5, #21]
	lsls r0, r0, #8
	stmia r3!, {r4, r5}
	lsrs r5, r7, #32
	ldr r0, [pc, #24]
	ldr r2, [r0, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #8]
	b .L0830E174
	movs r0, r0
	strb r4, [r5, #21]
	lsls r0, r0, #8
	stmia r1!, {r5, r6, r7}
	lsrs r5, r7, #32
	ldr r0, [pc, #24]
	ldr r2, [r0, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #8]
	b .L0830E174
	movs r0, r0
	strb r4, [r5, #21]
	lsls r0, r0, #8
	stmia r1!, {r2, r3, r4, r5, r6, r7}
	lsrs r5, r7, #32
	ldr r0, [pc, #24]
	ldr r2, [r0, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #8]
	b .L0830E174
	movs r0, r0
	strb r4, [r5, #21]
	lsls r0, r0, #8
	stmia r2!, {r3, r4}
	lsrs r5, r7, #32
	ldr r0, [pc, #24]
	ldr r2, [r0, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #8]
	b .L0830E174
	movs r0, r0
	strb r4, [r5, #21]
	lsls r0, r0, #8
	stmia r2!, {r2, r4, r5}
	lsrs r5, r7, #32
	ldr r0, [pc, #24]
	ldr r2, [r0, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #8]
	b .L0830E174
	movs r0, r0
	strb r4, [r5, #21]
	lsls r0, r0, #8
	stmia r2!, {r4, r6}
	lsrs r5, r7, #32
	ldr r0, [pc, #24]
	ldr r2, [r0, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #8]
	b .L0830E174
	movs r0, r0
	strb r4, [r5, #21]
	lsls r0, r0, #8
	stmia r2!, {r2, r3, r5, r6}
	lsrs r5, r7, #32
	ldr r0, [pc, #24]
	ldr r2, [r0, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #8]
	b .L0830E174
	movs r0, r0
	strb r4, [r5, #21]
	lsls r0, r0, #8
	stmia r2!, {r3, r7}
	lsrs r5, r7, #32
	ldr r0, [pc, #24]
	ldr r2, [r0, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #8]
	b .L0830E174
	movs r0, r0
	strb r4, [r5, #21]
	lsls r0, r0, #8
	stmia r2!, {r2, r5, r7}
	lsrs r5, r7, #32
	ldr r0, [pc, #24]
	ldr r2, [r0, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #8]
	b .L0830E174
	movs r0, r0
	strb r4, [r5, #21]
	lsls r0, r0, #8
	stmia r2!, {r6, r7}
	lsrs r5, r7, #32
	ldr r0, [pc, #24]
	ldr r2, [r0, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #8]
	b .L0830E174
	movs r0, r0
	strb r4, [r5, #21]
	lsls r0, r0, #8
	stmia r2!, {r2, r3, r4, r6, r7}
	lsrs r5, r7, #32
	ldr r0, [pc, #24]
	ldr r2, [r0, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #8]
	b .L0830E174
	movs r0, r0
	strb r4, [r5, #21]
	lsls r0, r0, #8
	stmia r2!, {r3, r4, r5, r6, r7}
	lsrs r5, r7, #32
	ldr r0, [pc, #40]
	ldr r2, [r0, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #24]
.L0830E174:
	ldmia r0!, {r2, r3, r4}
	stmia r1!, {r2, r3, r4}
	ldmia r0!, {r2, r3, r4}
	stmia r1!, {r2, r3, r4}
	ldr r0, [r0, #0]
	str r0, [r1, #0]
.L0830E180:
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x0200756C
	.4byte 0x083DC314

	.thumb
	.align 1, 0
	.global sub_0830E190
	.thumb_func
sub_0830E190:
	push {r4, r5, lr}
	ldr r1, [pc, #132]
	movs r0, #32
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L0830E1B0
	movs r0, #4
	bl sub_083189D0
	ldr r1, [pc, #116]
	ldr r0, [r1, #0]
	cmp r0, #0
	beq .L0830E1B0
	subs r0, #1
	str r0, [r1, #0]
.L0830E1B0:
	ldr r1, [pc, #100]
	movs r0, #17
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L0830E1CE
	movs r0, #4
	bl sub_083189D0
	ldr r1, [pc, #88]
	ldr r0, [r1, #0]
	cmp r0, #10
	bhi .L0830E1CE
	adds r0, #1
	str r0, [r1, #0]
.L0830E1CE:
	ldr r0, [pc, #80]
	ldr r1, [r0, #0]
	movs r0, #216
	lsls r0, r0, #1
	adds r2, r1, r0
	ldrb r3, [r2, #0]
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #3
	adds r1, r1, r0
	ldrh r0, [r1, #62]
	adds r1, #64
	ldrh r1, [r1, #0]
	movs r2, #25
	movs r3, #0
	bl sub_080049D4
	movs r5, #1
	negs r5, r5
	ldr r4, [pc, #36]
	ldr r0, [r4, #0]
	bl sub_08316810
	adds r1, r0, #0
	adds r0, r5, #0
	bl sub_083191AC
	ldr r0, [r4, #0]
	cmp r0, #11
	bls .L0830E20C
	b .L0830E3D8
.L0830E20C:
	lsls r0, r0, #2
	ldr r1, [pc, #20]
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	movs r0, r0
	lsrs r2, r2, #20
	lsls r0, r0, #12
	ldr r0, [r7, r6]
	lsls r0, r0, #12
	strb r4, [r5, #21]
	lsls r0, r0, #8
	stmia r4!, {r4, r5, r7}
	lsrs r5, r7, #32
	ldr r0, [pc, #24]
	ldr r2, [r0, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #8]
	b .L0830E3CC
	movs r0, r0
	strb r4, [r5, #21]
	lsls r0, r0, #8
	stmia r3!, {r5, r6}
	lsrs r5, r7, #32
	ldr r0, [pc, #24]
	ldr r2, [r0, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #8]
	b .L0830E3CC
	movs r0, r0
	strb r4, [r5, #21]
	lsls r0, r0, #8
	stmia r3!, {r2, r3, r4, r5, r6}
	lsrs r5, r7, #32
	ldr r0, [pc, #24]
	ldr r2, [r0, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #8]
	b .L0830E3CC
	movs r0, r0
	strb r4, [r5, #21]
	lsls r0, r0, #8
	stmia r3!, {r3, r4, r7}
	lsrs r5, r7, #32
	ldr r0, [pc, #24]
	ldr r2, [r0, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #8]
	b .L0830E3CC
	movs r0, r0
	strb r4, [r5, #21]
	lsls r0, r0, #8
	stmia r3!, {r2, r4, r5, r7}
	lsrs r5, r7, #32
	ldr r0, [pc, #24]
	ldr r2, [r0, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #8]
	b .L0830E3CC
	movs r0, r0
	strb r4, [r5, #21]
	lsls r0, r0, #8
	stmia r3!, {r4, r6, r7}
	lsrs r5, r7, #32
	ldr r0, [pc, #24]
	ldr r2, [r0, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #8]
	b .L0830E3CC
	movs r0, r0
	strb r4, [r5, #21]
	lsls r0, r0, #8
	stmia r3!, {r2, r3, r5, r6, r7}
	lsrs r5, r7, #32
	ldr r0, [pc, #24]
	ldr r2, [r0, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #8]
	b .L0830E3CC
	movs r0, r0
	strb r4, [r5, #21]
	lsls r0, r0, #8
	stmia r4!, {r3}
	lsrs r5, r7, #32
	ldr r0, [pc, #24]
	ldr r2, [r0, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #8]
	b .L0830E3CC
	movs r0, r0
	strb r4, [r5, #21]
	lsls r0, r0, #8
	stmia r4!, {r2, r5}
	lsrs r5, r7, #32
	ldr r0, [pc, #24]
	ldr r2, [r0, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #8]
	b .L0830E3CC
	movs r0, r0
	strb r4, [r5, #21]
	lsls r0, r0, #8
	stmia r4!, {r6}
	lsrs r5, r7, #32
	ldr r0, [pc, #24]
	ldr r2, [r0, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #8]
	b .L0830E3CC
	movs r0, r0
	strb r4, [r5, #21]
	lsls r0, r0, #8
	stmia r4!, {r2, r3, r4, r6}
	lsrs r5, r7, #32
	ldr r0, [pc, #24]
	ldr r2, [r0, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #8]
	b .L0830E3CC
	movs r0, r0
	strb r4, [r5, #21]
	lsls r0, r0, #8
	stmia r4!, {r3, r4, r5, r6}
	lsrs r5, r7, #32
	ldr r0, [pc, #40]
	ldr r2, [r0, #0]
	movs r4, #216
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r3, [r0, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #32
	ldr r0, [pc, #24]
.L0830E3CC:
	ldmia r0!, {r2, r3, r4}
	stmia r1!, {r2, r3, r4}
	ldmia r0!, {r2, r3, r4}
	stmia r1!, {r2, r3, r4}
	ldr r0, [r0, #0]
	str r0, [r1, #0]
.L0830E3D8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x0200756C
	.4byte 0x083DC494
