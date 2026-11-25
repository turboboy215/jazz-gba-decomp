	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_082FF5C4
	.thumb_func
sub_082FF5C4:
	push {r4, lr}
	movs r0, #49
	bl sub_083189D0
	movs r0, #1
	movs r1, #192
	movs r2, #60
	bl Fade_Start
	b .L082FF5DC
.L082FF5D8:
	bl VBlankIntrWait
.L082FF5DC:
	bl Fade_IsBusy
	adds r4, r0, #0
	cmp r4, #0
	bne .L082FF5D8
	movs r0, #13
	movs r1, #0
	bl sub_08311C50
	ldr r0, [pc, #28]
	strh r4, [r0, #0]
	ldr r0, [pc, #28]
	strh r4, [r0, #0]
	ldr r0, [pc, #28]
	str r4, [r0, #64]
	str r4, [r0, #68]
	movs r0, #0
	movs r1, #192
	movs r2, #60
	bl Fade_Start
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x03000D14
	.4byte 0x03000D1C
	.4byte 0x0300250C

	.thumb
	.align 1, 0
	.global sub_082FF618
	.thumb_func
sub_082FF618:
	push {r4, lr}
	sub sp, #16
	bl sub_0831650C
	bl sub_0831654C
	bl sub_0831652C
	movs r0, #1
	add r1, sp, #12
	bl sub_082EA468
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082FF658
	ldr r1, [sp, #12]
	adds r0, r1, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082FF64E
	adds r0, r1, #0
	adds r0, #100
	movs r1, #5
	bl sub_08000680
	b .L082FF658
.L082FF64E:
	adds r0, r1, #0
	adds r0, #100
	movs r1, #4
	bl sub_08000680
.L082FF658:
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	movs r4, #0
	str r4, [sp, #0]
	movs r0, #60
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #40]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #60
	bl sub_08316178
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	movs r0, #8
	bl sub_083164C8
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #16
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x083D75F0
	.4byte 0x082FF6AD
