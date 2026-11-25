	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_0830FDE0
	.thumb_func
sub_0830FDE0:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #12
	str r0, [sp, #4]
	mov sl, r1
	str r2, [sp, #8]
	mov r9, r3
	ldr r0, [pc, #456]
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq .L0830FDFE
	b .L0830FFB0
.L0830FDFE:
	ldr r0, [pc, #452]
	ldr r1, [sp, #4]
	str r1, [r0, #0]
	ldr r0, [pc, #448]
	mov r4, sl
	str r4, [r0, #0]
	ldr r0, [pc, #448]
	ldr r1, [sp, #8]
	str r1, [r0, #0]
	ldr r0, [pc, #444]
	str r3, [r0, #0]
	movs r0, #1
	ldr r1, [sp, #48]
	movs r2, #0
	bl Glyph_Alloc
	adds r3, r0, #0
	lsls r3, r3, #16
	lsrs r3, r3, #16
	ldr r4, [sp, #44]
	lsls r4, r4, #12
	str r4, [sp, #0]
	movs r0, #31
	ldr r1, [sp, #4]
	mov r2, sl
	bl sub_0830F78C
	movs r0, #1
	ldr r1, [sp, #48]
	movs r2, #0
	bl Glyph_Alloc
	adds r3, r0, #0
	lsls r3, r3, #16
	lsrs r3, r3, #16
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	adds r6, r0, r1
	movs r0, #128
	lsls r0, r0, #3
	orrs r0, r4
	str r0, [sp, #0]
	movs r0, #31
	adds r1, r6, #0
	mov r2, sl
	bl sub_0830F78C
	movs r0, #1
	ldr r1, [sp, #48]
	movs r2, #0
	bl Glyph_Alloc
	adds r3, r0, #0
	lsls r3, r3, #16
	lsrs r3, r3, #16
	mov r5, sl
	add r5, r9
	movs r0, #128
	lsls r0, r0, #4
	orrs r0, r4
	str r0, [sp, #0]
	movs r0, #31
	ldr r1, [sp, #4]
	adds r2, r5, #0
	bl sub_0830F78C
	movs r0, #1
	ldr r1, [sp, #48]
	movs r2, #0
	bl Glyph_Alloc
	adds r3, r0, #0
	lsls r3, r3, #16
	lsrs r3, r3, #16
	movs r0, #192
	lsls r0, r0, #4
	orrs r0, r4
	str r0, [sp, #0]
	movs r0, #31
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_0830F78C
	movs r7, #1
	mov r8, r4
	ldr r4, [sp, #8]
	cmp r7, r4
	bcs .L0830FED6
.L0830FEAE:
	movs r0, #2
	ldr r1, [sp, #48]
	movs r2, #0
	bl Glyph_Alloc
	adds r3, r0, #0
	lsls r3, r3, #16
	lsrs r3, r3, #16
	ldr r0, [sp, #4]
	adds r1, r0, r7
	mov r4, r8
	str r4, [sp, #0]
	movs r0, #31
	mov r2, sl
	bl sub_0830F78C
	adds r7, #1
	ldr r0, [sp, #8]
	cmp r7, r0
	bcc .L0830FEAE
.L0830FED6:
	movs r4, #1
	ldr r1, [sp, #8]
	cmp r4, r1
	bcs .L0830FF0C
	movs r7, #128
	lsls r7, r7, #4
	mov r0, r8
	orrs r7, r0
.L0830FEE6:
	movs r0, #2
	ldr r1, [sp, #48]
	movs r2, #0
	bl Glyph_Alloc
	adds r3, r0, #0
	lsls r3, r3, #16
	lsrs r3, r3, #16
	ldr r0, [sp, #4]
	adds r1, r0, r4
	str r7, [sp, #0]
	movs r0, #31
	adds r2, r5, #0
	bl sub_0830F78C
	adds r4, #1
	ldr r1, [sp, #8]
	cmp r4, r1
	bcc .L0830FEE6
.L0830FF0C:
	movs r5, #1
	cmp r5, r9
	bcs .L0830FF38
.L0830FF12:
	movs r0, #3
	ldr r1, [sp, #48]
	movs r2, #0
	bl Glyph_Alloc
	adds r3, r0, #0
	lsls r3, r3, #16
	lsrs r3, r3, #16
	mov r4, sl
	adds r2, r4, r5
	mov r0, r8
	str r0, [sp, #0]
	movs r0, #31
	ldr r1, [sp, #4]
	bl sub_0830F78C
	adds r5, #1
	cmp r5, r9
	bcc .L0830FF12
.L0830FF38:
	movs r5, #1
	cmp r5, r9
	bcs .L0830FF6A
	movs r4, #128
	lsls r4, r4, #3
	mov r1, r8
	orrs r4, r1
.L0830FF46:
	movs r0, #3
	ldr r1, [sp, #48]
	movs r2, #0
	bl Glyph_Alloc
	adds r3, r0, #0
	lsls r3, r3, #16
	lsrs r3, r3, #16
	mov r0, sl
	adds r2, r0, r5
	str r4, [sp, #0]
	movs r0, #31
	adds r1, r6, #0
	bl sub_0830F78C
	adds r5, #1
	cmp r5, r9
	bcc .L0830FF46
.L0830FF6A:
	movs r6, #1
	ldr r1, [sp, #8]
	cmp r6, r1
	bcs .L0830FFAA
.L0830FF72:
	movs r5, #1
	adds r7, r6, #1
	cmp r5, r9
	bcs .L0830FFA2
.L0830FF7A:
	movs r0, #4
	ldr r1, [sp, #48]
	movs r2, #0
	bl Glyph_Alloc
	adds r3, r0, #0
	lsls r3, r3, #16
	lsrs r3, r3, #16
	mov r4, sl
	adds r2, r4, r5
	mov r0, r8
	str r0, [sp, #0]
	movs r0, #31
	ldr r4, [sp, #4]
	adds r1, r4, r6
	bl sub_0830F78C
	adds r5, #1
	cmp r5, r9
	bcc .L0830FF7A
.L0830FFA2:
	adds r6, r7, #0
	ldr r0, [sp, #8]
	cmp r6, r0
	bcc .L0830FF72
.L0830FFAA:
	ldr r1, [pc, #20]
	movs r0, #1
	strb r0, [r1, #0]
.L0830FFB0:
	add sp, #12
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.4byte 0x030059C9
	.4byte 0x03003EE8
	.4byte 0x03003EEC
	.4byte 0x03003EF0
	.4byte 0x03003EF4

	.thumb
	.align 1, 0
	.global sub_0830FFD4
	.thumb_func
sub_0830FFD4:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r6, r0, #0
	adds r7, r1, #0
	mov r8, r2
	mov r9, r3
	ldr r5, [sp, #36]
	ldr r0, [pc, #48]
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L083100A8
	cmp r5, #18
	beq .L08310076
	adds r0, r5, #0
	subs r0, #16
	cmp r0, #1
	bhi .L08310034
	ldr r4, [pc, #32]
	ldr r1, [pc, #36]
	adds r0, r4, #0
	movs r2, #15
	movs r3, #0
	bl sub_080002E0
	cmp r5, #16
	bne .L08310028
	adds r0, r4, #0
	movs r1, #0
	movs r2, #4
	bl sub_0800073C
	b .L08310070
	movs r0, r0
	ldr r0, [r1, r7]
	lsls r0, r0, #12
	subs r4, #44
	lsls r0, r0, #12
	adds r4, #16
	lsrs r3, r1, #32
.L08310028:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #5
	bl sub_0800073C
	b .L08310070
.L08310034:
	cmp r5, #4
	bne .L08310064
	ldr r0, [pc, #28]
	ldr r0, [r0, #0]
	cmp r0, #23
	bne .L08310064
	ldr r4, [pc, #24]
	ldr r1, [pc, #28]
	adds r0, r4, #0
	movs r2, #4
	movs r3, #0
	bl sub_080002E0
	adds r0, r4, #0
	movs r1, #8
	bl sub_0800075C
	b .L08310070
	subs r7, #12
	lsls r0, r0, #12
	subs r4, #44
	lsls r0, r0, #12
	adds r4, #16
	lsrs r3, r1, #32
.L08310064:
	ldr r0, [pc, #88]
	ldr r1, [pc, #92]
	adds r2, r5, #0
	movs r3, #0
	bl sub_080002E0
.L08310070:
	ldr r0, [pc, #76]
	bl sub_08000604
.L08310076:
	ldr r0, [pc, #80]
	ldr r0, [r0, #0]
	str r0, [sp, #0]
	ldr r0, [pc, #76]
	ldr r0, [r0, #0]
	str r0, [sp, #4]
	adds r0, r6, #0
	adds r1, r7, #0
	mov r2, r8
	mov r3, r9
	bl sub_0830FDE0
	cmp r5, #18
	beq .L083100A2
	ldr r0, [pc, #44]
	lsls r1, r6, #3
	adds r1, #6
	lsls r2, r7, #3
	adds r2, #6
	movs r3, #30
	bl sub_08000684
.L083100A2:
	ldr r1, [pc, #44]
	movs r0, #1
	strb r0, [r1, #0]
.L083100A8:
	cmp r5, #18
	beq .L083100B2
	ldr r0, [pc, #16]
	bl Sprite_Draw
.L083100B2:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.4byte 0x03003C2C
	.4byte 0x080B3410
	.4byte 0x030059D4
	.4byte 0x030059D8
	.4byte 0x030059C8
