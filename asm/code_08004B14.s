	.include "asm/macros.inc"
	.syntax unified
	.text

@ Text_ParsePaletteTag: [sure] "{P<n>}" (nonmatching)
	.thumb
	.align 1, 0
	.global sub_08004B14
	.thumb_func
sub_08004B14:
	.global Text_ParsePaletteTag
	.thumb_set Text_ParsePaletteTag, sub_08004B14
	push {lr}
	sub sp, #12
	adds r2, r0, #0
	movs r3, #0
	ldrb r0, [r2, #0]
	cmp r0, #80
	beq .L08004B2A
	cmp r0, #112
	beq .L08004B2A
	movs r0, #0
	b .L08004B5E
.L08004B2A:
	ldrb r0, [r2, #0]
	adds r2, #1
	cmp r0, #125
	beq .L08004B48
	mov r0, sp
	adds r1, r3, r0
.L08004B36:
	ldrb r0, [r2, #0]
	strb r0, [r1, #0]
	adds r1, #1
	adds r3, #1
	lsls r0, r0, #24
	lsrs r0, r0, #24
	adds r2, #1
	cmp r0, #125
	bne .L08004B36
.L08004B48:
	subs r3, #1
	mov r0, sp
	adds r1, r0, r3
	movs r0, #0
	strb r0, [r1, #0]
	mov r0, sp
	bl sub_08004A8C
	ldr r1, [pc, #8]
	strb r0, [r1, #13]
	movs r0, #1
.L08004B5E:
	add sp, #12
	pop {r1}
	bx r1
	.4byte 0x030024F0
