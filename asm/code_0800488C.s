	.include "asm/macros.inc"
	.syntax unified
	.text

@ Text_PutChar: [likely] (nonmatching)
	.thumb
	.align 1, 0
	.global sub_0800488C
	.thumb_func
sub_0800488C:
	.global Text_PutChar
	.thumb_set Text_PutChar, sub_0800488C
	push {r4, r5, r6, lr}
	lsls r2, r2, #24
	lsrs r6, r2, #24
	ldr r2, [pc, #44]
	ldrb r2, [r2, #12]
	lsls r3, r2, #11
	movs r2, #192
	lsls r2, r2, #19
	adds r4, r3, r2
	lsls r1, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r4, r4, r0
	cmp r4, #0
	beq .L080048CA
	ldrh r0, [r4, #0]
	bl sub_08004BA4
	lsls r0, r0, #24
	cmp r0, #0
	beq .L080048C4
	ldrh r0, [r4, #0]
	bl Glyph_Free
	b .L080048CA
	movs r0, r0
	movs r4, #240
	lsls r0, r0, #12
.L080048C4:
	ldrh r0, [r4, #0]
	bl sub_0831AE58
.L080048CA:
	ldr r5, [pc, #40]
	ldr r1, [r5, #8]
	ldrb r0, [r1, #1]
	cmp r0, #0
	bne .L080048F8
	ldr r1, [r1, #12]
	adds r0, r6, #0
	bl sub_0831A7E8
	ldr r2, [r5, #8]
	ldr r1, [r2, #4]
	ldrh r2, [r2, #2]
	bl Glyph_Alloc
	lsls r0, r0, #16
	lsrs r0, r0, #16
	ldrb r5, [r5, #13]
	lsls r1, r5, #12
	orrs r0, r1
	b .L0800490A
	movs r0, r0
	movs r4, #240
	lsls r0, r0, #12
.L080048F8:
	ldr r1, [r1, #12]
	adds r0, r6, #0
	bl sub_0831A7E8
	ldr r2, [r5, #8]
	ldr r1, [r2, #4]
	ldrh r2, [r2, #2]
	bl sub_0831AE48
.L0800490A:
	strh r0, [r4, #0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
