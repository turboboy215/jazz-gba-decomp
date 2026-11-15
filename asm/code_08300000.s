	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_08300004
	.thumb_func
sub_08300004:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	bl sub_0831652C
	movs r0, #18
	str r0, [sp, #0]
	movs r0, #120
	str r0, [sp, #4]
	movs r4, #0
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #3
	bl sub_0831628C
	ldr r2, [pc, #32]
	str r4, [sp, #0]
	movs r0, #3
	movs r1, #2
	movs r3, #120
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x083D7960

	.thumb
	.align 1, 0
	.global sub_08300054
	.thumb_func
sub_08300054:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	bl sub_0831652C
	movs r0, #18
	str r0, [sp, #0]
	movs r0, #160
	str r0, [sp, #4]
	movs r4, #0
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #32]
	str r4, [sp, #0]
	movs r0, #3
	movs r1, #2
	movs r3, #160
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x083D797C

	.thumb
	.align 1, 0
	.global sub_083000A4
	.thumb_func
sub_083000A4:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	bl sub_0831652C
	movs r0, #18
	str r0, [sp, #0]
	movs r0, #120
	str r0, [sp, #4]
	movs r4, #0
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #3
	bl sub_0831628C
	ldr r2, [pc, #32]
	str r4, [sp, #0]
	movs r0, #3
	movs r1, #2
	movs r3, #120
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x083D79A8

	.thumb
	.align 1, 0
	.global sub_083000F4
	.thumb_func
sub_083000F4:
	push {r4, lr}
	movs r0, #49
	bl sub_083189D0
	movs r0, #1
	movs r1, #192
	movs r2, #60
	bl Fade_Start
	b .L0830010C
.L08300108:
	bl VBlankIntrWait
.L0830010C:
	bl Fade_IsBusy
	adds r4, r0, #0
	cmp r4, #0
	bne .L08300108
	movs r0, #7
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
	.global sub_08300148
	.thumb_func
sub_08300148:
	push {r4, lr}
	movs r0, #49
	bl sub_083189D0
	movs r0, #1
	movs r1, #192
	movs r2, #60
	bl Fade_Start
	b .L08300160
.L0830015C:
	bl VBlankIntrWait
.L08300160:
	bl Fade_IsBusy
	adds r4, r0, #0
	cmp r4, #0
	bne .L0830015C
	movs r0, #8
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
	.global sub_0830019C
	.thumb_func
sub_0830019C:
	push {r4, r5, lr}
	sub sp, #4
	bl sub_0831650C
	bl sub_0831654C
	ldr r0, [pc, #84]
	movs r1, #0
	strh r1, [r0, #0]
	ldr r0, [pc, #84]
	strh r1, [r0, #0]
	ldr r0, [pc, #84]
	str r1, [r0, #64]
	str r1, [r0, #68]
	movs r0, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	movs r5, #1
	negs r5, r5
	movs r4, #1
	str r4, [sp, #0]
	movs r0, #60
	movs r1, #8
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #61
	movs r1, #8
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #62
	movs r1, #7
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	ldr r0, [pc, #24]
	bl sub_08316500
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.4byte 0x03000D14
	.4byte 0x03000D1C
	.4byte 0x0300250C
	.4byte 0x08300211

	.thumb
	.align 1, 0
	.global sub_08300210
	.thumb_func
sub_08300210:
	push {r4, r5, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	movs r5, #1
	negs r5, r5
	movs r4, #1
	str r4, [sp, #0]
	movs r0, #60
	movs r1, #8
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #61
	movs r1, #8
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #62
	movs r1, #7
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	movs r4, #0
	str r4, [sp, #0]
	movs r0, #90
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
	movs r3, #90
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4, r5}
	pop {r0}
	bx r0
	.4byte 0x083D79CC
	.4byte 0x083002A1

	.thumb
	.align 1, 0
	.global sub_083002A0
	.thumb_func
sub_083002A0:
	push {r4, r5, lr}
	sub sp, #4
	bl sub_0831650C
	bl sub_0831654C
	ldr r0, [pc, #72]
	movs r1, #0
	movs r2, #60
	movs r3, #0
	bl sub_08316308
	movs r5, #1
	negs r5, r5
	movs r4, #1
	str r4, [sp, #0]
	movs r0, #60
	movs r1, #8
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #61
	movs r1, #8
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #62
	movs r1, #7
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0xFFFFFE84
	.4byte 0x08300301

	.thumb
	.align 1, 0
	.global sub_08300300
	.thumb_func
sub_08300300:
	push {r4, r5, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	movs r5, #1
	negs r5, r5
	movs r4, #1
	str r4, [sp, #0]
	movs r0, #60
	movs r1, #8
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #61
	movs r1, #8
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #62
	movs r1, #7
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	movs r0, #17
	str r0, [sp, #0]
	movs r0, #90
	str r0, [sp, #4]
	movs r4, #0
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
	movs r3, #90
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D79EC
	.4byte 0x08300395

	.thumb
	.align 1, 0
	.global sub_08300394
	.thumb_func
sub_08300394:
	push {r4, r5, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	movs r5, #1
	negs r5, r5
	movs r4, #1
	str r4, [sp, #0]
	movs r0, #60
	movs r1, #8
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #61
	movs r1, #8
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #62
	movs r1, #7
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	movs r0, #17
	str r0, [sp, #0]
	movs r0, #180
	str r0, [sp, #4]
	movs r4, #0
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
	movs r3, #180
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D7A14
	.4byte 0x08300429

	.thumb
	.align 1, 0
	.global sub_08300428
	.thumb_func
sub_08300428:
	push {r4, r5, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	movs r5, #1
	negs r5, r5
	movs r4, #1
	str r4, [sp, #0]
	movs r0, #60
	movs r1, #8
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #61
	movs r1, #8
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #62
	movs r1, #7
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	movs r0, #17
	str r0, [sp, #0]
	movs r0, #200
	str r0, [sp, #4]
	movs r4, #0
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #5
	bl sub_0831628C
	ldr r2, [pc, #40]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #200
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D7A4C
	.4byte 0x083004BD

	.thumb
	.align 1, 0
	.global sub_083004BC
	.thumb_func
sub_083004BC:
	push {r4, r5, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	movs r5, #1
	negs r5, r5
	movs r4, #1
	str r4, [sp, #0]
	movs r0, #60
	movs r1, #8
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #61
	movs r1, #8
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #62
	movs r1, #7
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	movs r0, #17
	str r0, [sp, #0]
	movs r0, #180
	str r0, [sp, #4]
	movs r4, #0
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
	movs r3, #180
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D7A94
	.4byte 0x08300551

	.thumb
	.align 1, 0
	.global sub_08300550
	.thumb_func
sub_08300550:
	push {r4, r5, lr}
	sub sp, #4
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #150
	lsls r0, r0, #1
	movs r1, #0
	movs r2, #30
	movs r3, #0
	bl sub_08316308
	movs r5, #1
	negs r5, r5
	movs r4, #1
	str r4, [sp, #0]
	movs r0, #60
	movs r1, #8
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #61
	movs r1, #8
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #62
	movs r1, #7
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	ldr r0, [pc, #12]
	bl sub_08316500
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.4byte 0x083005AD

	.thumb
	.align 1, 0
	.global sub_083005AC
	.thumb_func
sub_083005AC:
	push {r4, r5, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	movs r5, #1
	negs r5, r5
	movs r4, #1
	str r4, [sp, #0]
	movs r0, #60
	movs r1, #8
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #61
	movs r1, #8
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #62
	movs r1, #7
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	movs r4, #0
	str r4, [sp, #0]
	movs r0, #180
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
	movs r3, #180
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4, r5}
	pop {r0}
	bx r0
	.4byte 0x083D7ABC
	.4byte 0x0830063D

	.thumb
	.align 1, 0
	.global sub_0830063C
	.thumb_func
sub_0830063C:
	push {r4, r5, lr}
	sub sp, #4
	bl sub_0831650C
	bl sub_0831654C
	ldr r0, [pc, #72]
	movs r1, #0
	movs r2, #30
	movs r3, #0
	bl sub_08316308
	movs r5, #1
	negs r5, r5
	movs r4, #1
	str r4, [sp, #0]
	movs r0, #60
	movs r1, #8
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #61
	movs r1, #8
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #62
	movs r1, #8
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0xFFFFFED4
	.4byte 0x0830069D

	.thumb
	.align 1, 0
	.global sub_0830069C
	.thumb_func
sub_0830069C:
	push {r4, lr}
	sub sp, #4
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	movs r4, #15
	str r4, [sp, #0]
	movs r0, #60
	movs r1, #38
	movs r2, #0
	movs r3, #3
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #61
	movs r1, #38
	movs r2, #0
	movs r3, #3
	bl sub_083160FC
	movs r2, #1
	negs r2, r2
	movs r0, #1
	str r0, [sp, #0]
	movs r0, #62
	movs r1, #8
	movs r3, #1
	bl sub_083160FC
	ldr r0, [pc, #12]
	bl sub_08316500
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083006F9

	.thumb
	.align 1, 0
	.global sub_083006F8
	.thumb_func
sub_083006F8:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	bl sub_0831652C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	movs r2, #1
	negs r2, r2
	movs r0, #1
	str r0, [sp, #0]
	movs r0, #62
	movs r1, #8
	movs r3, #1
	bl sub_083160FC
	movs r0, #17
	str r0, [sp, #0]
	movs r0, #60
	str r0, [sp, #4]
	movs r4, #0
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
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x083D7AE0
	.4byte 0x08300771

	.thumb
	.align 1, 0
	.global sub_08300770
	.thumb_func
sub_08300770:
	push {r4, r5, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	bl sub_0831652C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	movs r5, #1
	negs r5, r5
	movs r4, #1
	str r4, [sp, #0]
	movs r0, #60
	movs r1, #8
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #61
	movs r1, #8
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #62
	movs r1, #7
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	movs r0, #17
	str r0, [sp, #0]
	movs r0, #180
	str r0, [sp, #4]
	movs r4, #0
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
	movs r3, #180
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D7AEC
	.4byte 0x08300809

	.thumb
	.align 1, 0
	.global sub_08300808
	.thumb_func
sub_08300808:
	push {r4, lr}
	sub sp, #4
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #80
	movs r1, #0
	movs r2, #30
	movs r3, #0
	bl sub_08316308
	movs r4, #60
	str r4, [sp, #0]
	movs r0, #60
	movs r1, #1
	movs r2, #0
	movs r3, #3
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #61
	movs r1, #1
	movs r2, #0
	movs r3, #3
	bl sub_083160FC
	movs r2, #1
	negs r2, r2
	movs r0, #1
	str r0, [sp, #0]
	movs r0, #62
	movs r1, #8
	movs r3, #1
	bl sub_083160FC
	ldr r0, [pc, #12]
	bl sub_08316500
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x08300865

	.thumb
	.align 1, 0
	.global sub_08300864
	.thumb_func
sub_08300864:
	push {lr}
	sub sp, #4
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #240
	movs r1, #0
	movs r2, #60
	movs r3, #0
	bl sub_08316308
	movs r0, #60
	mov r1, sp
	bl sub_082EA468
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08300890
	ldr r1, [sp, #0]
	movs r0, #0
	strb r0, [r1, #1]
.L08300890:
	movs r0, #61
	mov r1, sp
	bl sub_082EA468
	lsls r0, r0, #24
	cmp r0, #0
	beq .L083008A4
	ldr r1, [sp, #0]
	movs r0, #0
	strb r0, [r1, #1]
.L083008A4:
	movs r0, #62
	mov r1, sp
	bl sub_082EA468
	lsls r0, r0, #24
	cmp r0, #0
	beq .L083008BA
	ldr r0, [sp, #0]
	adds r0, #90
	movs r1, #20
	strh r1, [r0, #0]
.L083008BA:
	add sp, #4
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_083008C0
	.thumb_func
sub_083008C0:
	push {lr}
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #130
	bl sub_08316098
	ldr r0, [pc, #8]
	bl sub_08316500
	pop {r0}
	bx r0
	.4byte 0x083008F1

	.thumb
	.align 1, 0
	.global sub_083008F0
	.thumb_func
sub_083008F0:
	push {lr}
	sub sp, #4
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	movs r0, #60
	str r0, [sp, #0]
	movs r0, #1
	movs r1, #46
	movs r2, #0
	movs r3, #2
	bl sub_083160FC
	ldr r0, [pc, #8]
	bl sub_08316500
	add sp, #4
	pop {r0}
	bx r0
	.4byte 0x08300929

	.thumb
	.align 1, 0
	.global sub_08300928
	.thumb_func
sub_08300928:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	movs r2, #1
	negs r2, r2
	movs r0, #1
	str r0, [sp, #0]
	movs r1, #46
	movs r3, #0
	bl sub_083160FC
	movs r0, #13
	str r0, [sp, #0]
	movs r0, #60
	str r0, [sp, #4]
	movs r4, #0
	str r4, [sp, #8]
	movs r0, #2
	movs r1, #1
	movs r2, #21
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #32]
	str r4, [sp, #0]
	movs r0, #7
	movs r1, #2
	movs r3, #60
	bl sub_08316178
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	movs r0, #8
	bl sub_083164C8
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x083D7B10

	.thumb
	.align 1, 0
	.global sub_08300990
	.thumb_func
sub_08300990:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	movs r4, #0
	str r4, [sp, #0]
	movs r0, #180
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
	movs r3, #180
	bl sub_08316178
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	movs r0, #8
	bl sub_083164C8
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x083D7B20
	.4byte 0x083009F1

	.thumb
	.align 1, 0
	.global sub_083009F0
	.thumb_func
sub_083009F0:
	push {lr}
	movs r0, #1
	movs r1, #192
	movs r2, #60
	bl Fade_Start
	b .L08300A02
.L083009FE:
	bl VBlankIntrWait
.L08300A02:
	bl Fade_IsBusy
	cmp r0, #0
	bne .L083009FE
	movs r0, #1
	bl sub_083100D4
	bl sub_08304AAC
	ldr r0, [pc, #60]
	ldrb r0, [r0, #0]
	cmp r0, #3
	bhi .L08300A2C
	bl sub_083152BC
	adds r1, r0, #0
	ldrb r0, [r1, #1]
	cmp r0, #0
	bne .L08300A2C
	movs r0, #1
	strb r0, [r1, #1]
.L08300A2C:
	movs r0, #9
	movs r1, #0
	bl sub_08311C50
	ldr r0, [pc, #32]
	movs r1, #0
	strh r1, [r0, #0]
	ldr r0, [pc, #32]
	strh r1, [r0, #0]
	ldr r0, [pc, #32]
	str r1, [r0, #64]
	str r1, [r0, #68]
	movs r0, #0
	movs r1, #192
	movs r2, #60
	bl Fade_Start
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x0200755C
	.4byte 0x03000D14
	.4byte 0x03000D1C
	.4byte 0x0300250C

	.thumb
	.align 1, 0
	.global sub_08300A64
	.thumb_func
sub_08300A64:
	push {lr}
	movs r0, #49
	bl sub_083189D0
	movs r0, #1
	movs r1, #192
	movs r2, #60
	bl Fade_Start
	b .L08300A7C
.L08300A78:
	bl VBlankIntrWait
.L08300A7C:
	bl Fade_IsBusy
	cmp r0, #0
	bne .L08300A78
	ldr r0, [pc, #16]
	ldr r0, [r0, #0]
	cmp r0, #9
	beq .L08300AAA
	cmp r0, #9
	bhi .L08300A9C
	cmp r0, #4
	beq .L08300AA6
	b .L08300AC0
	movs r0, r0
	subs r7, #12
	lsls r0, r0, #12
.L08300A9C:
	cmp r0, #14
	beq .L08300AAE
	cmp r0, #19
	beq .L08300AB8
	b .L08300AC0
.L08300AA6:
	movs r0, #5
	b .L08300AB0
.L08300AAA:
	movs r0, #10
	b .L08300AB0
.L08300AAE:
	movs r0, #15
.L08300AB0:
	movs r1, #0
	bl sub_08311C50
	b .L08300AC0
.L08300AB8:
	movs r0, #20
	movs r1, #0
	bl sub_08311C50
.L08300AC0:
	ldr r0, [pc, #28]
	movs r1, #0
	strh r1, [r0, #0]
	ldr r0, [pc, #28]
	strh r1, [r0, #0]
	ldr r0, [pc, #28]
	str r1, [r0, #64]
	str r1, [r0, #68]
	movs r0, #0
	movs r1, #192
	movs r2, #60
	bl Fade_Start
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x03000D14
	.4byte 0x03000D1C
	.4byte 0x0300250C

	.thumb
	.align 1, 0
	.global sub_08300AEC
	.thumb_func
sub_08300AEC:
	push {r4, lr}
	bl sub_0831654C
	bl sub_0831650C
	movs r0, #0
	movs r1, #0
	bl sub_082FB6D8
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #35
	bl sub_08316098
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #80
	bl sub_08316098
	ldr r4, [pc, #56]
	ldr r0, [r4, #0]
	cmp r0, #4
	bne .L08300B24
	ldr r0, [pc, #52]
	bl sub_08316500
.L08300B24:
	ldr r0, [r4, #0]
	cmp r0, #9
	bne .L08300B30
	ldr r0, [pc, #44]
	bl sub_08316500
.L08300B30:
	ldr r0, [r4, #0]
	cmp r0, #14
	bne .L08300B3C
	ldr r0, [pc, #36]
	bl sub_08316500
.L08300B3C:
	ldr r0, [r4, #0]
	cmp r0, #19
	bne .L08300B48
	ldr r0, [pc, #28]
	bl sub_08316500
.L08300B48:
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x03003F0C
	.4byte 0x08300B65
	.4byte 0x08301099
	.4byte 0x083013CD
	.4byte 0x08301941

	.thumb
	.align 1, 0
	.global sub_08300B64
	.thumb_func
sub_08300B64:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #2
	str r0, [sp, #0]
	movs r0, #90
	str r0, [sp, #4]
	movs r4, #0
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #48]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #90
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #24]
	adds r0, #90
	movs r1, #1
	strh r1, [r0, #0]
	ldr r0, [pc, #20]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D7B4C
	.4byte 0x0300250C
	.4byte 0x08300BC9

	.thumb
	.align 1, 0
	.global sub_08300BC8
	.thumb_func
sub_08300BC8:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #4
	str r0, [sp, #0]
	movs r0, #160
	str r0, [sp, #4]
	movs r4, #0
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
	movs r3, #160
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D7B74
	.4byte 0x08300C21

	.thumb
	.align 1, 0
	.global sub_08300C20
	.thumb_func
sub_08300C20:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #4
	str r0, [sp, #0]
	movs r0, #160
	str r0, [sp, #4]
	movs r4, #0
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
	movs r3, #160
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D7BB0
	.4byte 0x08300C79

	.thumb
	.align 1, 0
	.global sub_08300C78
	.thumb_func
sub_08300C78:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #2
	str r0, [sp, #0]
	movs r0, #60
	str r0, [sp, #4]
	movs r4, #0
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
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D7BE4
	.4byte 0x08300CD1

	.thumb
	.align 1, 0
	.global sub_08300CD0
	.thumb_func
sub_08300CD0:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #4
	str r0, [sp, #0]
	movs r0, #180
	str r0, [sp, #4]
	movs r4, #0
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
	movs r3, #180
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D7BF4
	.4byte 0x08300D29

	.thumb
	.align 1, 0
	.global sub_08300D28
	.thumb_func
sub_08300D28:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #4
	str r0, [sp, #0]
	movs r0, #120
	str r0, [sp, #4]
	movs r4, #0
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
	movs r3, #120
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D7C30
	.4byte 0x08300D81

	.thumb
	.align 1, 0
	.global sub_08300D80
	.thumb_func
sub_08300D80:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #2
	str r0, [sp, #0]
	movs r0, #60
	str r0, [sp, #4]
	movs r4, #0
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
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D7C60
	.4byte 0x08300DD9

	.thumb
	.align 1, 0
	.global sub_08300DD8
	.thumb_func
sub_08300DD8:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #4
	str r0, [sp, #0]
	movs r0, #180
	str r0, [sp, #4]
	movs r4, #0
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
	movs r3, #180
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D7C68
	.4byte 0x08300E31

	.thumb
	.align 1, 0
	.global sub_08300E30
	.thumb_func
sub_08300E30:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #4
	str r0, [sp, #0]
	movs r0, #160
	str r0, [sp, #4]
	movs r4, #0
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
	movs r3, #160
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D7CA4
	.4byte 0x08300E89

	.thumb
	.align 1, 0
	.global sub_08300E88
	.thumb_func
sub_08300E88:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #2
	str r0, [sp, #0]
	movs r0, #180
	str r0, [sp, #4]
	movs r4, #0
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
	movs r3, #180
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D7CE4
	.4byte 0x08300EE1

	.thumb
	.align 1, 0
	.global sub_08300EE0
	.thumb_func
sub_08300EE0:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #4
	str r0, [sp, #0]
	movs r0, #90
	str r0, [sp, #4]
	movs r4, #0
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
	movs r3, #90
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D7D10
	.4byte 0x08300F39

	.thumb
	.align 1, 0
	.global sub_08300F38
	.thumb_func
sub_08300F38:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #4
	str r0, [sp, #0]
	movs r0, #180
	str r0, [sp, #4]
	movs r4, #0
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
	movs r3, #180
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D7D30
	.4byte 0x08300F91

	.thumb
	.align 1, 0
	.global sub_08300F90
	.thumb_func
sub_08300F90:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #4
	str r0, [sp, #0]
	movs r0, #60
	str r0, [sp, #4]
	movs r4, #0
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
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D7D70
	.4byte 0x08300FE9

	.thumb
	.align 1, 0
	.global sub_08300FE8
	.thumb_func
sub_08300FE8:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #2
	str r0, [sp, #0]
	movs r0, #120
	str r0, [sp, #4]
	movs r4, #0
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
	movs r3, #120
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D7D80
	.4byte 0x08301041

	.thumb
	.align 1, 0
	.global sub_08301040
	.thumb_func
sub_08301040:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #4
	str r0, [sp, #0]
	movs r0, #220
	str r0, [sp, #4]
	movs r4, #0
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #5
	bl sub_0831628C
	ldr r2, [pc, #40]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #220
	bl sub_08316178
	ldr r0, [pc, #32]
	adds r0, #90
	movs r1, #255
	strh r1, [r0, #0]
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x083D7DA4
	.4byte 0x0300250C

	.thumb
	.align 1, 0
	.global sub_08301098
	.thumb_func
sub_08301098:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #11
	str r0, [sp, #0]
	movs r0, #60
	str r0, [sp, #4]
	movs r4, #0
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
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D7DEC
	.4byte 0x083010F1

	.thumb
	.align 1, 0
	.global sub_083010F0
	.thumb_func
sub_083010F0:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #11
	str r0, [sp, #0]
	movs r0, #120
	str r0, [sp, #4]
	movs r4, #0
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
	movs r3, #120
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D7E00
	.4byte 0x08301149

	.thumb
	.align 1, 0
	.global sub_08301148
	.thumb_func
sub_08301148:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #11
	str r0, [sp, #0]
	movs r0, #120
	str r0, [sp, #4]
	movs r4, #0
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
	movs r3, #120
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D7E24
	.4byte 0x083011A1

	.thumb
	.align 1, 0
	.global sub_083011A0
	.thumb_func
sub_083011A0:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #11
	str r0, [sp, #0]
	movs r0, #220
	str r0, [sp, #4]
	movs r4, #0
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #5
	bl sub_0831628C
	ldr r2, [pc, #40]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #220
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D7E44
	.4byte 0x083011F9

	.thumb
	.align 1, 0
	.global sub_083011F8
	.thumb_func
sub_083011F8:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #11
	str r0, [sp, #0]
	movs r0, #220
	str r0, [sp, #4]
	movs r4, #0
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #5
	bl sub_0831628C
	ldr r2, [pc, #40]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #220
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D7E94
	.4byte 0x08301251

	.thumb
	.align 1, 0
	.global sub_08301250
	.thumb_func
sub_08301250:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r4, #0
	str r4, [sp, #0]
	movs r0, #180
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
	movs r3, #180
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x083D7EE4
	.4byte 0x083012A5

	.thumb
	.align 1, 0
	.global sub_083012A4
	.thumb_func
sub_083012A4:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r4, #0
	str r4, [sp, #0]
	movs r0, #180
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
	movs r3, #180
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x083D7F24
	.4byte 0x083012F9

	.thumb
	.align 1, 0
	.global sub_083012F8
	.thumb_func
sub_083012F8:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #11
	str r0, [sp, #0]
	movs r0, #180
	str r0, [sp, #4]
	movs r4, #0
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
	movs r3, #180
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D7F60
	.4byte 0x08301351

	.thumb
	.align 1, 0
	.global sub_08301350
	.thumb_func
sub_08301350:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #11
	str r0, [sp, #0]
	movs r0, #120
	str r0, [sp, #4]
	movs r4, #0
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
	movs r3, #120
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D7F9C
	.4byte 0x083013A9
	.4byte 0x00004770
	.4byte 0x00004770
	.4byte 0x00004770
	.4byte 0x00004770
	.4byte 0x00004770
	.4byte 0x00004770
	.4byte 0x00004770
	.4byte 0x00004770
	.4byte 0x00004770

	.thumb
	.align 1, 0
	.global sub_083013CC
	.thumb_func
sub_083013CC:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #13
	str r0, [sp, #0]
	movs r0, #120
	str r0, [sp, #4]
	movs r4, #0
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
	movs r3, #120
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D7FC0
	.4byte 0x08301425

	.thumb
	.align 1, 0
	.global sub_08301424
	.thumb_func
sub_08301424:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #9
	str r0, [sp, #0]
	movs r0, #120
	str r0, [sp, #4]
	movs r4, #0
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
	movs r3, #120
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D7FE4
	.4byte 0x0830147D

	.thumb
	.align 1, 0
	.global sub_0830147C
	.thumb_func
sub_0830147C:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #1
	str r0, [sp, #0]
	movs r0, #180
	str r0, [sp, #4]
	movs r4, #0
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
	movs r3, #180
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D800C
	.4byte 0x083014D5

	.thumb
	.align 1, 0
	.global sub_083014D4
	.thumb_func
sub_083014D4:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #10
	str r0, [sp, #0]
	movs r0, #60
	str r0, [sp, #4]
	movs r4, #0
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
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D8040
	.4byte 0x0830152D

	.thumb
	.align 1, 0
	.global sub_0830152C
	.thumb_func
sub_0830152C:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #1
	str r0, [sp, #0]
	movs r0, #180
	str r0, [sp, #4]
	movs r4, #0
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
	movs r3, #180
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D8054
	.4byte 0x08301585

	.thumb
	.align 1, 0
	.global sub_08301584
	.thumb_func
sub_08301584:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #1
	str r0, [sp, #0]
	movs r0, #120
	str r0, [sp, #4]
	movs r4, #0
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
	movs r3, #120
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D808C
	.4byte 0x083015DD

	.thumb
	.align 1, 0
	.global sub_083015DC
	.thumb_func
sub_083015DC:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #9
	str r0, [sp, #0]
	movs r0, #180
	str r0, [sp, #4]
	movs r4, #0
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
	movs r3, #180
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D80B4
	.4byte 0x08301635

	.thumb
	.align 1, 0
	.global sub_08301634
	.thumb_func
sub_08301634:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #8
	str r0, [sp, #0]
	movs r0, #120
	str r0, [sp, #4]
	movs r4, #0
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
	movs r3, #120
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D80EC
	.4byte 0x0830168D

	.thumb
	.align 1, 0
	.global sub_0830168C
	.thumb_func
sub_0830168C:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #1
	str r0, [sp, #0]
	movs r0, #60
	str r0, [sp, #4]
	movs r4, #0
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
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D8114
	.4byte 0x083016E5

	.thumb
	.align 1, 0
	.global sub_083016E4
	.thumb_func
sub_083016E4:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #1
	str r0, [sp, #0]
	movs r0, #180
	str r0, [sp, #4]
	movs r4, #0
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
	movs r3, #180
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D812C
	.4byte 0x0830173D

	.thumb
	.align 1, 0
	.global sub_0830173C
	.thumb_func
sub_0830173C:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #10
	str r0, [sp, #0]
	movs r0, #120
	str r0, [sp, #4]
	movs r4, #0
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
	movs r3, #120
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D8154
	.4byte 0x08301795

	.thumb
	.align 1, 0
	.global sub_08301794
	.thumb_func
sub_08301794:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #1
	str r0, [sp, #0]
	movs r0, #180
	str r0, [sp, #4]
	movs r4, #0
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
	movs r3, #180
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D8170
	.4byte 0x083017ED

	.thumb
	.align 1, 0
	.global sub_083017EC
	.thumb_func
sub_083017EC:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #1
	str r0, [sp, #0]
	movs r0, #60
	str r0, [sp, #4]
	movs r4, #0
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
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D81AC
	.4byte 0x08301845

	.thumb
	.align 1, 0
	.global sub_08301844
	.thumb_func
sub_08301844:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #8
	str r0, [sp, #0]
	movs r0, #180
	str r0, [sp, #4]
	movs r4, #0
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
	movs r3, #180
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D81C4
	.4byte 0x0830189D

	.thumb
	.align 1, 0
	.global sub_0830189C
	.thumb_func
sub_0830189C:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #9
	str r0, [sp, #0]
	movs r0, #220
	str r0, [sp, #4]
	movs r4, #0
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #5
	bl sub_0831628C
	ldr r2, [pc, #40]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #220
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D81F0
	.4byte 0x083018F5

	.thumb
	.align 1, 0
	.global sub_083018F4
	.thumb_func
sub_083018F4:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #14
	str r0, [sp, #0]
	movs r0, #60
	str r0, [sp, #4]
	movs r4, #0
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #32]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #60
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x083D823C

	.thumb
	.align 1, 0
	.global sub_08301940
	.thumb_func
sub_08301940:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #11
	str r0, [sp, #0]
	movs r0, #100
	str r0, [sp, #4]
	movs r4, #0
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
	movs r3, #100
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D824C
	.4byte 0x08301999

	.thumb
	.align 1, 0
	.global sub_08301998
	.thumb_func
sub_08301998:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #11
	str r0, [sp, #0]
	movs r0, #120
	str r0, [sp, #4]
	movs r4, #0
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
	movs r3, #120
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D8274
	.4byte 0x083019F1

	.thumb
	.align 1, 0
	.global sub_083019F0
	.thumb_func
sub_083019F0:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #11
	str r0, [sp, #0]
	movs r0, #180
	str r0, [sp, #4]
	movs r4, #0
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
	movs r3, #180
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D829C
	.4byte 0x08301A49

	.thumb
	.align 1, 0
	.global sub_08301A48
	.thumb_func
sub_08301A48:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #11
	str r0, [sp, #0]
	movs r0, #240
	str r0, [sp, #4]
	movs r4, #0
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #5
	bl sub_0831628C
	ldr r2, [pc, #40]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #240
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D82D4
	.4byte 0x08301AA1

	.thumb
	.align 1, 0
	.global sub_08301AA0
	.thumb_func
sub_08301AA0:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #11
	str r0, [sp, #0]
	movs r0, #180
	str r0, [sp, #4]
	movs r4, #0
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
	movs r3, #180
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D831C
	.4byte 0x08301AF9

	.thumb
	.align 1, 0
	.global sub_08301AF8
	.thumb_func
sub_08301AF8:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #11
	str r0, [sp, #0]
	movs r0, #180
	str r0, [sp, #4]
	movs r4, #0
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
	movs r3, #180
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D8350
	.4byte 0x08301B51

	.thumb
	.align 1, 0
	.global sub_08301B50
	.thumb_func
sub_08301B50:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #11
	str r0, [sp, #0]
	movs r0, #180
	str r0, [sp, #4]
	movs r4, #0
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #32]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #180
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x083D838C

	.thumb
	.align 1, 0
	.global sub_08301B9C
	.thumb_func
sub_08301B9C:
	push {r4, r5, lr}
	movs r3, #0
	ldr r5, [pc, #24]
	ldr r4, [pc, #28]
	adds r2, r0, #0
.L08301BA6:
	ldr r0, [r4, #0]
	adds r0, r0, r3
	ldrb r1, [r2, #0]
	adds r2, #1
	strb r1, [r0, #0]
	adds r3, #1
	cmp r3, r5
	bls .L08301BA6
	pop {r4, r5}
	pop {r0}
	bx r0
	.4byte 0x0001FFFF
	.4byte 0x030058F4

	.thumb
	.align 1, 0
	.global sub_08301BC4
	.thumb_func
sub_08301BC4:
	push {lr}
	ldr r1, [pc, #12]
	ldr r1, [r1, #0]
	bl LZ77UnCompWram
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x030058F4

	.thumb
	.align 1, 0
	.global sub_08301BD8
	.thumb_func
sub_08301BD8:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #12
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, [pc, #388]
	movs r7, #0
	str r7, [r0, #0]
	ldr r0, [pc, #388]
	str r7, [r0, #0]
	ldr r0, [pc, #388]
	mov r9, r0
	ldr r1, [pc, #388]
	mov sl, r1
	movs r0, #76
	adds r1, r2, #0
	muls r1, r0
	mov r8, r1
	mov r0, r8
	add r0, sl
	adds r0, #45
	ldrb r2, [r0, #0]
	mov r0, r9
	movs r1, #1
	bl sub_080012F4
	mov r0, sl
	adds r0, #32
	add r0, r8
	ldr r2, [r0, #0]
	mov r0, r9
	movs r1, #1
	bl sub_08001314
	ldr r6, [pc, #348]
	mov r0, r9
	ldr r1, [r0, #8]
	ldr r0, [r1, #0]
	lsls r0, r0, #3
	subs r0, #240
	str r0, [r6, #24]
	ldr r0, [r1, #4]
	lsls r0, r0, #3
	subs r0, #208
	str r0, [r6, #28]
	str r7, [r6, #32]
	str r7, [r6, #36]
	subs r4, #120
	str r4, [r6, #8]
	subs r5, #80
	str r5, [r6, #12]
	cmp r4, #0
	bge .L08301C4A
	str r7, [r6, #8]
.L08301C4A:
	ldr r0, [r6, #8]
	ldr r1, [r6, #24]
	cmp r0, r1
	ble .L08301C54
	str r1, [r6, #8]
.L08301C54:
	ldr r0, [r6, #12]
	ldr r1, [r6, #36]
	cmp r0, r1
	bge .L08301C5E
	str r1, [r6, #12]
.L08301C5E:
	ldr r0, [r6, #12]
	ldr r1, [r6, #28]
	cmp r0, r1
	ble .L08301C68
	str r1, [r6, #12]
.L08301C68:
	str r7, [r6, #16]
	str r7, [r6, #20]
	mov r0, r9
	movs r1, #0
	bl sub_080012C0
	movs r7, #0
	str r6, [sp, #4]
	mov r6, sl
	mov r1, r8
	str r1, [sp, #8]
	ldr r0, [sp, #4]
	adds r0, #140
	mov sl, r0
.L08301C84:
	ldr r4, [sp, #4]
	adds r4, #88
	adds r4, r7, r4
	ldr r1, [sp, #8]
	adds r5, r7, r1
	adds r0, r6, #0
	adds r0, #22
	adds r0, r5, r0
	ldrb r3, [r0, #0]
	strb r3, [r4, #0]
	adds r0, r6, #0
	adds r0, #68
	adds r0, r5, r0
	ldr r1, [pc, #228]
	ldr r2, [sp, #0]
	ands r2, r1
	ldrb r0, [r0, #0]
	orrs r2, r0
	str r2, [sp, #0]
	adds r0, r6, #0
	adds r0, #72
	adds r0, r5, r0
	ldrb r0, [r0, #0]
	lsls r0, r0, #8
	ldr r1, [pc, #208]
	ands r1, r2
	orrs r1, r0
	lsls r3, r3, #16
	ldr r0, [pc, #204]
	ands r1, r0
	orrs r1, r3
	str r1, [sp, #0]
	adds r0, r6, #0
	adds r0, #48
	adds r0, r5, r0
	ldrb r0, [r0, #0]
	lsls r2, r0, #24
	ldr r0, [pc, #192]
	ands r1, r0
	orrs r1, r2
	str r1, [sp, #0]
	mov r0, r9
	adds r1, r7, #0
	mov r2, sp
	bl sub_08001A48
	ldrb r4, [r4, #0]
	cmp r4, #1
	bne .L08301D4C
	adds r0, r7, #0
	bl sub_08301EE8
	adds r0, r6, #0
	adds r0, #52
	add r0, r8
	ldrh r1, [r0, #0]
	adds r0, r6, #0
	adds r0, #60
	add r0, r8
	ldrh r2, [r0, #0]
	adds r0, r7, #0
	bl sub_08301F14
	lsls r4, r7, #24
	lsrs r4, r4, #24
	adds r0, r6, #0
	adds r0, #44
	adds r0, r5, r0
	ldrb r2, [r0, #0]
	mov r0, r9
	adds r1, r4, #0
	bl sub_080012F4
	lsls r5, r7, #2
	ldr r1, [sp, #8]
	adds r0, r5, r1
	ldr r1, [pc, #116]
	adds r0, r0, r1
	ldr r2, [r0, #0]
	mov r0, r9
	adds r1, r4, #0
	bl sub_08001314
	adds r0, r7, #0
	bl sub_08301F34
	ldr r0, [sp, #4]
	adds r0, #124
	adds r5, r5, r0
	ldr r2, [r5, #0]
	mov r0, sl
	ldr r3, [r0, #0]
	mov r0, r9
	adds r1, r7, #0
	bl Bg_DrawLevelScreen
	movs r1, #0
	str r1, [r5, #0]
	mov r0, sl
	str r1, [r0, #0]
.L08301D4C:
	movs r1, #4
	add sl, r1
	movs r0, #2
	add r8, r0
	adds r7, #1
	cmp r7, #4
	bne .L08301C84
	ldr r0, [pc, #28]
	bl sub_08001A8C
	add sp, #12
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.4byte 0x030058F8
	.4byte 0x030058FC
	.4byte 0x0300398C
	.4byte 0x083D39CC
	.4byte 0x030038CC
	.4byte 0xFFFFFF00
	.4byte 0xFFFF00FF
	.4byte 0xFF00FFFF
	.4byte 0x00FFFFFF
	.4byte 0x083D39E8

	.thumb
	.align 1, 0
	.global sub_08301D98
	.thumb_func
sub_08301D98:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	mov r8, r0
	mov r9, r1
	movs r4, #0
	ldr r5, [pc, #144]
	adds r6, r5, #0
	adds r6, #140
.L08301DAC:
	adds r7, r5, #0
	adds r7, #88
	adds r0, r4, r7
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne .L08301DCC
	lsls r0, r4, #2
	adds r1, r5, #0
	adds r1, #124
	adds r0, r0, r1
	ldr r2, [r0, #0]
	ldr r3, [r6, #0]
	ldr r0, [pc, #116]
	adds r1, r4, #0
	bl sub_08001404
.L08301DCC:
	adds r6, #4
	adds r4, #1
	cmp r4, #3
	bls .L08301DAC
	adds r2, r5, #0
	ldr r0, [r2, #8]
	str r0, [r2, #16]
	ldr r0, [r2, #12]
	str r0, [r2, #20]
	mov r1, r8
	subs r1, #120
	str r1, [r2, #8]
	mov r0, r9
	subs r0, #128
	str r0, [r2, #12]
	ldr r0, [r2, #32]
	cmp r1, r0
	bge .L08301DF2
	str r0, [r2, #8]
.L08301DF2:
	ldr r0, [r2, #8]
	ldr r1, [r2, #24]
	cmp r0, r1
	ble .L08301DFC
	str r1, [r2, #8]
.L08301DFC:
	ldr r0, [r2, #12]
	ldr r1, [r2, #36]
	cmp r0, r1
	bge .L08301E06
	str r1, [r2, #12]
.L08301E06:
	ldr r0, [r5, #28]
	adds r1, r0, #0
	adds r1, #48
	ldr r0, [r5, #12]
	cmp r0, r1
	ble .L08301E14
	str r1, [r5, #12]
.L08301E14:
	movs r5, #0
	adds r4, r7, #0
.L08301E18:
	ldrb r0, [r4, #0]
	adds r4, #1
	cmp r0, #1
	bne .L08301E26
	adds r0, r5, #0
	bl sub_08301F34
.L08301E26:
	adds r5, #1
	cmp r5, #4
	bne .L08301E18
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.4byte 0x030038CC
	.4byte 0x0300398C

	.thumb
	.align 1, 0
	.global sub_08301E40
	.thumb_func
sub_08301E40:
	ldr r1, [pc, #4]
	str r0, [r1, #24]
	bx lr
	.2byte 0x0000
	.4byte 0x030038CC

	.thumb
	.align 1, 0
	.global sub_08301E4C
	.thumb_func
sub_08301E4C:
	ldr r1, [pc, #4]
	str r0, [r1, #32]
	bx lr
	.2byte 0x0000
	.4byte 0x030038CC
	.4byte 0x61C84901
	.4byte 0x00004770
	.4byte 0x030038CC
	.4byte 0x62484901
	.4byte 0x00004770
	.4byte 0x030038CC
	.4byte 0x68C24803
	.4byte 0x68816242
	.4byte 0x61816201
	.4byte 0x477061C2
	.4byte 0x030038CC

	.thumb
	.align 1, 0
	.global sub_08301E84
	.thumb_func
sub_08301E84:
	push {r4, lr}
	ldr r4, [pc, #76]
	ldr r3, [r4, #8]
	ldr r0, [r4, #32]
	cmp r3, r0
	ble .L08301E96
	ldr r0, [r4, #24]
	cmp r3, r0
	blt .L08301EB2
.L08301E96:
	ldr r2, [pc, #64]
	ldr r1, [pc, #64]
	ldr r0, [r1, #52]
	asrs r0, r0, #8
	subs r0, #120
	subs r0, r3, r0
	str r0, [r2, #0]
	ldr r2, [pc, #56]
	ldr r1, [r1, #56]
	asrs r1, r1, #8
	subs r1, #128
	ldr r0, [r4, #12]
	subs r0, r0, r1
	str r0, [r2, #0]
.L08301EB2:
	ldr r1, [pc, #32]
	ldr r0, [pc, #44]
	ldr r2, [r0, #8]
	ldr r0, [r2, #0]
	lsls r0, r0, #3
	subs r0, #240
	str r0, [r1, #24]
	ldr r0, [r2, #4]
	lsls r0, r0, #3
	subs r0, #208
	str r0, [r1, #28]
	movs r0, #0
	str r0, [r1, #32]
	str r0, [r1, #36]
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x030038CC
	.4byte 0x030058F8
	.4byte 0x0300250C
	.4byte 0x030058FC
	.4byte 0x0300398C

	.thumb
	.align 1, 0
	.global sub_08301EE8
	.thumb_func
sub_08301EE8:
	ldr r3, [pc, #36]
	lsls r0, r0, #2
	adds r1, r3, #0
	adds r1, #124
	adds r1, r0, r1
	movs r2, #0
	str r2, [r1, #0]
	adds r1, r3, #0
	adds r1, #140
	adds r1, r0, r1
	str r2, [r1, #0]
	adds r1, r3, #0
	adds r1, #92
	adds r1, r0, r1
	str r2, [r1, #0]
	adds r1, r3, #0
	adds r1, #108
	adds r0, r0, r1
	str r2, [r0, #0]
	bx lr
	.4byte 0x030038CC

	.thumb
	.align 1, 0
	.global sub_08301F14
	.thumb_func
sub_08301F14:
	push {r4, lr}
	ldr r4, [pc, #24]
	lsls r0, r0, #2
	adds r3, r4, #0
	adds r3, #156
	adds r3, r0, r3
	str r1, [r3, #0]
	adds r4, #172
	adds r0, r0, r4
	str r2, [r0, #0]
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x030038CC

	.thumb
	.align 1, 0
	.global sub_08301F34
	.thumb_func
sub_08301F34:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	ldr r0, [pc, #272]
	mov ip, r0
	lsls r4, r6, #2
	mov r5, ip
	adds r5, #124
	adds r0, r4, r5
	movs r1, #0
	str r1, [r0, #0]
	mov r0, ip
	adds r0, #140
	adds r0, r4, r0
	str r1, [r0, #0]
	movs r2, #92
	add r2, ip
	mov r8, r2
	adds r3, r4, r2
	mov r7, ip
	ldr r1, [r7, #8]
	ldr r0, [r7, #16]
	subs r1, r1, r0
	lsls r1, r1, #8
	mov r0, ip
	adds r0, #156
	adds r0, r4, r0
	ldr r0, [r0, #0]
	muls r1, r0
	asrs r1, r1, #8
	ldr r0, [r3, #0]
	adds r0, r0, r1
	str r0, [r3, #0]
	mov r2, ip
	adds r2, #108
	adds r2, r4, r2
	ldr r1, [r7, #12]
	ldr r0, [r7, #20]
	subs r1, r1, r0
	lsls r1, r1, #8
	mov r0, ip
	adds r0, #172
	adds r0, r4, r0
	ldr r0, [r0, #0]
	muls r1, r0
	asrs r1, r1, #8
	ldr r0, [r2, #0]
	adds r0, r0, r1
	str r0, [r2, #0]
	ldr r0, [r3, #0]
	cmp r0, #255
	ble .L08301FB6
	mov r3, r8
	ldr r2, [pc, #176]
.L08301FA2:
	adds r1, r4, r5
	ldr r0, [r1, #0]
	adds r0, #1
	str r0, [r1, #0]
	adds r1, r4, r3
	ldr r0, [r1, #0]
	adds r0, r0, r2
	str r0, [r1, #0]
	cmp r0, #255
	bgt .L08301FA2
.L08301FB6:
	ldr r5, [pc, #152]
	lsls r2, r6, #2
	adds r1, r5, #0
	adds r1, #92
	adds r0, r2, r1
	ldr r0, [r0, #0]
	ldr r3, [pc, #144]
	adds r4, r2, #0
	cmp r0, r3
	bgt .L08301FE8
	adds r7, r5, #0
	adds r7, #124
	adds r6, r1, #0
	movs r5, #128
	lsls r5, r5, #1
.L08301FD4:
	adds r1, r2, r7
	ldr r0, [r1, #0]
	subs r0, #1
	str r0, [r1, #0]
	adds r1, r2, r6
	ldr r0, [r1, #0]
	adds r0, r0, r5
	str r0, [r1, #0]
	cmp r0, r3
	ble .L08301FD4
.L08301FE8:
	ldr r3, [pc, #100]
	adds r2, r4, #0
	adds r1, r3, #0
	adds r1, #108
	adds r0, r4, r1
	ldr r0, [r0, #0]
	cmp r0, #255
	ble .L08302014
	adds r6, r3, #0
	adds r6, #140
	adds r5, r1, #0
	ldr r3, [pc, #84]
.L08302000:
	adds r1, r2, r6
	ldr r0, [r1, #0]
	adds r0, #1
	str r0, [r1, #0]
	adds r1, r2, r5
	ldr r0, [r1, #0]
	adds r0, r0, r3
	str r0, [r1, #0]
	cmp r0, #255
	bgt .L08302000
.L08302014:
	ldr r5, [pc, #56]
	adds r2, r4, #0
	adds r1, r5, #0
	adds r1, #108
	adds r0, r2, r1
	ldr r0, [r0, #0]
	ldr r3, [pc, #48]
	cmp r0, r3
	bgt .L08302044
	adds r6, r5, #0
	adds r6, #140
	adds r5, r1, #0
	movs r4, #128
	lsls r4, r4, #1
.L08302030:
	adds r1, r2, r6
	ldr r0, [r1, #0]
	subs r0, #1
	str r0, [r1, #0]
	adds r1, r2, r5
	ldr r0, [r1, #0]
	adds r0, r0, r4
	str r0, [r1, #0]
	cmp r0, r3
	ble .L08302030
.L08302044:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x030038CC
	.4byte 0xFFFFFF00

	.thumb
	.align 1, 0
	.global sub_08302058
	.thumb_func
sub_08302058:
	ldr r3, [pc, #24]
	ldr r2, [r3, #8]
	subs r0, r0, r2
	ldr r2, [r3, #12]
	subs r1, r1, r2
	movs r2, #0
	cmp r0, #239
	bhi .L0830206E
	cmp r1, #159
	bhi .L0830206E
	movs r2, #1
.L0830206E:
	adds r0, r2, #0
	bx lr
	.2byte 0x0000
	.4byte 0x030038CC

	.thumb
	.align 1, 0
	.global sub_08302078
	.thumb_func
sub_08302078:
	ldr r3, [pc, #40]
	ldr r2, [r3, #8]
	subs r0, r0, r2
	ldr r2, [r3, #12]
	subs r2, r1, r2
	movs r3, #0
	adds r0, #160
	movs r1, #140
	lsls r1, r1, #2
	cmp r0, r1
	bhi .L083020A0
	movs r0, #160
	negs r0, r0
	cmp r2, r0
	blt .L083020A0
	movs r0, #160
	lsls r0, r0, #1
	cmp r2, r0
	bgt .L083020A0
	movs r3, #1
.L083020A0:
	adds r0, r3, #0
	bx lr
	.4byte 0x030038CC

	.thumb
	.align 1, 0
	.global sub_083020A8
	.thumb_func
sub_083020A8:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov r9, r0
	str r1, [sp, #0]
	str r2, [sp, #4]
	adds r0, r1, #0
	adds r1, r2, #0
	bl sub_08302058
	lsls r0, r0, #24
	cmp r0, #0
	beq .L083020CC
.L083020C8:
	movs r0, #1
	b .L0830215A
.L083020CC:
	mov r0, r9
	bl sub_08000644
	ldrh r0, [r0, #2]
	mov sl, r0
	movs r0, #0
	mov r8, r0
	cmp r8, sl
	beq .L08302158
.L083020DE:
	mov r0, r9
	mov r1, r8
	bl sub_0800062C
	adds r4, r0, #0
	ldr r0, [pc, #128]
	ldrh r1, [r4, #4]
	ands r0, r1
	ldr r2, [pc, #124]
	cmp r0, r2
	beq .L08302150
	mov r0, r9
	mov r1, r8
	bl sub_08000614
	movs r2, #0
	ldrsh r1, [r4, r2]
	ldr r2, [sp, #0]
	subs r5, r2, r1
	ldrh r2, [r0, #0]
	lsls r1, r2, #3
	adds r7, r5, r1
	movs r2, #2
	ldrsh r1, [r4, r2]
	ldr r2, [sp, #4]
	subs r4, r2, r1
	ldrh r0, [r0, #2]
	lsls r0, r0, #3
	adds r6, r4, r0
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08302058
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083020C8
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_08302058
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083020C8
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_08302058
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083020C8
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_08302058
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083020C8
.L08302150:
	movs r0, #1
	add r8, r0
	cmp r8, sl
	bne .L083020DE
.L08302158:
	movs r0, #0
.L0830215A:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000
	.4byte 0x00003FFF

	.thumb
	.align 1, 0
	.global sub_08302170
	.thumb_func
sub_08302170:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r6, #0
	mov r8, r6
	movs r5, #0
	movs r7, #0
	ldr r4, [pc, #136]
	adds r0, r4, #0
	bl sub_083177CC
	adds r0, r4, #0
	adds r0, #56
	strb r5, [r0, #0]
	ldr r0, [pc, #124]
	str r0, [r4, #48]
	ldr r0, [pc, #124]
	str r0, [r4, #44]
	movs r0, #4
	strh r0, [r4, #16]
	ldr r0, [pc, #120]
	str r0, [r4, #0]
	movs r0, #128
	lsls r0, r0, #5
	str r0, [r4, #4]
	adds r0, r4, #0
	bl GAX2_init
	ldr r1, [pc, #108]
	movs r0, #0
	bl sub_08001FC8
	bl sub_08004D70
	bl sub_08001A6C
	bl sub_0800436C
	ldr r1, [pc, #92]
	ldr r2, [pc, #96]
	adds r0, r2, #0
	strh r0, [r1, #0]
	subs r1, #8
	movs r2, #138
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1, #0]
	ldr r4, [pc, #84]
	adds r0, r4, #0
	movs r1, #31
	bl sub_08004848
	ldr r0, [r4, #8]
	movs r4, #160
	lsls r4, r4, #19
	adds r1, r4, #0
	movs r2, #240
	movs r3, #16
	bl sub_08001EBC
	movs r0, #15
	bl sub_08004880
	movs r0, #0
	movs r1, #0
	movs r2, #31
	movs r3, #31
	bl sub_080049D4
	strh r5, [r4, #0]
	movs r0, #0
	movs r1, #192
	movs r2, #30
	bl Fade_Start
	b .L0830222C
	mov r8, ip
	lsls r0, r0, #12
	.2byte 0xede0 @ .raw
	lsrs r5, r6, #32
	adds r4, r3, #1
	lsrs r5, r7, #32
	.2byte 0x471c @ .raw bxns r3
	lsls r0, r0, #12
	lsrs r5, r7, #1
	lsls r0, r0, #12
	movs r0, r1
	lsls r0, r0, #16
	subs r1, r0, #4
	movs r0, r0
	movs r0, #72
	lsrs r5, r7, #32
.L08302228:
	bl VBlankIntrWait
.L0830222C:
	bl Fade_IsBusy
	cmp r0, #0
	bne .L08302228
	cmp r5, #158
	bhi .L083022BE
	ldr r1, [pc, #68]
	lsls r0, r5, #2
	subs r0, #4
	adds r4, r0, r1
.L08302240:
	bl VBlankIntrWait
	adds r7, #1
	cmp r7, #5
	bls .L0830225A
	movs r7, #0
	adds r6, #1
	movs r0, #1
	add r8, r0
	movs r0, #255
	ands r6, r0
	ldr r0, [pc, #44]
	strh r6, [r0, #0]
.L0830225A:
	mov r2, r8
	cmp r2, #7
	bls .L08302278
	movs r0, #0
	mov r8, r0
	adds r4, #4
	adds r5, #1
	adds r1, r5, #0
	adds r1, #20
	movs r0, #31
	ands r1, r0
	ldr r2, [r4, #0]
	movs r0, #0
	bl sub_08004914
.L08302278:
	cmp r5, #158
	bls .L08302240
	b .L083022BE
	movs r0, r0
	ldrh r0, [r0, #52]
	lsrs r5, r7, #32
	movs r2, r2
	lsls r0, r0, #16
.L08302288:
	bl VBlankIntrWait
	adds r7, #1
	cmp r7, #5
	bls .L083022A2
	movs r7, #0
	adds r6, #1
	movs r2, #1
	add r8, r2
	movs r0, #255
	ands r6, r0
	ldr r0, [pc, #52]
	strh r6, [r0, #0]
.L083022A2:
	mov r0, r8
	cmp r0, #7
	bls .L083022BE
	movs r2, #0
	mov r8, r2
	adds r5, #1
	adds r1, r5, #0
	adds r1, #20
	movs r0, #31
	ands r1, r0
	movs r0, #0
	ldr r2, [pc, #28]
	bl sub_08004914
.L083022BE:
	cmp r5, #179
	bls .L08302288
	movs r0, #255
	bl SoftResetRom
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x04000012
	.4byte 0x083D83C0

	.thumb
	.align 1, 0
	.global sub_083022DC
	.thumb_func
sub_083022DC:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #16
	str r0, [sp, #8]
	mov r8, r1
	mov r9, r2
	mov sl, r3
	movs r0, #3
	str r0, [sp, #12]
	cmp r1, #0
	bne .L08302304
	ldr r0, [pc, #4]
	str r1, [r0, #0]
	b .L08302342
	movs r0, r0
	ldr r0, [r1, r4]
	lsls r0, r0, #12
.L08302304:
	mov r1, r9
	cmp r1, #0
	bne .L08302314
	ldr r1, [pc, #4]
	movs r0, #1
	b .L08302340
	ldr r0, [r1, r4]
	lsls r0, r0, #12
.L08302314:
	mov r2, sl
	cmp r2, #0
	bne .L08302324
	ldr r1, [pc, #4]
	movs r0, #2
	b .L08302340
	ldr r0, [r1, r4]
	lsls r0, r0, #12
.L08302324:
	ldr r0, [sp, #48]
	cmp r0, #0
	bne .L0830233C
	ldr r0, [pc, #8]
	ldr r1, [sp, #12]
	str r1, [r0, #0]
	b .L08302342
	movs r0, r0
	ldr r0, [r1, r4]
	lsls r0, r0, #12
.L08302338:
	movs r0, #0
	b .L083025E2
.L0830233C:
	ldr r1, [pc, #228]
	movs r0, #4
.L08302340:
	str r0, [r1, #0]
.L08302342:
	ldr r4, [pc, #224]
	ldr r3, [r4, #0]
	movs r0, #19
	subs r6, r0, r3
	ldr r1, [pc, #220]
	movs r2, #248
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1, #0]
	movs r1, #18
	subs r1, r1, r3
	adds r3, #1
	movs r0, #15
	str r0, [sp, #0]
	ldr r0, [pc, #204]
	str r0, [sp, #4]
	movs r0, #1
	movs r2, #27
	bl sub_0830FDE0
	ldr r2, [pc, #196]
	str r6, [r2, #0]
	ldr r1, [pc, #196]
	movs r0, #2
	str r0, [r1, #0]
	ldr r0, [r4, #0]
	adds r0, r6, r0
	adds r0, #1
	cmp r6, r0
	bcc .L08302380
	b .L083025E0
.L08302380:
	bl VBlankIntrWait
	ldr r0, [sp, #8]
	cmp r0, #0
	beq .L0830238E
	bl _call_via_r0
.L0830238E:
	ldr r1, [sp, #12]
	subs r1, #1
	str r1, [sp, #12]
	cmp r1, #0
	ble .L0830239A
	b .L083025CE
.L0830239A:
	movs r2, #3
	str r2, [sp, #12]
	mov r0, r8
	cmp r0, #0
	beq .L083023AE
	movs r0, #2
	adds r1, r6, #0
	mov r2, r8
	bl sub_08004914
.L083023AE:
	mov r1, r9
	cmp r1, #0
	beq .L083023BE
	movs r0, #2
	adds r1, r6, #1
	mov r2, r9
	bl sub_08004914
.L083023BE:
	mov r2, sl
	cmp r2, #0
	beq .L083023CC
	movs r0, #2
	adds r1, r6, #2
	bl sub_08004914
.L083023CC:
	ldr r0, [sp, #48]
	cmp r0, #0
	beq .L083023DC
	movs r0, #2
	adds r1, r6, #3
	ldr r2, [sp, #48]
	bl sub_08004914
.L083023DC:
	ldr r1, [pc, #80]
	ldr r5, [r1, #0]
	ldr r0, [pc, #64]
	ldr r0, [r0, #0]
	adds r0, r6, r0
	subs r0, #1
	cmp r5, r0
	bhi .L08302472
.L083023EC:
	ldr r0, [r1, #0]
	cmp r5, r0
	bne .L08302438
	ldr r0, [pc, #64]
	ldr r4, [r0, #0]
	adds r7, r5, #1
	cmp r4, #26
	bhi .L08302462
.L083023FC:
	movs r0, #4
	ldr r1, [pc, #44]
	movs r2, #0
	bl Glyph_Alloc
	adds r3, r0, #0
	lsls r3, r3, #16
	lsrs r3, r3, #16
	movs r0, #224
	lsls r0, r0, #8
	str r0, [sp, #0]
	movs r0, #31
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0830F78C
	adds r4, #1
	cmp r4, #26
	bls .L083023FC
	b .L08302462
	ldr r0, [r1, r4]
	lsls r0, r0, #12
	movs r0, r1
	lsls r0, r0, #16
	stmia r7!, {r3, r4, r5, r6}
	lsrs r5, r7, #32
	ldr r0, [r0, r4]
	lsls r0, r0, #12
	ldr r4, [r0, r4]
	lsls r0, r0, #12
.L08302438:
	movs r4, #2
	adds r7, r5, #1
.L0830243C:
	movs r0, #4
	ldr r1, [pc, #80]
	movs r2, #0
	bl Glyph_Alloc
	adds r3, r0, #0
	lsls r3, r3, #16
	lsrs r3, r3, #16
	movs r0, #224
	lsls r0, r0, #8
	str r0, [sp, #0]
	movs r0, #31
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0830F78C
	adds r4, #1
	cmp r4, #26
	bls .L0830243C
.L08302462:
	adds r5, r7, #0
	ldr r0, [pc, #44]
	ldr r0, [r0, #0]
	adds r0, r6, r0
	subs r0, #1
	ldr r1, [pc, #40]
	cmp r5, r0
	bls .L083023EC
.L08302472:
	ldr r3, [pc, #36]
	ldr r1, [r3, #0]
	cmp r1, r6
	bne .L083024A0
	ldr r1, [pc, #32]
	ldr r0, [r1, #0]
	add r0, r8
	subs r0, #2
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L083024FE
	movs r2, #2
	str r2, [r1, #0]
	adds r0, r6, #1
	b .L083024FC
	stmia r7!, {r3, r4, r5, r6}
	lsrs r5, r7, #32
	ldr r0, [r1, r4]
	lsls r0, r0, #12
	ldr r0, [r0, r4]
	lsls r0, r0, #12
	ldr r4, [r0, r4]
	lsls r0, r0, #12
.L083024A0:
	adds r0, r6, #1
	cmp r1, r0
	bne .L083024C0
	ldr r2, [pc, #20]
	ldr r0, [r2, #0]
	add r0, r9
	subs r0, #2
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L083024FE
	movs r0, #2
	str r0, [r2, #0]
	adds r0, r1, #1
	b .L083024FC
	ldr r4, [r0, r4]
	lsls r0, r0, #12
.L083024C0:
	adds r0, r6, #2
	cmp r1, r0
	bne .L083024E0
	ldr r1, [pc, #20]
	ldr r0, [r1, #0]
	add r0, sl
	subs r0, #2
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L083024FE
	movs r2, #2
	str r2, [r1, #0]
	adds r0, r6, #3
	b .L083024FC
	ldr r4, [r0, r4]
	lsls r0, r0, #12
.L083024E0:
	adds r0, r6, #3
	cmp r1, r0
	bne .L083024FE
	ldr r1, [pc, #116]
	ldr r0, [r1, #0]
	ldr r2, [sp, #48]
	adds r0, r0, r2
	subs r0, #2
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L083024FE
	movs r0, #2
	str r0, [r1, #0]
	adds r0, r6, #4
.L083024FC:
	str r0, [r3, #0]
.L083024FE:
	ldr r1, [pc, #92]
	ldr r0, [r1, #0]
	adds r0, #1
	str r0, [r1, #0]
	cmp r0, #26
	bls .L08302516
	movs r2, #2
	str r2, [r1, #0]
	ldr r1, [pc, #80]
	ldr r0, [r1, #0]
	adds r0, #1
	str r0, [r1, #0]
.L08302516:
	ldr r2, [pc, #72]
	ldr r0, [r2, #0]
	subs r0, r0, r6
	ldr r1, [pc, #68]
	ldr r1, [r1, #0]
	cmp r0, r1
	bcc .L08302568
	mov r0, r8
	cmp r0, #0
	beq .L08302534
	movs r0, #2
	adds r1, r6, #0
	mov r2, r8
	bl sub_08004914
.L08302534:
	mov r1, r9
	cmp r1, #0
	beq .L08302544
	movs r0, #2
	adds r1, r6, #1
	mov r2, r9
	bl sub_08004914
.L08302544:
	mov r2, sl
	cmp r2, #0
	beq .L08302552
	movs r0, #2
	adds r1, r6, #2
	bl sub_08004914
.L08302552:
	ldr r0, [sp, #48]
	cmp r0, #0
	beq .L083025E0
	b .L083025B0
	movs r0, r0
	ldr r4, [r0, r4]
	lsls r0, r0, #12
	ldr r0, [r0, r4]
	lsls r0, r0, #12
	ldr r0, [r1, r4]
	lsls r0, r0, #12
.L08302568:
	ldr r4, [pc, #80]
	ldr r0, [pc, #84]
	adds r1, r4, #0
	bl sub_08002094
	ldrh r4, [r4, #0]
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq .L083025C4
	mov r1, r8
	cmp r1, #0
	beq .L0830258C
	movs r0, #2
	adds r1, r6, #0
	mov r2, r8
	bl sub_08004914
.L0830258C:
	mov r2, r9
	cmp r2, #0
	beq .L0830259A
	movs r0, #2
	adds r1, r6, #1
	bl sub_08004914
.L0830259A:
	mov r0, sl
	cmp r0, #0
	beq .L083025AA
	movs r0, #2
	adds r1, r6, #2
	mov r2, sl
	bl sub_08004914
.L083025AA:
	ldr r1, [sp, #48]
	cmp r1, #0
	beq .L083025E0
.L083025B0:
	movs r0, #2
	adds r1, r6, #3
	ldr r2, [sp, #48]
	bl sub_08004914
	b .L083025E0
	lsrs r2, r2, #20
	lsls r0, r0, #12
	lsrs r0, r2, #20
	lsls r0, r0, #12
.L083025C4:
	movs r0, #8
	ands r0, r4
	cmp r0, #0
	beq .L083025CE
	b .L08302338
.L083025CE:
	ldr r0, [pc, #36]
	ldr r0, [r0, #0]
	adds r0, r6, r0
	adds r0, #1
	ldr r2, [pc, #32]
	ldr r1, [r2, #0]
	cmp r1, r0
	bcs .L083025E0
	b .L08302380
.L083025E0:
	movs r0, #1
.L083025E2:
	add sp, #16
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000
	.4byte 0x03005908
	.4byte 0x03005900

	.thumb
	.align 1, 0
	.global sub_083025FC
	.thumb_func
sub_083025FC:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	movs r0, #1
	mov r8, r0
	movs r7, #0
	movs r4, #5
	movs r6, #0
.L08302610:
	ldr r0, [pc, #44]
	ldr r1, [pc, #48]
	bl sub_08002094
	bl VBlankIntrWait
	cmp r5, #0
	beq .L08302624
	bl sub_0831A7F8
.L08302624:
	adds r0, r7, #0
	movs r1, #10
	bl __umodsi3
	cmp r0, #0
	bne .L08302672
	cmp r6, #0
	bne .L08302648
	adds r4, #1
	cmp r4, #7
	bls .L08302652
	movs r4, #6
	movs r6, #1
	b .L08302652
	lsrs r0, r2, #20
	lsls r0, r0, #12
	lsrs r2, r2, #20
	lsls r0, r0, #12
.L08302648:
	subs r4, #1
	cmp r4, #4
	bhi .L08302652
	movs r4, #6
	movs r6, #0
.L08302652:
	adds r0, r4, #0
	ldr r1, [pc, #48]
	movs r2, #0
	bl Glyph_Alloc
	adds r3, r0, #0
	lsls r3, r3, #16
	lsrs r3, r3, #16
	movs r0, #224
	lsls r0, r0, #8
	str r0, [sp, #0]
	movs r0, #31
	movs r1, #27
	movs r2, #18
	bl sub_0830F78C
.L08302672:
	adds r7, #1
	ldr r0, [pc, #20]
	ldrh r1, [r0, #0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq .L08302690
	movs r0, #0
	mov r8, r0
	b .L08302698
	movs r0, r0
	stmia r7!, {r3, r4, r5, r6}
	lsrs r5, r7, #32
	lsrs r2, r2, #20
	lsls r0, r0, #12
.L08302690:
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq .L08302610
.L08302698:
	movs r0, #1
	bl sub_08310110
	mov r0, r8
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	.thumb
	.align 1, 0
	.global sub_083026AC
	.thumb_func
sub_083026AC:
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r5, r1, #0
	bl sub_0800436C
	bl sub_08004D70
	bl sub_08001A6C
	ldr r4, [pc, #176]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08001280
	adds r0, r4, #0
	movs r1, #0
	bl sub_080012C0
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	bl sub_080012F4
	adds r0, r4, #0
	movs r1, #1
	adds r2, r6, #0
	bl sub_08001314
	ldr r1, [pc, #144]
	ldr r0, [sp, #0]
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	ldr r1, [pc, #136]
	ands r0, r1
	movs r1, #128
	lsls r1, r1, #1
	orrs r0, r1
	ldr r1, [pc, #132]
	ands r0, r1
	movs r1, #128
	lsls r1, r1, #9
	orrs r0, r1
	ldr r1, [pc, #124]
	ands r0, r1
	adds r1, #1
	orrs r0, r1
	str r0, [sp, #0]
	adds r0, r4, #0
	movs r1, #1
	mov r2, sp
	bl sub_08001A48
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl Bg_DrawLevelScreen
	ldr r0, [pc, #96]
	movs r1, #31
	bl sub_08004848
	ldr r1, [pc, #92]
	movs r2, #248
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1, #0]
	movs r2, #128
	lsls r2, r2, #19
	ldrh r0, [r2, #0]
	movs r3, #154
	lsls r3, r3, #5
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2, #0]
	ldr r0, [pc, #72]
	movs r4, #160
	lsls r4, r4, #19
	adds r1, r4, #0
	movs r2, #224
	movs r3, #16
	bl sub_08001EBC
	ldr r0, [pc, #60]
	adds r1, r4, #0
	movs r2, #240
	movs r3, #16
	bl sub_08001EBC
	movs r0, #14
	bl sub_08004880
	movs r0, #1
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.2byte 0x0000
	.4byte 0x0300398C
	.4byte 0xFFFFFF00
	.4byte 0xFFFF00FF
	.4byte 0xFF00FFFF
	.4byte 0x00FFFFFF
	.4byte 0x083D2038
	.4byte 0x04000008
	.4byte 0x083DC738
	.4byte 0x083DC758

	.thumb
	.align 1, 0
	.global sub_08302798
	.thumb_func
sub_08302798:
	push {r4, r5, r6, lr}
	sub sp, #4
	bl sub_0800436C
	bl sub_08004D70
	bl sub_08001A6C
	ldr r6, [pc, #312]
	ldr r1, [pc, #316]
	adds r0, r6, #0
	bl sub_08001280
	adds r0, r6, #0
	movs r1, #0
	bl sub_080012C0
	adds r0, r6, #0
	movs r1, #1
	movs r2, #0
	bl sub_080012F4
	ldr r2, [pc, #292]
	adds r0, r6, #0
	movs r1, #1
	bl sub_08001314
	adds r0, r6, #0
	movs r1, #2
	movs r2, #1
	bl sub_080012F4
	ldr r2, [pc, #276]
	adds r0, r6, #0
	movs r1, #2
	bl sub_08001314
	adds r0, r6, #0
	movs r1, #3
	movs r2, #2
	bl sub_080012F4
	ldr r2, [pc, #260]
	adds r0, r6, #0
	movs r1, #3
	bl sub_08001314
	ldr r1, [pc, #256]
	ldr r0, [sp, #0]
	ands r0, r1
	movs r4, #1
	orrs r0, r4
	ldr r1, [pc, #248]
	ands r0, r1
	movs r1, #128
	lsls r1, r1, #1
	orrs r0, r1
	ldr r1, [pc, #244]
	ands r0, r1
	movs r1, #128
	lsls r1, r1, #9
	orrs r0, r1
	ldr r1, [pc, #236]
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
	movs r2, #240
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
	ldr r0, [pc, #140]
	movs r1, #31
	bl sub_08004848
	ldr r1, [pc, #136]
	movs r2, #248
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1, #0]
	adds r1, #2
	ldr r3, [pc, #128]
	adds r0, r3, #0
	strh r0, [r1, #0]
	adds r1, #2
	ldr r2, [pc, #124]
	adds r0, r2, #0
	strh r0, [r1, #0]
	adds r1, #2
	ldr r3, [pc, #120]
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
	ldr r0, [pc, #100]
	movs r4, #160
	lsls r4, r4, #19
	adds r1, r4, #0
	movs r2, #224
	movs r3, #16
	bl sub_08001EBC
	ldr r0, [pc, #88]
	adds r1, r4, #0
	movs r2, #240
	movs r3, #16
	bl sub_08001EBC
	movs r0, #14
	bl sub_08004880
	movs r0, #0
	movs r1, #192
	movs r2, #30
	bl Fade_Start
	b .L08302928
	movs r0, r0
	subs r1, #140
	lsls r0, r0, #12
	ldr r0, [pc, #320]
	lsrs r2, r1, #32
	ldrh r0, [r2, r4]
	lsrs r1, r5, #32
	str r6, [sp, #128]
	lsrs r1, r5, #32
	push {r4, r5}
	lsrs r1, r5, #32
	.2byte 0xff00 @ .raw
	.2byte 0xffff @ .raw
	lsls r7, r7, #3
	.2byte 0xffff @ .raw
	.2byte 0xffff @ .raw
	.2byte 0xff00 @ .raw
	.2byte 0xffff @ .raw
	lsls r7, r7, #3
	movs r0, #56
	lsrs r5, r7, #32
	movs r0, r1
	lsls r0, r0, #16
	subs r1, r0, #2
	movs r0, r0
	adds r2, r0, #6
	movs r0, r0
	adds r3, r0, #2
	movs r0, r0
	stmia r7!, {r3, r4, r5}
	lsrs r5, r7, #32
	stmia r7!, {r3, r4, r6}
	lsrs r5, r7, #32
.L08302924:
	bl VBlankIntrWait
.L08302928:
	bl Fade_IsBusy
	cmp r0, #0
	bne .L08302924
	movs r4, #0
.L08302932:
	bl VBlankIntrWait
	ldr r0, [pc, #28]
	movs r1, #1
	movs r2, #8
	negs r2, r2
	movs r3, #0
	bl sub_08001404
	adds r4, #1
	cmp r4, #29
	bls .L08302932
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x0300398C

	.thumb
	.align 1, 0
	.global sub_08302958
	.thumb_func
sub_08302958:
	push {r4, r5, lr}
	movs r4, #0
	ldr r5, [pc, #40]
.L0830295E:
	bl VBlankIntrWait
	adds r0, r5, #0
	movs r1, #2
	movs r2, #2
	movs r3, #0
	bl sub_08001404
	adds r0, r5, #0
	movs r1, #3
	movs r2, #1
	movs r3, #0
	bl sub_08001404
	adds r4, #1
	cmp r4, #63
	bls .L0830295E
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x0300398C

	.thumb
	.align 1, 0
	.global sub_0830298C
	.thumb_func
sub_0830298C:
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
	movs r2, #3
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
	.4byte 0x080A5750
	.4byte 0x0829C400
	.4byte 0x0829D510
	.4byte 0x0829F520
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

	.thumb
	.align 1, 0
	.global sub_08302B14
	.thumb_func
sub_08302B14:
	push {r4, lr}
	ldr r4, [pc, #60]
	ldr r0, [r4, #0]
	adds r0, #1
	str r0, [r4, #0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne .L08302B34
	ldr r0, [pc, #48]
	movs r2, #1
	negs r2, r2
	movs r1, #3
	movs r3, #0
	bl sub_08001404
.L08302B34:
	ldr r0, [r4, #0]
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne .L08302B4C
	ldr r0, [pc, #24]
	movs r3, #1
	negs r3, r3
	movs r1, #3
	movs r2, #0
	bl sub_08001404
.L08302B4C:
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x03005910
	.4byte 0x0300398C

	.thumb
	.align 1, 0
	.global sub_08302B5C
	.thumb_func
sub_08302B5C:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	bl sub_0800436C
	bl sub_08004D70
	bl sub_08001A6C
	ldr r5, [pc, #260]
	ldr r1, [pc, #264]
	adds r0, r5, #0
	bl sub_08001280
	adds r0, r5, #0
	movs r1, #0
	bl sub_080012C0
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	bl sub_080012F4
	ldr r2, [pc, #240]
	adds r0, r5, #0
	movs r1, #1
	bl sub_08001314
	adds r0, r5, #0
	movs r1, #2
	movs r2, #1
	bl sub_080012F4
	ldr r2, [pc, #224]
	adds r0, r5, #0
	movs r1, #2
	bl sub_08001314
	ldr r1, [pc, #220]
	ldr r0, [sp, #0]
	ands r0, r1
	movs r6, #1
	orrs r0, r6
	ldr r1, [pc, #212]
	ands r0, r1
	movs r1, #128
	lsls r1, r1, #1
	orrs r0, r1
	ldr r1, [pc, #208]
	ands r0, r1
	movs r1, #128
	lsls r1, r1, #9
	orrs r0, r1
	ldr r1, [pc, #200]
	ands r0, r1
	adds r1, #1
	orrs r0, r1
	str r0, [sp, #0]
	mov r4, sp
	adds r0, r5, #0
	movs r1, #1
	mov r2, sp
	bl sub_08001A48
	movs r0, #0
	mov r8, r0
	mov r0, sp
	strb r6, [r0, #0]
	strb r6, [r4, #1]
	strb r6, [r4, #2]
	movs r0, #2
	strb r0, [r4, #3]
	adds r0, r5, #0
	movs r1, #2
	mov r2, sp
	bl sub_08001A48
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl Bg_DrawLevelScreen
	adds r0, r5, #0
	movs r1, #2
	movs r2, #0
	movs r3, #0
	bl Bg_DrawLevelScreen
	ldr r0, [pc, #132]
	movs r1, #31
	bl sub_08004848
	ldr r1, [pc, #128]
	movs r2, #248
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1, #0]
	adds r1, #2
	ldr r3, [pc, #120]
	adds r0, r3, #0
	strh r0, [r1, #0]
	adds r1, #2
	ldr r2, [pc, #116]
	adds r0, r2, #0
	strh r0, [r1, #0]
	movs r2, #128
	lsls r2, r2, #19
	ldrh r0, [r2, #0]
	movs r3, #186
	lsls r3, r3, #5
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2, #0]
	ldr r0, [pc, #100]
	movs r4, #160
	lsls r4, r4, #19
	adds r1, r4, #0
	movs r2, #224
	movs r3, #16
	bl sub_08001EBC
	ldr r0, [pc, #88]
	adds r1, r4, #0
	movs r2, #240
	movs r3, #16
	bl sub_08001EBC
	movs r0, #14
	bl sub_08004880
	ldr r0, [pc, #72]
	mov r1, r8
	strb r1, [r0, #0]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x0300398C
	.4byte 0x080A6340
	.4byte 0x0829F670
	.4byte 0x082A1DF4
	.4byte 0xFFFFFF00
	.4byte 0xFFFF00FF
	.4byte 0xFF00FFFF
	.4byte 0x00FFFFFF
	.4byte 0x083D2038
	.4byte 0x04000008
	.4byte 0x00001E81
	.4byte 0x00001D82
	.4byte 0x083DC738
	.4byte 0x083DC758
	.4byte 0x03005914

	.thumb
	.align 1, 0
	.global sub_08302CB4
	.thumb_func
sub_08302CB4:
	push {r4, r5, lr}
	sub sp, #92
	ldr r1, [pc, #68]
	mov r0, sp
	movs r2, #92
	bl memcpy
	ldr r1, [pc, #64]
	ldr r0, [r1, #0]
	adds r0, #1
	str r0, [r1, #0]
	cmp r0, #7
	bls .L08302CF8
	movs r5, #0
	str r5, [r1, #0]
	ldr r0, [pc, #52]
	ldr r4, [pc, #52]
	ldrb r2, [r4, #0]
	lsls r1, r2, #1
	add r1, sp
	movs r2, #0
	ldrsh r3, [r1, r2]
	movs r1, #2
	movs r2, #0
	bl sub_08001404
	ldrb r0, [r4, #0]
	adds r0, #1
	strb r0, [r4, #0]
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #45
	bls .L08302CF8
	strb r5, [r4, #0]
.L08302CF8:
	add sp, #92
	pop {r4, r5}
	pop {r0}
	bx r0
	.4byte 0x083D90FC
	.4byte 0x03005918
	.4byte 0x0300398C
	.4byte 0x03005914

	.thumb
	.align 1, 0
	.global sub_08302D10
	.thumb_func
sub_08302D10:
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
	.4byte 0x080A7730
	.4byte 0x082A3280
	.4byte 0x082A3D50
	.4byte 0x082A91A0
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

	.thumb
	.align 1, 0
	.global sub_08302E98
	.thumb_func
sub_08302E98:
	push {lr}
	sub sp, #16
	ldr r1, [pc, #80]
	mov r0, sp
	movs r2, #16
	bl memcpy
	ldr r1, [pc, #76]
	ldr r2, [pc, #76]
	adds r0, r2, #0
	strh r0, [r1, #0]
	ldr r1, [pc, #76]
	ldrb r0, [r1, #0]
	adds r0, #1
	strb r0, [r1, #0]
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #3
	bls .L08302EDE
	movs r0, #0
	strb r0, [r1, #0]
	ldr r2, [pc, #60]
	ldrb r0, [r2, #0]
	adds r0, #1
	movs r1, #7
	ands r0, r1
	strb r0, [r2, #0]
	ldr r3, [pc, #52]
	lsls r0, r0, #1
	add r0, sp
	ldrh r0, [r0, #0]
	lsls r0, r0, #8
	movs r1, #12
	orrs r0, r1
	strh r0, [r3, #0]
.L08302EDE:
	ldr r0, [pc, #40]
	movs r1, #3
	movs r2, #2
	movs r3, #0
	bl sub_08001404
	add sp, #16
	pop {r0}
	bx r0
	.4byte 0x083D9158
	.4byte 0x04000050
	.4byte 0x00003F42
	.4byte 0x0300591C
	.4byte 0x0300591D
	.4byte 0x04000052
	.4byte 0x0300398C

	.thumb
	.align 1, 0
	.global sub_08302F0C
	.thumb_func
sub_08302F0C:
	push {r4, r5, lr}
	sub sp, #4
	bl sub_0800436C
	bl sub_08004D70
	bl sub_08001A6C
	ldr r4, [pc, #184]
	ldr r1, [pc, #188]
	adds r0, r4, #0
	bl sub_08001280
	adds r0, r4, #0
	movs r1, #0
	bl sub_080012C0
	movs r5, #160
	lsls r5, r5, #19
	movs r0, #0
	strh r0, [r5, #0]
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	bl sub_080012F4
	ldr r2, [pc, #156]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08001314
	ldr r1, [pc, #152]
	ldr r0, [sp, #0]
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	ldr r1, [pc, #144]
	ands r0, r1
	movs r1, #128
	lsls r1, r1, #1
	orrs r0, r1
	ldr r1, [pc, #140]
	ands r0, r1
	movs r1, #128
	lsls r1, r1, #9
	orrs r0, r1
	ldr r1, [pc, #132]
	ands r0, r1
	adds r1, #1
	orrs r0, r1
	str r0, [sp, #0]
	adds r0, r4, #0
	movs r1, #1
	mov r2, sp
	bl sub_08001A48
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl Bg_DrawLevelScreen
	ldr r0, [pc, #104]
	movs r1, #31
	bl sub_08004848
	ldr r1, [pc, #100]
	movs r2, #248
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1, #0]
	adds r1, #2
	ldr r3, [pc, #92]
	adds r0, r3, #0
	strh r0, [r1, #0]
	movs r2, #128
	lsls r2, r2, #19
	ldrh r0, [r2, #0]
	movs r3, #154
	lsls r3, r3, #5
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2, #0]
	ldr r0, [pc, #76]
	adds r1, r5, #0
	movs r2, #224
	movs r3, #16
	bl sub_08001EBC
	ldr r0, [pc, #68]
	adds r1, r5, #0
	movs r2, #240
	movs r3, #16
	bl sub_08001EBC
	movs r0, #14
	bl sub_08004880
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.4byte 0x0300398C
	.4byte 0x080A8A40
	.4byte 0x082A9730
	.4byte 0xFFFFFF00
	.4byte 0xFFFF00FF
	.4byte 0xFF00FFFF
	.4byte 0x00FFFFFF
	.4byte 0x083D2038
	.4byte 0x04000008
	.4byte 0x00001E81
	.4byte 0x083DC738
	.4byte 0x083DC758

	.thumb
	.align 1, 0
	.global sub_08303008
	.thumb_func
sub_08303008:
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
	movs r3, #80
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
	.4byte 0x080A9140
	.4byte 0x082AC240
	.4byte 0x082B87D0
	.4byte 0x082B8AA0
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

	.thumb
	.align 1, 0
	.global sub_08303190
	.thumb_func
sub_08303190:
	push {r4, r5, r6, lr}
	movs r4, #0
	movs r5, #0
	ldr r6, [pc, #80]
.L08303198:
	bl VBlankIntrWait
	movs r0, #150
	lsls r0, r0, #1
	adds r4, r4, r0
	lsrs r3, r4, #8
	negs r3, r3
	adds r0, r6, #0
	movs r1, #1
	movs r2, #4
	bl sub_08001404
	lsrs r3, r4, #9
	negs r3, r3
	adds r0, r6, #0
	movs r1, #2
	movs r2, #2
	bl sub_08001404
	lsrs r3, r4, #10
	negs r3, r3
	adds r0, r6, #0
	movs r1, #3
	movs r2, #1
	bl sub_08001404
	adds r1, r5, #1
	cmp r4, #255
	bls .L083031DA
	ldr r0, [pc, #24]
.L083031D4:
	adds r4, r4, r0
	cmp r4, #255
	bhi .L083031D4
.L083031DA:
	adds r5, r1, #0
	cmp r5, #67
	bls .L08303198
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x0300398C
	.4byte 0xFFFFFF00

	.thumb
	.align 1, 0
	.global sub_083031F0
	.thumb_func
sub_083031F0:
	push {r4, r5, r6, lr}
	movs r4, #0
	movs r5, #0
	ldr r6, [pc, #80]
.L083031F8:
	bl VBlankIntrWait
	movs r0, #150
	lsls r0, r0, #1
	adds r4, r4, r0
	lsrs r3, r4, #8
	adds r0, r6, #0
	movs r1, #1
	movs r2, #4
	negs r2, r2
	bl sub_08001404
	lsrs r3, r4, #9
	adds r0, r6, #0
	movs r1, #2
	movs r2, #2
	negs r2, r2
	bl sub_08001404
	lsrs r3, r4, #10
	adds r0, r6, #0
	movs r1, #3
	movs r2, #1
	negs r2, r2
	bl sub_08001404
	adds r1, r5, #1
	cmp r4, #255
	bls .L0830323A
	ldr r0, [pc, #24]
.L08303234:
	adds r4, r4, r0
	cmp r4, #255
	bhi .L08303234
.L0830323A:
	adds r5, r1, #0
	cmp r5, #67
	bls .L083031F8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x0300398C
	.4byte 0xFFFFFF00

	.thumb
	.align 1, 0
	.global sub_08303250
	.thumb_func
sub_08303250:
	push {r4, r5, r6, lr}
	sub sp, #4
	bl sub_0800436C
	bl sub_08004D70
	bl sub_08001A6C
	ldr r5, [pc, #244]
	ldr r1, [pc, #248]
	adds r0, r5, #0
	bl sub_08001280
	adds r0, r5, #0
	movs r1, #0
	bl sub_080012C0
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	bl sub_080012F4
	ldr r2, [pc, #224]
	adds r0, r5, #0
	movs r1, #1
	bl sub_08001314
	adds r0, r5, #0
	movs r1, #2
	movs r2, #1
	bl sub_080012F4
	ldr r2, [pc, #208]
	adds r0, r5, #0
	movs r1, #2
	bl sub_08001314
	ldr r1, [pc, #204]
	ldr r0, [sp, #0]
	ands r0, r1
	movs r6, #1
	orrs r0, r6
	ldr r1, [pc, #196]
	ands r0, r1
	movs r1, #128
	lsls r1, r1, #1
	orrs r0, r1
	ldr r1, [pc, #192]
	ands r0, r1
	movs r1, #128
	lsls r1, r1, #9
	orrs r0, r1
	ldr r1, [pc, #184]
	ands r0, r1
	adds r1, #1
	orrs r0, r1
	str r0, [sp, #0]
	mov r4, sp
	adds r0, r5, #0
	movs r1, #1
	mov r2, sp
	bl sub_08001A48
	mov r0, sp
	strb r6, [r0, #0]
	strb r6, [r4, #1]
	strb r6, [r4, #2]
	movs r0, #2
	strb r0, [r4, #3]
	adds r0, r5, #0
	movs r1, #2
	mov r2, sp
	bl sub_08001A48
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl Bg_DrawLevelScreen
	adds r0, r5, #0
	movs r1, #2
	movs r2, #0
	movs r3, #0
	bl Bg_DrawLevelScreen
	ldr r0, [pc, #120]
	movs r1, #31
	bl sub_08004848
	ldr r1, [pc, #116]
	movs r2, #248
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1, #0]
	adds r1, #2
	ldr r3, [pc, #108]
	adds r0, r3, #0
	strh r0, [r1, #0]
	adds r1, #2
	ldr r2, [pc, #104]
	adds r0, r2, #0
	strh r0, [r1, #0]
	movs r2, #128
	lsls r2, r2, #19
	ldrh r0, [r2, #0]
	movs r3, #186
	lsls r3, r3, #5
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2, #0]
	ldr r0, [pc, #88]
	movs r4, #160
	lsls r4, r4, #19
	adds r1, r4, #0
	movs r2, #224
	movs r3, #16
	bl sub_08001EBC
	ldr r0, [pc, #76]
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
	.4byte 0x0300398C
	.4byte 0x080AA640
	.4byte 0x082B9A30
	.4byte 0x082BC100
	.4byte 0xFFFFFF00
	.4byte 0xFFFF00FF
	.4byte 0xFF00FFFF
	.4byte 0x00FFFFFF
	.4byte 0x083D2038
	.4byte 0x04000008
	.4byte 0x00001E81
	.4byte 0x00001D82
	.4byte 0x083DC738
	.4byte 0x083DC758

	.thumb
	.align 1, 0
	.global sub_08303390
	.thumb_func
sub_08303390:
	push {lr}
	ldr r0, [pc, #16]
	movs r2, #2
	negs r2, r2
	movs r1, #2
	movs r3, #0
	bl sub_08001404
	pop {r0}
	bx r0
	.4byte 0x0300398C

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

	.thumb
	.align 1, 0
	.global sub_08303530
	.thumb_func
sub_08303530:
	push {lr}
	ldr r0, [pc, #16]
	movs r1, #2
	movs r2, #0
	movs r3, #2
	bl sub_08001404
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x0300398C

	.thumb
	.align 1, 0
	.global sub_08303548
	.thumb_func
sub_08303548:
	push {r4, r5, r6, lr}
	sub sp, #4
	bl sub_0800436C
	bl sub_08004D70
	bl sub_08001A6C
	ldr r5, [pc, #244]
	ldr r1, [pc, #248]
	adds r0, r5, #0
	bl sub_08001280
	adds r0, r5, #0
	movs r1, #0
	bl sub_080012C0
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	bl sub_080012F4
	ldr r2, [pc, #224]
	adds r0, r5, #0
	movs r1, #1
	bl sub_08001314
	adds r0, r5, #0
	movs r1, #2
	movs r2, #1
	bl sub_080012F4
	ldr r2, [pc, #208]
	adds r0, r5, #0
	movs r1, #2
	bl sub_08001314
	ldr r1, [pc, #204]
	ldr r0, [sp, #0]
	ands r0, r1
	movs r6, #1
	orrs r0, r6
	ldr r1, [pc, #196]
	ands r0, r1
	movs r1, #128
	lsls r1, r1, #1
	orrs r0, r1
	ldr r1, [pc, #192]
	ands r0, r1
	movs r1, #128
	lsls r1, r1, #9
	orrs r0, r1
	ldr r1, [pc, #184]
	ands r0, r1
	adds r1, #1
	orrs r0, r1
	str r0, [sp, #0]
	mov r4, sp
	adds r0, r5, #0
	movs r1, #1
	mov r2, sp
	bl sub_08001A48
	mov r0, sp
	strb r6, [r0, #0]
	strb r6, [r4, #1]
	strb r6, [r4, #2]
	movs r0, #2
	strb r0, [r4, #3]
	adds r0, r5, #0
	movs r1, #2
	mov r2, sp
	bl sub_08001A48
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl Bg_DrawLevelScreen
	adds r0, r5, #0
	movs r1, #2
	movs r2, #0
	movs r3, #0
	bl Bg_DrawLevelScreen
	ldr r0, [pc, #120]
	movs r1, #31
	bl sub_08004848
	ldr r1, [pc, #116]
	movs r2, #248
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1, #0]
	adds r1, #2
	ldr r3, [pc, #108]
	adds r0, r3, #0
	strh r0, [r1, #0]
	adds r1, #2
	ldr r2, [pc, #104]
	adds r0, r2, #0
	strh r0, [r1, #0]
	movs r2, #128
	lsls r2, r2, #19
	ldrh r0, [r2, #0]
	movs r3, #186
	lsls r3, r3, #5
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2, #0]
	ldr r0, [pc, #88]
	movs r4, #160
	lsls r4, r4, #19
	adds r1, r4, #0
	movs r2, #224
	movs r3, #16
	bl sub_08001EBC
	ldr r0, [pc, #76]
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
	.4byte 0x0300398C
	.4byte 0x080ABC90
	.4byte 0x082C2440
	.4byte 0x082C4B10
	.4byte 0xFFFFFF00
	.4byte 0xFFFF00FF
	.4byte 0xFF00FFFF
	.4byte 0x00FFFFFF
	.4byte 0x083D2038
	.4byte 0x04000008
	.4byte 0x00001E81
	.4byte 0x00001D82
	.4byte 0x083DC738
	.4byte 0x083DC758

	.thumb
	.align 1, 0
	.global sub_08303688
	.thumb_func
sub_08303688:
	push {lr}
	ldr r0, [pc, #16]
	movs r3, #1
	negs r3, r3
	movs r1, #2
	adds r2, r3, #0
	bl sub_08001404
	pop {r0}
	bx r0
	.4byte 0x0300398C

	.thumb
	.align 1, 0
	.global sub_083036A0
	.thumb_func
sub_083036A0:
	push {r4, r5, r6, lr}
	sub sp, #4
	bl sub_0800436C
	bl sub_08004D70
	bl sub_08001A6C
	ldr r5, [pc, #244]
	ldr r1, [pc, #248]
	adds r0, r5, #0
	bl sub_08001280
	adds r0, r5, #0
	movs r1, #0
	bl sub_080012C0
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	bl sub_080012F4
	ldr r2, [pc, #224]
	adds r0, r5, #0
	movs r1, #1
	bl sub_08001314
	adds r0, r5, #0
	movs r1, #2
	movs r2, #1
	bl sub_080012F4
	ldr r2, [pc, #208]
	adds r0, r5, #0
	movs r1, #2
	bl sub_08001314
	ldr r1, [pc, #204]
	ldr r0, [sp, #0]
	ands r0, r1
	movs r6, #1
	orrs r0, r6
	ldr r1, [pc, #196]
	ands r0, r1
	movs r1, #128
	lsls r1, r1, #1
	orrs r0, r1
	ldr r1, [pc, #192]
	ands r0, r1
	movs r1, #128
	lsls r1, r1, #9
	orrs r0, r1
	ldr r1, [pc, #184]
	ands r0, r1
	adds r1, #1
	orrs r0, r1
	str r0, [sp, #0]
	mov r4, sp
	adds r0, r5, #0
	movs r1, #1
	mov r2, sp
	bl sub_08001A48
	mov r0, sp
	strb r6, [r0, #0]
	strb r6, [r4, #1]
	strb r6, [r4, #2]
	movs r0, #2
	strb r0, [r4, #3]
	adds r0, r5, #0
	movs r1, #2
	mov r2, sp
	bl sub_08001A48
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl Bg_DrawLevelScreen
	adds r0, r5, #0
	movs r1, #2
	movs r2, #0
	movs r3, #0
	bl Bg_DrawLevelScreen
	ldr r0, [pc, #120]
	movs r1, #31
	bl sub_08004848
	ldr r1, [pc, #116]
	movs r2, #248
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1, #0]
	adds r1, #2
	ldr r3, [pc, #108]
	adds r0, r3, #0
	strh r0, [r1, #0]
	adds r1, #2
	ldr r2, [pc, #104]
	adds r0, r2, #0
	strh r0, [r1, #0]
	movs r2, #128
	lsls r2, r2, #19
	ldrh r0, [r2, #0]
	movs r3, #186
	lsls r3, r3, #5
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2, #0]
	ldr r0, [pc, #88]
	movs r4, #160
	lsls r4, r4, #19
	adds r1, r4, #0
	movs r2, #224
	movs r3, #16
	bl sub_08001EBC
	ldr r0, [pc, #76]
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
	.4byte 0x0300398C
	.4byte 0x080B0A90
	.4byte 0x082E21F0
	.4byte 0x082E42C0
	.4byte 0xFFFFFF00
	.4byte 0xFFFF00FF
	.4byte 0xFF00FFFF
	.4byte 0x00FFFFFF
	.4byte 0x083D2038
	.4byte 0x04000008
	.4byte 0x00001E81
	.4byte 0x00001D82
	.4byte 0x083DC738
	.4byte 0x083DC758

	.thumb
	.align 1, 0
	.global sub_083037E0
	.thumb_func
sub_083037E0:
	push {lr}
	ldr r0, [pc, #16]
	movs r3, #2
	negs r3, r3
	movs r1, #2
	movs r2, #0
	bl sub_08001404
	pop {r0}
	bx r0
	.4byte 0x0300398C

	.thumb
	.align 1, 0
	.global sub_083037F8
	.thumb_func
sub_083037F8:
	push {r4, r5, r6, lr}
	sub sp, #4
	bl sub_0800436C
	bl sub_08004D70
	bl sub_08001A6C
	ldr r5, [pc, #244]
	ldr r1, [pc, #248]
	adds r0, r5, #0
	bl sub_08001280
	adds r0, r5, #0
	movs r1, #0
	bl sub_080012C0
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	bl sub_080012F4
	ldr r2, [pc, #224]
	adds r0, r5, #0
	movs r1, #1
	bl sub_08001314
	adds r0, r5, #0
	movs r1, #2
	movs r2, #1
	bl sub_080012F4
	ldr r2, [pc, #208]
	adds r0, r5, #0
	movs r1, #2
	bl sub_08001314
	ldr r1, [pc, #204]
	ldr r0, [sp, #0]
	ands r0, r1
	movs r6, #1
	orrs r0, r6
	ldr r1, [pc, #196]
	ands r0, r1
	movs r1, #128
	lsls r1, r1, #1
	orrs r0, r1
	ldr r1, [pc, #192]
	ands r0, r1
	movs r1, #128
	lsls r1, r1, #9
	orrs r0, r1
	ldr r1, [pc, #184]
	ands r0, r1
	adds r1, #1
	orrs r0, r1
	str r0, [sp, #0]
	mov r4, sp
	adds r0, r5, #0
	movs r1, #1
	mov r2, sp
	bl sub_08001A48
	mov r0, sp
	strb r6, [r0, #0]
	strb r6, [r4, #1]
	strb r6, [r4, #2]
	movs r0, #2
	strb r0, [r4, #3]
	adds r0, r5, #0
	movs r1, #2
	mov r2, sp
	bl sub_08001A48
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl Bg_DrawLevelScreen
	adds r0, r5, #0
	movs r1, #2
	movs r2, #0
	movs r3, #0
	bl Bg_DrawLevelScreen
	ldr r0, [pc, #120]
	movs r1, #31
	bl sub_08004848
	ldr r1, [pc, #116]
	movs r2, #248
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1, #0]
	adds r1, #2
	ldr r3, [pc, #108]
	adds r0, r3, #0
	strh r0, [r1, #0]
	adds r1, #2
	ldr r2, [pc, #104]
	adds r0, r2, #0
	strh r0, [r1, #0]
	movs r2, #128
	lsls r2, r2, #19
	ldrh r0, [r2, #0]
	movs r3, #186
	lsls r3, r3, #5
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2, #0]
	ldr r0, [pc, #88]
	movs r4, #160
	lsls r4, r4, #19
	adds r1, r4, #0
	movs r2, #224
	movs r3, #16
	bl sub_08001EBC
	ldr r0, [pc, #76]
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
	.4byte 0x0300398C
	.4byte 0x080B14D0
	.4byte 0x082E50D0
	.4byte 0x082E7660
	.4byte 0xFFFFFF00
	.4byte 0xFFFF00FF
	.4byte 0xFF00FFFF
	.4byte 0x00FFFFFF
	.4byte 0x083D2038
	.4byte 0x04000008
	.4byte 0x00001E81
	.4byte 0x00001D82
	.4byte 0x083DC738
	.4byte 0x083DC758

	.thumb
	.align 1, 0
	.global sub_08303938
	.thumb_func
sub_08303938:
	push {lr}
	ldr r0, [pc, #16]
	movs r3, #2
	negs r3, r3
	movs r1, #2
	movs r2, #0
	bl sub_08001404
	pop {r0}
	bx r0
	.4byte 0x0300398C

	.thumb
	.align 1, 0
	.global sub_08303950
	.thumb_func
sub_08303950:
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
	.4byte 0x080AC6D0
	.4byte 0x082C5060
	.4byte 0x082C55F0
	.4byte 0x082C5F80
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

	.thumb
	.align 1, 0
	.global sub_08303AD8
	.thumb_func
sub_08303AD8:
	push {lr}
	ldr r1, [pc, #48]
	ldr r2, [pc, #48]
	adds r0, r2, #0
	strh r0, [r1, #0]
	adds r1, #2
	ldr r2, [pc, #44]
	adds r0, r2, #0
	strh r0, [r1, #0]
	ldr r1, [pc, #44]
	ldr r0, [r1, #0]
	adds r0, #1
	str r0, [r1, #0]
	cmp r0, #2
	bls .L08303B06
	movs r0, #0
	str r0, [r1, #0]
	ldr r0, [pc, #32]
	movs r1, #3
	movs r2, #1
	movs r3, #0
	bl sub_08001404
.L08303B06:
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x04000050
	.4byte 0x00003F42
	.4byte 0x00000C0C
	.4byte 0x03005920
	.4byte 0x0300398C

	.thumb
	.align 1, 0
	.global sub_08303B20
	.thumb_func
sub_08303B20:
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
	.4byte 0x080AD140
	.4byte 0x082C7C90
	.4byte 0x082C8220
	.4byte 0x082CB8B0
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

	.thumb
	.align 1, 0
	.global sub_08303CA8
	.thumb_func
sub_08303CA8:
	push {lr}
	ldr r1, [pc, #48]
	ldr r2, [pc, #48]
	adds r0, r2, #0
	strh r0, [r1, #0]
	adds r1, #2
	ldr r2, [pc, #44]
	adds r0, r2, #0
	strh r0, [r1, #0]
	ldr r1, [pc, #44]
	ldr r0, [r1, #0]
	adds r0, #1
	str r0, [r1, #0]
	cmp r0, #3
	bls .L08303CD6
	movs r0, #0
	str r0, [r1, #0]
	ldr r0, [pc, #32]
	movs r1, #3
	movs r2, #1
	movs r3, #0
	bl sub_08001404
.L08303CD6:
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x04000050
	.4byte 0x00003F42
	.4byte 0x00000C0C
	.4byte 0x03005924
	.4byte 0x0300398C

	.thumb
	.align 1, 0
	.global sub_08303CF0
	.thumb_func
sub_08303CF0:
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
	.4byte 0x080ADDA0
	.4byte 0x082CDB40
	.4byte 0x082CE0D0
	.4byte 0x082CE5E0
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

	.thumb
	.align 1, 0
	.global sub_08303E78
	.thumb_func
sub_08303E78:
	push {lr}
	ldr r1, [pc, #48]
	ldr r2, [pc, #48]
	adds r0, r2, #0
	strh r0, [r1, #0]
	adds r1, #2
	ldr r2, [pc, #44]
	adds r0, r2, #0
	strh r0, [r1, #0]
	ldr r1, [pc, #44]
	ldr r0, [r1, #0]
	adds r0, #1
	str r0, [r1, #0]
	cmp r0, #3
	bls .L08303EA6
	movs r0, #0
	str r0, [r1, #0]
	ldr r0, [pc, #32]
	movs r1, #3
	movs r2, #1
	movs r3, #0
	bl sub_08001404
.L08303EA6:
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x04000050
	.4byte 0x00003F42
	.4byte 0x00000C0C
	.4byte 0x03005928
	.4byte 0x0300398C

	.thumb
	.align 1, 0
	.global sub_08303EC0
	.thumb_func
sub_08303EC0:
	push {r4, r5, r6, lr}
	sub sp, #4
	bl sub_0800436C
	bl sub_08004D70
	bl sub_08001A6C
	ldr r5, [pc, #312]
	ldr r1, [pc, #316]
	adds r0, r5, #0
	bl sub_08001280
	adds r0, r5, #0
	movs r1, #0
	bl sub_080012C0
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	bl sub_080012F4
	ldr r2, [pc, #292]
	adds r0, r5, #0
	movs r1, #1
	bl sub_08001314
	adds r0, r5, #0
	movs r1, #2
	movs r2, #1
	bl sub_080012F4
	ldr r2, [pc, #276]
	adds r0, r5, #0
	movs r1, #2
	bl sub_08001314
	adds r0, r5, #0
	movs r1, #3
	movs r2, #2
	bl sub_080012F4
	ldr r2, [pc, #260]
	adds r0, r5, #0
	movs r1, #3
	bl sub_08001314
	ldr r1, [pc, #256]
	ldr r0, [sp, #0]
	ands r0, r1
	movs r6, #1
	orrs r0, r6
	ldr r1, [pc, #248]
	ands r0, r1
	movs r1, #128
	lsls r1, r1, #1
	orrs r0, r1
	ldr r1, [pc, #244]
	ands r0, r1
	movs r1, #128
	lsls r1, r1, #9
	orrs r0, r1
	ldr r1, [pc, #236]
	ands r0, r1
	adds r1, #1
	orrs r0, r1
	str r0, [sp, #0]
	mov r4, sp
	adds r0, r5, #0
	movs r1, #1
	mov r2, sp
	bl sub_08001A48
	mov r0, sp
	strb r6, [r0, #0]
	strb r6, [r4, #1]
	strb r6, [r4, #2]
	movs r0, #2
	strb r0, [r4, #3]
	adds r0, r5, #0
	movs r1, #2
	mov r2, sp
	bl sub_08001A48
	mov r0, sp
	strb r6, [r0, #0]
	strb r6, [r4, #1]
	strb r6, [r4, #2]
	movs r0, #3
	strb r0, [r4, #3]
	adds r0, r5, #0
	movs r1, #3
	mov r2, sp
	bl sub_08001A48
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl Bg_DrawLevelScreen
	adds r0, r5, #0
	movs r1, #2
	movs r2, #0
	movs r3, #0
	bl Bg_DrawLevelScreen
	adds r0, r5, #0
	movs r1, #3
	movs r2, #0
	movs r3, #0
	bl Bg_DrawLevelScreen
	ldr r0, [pc, #140]
	movs r1, #31
	bl sub_08004848
	ldr r1, [pc, #136]
	movs r2, #248
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1, #0]
	adds r1, #2
	ldr r3, [pc, #128]
	adds r0, r3, #0
	strh r0, [r1, #0]
	adds r1, #2
	ldr r2, [pc, #124]
	adds r0, r2, #0
	strh r0, [r1, #0]
	adds r1, #2
	ldr r3, [pc, #120]
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
	ldr r0, [pc, #100]
	movs r4, #160
	lsls r4, r4, #19
	adds r1, r4, #0
	movs r2, #224
	movs r3, #16
	bl sub_08001EBC
	ldr r0, [pc, #88]
	adds r1, r4, #0
	movs r2, #240
	movs r3, #16
	bl sub_08001EBC
	movs r0, #14
	bl sub_08004880
	ldr r0, [pc, #76]
	strb r6, [r0, #0]
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x0300398C
	.4byte 0x080AE8B0
	.4byte 0x082D0EB0
	.4byte 0x082D25C0
	.4byte 0x082D3D50
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
	.4byte 0x0300592C

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

	.thumb
	.align 1, 0
	.global sub_083040FC
	.thumb_func
sub_083040FC:
	push {r4, r5, r6, lr}
	sub sp, #4
	bl sub_0800436C
	bl sub_08004D70
	bl sub_08001A6C
	ldr r5, [pc, #244]
	ldr r1, [pc, #248]
	adds r0, r5, #0
	bl sub_08001280
	adds r0, r5, #0
	movs r1, #0
	bl sub_080012C0
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	bl sub_080012F4
	ldr r2, [pc, #224]
	adds r0, r5, #0
	movs r1, #1
	bl sub_08001314
	adds r0, r5, #0
	movs r1, #2
	movs r2, #1
	bl sub_080012F4
	ldr r2, [pc, #208]
	adds r0, r5, #0
	movs r1, #2
	bl sub_08001314
	ldr r1, [pc, #204]
	ldr r0, [sp, #0]
	ands r0, r1
	movs r6, #1
	orrs r0, r6
	ldr r1, [pc, #196]
	ands r0, r1
	movs r1, #128
	lsls r1, r1, #1
	orrs r0, r1
	ldr r1, [pc, #192]
	ands r0, r1
	movs r1, #128
	lsls r1, r1, #9
	orrs r0, r1
	ldr r1, [pc, #184]
	ands r0, r1
	adds r1, #1
	orrs r0, r1
	str r0, [sp, #0]
	mov r4, sp
	adds r0, r5, #0
	movs r1, #1
	mov r2, sp
	bl sub_08001A48
	mov r0, sp
	strb r6, [r0, #0]
	strb r6, [r4, #1]
	strb r6, [r4, #2]
	movs r0, #2
	strb r0, [r4, #3]
	adds r0, r5, #0
	movs r1, #2
	mov r2, sp
	bl sub_08001A48
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl Bg_DrawLevelScreen
	adds r0, r5, #0
	movs r1, #2
	movs r2, #0
	movs r3, #0
	bl Bg_DrawLevelScreen
	ldr r0, [pc, #120]
	movs r1, #31
	bl sub_08004848
	ldr r1, [pc, #116]
	movs r2, #248
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1, #0]
	adds r1, #2
	ldr r3, [pc, #108]
	adds r0, r3, #0
	strh r0, [r1, #0]
	adds r1, #2
	ldr r2, [pc, #104]
	adds r0, r2, #0
	strh r0, [r1, #0]
	movs r2, #128
	lsls r2, r2, #19
	ldrh r0, [r2, #0]
	movs r3, #186
	lsls r3, r3, #5
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2, #0]
	ldr r0, [pc, #88]
	movs r4, #160
	lsls r4, r4, #19
	adds r1, r4, #0
	movs r2, #224
	movs r3, #16
	bl sub_08001EBC
	ldr r0, [pc, #76]
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
	.4byte 0x0300398C
	.4byte 0x080AF3F0
	.4byte 0x082D5FE0
	.4byte 0x082D91B0
	.4byte 0xFFFFFF00
	.4byte 0xFFFF00FF
	.4byte 0xFF00FFFF
	.4byte 0x00FFFFFF
	.4byte 0x083D2038
	.4byte 0x04000008
	.4byte 0x00001E81
	.4byte 0x00001D82
	.4byte 0x083DC738
	.4byte 0x083DC758

	.thumb
	.align 1, 0
	.global sub_0830423C
	.thumb_func
sub_0830423C:
	push {r4, r5, r6, lr}
	sub sp, #4
	bl sub_0800436C
	bl sub_08004D70
	bl sub_08001A6C
	ldr r4, [pc, #44]
	ldr r1, [pc, #48]
	adds r0, r4, #0
	bl sub_08001280
	adds r0, r4, #0
	movs r1, #0
	bl sub_080012C0
	ldr r0, [pc, #36]
	ldr r0, [r0, #0]
	cmp r0, #13
	bhi .L0830428C
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	bl sub_080012F4
	ldr r2, [pc, #20]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08001314
	b .L083042A0
	subs r1, #140
	lsls r0, r0, #12
	.2byte 0xff10 @ .raw
	lsrs r2, r1, #32
	subs r7, #12
	lsls r0, r0, #12
	.2byte 0xbec0 @ .raw bkpt 0x00c0
	lsrs r5, r5, #32
.L0830428C:
	adds r0, r4, #0
	movs r1, #1
	movs r2, #1
	bl sub_080012F4
	ldr r2, [pc, #180]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08001314
.L083042A0:
	ldr r6, [pc, #172]
	adds r0, r6, #0
	movs r1, #2
	movs r2, #2
	bl sub_080012F4
	ldr r2, [pc, #164]
	adds r0, r6, #0
	movs r1, #2
	bl sub_08001314
	ldr r1, [pc, #160]
	ldr r0, [sp, #0]
	ands r0, r1
	movs r5, #1
	orrs r0, r5
	ldr r1, [pc, #152]
	ands r0, r1
	movs r1, #128
	lsls r1, r1, #1
	orrs r0, r1
	ldr r1, [pc, #148]
	ands r0, r1
	movs r1, #128
	lsls r1, r1, #9
	orrs r0, r1
	ldr r1, [pc, #140]
	ands r0, r1
	adds r1, #1
	orrs r0, r1
	str r0, [sp, #0]
	mov r4, sp
	adds r0, r6, #0
	movs r1, #1
	mov r2, sp
	bl sub_08001A48
	mov r0, sp
	strb r5, [r0, #0]
	strb r5, [r4, #1]
	strb r5, [r4, #2]
	movs r0, #2
	strb r0, [r4, #3]
	adds r0, r6, #0
	movs r1, #2
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
	ldr r1, [pc, #76]
	movs r2, #248
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1, #0]
	adds r1, #2
	ldr r3, [pc, #68]
	adds r0, r3, #0
	strh r0, [r1, #0]
	adds r1, #2
	ldr r2, [pc, #64]
	adds r0, r2, #0
	strh r0, [r1, #0]
	movs r2, #128
	lsls r2, r2, #19
	ldrh r0, [r2, #0]
	movs r3, #178
	lsls r3, r3, #5
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2, #0]
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x082DCFD0
	.4byte 0x0300398C
	.4byte 0x082DF320
	.4byte 0xFFFFFF00
	.4byte 0xFFFF00FF
	.4byte 0xFF00FFFF
	.4byte 0x00FFFFFF
	.4byte 0x04000008
	.4byte 0x00001E81
	.4byte 0x00001D82

	.thumb
	.align 1, 0
	.global sub_08304374
	.thumb_func
sub_08304374:
	push {r4, r5, lr}
	bl sub_0830423C
	movs r0, #0
	movs r1, #192
	movs r2, #10
	bl Fade_Start
	b .L0830438A
.L08304386:
	bl VBlankIntrWait
.L0830438A:
	bl Fade_IsBusy
	cmp r0, #0
	bne .L08304386
	movs r4, #0
	ldr r5, [pc, #0]
	b .L0830439E
	lsrs r2, r2, #20
	lsls r0, r0, #12
.L0830439C:
	adds r4, #1
.L0830439E:
	ldr r0, [pc, #40]
	cmp r4, r0
	bhi .L083043BA
	bl VBlankIntrWait
	ldr r0, [pc, #32]
	adds r1, r5, #0
	bl sub_08002094
	movs r0, #11
	ldrh r1, [r5, #0]
	ands r0, r1
	cmp r0, #0
	beq .L0830439C
.L083043BA:
	movs r0, #1
	movs r1, #192
	movs r2, #10
	bl Fade_Start
	b .L083043D4
	movs r0, r0
	lsls r7, r4, #5
	movs r0, r0
	lsrs r0, r2, #20
	lsls r0, r0, #12
.L083043D0:
	bl VBlankIntrWait
.L083043D4:
	bl Fade_IsBusy
	cmp r0, #0
	bne .L083043D0
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_083043E4
	.thumb_func
sub_083043E4:
	push {r4, r5, lr}
	sub sp, #4
	bl sub_08316824
	bl sub_08302B5C
	ldr r4, [pc, #80]
	adds r0, r4, #0
	bl sub_083177CC
	adds r1, r4, #0
	adds r1, #56
	movs r0, #0
	strb r0, [r1, #0]
	ldr r0, [pc, #68]
	strh r0, [r4, #8]
	ldr r0, [pc, #68]
	str r0, [r4, #48]
	ldr r0, [pc, #68]
	str r0, [r4, #44]
	ldr r0, [pc, #68]
	str r0, [r4, #0]
	movs r0, #128
	lsls r0, r0, #5
	str r0, [r4, #4]
	adds r0, r4, #0
	bl GAX2_init
	movs r4, #1
	negs r4, r4
	ldr r0, [pc, #52]
	ldr r0, [r0, #0]
	bl sub_08316810
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_083191AC
	ldr r1, [pc, #40]
	movs r0, #0
	bl sub_08001FC8
	movs r0, #0
	movs r1, #192
	movs r2, #30
	bl Fade_Start
	b .L08304464
	mov r8, ip
	lsls r0, r0, #12
	strh r1, [r4, r0]
	movs r0, r0
	.2byte 0xf2e4 @ .raw
	lsrs r5, r6, #32
	adds r4, r3, #1
	lsrs r5, r7, #32
	.2byte 0x471c @ .raw bxns r3
	lsls r0, r0, #12
	ldr r0, [r7, r6]
	lsls r0, r0, #12
	lsrs r5, r7, #1
	lsls r0, r0, #12
.L08304460:
	bl VBlankIntrWait
.L08304464:
	bl Fade_IsBusy
	cmp r0, #0
	bne .L08304460
	movs r4, #0
	ldr r5, [pc, #4]
	b .L0830447A
	movs r0, r0
	lsrs r2, r2, #20
	lsls r0, r0, #12
.L08304478:
	adds r4, #1
.L0830447A:
	cmp r4, #89
	bhi .L08304498
	bl VBlankIntrWait
	ldr r0, [pc, #80]
	adds r1, r5, #0
	bl sub_08002094
	bl sub_08302CB4
	movs r0, #11
	ldrh r1, [r5, #0]
	ands r0, r1
	cmp r0, #0
	beq .L08304478
.L08304498:
	ldr r4, [pc, #60]
	ldr r1, [pc, #64]
	ldr r2, [pc, #64]
	movs r0, #0
	str r0, [sp, #0]
	adds r0, r4, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083044B2
	b .L08304A6E
.L083044B2:
	adds r0, r4, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083044C0
	b .L08304A6E
.L083044C0:
	bl sub_08317074
	bl sub_0830298C
	movs r0, #0
	movs r1, #192
	movs r2, #3
	bl Fade_Start
	b .L083044E8
	lsrs r0, r2, #20
	lsls r0, r0, #12
	cmp r4, #181
	lsrs r0, r6, #32
	str r1, [sp, #608]
	lsrs r5, r7, #32
	str r1, [sp, #720]
	lsrs r5, r7, #32
.L083044E4:
	bl VBlankIntrWait
.L083044E8:
	bl Fade_IsBusy
	cmp r0, #0
	bne .L083044E4
	movs r4, #0
	ldr r5, [pc, #4]
	b .L083044FE
	movs r0, r0
	lsrs r2, r2, #20
	lsls r0, r0, #12
.L083044FC:
	adds r4, #1
.L083044FE:
	cmp r4, #89
	bhi .L0830451C
	bl VBlankIntrWait
	ldr r0, [pc, #208]
	adds r1, r5, #0
	bl sub_08002094
	bl sub_08302B14
	movs r0, #11
	ldrh r1, [r5, #0]
	ands r0, r1
	cmp r0, #0
	beq .L083044FC
.L0830451C:
	ldr r4, [pc, #188]
	ldr r1, [pc, #192]
	ldr r2, [pc, #192]
	ldr r3, [pc, #196]
	ldr r0, [pc, #196]
	str r0, [sp, #0]
	adds r0, r4, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08304536
	b .L08304A6E
.L08304536:
	adds r0, r4, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08304544
	b .L08304A6E
.L08304544:
	bl sub_08317074
	bl sub_08302D10
	bl sub_08302E98
	ldr r4, [pc, #156]
	ldr r1, [pc, #160]
	movs r5, #0
	str r5, [sp, #0]
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830456A
	b .L08304A6E
.L0830456A:
	adds r0, r4, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08304578
	b .L08304A6E
.L08304578:
	ldr r1, [pc, #124]
	ldr r2, [pc, #128]
	ldr r3, [pc, #128]
	str r5, [sp, #0]
	adds r0, r4, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830458E
	b .L08304A6E
.L0830458E:
	adds r0, r4, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830459C
	b .L08304A6E
.L0830459C:
	ldr r1, [pc, #100]
	ldr r2, [pc, #104]
	ldr r3, [pc, #104]
	ldr r0, [pc, #108]
	str r0, [sp, #0]
	adds r0, r4, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083045B4
	b .L08304A6E
.L083045B4:
	adds r0, r4, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083045C2
	b .L08304A6E
.L083045C2:
	bl sub_08317074
	bl sub_0830298C
	movs r0, #0
	movs r1, #192
	movs r2, #3
	bl Fade_Start
	b .L08304618
	movs r0, r0
	lsrs r0, r2, #20
	lsls r0, r0, #12
	cmp r3, #21
	lsrs r0, r6, #32
	str r1, [sp, #832]
	lsrs r5, r7, #32
	str r1, [sp, #944]
	lsrs r5, r7, #32
	str r2, [sp, #32]
	lsrs r5, r7, #32
	str r2, [sp, #128]
	lsrs r5, r7, #32
	cmp r6, #153
	lsrs r0, r6, #32
	str r2, [sp, #240]
	lsrs r5, r7, #32
	str r2, [sp, #336]
	lsrs r5, r7, #32
	str r2, [sp, #448]
	lsrs r5, r7, #32
	str r2, [sp, #560]
	lsrs r5, r7, #32
	str r2, [sp, #640]
	lsrs r5, r7, #32
	str r2, [sp, #736]
	lsrs r5, r7, #32
	str r2, [sp, #848]
	lsrs r5, r7, #32
	str r2, [sp, #944]
	lsrs r5, r7, #32
.L08304614:
	bl VBlankIntrWait
.L08304618:
	bl Fade_IsBusy
	adds r4, r0, #0
	cmp r4, #0
	bne .L08304614
	ldr r5, [pc, #220]
	ldr r1, [pc, #220]
	ldr r2, [pc, #224]
	ldr r3, [pc, #224]
	ldr r0, [pc, #228]
	str r0, [sp, #0]
	adds r0, r5, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830463C
	b .L08304A6E
.L0830463C:
	adds r0, r5, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830464A
	b .L08304A6E
.L0830464A:
	ldr r1, [pc, #200]
	ldr r2, [pc, #200]
	ldr r3, [pc, #204]
	str r4, [sp, #0]
	adds r0, r5, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08304660
	b .L08304A6E
.L08304660:
	adds r0, r5, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830466E
	b .L08304A6E
.L0830466E:
	ldr r1, [pc, #176]
	str r4, [sp, #0]
	adds r0, r5, #0
	movs r2, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08304684
	b .L08304A6E
.L08304684:
	adds r0, r5, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08304692
	b .L08304A6E
.L08304692:
	ldr r1, [pc, #144]
	ldr r2, [pc, #144]
	ldr r3, [pc, #148]
	ldr r0, [pc, #148]
	str r0, [sp, #0]
	adds r0, r5, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083046AA
	b .L08304A6E
.L083046AA:
	adds r0, r5, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083046B8
	b .L08304A6E
.L083046B8:
	bl sub_08317074
	bl sub_08302D10
	bl sub_08302E98
	ldr r4, [pc, #108]
	ldr r1, [pc, #112]
	ldr r2, [pc, #112]
	ldr r3, [pc, #116]
	ldr r0, [pc, #116]
	str r0, [sp, #0]
	adds r0, r4, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083046DE
	b .L08304A6E
.L083046DE:
	adds r0, r4, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083046EC
	b .L08304A6E
.L083046EC:
	bl sub_08317074
	bl sub_0830298C
	movs r0, #0
	movs r1, #192
	movs r2, #3
	bl Fade_Start
	b .L0830474C
	cmp r3, #21
	lsrs r0, r6, #32
	str r3, [sp, #16]
	lsrs r5, r7, #32
	str r3, [sp, #112]
	lsrs r5, r7, #32
	str r3, [sp, #208]
	lsrs r5, r7, #32
	str r3, [sp, #320]
	lsrs r5, r7, #32
	str r3, [sp, #416]
	lsrs r5, r7, #32
	str r3, [sp, #496]
	lsrs r5, r7, #32
	str r3, [sp, #592]
	lsrs r5, r7, #32
	str r3, [sp, #624]
	lsrs r5, r7, #32
	str r3, [sp, #704]
	lsrs r5, r7, #32
	str r3, [sp, #800]
	lsrs r5, r7, #32
	str r3, [sp, #896]
	lsrs r5, r7, #32
	str r3, [sp, #992]
	lsrs r5, r7, #32
	cmp r6, #153
	lsrs r0, r6, #32
	str r4, [sp, #64]
	lsrs r5, r7, #32
	str r4, [sp, #112]
	lsrs r5, r7, #32
	str r4, [sp, #224]
	lsrs r5, r7, #32
	str r4, [sp, #336]
	lsrs r5, r7, #32
.L08304748:
	bl VBlankIntrWait
.L0830474C:
	bl Fade_IsBusy
	adds r4, r0, #0
	cmp r4, #0
	bne .L08304748
	ldr r5, [pc, #108]
	ldr r1, [pc, #108]
	ldr r2, [pc, #112]
	str r4, [sp, #0]
	adds r0, r5, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830476E
	b .L08304A6E
.L0830476E:
	adds r0, r5, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830477C
	b .L08304A6E
.L0830477C:
	bl sub_08317074
	bl sub_08302D10
	bl sub_08302E98
	ldr r5, [pc, #68]
	ldr r1, [pc, #72]
	ldr r2, [pc, #72]
	str r4, [sp, #0]
	adds r0, r5, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083047A0
	b .L08304A6E
.L083047A0:
	adds r0, r5, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083047AE
	b .L08304A6E
.L083047AE:
	bl sub_08317074
	bl sub_0830298C
	movs r0, #0
	movs r1, #192
	movs r2, #3
	bl Fade_Start
	b .L083047E0
	movs r0, r0
	cmp r3, #21
	lsrs r0, r6, #32
	str r4, [sp, #416]
	lsrs r5, r7, #32
	str r4, [sp, #464]
	lsrs r5, r7, #32
	cmp r6, #153
	lsrs r0, r6, #32
	str r4, [sp, #512]
	lsrs r5, r7, #32
	str r4, [sp, #608]
	lsrs r5, r7, #32
.L083047DC:
	bl VBlankIntrWait
.L083047E0:
	bl Fade_IsBusy
	adds r4, r0, #0
	cmp r4, #0
	bne .L083047DC
	ldr r5, [pc, #108]
	ldr r1, [pc, #108]
	ldr r2, [pc, #112]
	ldr r3, [pc, #112]
	ldr r0, [pc, #116]
	str r0, [sp, #0]
	adds r0, r5, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08304804
	b .L08304A6E
.L08304804:
	adds r0, r5, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08304812
	b .L08304A6E
.L08304812:
	bl sub_08317074
	bl sub_08302D10
	bl sub_08302E98
	ldr r5, [pc, #76]
	ldr r1, [pc, #76]
	ldr r2, [pc, #80]
	ldr r3, [pc, #80]
	str r4, [sp, #0]
	adds r0, r5, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08304836
	b .L08304A6E
.L08304836:
	adds r0, r5, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08304844
	b .L08304A6E
.L08304844:
	bl sub_08317074
	bl sub_08303950
	bl sub_08303AD8
	movs r4, #0
	ldr r5, [pc, #40]
	b .L08304882
	movs r0, r0
	cmp r3, #21
	lsrs r0, r6, #32
	str r4, [sp, #704]
	lsrs r5, r7, #32
	str r4, [sp, #784]
	lsrs r5, r7, #32
	str r4, [sp, #880]
	lsrs r5, r7, #32
	str r4, [sp, #976]
	lsrs r5, r7, #32
	cmp r6, #153
	lsrs r0, r6, #32
	str r5, [sp, #0]
	lsrs r5, r7, #32
	str r5, [sp, #96]
	lsrs r5, r7, #32
	str r5, [sp, #192]
	lsrs r5, r7, #32
	lsrs r2, r2, #20
	lsls r0, r0, #12
.L08304880:
	adds r4, #1
.L08304882:
	cmp r4, #44
	bhi .L083048A0
	bl VBlankIntrWait
	ldr r0, [pc, #156]
	adds r1, r5, #0
	bl sub_08002094
	bl sub_08303AD8
	movs r0, #11
	ldrh r1, [r5, #0]
	ands r0, r1
	cmp r0, #0
	beq .L08304880
.L083048A0:
	ldr r4, [pc, #136]
	ldr r1, [pc, #140]
	ldr r2, [pc, #140]
	ldr r3, [pc, #144]
	ldr r0, [pc, #144]
	str r0, [sp, #0]
	adds r0, r4, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083048BA
	b .L08304A6E
.L083048BA:
	adds r0, r4, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083048C8
	b .L08304A6E
.L083048C8:
	ldr r1, [pc, #116]
	ldr r2, [pc, #120]
	ldr r3, [pc, #120]
	movs r0, #0
	str r0, [sp, #0]
	adds r0, r4, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083048E0
	b .L08304A6E
.L083048E0:
	adds r0, r4, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083048EE
	b .L08304A6E
.L083048EE:
	ldr r1, [pc, #92]
	ldr r2, [pc, #92]
	ldr r3, [pc, #96]
	ldr r0, [pc, #96]
	str r0, [sp, #0]
	adds r0, r4, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08304906
	b .L08304A6E
.L08304906:
	adds r0, r4, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08304914
	b .L08304A6E
.L08304914:
	bl sub_08317074
	bl sub_08303250
	movs r0, #0
	movs r1, #192
	movs r2, #3
	bl Fade_Start
	b .L08304960
	lsrs r0, r2, #20
	lsls r0, r0, #12
	subs r2, #217
	lsrs r0, r6, #32
	str r5, [sp, #256]
	lsrs r5, r7, #32
	str r5, [sp, #352]
	lsrs r5, r7, #32
	str r5, [sp, #448]
	lsrs r5, r7, #32
	str r5, [sp, #544]
	lsrs r5, r7, #32
	str r5, [sp, #624]
	lsrs r5, r7, #32
	str r5, [sp, #704]
	lsrs r5, r7, #32
	str r5, [sp, #784]
	lsrs r5, r7, #32
	str r5, [sp, #864]
	lsrs r5, r7, #32
	str r5, [sp, #960]
	lsrs r5, r7, #32
	str r6, [sp, #32]
	lsrs r5, r7, #32
	str r6, [sp, #144]
	lsrs r5, r7, #32
.L0830495C:
	bl VBlankIntrWait
.L08304960:
	bl Fade_IsBusy
	cmp r0, #0
	bne .L0830495C
	movs r4, #0
	ldr r5, [pc, #4]
	b .L08304976
	movs r0, r0
	lsrs r2, r2, #20
	lsls r0, r0, #12
.L08304974:
	adds r4, #1
.L08304976:
	cmp r4, #44
	bhi .L08304994
	bl VBlankIntrWait
	ldr r0, [pc, #156]
	adds r1, r5, #0
	bl sub_08002094
	bl sub_08303390
	movs r0, #11
	ldrh r1, [r5, #0]
	ands r0, r1
	cmp r0, #0
	beq .L08304974
.L08304994:
	ldr r4, [pc, #136]
	ldr r1, [pc, #140]
	ldr r2, [pc, #140]
	ldr r3, [pc, #144]
	ldr r0, [pc, #144]
	str r0, [sp, #0]
	adds r0, r4, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08304A6E
	adds r0, r4, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08304A6E
	bl sub_08317074
	bl sub_08302D10
	bl sub_08302E98
	ldr r4, [pc, #108]
	ldr r1, [pc, #112]
	movs r5, #0
	str r5, [sp, #0]
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08304A6E
	adds r0, r4, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08304A6E
	ldr r1, [pc, #80]
	ldr r2, [pc, #84]
	str r5, [sp, #0]
	adds r0, r4, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08304A6E
	adds r0, r4, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08304A6E
	bl sub_08317074
	bl sub_0830298C
	movs r0, #0
	movs r1, #192
	movs r2, #3
	bl Fade_Start
	b .L08304A48
	lsrs r0, r2, #20
	lsls r0, r0, #12
	adds r3, #145
	lsrs r0, r6, #32
	str r6, [sp, #224]
	lsrs r5, r7, #32
	str r6, [sp, #320]
	lsrs r5, r7, #32
	str r6, [sp, #432]
	lsrs r5, r7, #32
	str r6, [sp, #528]
	lsrs r5, r7, #32
	cmp r6, #153
	lsrs r0, r6, #32
	str r6, [sp, #624]
	lsrs r5, r7, #32
	str r6, [sp, #720]
	lsrs r5, r7, #32
	str r6, [sp, #816]
	lsrs r5, r7, #32
.L08304A44:
	bl VBlankIntrWait
.L08304A48:
	bl Fade_IsBusy
	cmp r0, #0
	bne .L08304A44
	ldr r4, [pc, #40]
	ldr r1, [pc, #44]
	ldr r2, [pc, #44]
	ldr r3, [pc, #48]
	ldr r0, [pc, #48]
	str r0, [sp, #0]
	adds r0, r4, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08304A6E
	adds r0, r4, #0
	bl sub_083025FC
.L08304A6E:
	movs r0, #1
	movs r1, #192
	movs r2, #60
	bl Fade_Start
	b .L08304A94
	movs r0, r0
	cmp r3, #21
	lsrs r0, r6, #32
	str r6, [sp, #896]
	lsrs r5, r7, #32
	str r6, [sp, #976]
	lsrs r5, r7, #32
	str r7, [sp, #48]
	lsrs r5, r7, #32
	str r7, [sp, #160]
	lsrs r5, r7, #32
.L08304A90:
	bl VBlankIntrWait
.L08304A94:
	bl Fade_IsBusy
	cmp r0, #0
	bne .L08304A90
	movs r0, #1
	bl sub_08310110
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08304AAC
	.thumb_func
sub_08304AAC:
	push {r4, r5, lr}
	sub sp, #4
	bl sub_08316824
	bl sub_08302B5C
	movs r0, #0
	movs r1, #192
	movs r2, #30
	bl Fade_Start
	b .L08304AC8
.L08304AC4:
	bl VBlankIntrWait
.L08304AC8:
	bl Fade_IsBusy
	adds r5, r0, #0
	cmp r5, #0
	bne .L08304AC4
	ldr r4, [pc, #76]
	adds r0, r4, #0
	bl sub_083177CC
	adds r0, r4, #0
	adds r0, #56
	strb r5, [r0, #0]
	ldr r0, [pc, #64]
	strh r0, [r4, #8]
	ldr r0, [pc, #64]
	str r0, [r4, #48]
	ldr r0, [pc, #64]
	str r0, [r4, #44]
	ldr r0, [pc, #64]
	str r0, [r4, #0]
	movs r0, #128
	lsls r0, r0, #5
	str r0, [r4, #4]
	adds r0, r4, #0
	bl GAX2_init
	movs r4, #1
	negs r4, r4
	ldr r0, [pc, #48]
	ldr r0, [r0, #0]
	bl sub_08316810
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_083191AC
	ldr r1, [pc, #36]
	movs r0, #0
	bl sub_08001FC8
	movs r4, #0
	ldr r5, [pc, #32]
	b .L08304B42
	movs r0, r0
	mov r8, ip
	lsls r0, r0, #12
	strh r1, [r4, r0]
	movs r0, r0
	.2byte 0xf2e4 @ .raw
	lsrs r5, r6, #32
	adds r4, r3, #1
	lsrs r5, r7, #32
	.2byte 0x471c @ .raw bxns r3
	lsls r0, r0, #12
	ldr r0, [r7, r6]
	lsls r0, r0, #12
	lsrs r5, r7, #1
	lsls r0, r0, #12
	lsrs r2, r2, #20
	lsls r0, r0, #12
.L08304B40:
	adds r4, #1
.L08304B42:
	cmp r4, #89
	bhi .L08304B60
	bl VBlankIntrWait
	ldr r0, [pc, #80]
	adds r1, r5, #0
	bl sub_08002094
	bl sub_08302CB4
	movs r0, #11
	ldrh r1, [r5, #0]
	ands r0, r1
	cmp r0, #0
	beq .L08304B40
.L08304B60:
	ldr r4, [pc, #60]
	ldr r1, [pc, #64]
	movs r0, #0
	str r0, [sp, #0]
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08304B7A
	b .L083050A6
.L08304B7A:
	adds r0, r4, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08304B88
	b .L083050A6
.L08304B88:
	bl sub_08317074
	bl sub_0830298C
	movs r0, #0
	movs r1, #192
	movs r2, #3
	bl Fade_Start
	b .L08304BAC
	lsrs r0, r2, #20
	lsls r0, r0, #12
	cmp r4, #181
	lsrs r0, r6, #32
	str r7, [sp, #256]
	lsrs r5, r7, #32
.L08304BA8:
	bl VBlankIntrWait
.L08304BAC:
	bl Fade_IsBusy
	cmp r0, #0
	bne .L08304BA8
	movs r4, #0
	ldr r5, [pc, #4]
	b .L08304BC2
	movs r0, r0
	lsrs r2, r2, #20
	lsls r0, r0, #12
.L08304BC0:
	adds r4, #1
.L08304BC2:
	cmp r4, #89
	bhi .L08304BE0
	bl VBlankIntrWait
	ldr r0, [pc, #168]
	adds r1, r5, #0
	bl sub_08002094
	bl sub_08302B14
	movs r0, #11
	ldrh r1, [r5, #0]
	ands r0, r1
	cmp r0, #0
	beq .L08304BC0
.L08304BE0:
	ldr r4, [pc, #148]
	ldr r1, [pc, #152]
	ldr r2, [pc, #152]
	movs r5, #0
	str r5, [sp, #0]
	adds r0, r4, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08304BFA
	b .L083050A6
.L08304BFA:
	adds r0, r4, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08304C08
	b .L083050A6
.L08304C08:
	bl sub_08317074
	bl sub_08302D10
	bl sub_08302E98
	ldr r4, [pc, #108]
	ldr r1, [pc, #112]
	ldr r2, [pc, #112]
	ldr r3, [pc, #116]
	str r5, [sp, #0]
	adds r0, r4, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08304C2C
	b .L083050A6
.L08304C2C:
	adds r0, r4, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08304C3A
	b .L083050A6
.L08304C3A:
	ldr r1, [pc, #88]
	ldr r2, [pc, #88]
	ldr r3, [pc, #92]
	str r5, [sp, #0]
	adds r0, r4, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08304C50
	b .L083050A6
.L08304C50:
	adds r0, r4, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08304C5E
	b .L083050A6
.L08304C5E:
	bl sub_08317074
	bl sub_0830298C
	movs r0, #0
	movs r1, #192
	movs r2, #3
	bl Fade_Start
	b .L08304CA4
	movs r0, r0
	lsrs r0, r2, #20
	lsls r0, r0, #12
	cmp r3, #21
	lsrs r0, r6, #32
	str r7, [sp, #352]
	lsrs r5, r7, #32
	str r7, [sp, #448]
	lsrs r5, r7, #32
	cmp r6, #153
	lsrs r0, r6, #32
	str r7, [sp, #496]
	lsrs r5, r7, #32
	str r7, [sp, #576]
	lsrs r5, r7, #32
	str r7, [sp, #672]
	lsrs r5, r7, #32
	str r7, [sp, #736]
	lsrs r5, r7, #32
	str r7, [sp, #832]
	lsrs r5, r7, #32
	str r7, [sp, #928]
	lsrs r5, r7, #32
.L08304CA0:
	bl VBlankIntrWait
.L08304CA4:
	bl Fade_IsBusy
	adds r4, r0, #0
	cmp r4, #0
	bne .L08304CA0
	ldr r5, [pc, #108]
	ldr r1, [pc, #108]
	str r4, [sp, #0]
	adds r0, r5, #0
	movs r2, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08304CC6
	b .L083050A6
.L08304CC6:
	adds r0, r5, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08304CD4
	b .L083050A6
.L08304CD4:
	bl sub_08317074
	bl sub_08302D10
	bl sub_08302E98
	ldr r5, [pc, #64]
	ldr r1, [pc, #68]
	str r4, [sp, #0]
	adds r0, r5, #0
	movs r2, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08304CF8
	b .L083050A6
.L08304CF8:
	adds r0, r5, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08304D06
	b .L083050A6
.L08304D06:
	bl sub_08317074
	bl sub_0830298C
	movs r0, #0
	movs r1, #192
	movs r2, #3
	bl Fade_Start
	b .L08304D30
	movs r0, r0
	cmp r3, #21
	lsrs r0, r6, #32
	str r7, [sp, #1008]
	lsrs r5, r7, #32
	cmp r6, #153
	lsrs r0, r6, #32
	ldr r0, [sp, #96]
	lsrs r5, r7, #32
.L08304D2C:
	bl VBlankIntrWait
.L08304D30:
	bl Fade_IsBusy
	adds r4, r0, #0
	cmp r4, #0
	bne .L08304D2C
	ldr r5, [pc, #216]
	ldr r1, [pc, #216]
	ldr r2, [pc, #220]
	ldr r3, [pc, #220]
	str r4, [sp, #0]
	adds r0, r5, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08304D52
	b .L083050A6
.L08304D52:
	adds r0, r5, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08304D60
	b .L083050A6
.L08304D60:
	bl sub_08317074
	bl sub_08302D10
	bl sub_08302E98
	ldr r5, [pc, #180]
	ldr r1, [pc, #184]
	ldr r2, [pc, #184]
	ldr r3, [pc, #188]
	str r4, [sp, #0]
	adds r0, r5, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08304D84
	b .L083050A6
.L08304D84:
	adds r0, r5, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08304D92
	b .L083050A6
.L08304D92:
	ldr r1, [pc, #160]
	ldr r2, [pc, #160]
	str r4, [sp, #0]
	adds r0, r5, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08304DA8
	b .L083050A6
.L08304DA8:
	adds r0, r5, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08304DB6
	b .L083050A6
.L08304DB6:
	ldr r1, [pc, #132]
	ldr r2, [pc, #132]
	ldr r3, [pc, #136]
	str r4, [sp, #0]
	adds r0, r5, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08304DCC
	b .L083050A6
.L08304DCC:
	adds r0, r5, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08304DDA
	b .L083050A6
.L08304DDA:
	ldr r1, [pc, #108]
	ldr r2, [pc, #108]
	ldr r3, [pc, #112]
	str r4, [sp, #0]
	adds r0, r5, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08304DF0
	b .L083050A6
.L08304DF0:
	adds r0, r5, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08304DFE
	b .L083050A6
.L08304DFE:
	bl sub_08317074
	bl sub_0830298C
	movs r0, #0
	movs r1, #192
	movs r2, #3
	bl Fade_Start
	b .L08304E58
	movs r0, r0
	cmp r3, #21
	lsrs r0, r6, #32
	ldr r0, [sp, #208]
	lsrs r5, r7, #32
	ldr r0, [sp, #272]
	lsrs r5, r7, #32
	ldr r0, [sp, #368]
	lsrs r5, r7, #32
	cmp r6, #153
	lsrs r0, r6, #32
	ldr r0, [sp, #432]
	lsrs r5, r7, #32
	ldr r0, [sp, #544]
	lsrs r5, r7, #32
	ldr r0, [sp, #640]
	lsrs r5, r7, #32
	ldr r0, [sp, #672]
	lsrs r5, r7, #32
	ldr r0, [sp, #752]
	lsrs r5, r7, #32
	ldr r0, [sp, #864]
	lsrs r5, r7, #32
	ldr r0, [sp, #960]
	lsrs r5, r7, #32
	ldr r1, [sp, #48]
	lsrs r5, r7, #32
	ldr r1, [sp, #160]
	lsrs r5, r7, #32
	ldr r1, [sp, #240]
	lsrs r5, r7, #32
	ldr r1, [sp, #352]
	lsrs r5, r7, #32
.L08304E54:
	bl VBlankIntrWait
.L08304E58:
	bl Fade_IsBusy
	cmp r0, #0
	bne .L08304E54
	ldr r4, [pc, #52]
	ldr r1, [pc, #56]
	ldr r2, [pc, #56]
	str r0, [sp, #0]
	adds r0, r4, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08304E78
	b .L083050A6
.L08304E78:
	adds r0, r4, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08304E86
	b .L083050A6
.L08304E86:
	bl sub_08317074
	bl sub_08303B20
	bl sub_08303CA8
	movs r4, #0
	ldr r5, [pc, #12]
	b .L08304EAA
	cmp r3, #21
	lsrs r0, r6, #32
	ldr r1, [sp, #464]
	lsrs r5, r7, #32
	ldr r1, [sp, #544]
	lsrs r5, r7, #32
	lsrs r2, r2, #20
	lsls r0, r0, #12
.L08304EA8:
	adds r4, #1
.L08304EAA:
	cmp r4, #44
	bhi .L08304EC8
	bl VBlankIntrWait
	ldr r0, [pc, #228]
	adds r1, r5, #0
	bl sub_08002094
	bl sub_08303CA8
	movs r0, #11
	ldrh r1, [r5, #0]
	ands r0, r1
	cmp r0, #0
	beq .L08304EA8
.L08304EC8:
	ldr r4, [pc, #208]
	ldr r1, [pc, #212]
	ldr r2, [pc, #212]
	movs r5, #0
	str r5, [sp, #0]
	adds r0, r4, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08304EE2
	b .L083050A6
.L08304EE2:
	adds r0, r4, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08304EF0
	b .L083050A6
.L08304EF0:
	ldr r1, [pc, #180]
	ldr r2, [pc, #184]
	ldr r3, [pc, #184]
	str r5, [sp, #0]
	adds r0, r4, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08304F06
	b .L083050A6
.L08304F06:
	adds r0, r4, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08304F14
	b .L083050A6
.L08304F14:
	ldr r1, [pc, #156]
	ldr r2, [pc, #160]
	ldr r3, [pc, #160]
	ldr r0, [pc, #164]
	str r0, [sp, #0]
	adds r0, r4, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08304F2C
	b .L083050A6
.L08304F2C:
	adds r0, r4, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08304F3A
	b .L083050A6
.L08304F3A:
	ldr r1, [pc, #136]
	ldr r2, [pc, #136]
	ldr r3, [pc, #140]
	str r5, [sp, #0]
	adds r0, r4, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08304F50
	b .L083050A6
.L08304F50:
	adds r0, r4, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08304F5E
	b .L083050A6
.L08304F5E:
	ldr r1, [pc, #112]
	ldr r2, [pc, #112]
	ldr r3, [pc, #116]
	str r5, [sp, #0]
	adds r0, r4, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08304F74
	b .L083050A6
.L08304F74:
	adds r0, r4, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08304F82
	b .L083050A6
.L08304F82:
	bl sub_08317074
	bl sub_0830298C
	movs r0, #0
	movs r1, #192
	movs r2, #3
	bl Fade_Start
	b .L08304FE0
	movs r0, r0
	lsrs r0, r2, #20
	lsls r0, r0, #12
	subs r4, #169
	lsrs r0, r6, #32
	ldr r1, [sp, #656]
	lsrs r5, r7, #32
	ldr r1, [sp, #752]
	lsrs r5, r7, #32
	ldr r1, [sp, #832]
	lsrs r5, r7, #32
	ldr r1, [sp, #928]
	lsrs r5, r7, #32
	ldr r2, [sp, #0]
	lsrs r5, r7, #32
	ldr r2, [sp, #48]
	lsrs r5, r7, #32
	ldr r2, [sp, #144]
	lsrs r5, r7, #32
	ldr r2, [sp, #256]
	lsrs r5, r7, #32
	ldr r2, [sp, #352]
	lsrs r5, r7, #32
	ldr r2, [sp, #400]
	lsrs r5, r7, #32
	ldr r2, [sp, #496]
	lsrs r5, r7, #32
	ldr r2, [sp, #592]
	lsrs r5, r7, #32
	ldr r2, [sp, #624]
	lsrs r5, r7, #32
	ldr r2, [sp, #720]
	lsrs r5, r7, #32
	ldr r2, [sp, #832]
	lsrs r5, r7, #32
.L08304FDC:
	bl VBlankIntrWait
.L08304FE0:
	bl Fade_IsBusy
	cmp r0, #0
	bne .L08304FDC
	movs r4, #0
	ldr r5, [pc, #4]
	b .L08304FF6
	movs r0, r0
	lsrs r2, r2, #20
	lsls r0, r0, #12
.L08304FF4:
	adds r4, #1
.L08304FF6:
	cmp r4, #44
	bhi .L08305014
	bl VBlankIntrWait
	ldr r0, [pc, #180]
	adds r1, r5, #0
	bl sub_08002094
	bl sub_08302B14
	movs r0, #11
	ldrh r1, [r5, #0]
	ands r0, r1
	cmp r0, #0
	beq .L08304FF4
.L08305014:
	ldr r4, [pc, #160]
	ldr r1, [pc, #164]
	ldr r2, [pc, #164]
	ldr r3, [pc, #168]
	ldr r0, [pc, #168]
	str r0, [sp, #0]
	adds r0, r4, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	beq .L083050A6
	adds r0, r4, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	beq .L083050A6
	ldr r1, [pc, #144]
	ldr r2, [pc, #148]
	ldr r3, [pc, #148]
	ldr r0, [pc, #152]
	str r0, [sp, #0]
	adds r0, r4, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	beq .L083050A6
	adds r0, r4, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	beq .L083050A6
	bl sub_08317074
	bl sub_08302D10
	bl sub_08302E98
	ldr r4, [pc, #116]
	ldr r1, [pc, #116]
	movs r0, #0
	str r0, [sp, #0]
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	beq .L083050A6
	adds r0, r4, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	beq .L083050A6
	ldr r1, [pc, #88]
	ldr r2, [pc, #88]
	ldr r3, [pc, #92]
	ldr r0, [pc, #92]
	str r0, [sp, #0]
	adds r0, r4, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	beq .L083050A6
	adds r0, r4, #0
	bl sub_083025FC
.L083050A6:
	movs r0, #1
	movs r1, #192
	movs r2, #3
	bl Fade_Start
	b .L083050F8
	movs r0, r0
	lsrs r0, r2, #20
	lsls r0, r0, #12
	cmp r3, #21
	lsrs r0, r6, #32
	ldr r2, [sp, #928]
	lsrs r5, r7, #32
	ldr r3, [sp, #0]
	lsrs r5, r7, #32
	ldr r3, [sp, #96]
	lsrs r5, r7, #32
	ldr r3, [sp, #176]
	lsrs r5, r7, #32
	ldr r3, [sp, #256]
	lsrs r5, r7, #32
	ldr r3, [sp, #352]
	lsrs r5, r7, #32
	ldr r3, [sp, #448]
	lsrs r5, r7, #32
	ldr r3, [sp, #544]
	lsrs r5, r7, #32
	cmp r6, #153
	lsrs r0, r6, #32
	ldr r3, [sp, #640]
	lsrs r5, r7, #32
	ldr r3, [sp, #688]
	lsrs r5, r7, #32
	ldr r3, [sp, #768]
	lsrs r5, r7, #32
	ldr r3, [sp, #880]
	lsrs r5, r7, #32
	ldr r3, [sp, #976]
	lsrs r5, r7, #32
.L083050F4:
	bl VBlankIntrWait
.L083050F8:
	bl Fade_IsBusy
	cmp r0, #0
	bne .L083050F4
	movs r0, #1
	bl sub_08310110
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08305110
	.thumb_func
sub_08305110:
	push {r4, r5, lr}
	sub sp, #4
	bl sub_08316824
	bl sub_08302B5C
	movs r0, #0
	movs r1, #192
	movs r2, #30
	bl Fade_Start
	b .L0830512C
.L08305128:
	bl VBlankIntrWait
.L0830512C:
	bl Fade_IsBusy
	adds r5, r0, #0
	cmp r5, #0
	bne .L08305128
	ldr r4, [pc, #76]
	adds r0, r4, #0
	bl sub_083177CC
	adds r0, r4, #0
	adds r0, #56
	strb r5, [r0, #0]
	ldr r0, [pc, #64]
	strh r0, [r4, #8]
	ldr r0, [pc, #64]
	str r0, [r4, #48]
	ldr r0, [pc, #64]
	str r0, [r4, #44]
	ldr r0, [pc, #64]
	str r0, [r4, #0]
	movs r0, #128
	lsls r0, r0, #5
	str r0, [r4, #4]
	adds r0, r4, #0
	bl GAX2_init
	movs r4, #1
	negs r4, r4
	ldr r0, [pc, #48]
	ldr r0, [r0, #0]
	bl sub_08316810
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_083191AC
	ldr r1, [pc, #36]
	movs r0, #0
	bl sub_08001FC8
	movs r4, #0
	ldr r5, [pc, #32]
	b .L083051A6
	movs r0, r0
	mov r8, ip
	lsls r0, r0, #12
	strh r1, [r4, r0]
	movs r0, r0
	.2byte 0xf2e4 @ .raw
	lsrs r5, r6, #32
	adds r4, r3, #1
	lsrs r5, r7, #32
	.2byte 0x471c @ .raw bxns r3
	lsls r0, r0, #12
	ldr r0, [r7, r6]
	lsls r0, r0, #12
	lsrs r5, r7, #1
	lsls r0, r0, #12
	lsrs r2, r2, #20
	lsls r0, r0, #12
.L083051A4:
	adds r4, #1
.L083051A6:
	cmp r4, #89
	bhi .L083051C4
	bl VBlankIntrWait
	ldr r0, [pc, #84]
	adds r1, r5, #0
	bl sub_08002094
	bl sub_08302CB4
	movs r0, #11
	ldrh r1, [r5, #0]
	ands r0, r1
	cmp r0, #0
	beq .L083051A4
.L083051C4:
	ldr r4, [pc, #64]
	ldr r1, [pc, #68]
	ldr r2, [pc, #68]
	movs r0, #0
	str r0, [sp, #0]
	adds r0, r4, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083051E0
	bl sub_08305E20
.L083051E0:
	adds r0, r4, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083051F0
	bl sub_08305E20
.L083051F0:
	bl sub_08317074
	bl sub_0830298C
	movs r0, #0
	movs r1, #192
	movs r2, #3
	bl Fade_Start
	b .L08305218
	lsrs r0, r2, #20
	lsls r0, r0, #12
	cmp r4, #181
	lsrs r0, r6, #32
	str r1, [sp, #608]
	lsrs r5, r7, #32
	str r1, [sp, #720]
	lsrs r5, r7, #32
.L08305214:
	bl VBlankIntrWait
.L08305218:
	bl Fade_IsBusy
	cmp r0, #0
	bne .L08305214
	movs r4, #0
	ldr r5, [pc, #4]
	b .L0830522E
	movs r0, r0
	lsrs r2, r2, #20
	lsls r0, r0, #12
.L0830522C:
	adds r4, #1
.L0830522E:
	cmp r4, #89
	bhi .L0830524C
	bl VBlankIntrWait
	ldr r0, [pc, #220]
	adds r1, r5, #0
	bl sub_08002094
	bl sub_08302B14
	movs r0, #11
	ldrh r1, [r5, #0]
	ands r0, r1
	cmp r0, #0
	beq .L0830522C
.L0830524C:
	ldr r4, [pc, #200]
	ldr r1, [pc, #204]
	ldr r2, [pc, #204]
	movs r5, #0
	str r5, [sp, #0]
	adds r0, r4, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305268
	bl sub_08305E20
.L08305268:
	adds r0, r4, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305278
	bl sub_08305E20
.L08305278:
	bl sub_08317074
	bl sub_08302D10
	bl sub_08302E98
	ldr r4, [pc, #156]
	ldr r1, [pc, #160]
	ldr r2, [pc, #160]
	str r5, [sp, #0]
	adds r0, r4, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830529E
	bl sub_08305E20
.L0830529E:
	adds r0, r4, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083052AE
	bl sub_08305E20
.L083052AE:
	ldr r1, [pc, #128]
	ldr r2, [pc, #128]
	str r5, [sp, #0]
	adds r0, r4, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083052C6
	bl sub_08305E20
.L083052C6:
	adds r0, r4, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083052D6
	bl sub_08305E20
.L083052D6:
	ldr r1, [pc, #96]
	ldr r2, [pc, #96]
	ldr r3, [pc, #100]
	str r5, [sp, #0]
	adds r0, r4, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083052EE
	bl sub_08305E20
.L083052EE:
	adds r0, r4, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083052FE
	bl sub_08305E20
.L083052FE:
	bl sub_08317074
	bl sub_0830298C
	movs r0, #0
	movs r1, #192
	movs r2, #3
	bl Fade_Start
	b .L08305348
	movs r0, r0
	lsrs r0, r2, #20
	lsls r0, r0, #12
	cmp r3, #21
	lsrs r0, r6, #32
	ldr r4, [sp, #0]
	lsrs r5, r7, #32
	ldr r4, [sp, #80]
	lsrs r5, r7, #32
	cmp r6, #153
	lsrs r0, r6, #32
	ldr r4, [sp, #128]
	lsrs r5, r7, #32
	ldr r4, [sp, #208]
	lsrs r5, r7, #32
	ldr r4, [sp, #272]
	lsrs r5, r7, #32
	ldr r4, [sp, #368]
	lsrs r5, r7, #32
	ldr r4, [sp, #448]
	lsrs r5, r7, #32
	ldr r4, [sp, #560]
	lsrs r5, r7, #32
	ldr r4, [sp, #640]
	lsrs r5, r7, #32
.L08305344:
	bl VBlankIntrWait
.L08305348:
	bl Fade_IsBusy
	adds r4, r0, #0
	cmp r4, #0
	bne .L08305344
	ldr r5, [pc, #116]
	ldr r1, [pc, #116]
	str r4, [sp, #0]
	adds r0, r5, #0
	movs r2, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830536C
	bl sub_08305E20
.L0830536C:
	adds r0, r5, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830537C
	bl sub_08305E20
.L0830537C:
	bl sub_08317074
	bl sub_08302D10
	bl sub_08302E98
	ldr r5, [pc, #68]
	ldr r1, [pc, #72]
	str r4, [sp, #0]
	adds r0, r5, #0
	movs r2, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083053A2
	bl sub_08305E20
.L083053A2:
	adds r0, r5, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083053B2
	bl sub_08305E20
.L083053B2:
	bl sub_08317074
	bl sub_0830298C
	movs r0, #0
	movs r1, #192
	movs r2, #3
	bl Fade_Start
	b .L083053DC
	movs r0, r0
	cmp r3, #21
	lsrs r0, r6, #32
	ldr r4, [sp, #704]
	lsrs r5, r7, #32
	cmp r6, #153
	lsrs r0, r6, #32
	ldr r4, [sp, #784]
	lsrs r5, r7, #32
.L083053D8:
	bl VBlankIntrWait
.L083053DC:
	bl Fade_IsBusy
	adds r4, r0, #0
	cmp r4, #0
	bne .L083053D8
	ldr r5, [pc, #200]
	ldr r1, [pc, #200]
	ldr r2, [pc, #204]
	ldr r3, [pc, #204]
	ldr r0, [pc, #208]
	str r0, [sp, #0]
	adds r0, r5, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305402
	bl sub_08305E20
.L08305402:
	adds r0, r5, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305412
	bl sub_08305E20
.L08305412:
	bl sub_08317074
	bl sub_08302D10
	bl sub_08302E98
	ldr r5, [pc, #164]
	ldr r1, [pc, #164]
	str r4, [sp, #0]
	adds r0, r5, #0
	movs r2, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305438
	bl sub_08305E20
.L08305438:
	adds r0, r5, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305448
	bl sub_08305E20
.L08305448:
	ldr r1, [pc, #128]
	ldr r2, [pc, #132]
	ldr r3, [pc, #132]
	ldr r0, [pc, #136]
	str r0, [sp, #0]
	adds r0, r5, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305462
	bl sub_08305E20
.L08305462:
	adds r0, r5, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305472
	bl sub_08305E20
.L08305472:
	ldr r1, [pc, #104]
	ldr r2, [pc, #104]
	str r4, [sp, #0]
	adds r0, r5, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830548A
	bl sub_08305E20
.L0830548A:
	adds r0, r5, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830549A
	bl sub_08305E20
.L0830549A:
	bl sub_08317074
	bl sub_0830298C
	movs r0, #0
	movs r1, #192
	movs r2, #3
	bl Fade_Start
	b .L083054E8
	movs r0, r0
	cmp r3, #21
	lsrs r0, r6, #32
	ldr r4, [sp, #832]
	lsrs r5, r7, #32
	ldr r4, [sp, #896]
	lsrs r5, r7, #32
	ldr r4, [sp, #992]
	lsrs r5, r7, #32
	ldr r5, [sp, #64]
	lsrs r5, r7, #32
	cmp r6, #153
	lsrs r0, r6, #32
	ldr r5, [sp, #176]
	lsrs r5, r7, #32
	ldr r5, [sp, #272]
	lsrs r5, r7, #32
	ldr r5, [sp, #368]
	lsrs r5, r7, #32
	ldr r5, [sp, #480]
	lsrs r5, r7, #32
	ldr r5, [sp, #576]
	lsrs r5, r7, #32
	ldr r5, [sp, #640]
	lsrs r5, r7, #32
	ldr r5, [sp, #752]
	lsrs r5, r7, #32
.L083054E4:
	bl VBlankIntrWait
.L083054E8:
	bl Fade_IsBusy
	cmp r0, #0
	bne .L083054E4
	ldr r4, [pc, #60]
	ldr r1, [pc, #64]
	str r0, [sp, #0]
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830550A
	bl sub_08305E20
.L0830550A:
	adds r0, r4, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830551A
	bl sub_08305E20
.L0830551A:
	bl sub_08317074
	bl sub_08302B5C
	movs r0, #0
	movs r1, #192
	movs r2, #3
	bl Fade_Start
	b .L0830553C
	movs r0, r0
	cmp r3, #21
	lsrs r0, r6, #32
	ldr r5, [sp, #800]
	lsrs r5, r7, #32
.L08305538:
	bl VBlankIntrWait
.L0830553C:
	bl Fade_IsBusy
	cmp r0, #0
	bne .L08305538
	ldr r4, [pc, #60]
	ldr r1, [pc, #64]
	ldr r2, [pc, #64]
	ldr r3, [pc, #68]
	str r0, [sp, #0]
	adds r0, r4, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830555E
	bl sub_08305E20
.L0830555E:
	adds r0, r4, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830556E
	bl sub_08305E20
.L0830556E:
	bl sub_08317074
	bl sub_083040FC
	movs r0, #0
	movs r1, #192
	movs r2, #3
	bl Fade_Start
	b .L08305598
	movs r0, r0
	cmp r4, #181
	lsrs r0, r6, #32
	ldr r5, [sp, #864]
	lsrs r5, r7, #32
	ldr r5, [sp, #928]
	lsrs r5, r7, #32
	ldr r5, [sp, #1008]
	lsrs r5, r7, #32
.L08305594:
	bl VBlankIntrWait
.L08305598:
	bl Fade_IsBusy
	cmp r0, #0
	bne .L08305594
	movs r4, #0
	ldr r5, [pc, #4]
	b .L083055AE
	movs r0, r0
	lsrs r2, r2, #20
	lsls r0, r0, #12
.L083055AC:
	adds r4, #1
.L083055AE:
	cmp r4, #44
	bhi .L083055C8
	bl VBlankIntrWait
	ldr r0, [pc, #636]
	adds r1, r5, #0
	bl sub_08002094
	movs r0, #11
	ldrh r1, [r5, #0]
	ands r0, r1
	cmp r0, #0
	beq .L083055AC
.L083055C8:
	ldr r1, [pc, #620]
	ldr r2, [pc, #624]
	ldr r3, [pc, #624]
	movs r4, #0
	str r4, [sp, #0]
	movs r0, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083055E2
	bl sub_08305E20
.L083055E2:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083055F2
	bl sub_08305E20
.L083055F2:
	ldr r1, [pc, #592]
	ldr r2, [pc, #592]
	str r4, [sp, #0]
	movs r0, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830560A
	bl sub_08305E20
.L0830560A:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830561A
	bl sub_08305E20
.L0830561A:
	ldr r1, [pc, #560]
	ldr r2, [pc, #560]
	str r4, [sp, #0]
	movs r0, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305632
	bl sub_08305E20
.L08305632:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305640
	.2byte 0xe3ef @ b.n 0x8305e20
.L08305640:
	ldr r1, [pc, #528]
	ldr r2, [pc, #532]
	ldr r3, [pc, #532]
	ldr r0, [pc, #536]
	str r0, [sp, #0]
	movs r0, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305658
	.2byte 0xe3e3 @ b.n 0x8305e20
.L08305658:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305666
	.2byte 0xe3dc @ b.n 0x8305e20
.L08305666:
	ldr r1, [pc, #508]
	ldr r2, [pc, #508]
	str r4, [sp, #0]
	movs r0, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830567C
	.2byte 0xe3d1 @ b.n 0x8305e20
.L0830567C:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830568A
	.2byte 0xe3ca @ b.n 0x8305e20
.L0830568A:
	ldr r1, [pc, #480]
	ldr r2, [pc, #480]
	str r4, [sp, #0]
	movs r0, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083056A0
	.2byte 0xe3bf @ b.n 0x8305e20
.L083056A0:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083056AE
	.2byte 0xe3b8 @ b.n 0x8305e20
.L083056AE:
	ldr r1, [pc, #452]
	ldr r2, [pc, #452]
	ldr r3, [pc, #456]
	ldr r0, [pc, #456]
	str r0, [sp, #0]
	movs r0, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083056C6
	.2byte 0xe3ac @ b.n 0x8305e20
.L083056C6:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083056D4
	.2byte 0xe3a5 @ b.n 0x8305e20
.L083056D4:
	ldr r1, [pc, #428]
	ldr r2, [pc, #432]
	ldr r3, [pc, #432]
	str r4, [sp, #0]
	movs r0, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083056EA
	.2byte 0xe39a @ b.n 0x8305e20
.L083056EA:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083056F8
	.2byte 0xe393 @ b.n 0x8305e20
.L083056F8:
	ldr r1, [pc, #404]
	ldr r2, [pc, #408]
	str r4, [sp, #0]
	movs r0, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830570E
	.2byte 0xe388 @ b.n 0x8305e20
.L0830570E:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830571C
	.2byte 0xe381 @ b.n 0x8305e20
.L0830571C:
	ldr r1, [pc, #376]
	ldr r2, [pc, #380]
	ldr r3, [pc, #380]
	ldr r0, [pc, #384]
	str r0, [sp, #0]
	movs r0, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305734
	.2byte 0xe375 @ b.n 0x8305e20
.L08305734:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305742
	.2byte 0xe36e @ b.n 0x8305e20
.L08305742:
	ldr r1, [pc, #356]
	ldr r2, [pc, #356]
	ldr r3, [pc, #360]
	ldr r0, [pc, #360]
	str r0, [sp, #0]
	movs r0, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830575A
	.2byte 0xe362 @ b.n 0x8305e20
.L0830575A:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305768
	.2byte 0xe35b @ b.n 0x8305e20
.L08305768:
	ldr r1, [pc, #332]
	ldr r2, [pc, #336]
	str r4, [sp, #0]
	movs r0, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830577E
	.2byte 0xe350 @ b.n 0x8305e20
.L0830577E:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830578C
	.2byte 0xe349 @ b.n 0x8305e20
.L0830578C:
	ldr r5, [pc, #304]
	str r4, [sp, #0]
	movs r0, #0
	adds r1, r5, #0
	movs r2, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083057A4
	.2byte 0xe33d @ b.n 0x8305e20
.L083057A4:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083057B2
	.2byte 0xe336 @ b.n 0x8305e20
.L083057B2:
	ldr r1, [pc, #272]
	ldr r2, [pc, #272]
	ldr r3, [pc, #276]
	str r4, [sp, #0]
	movs r0, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083057C8
	.2byte 0xe32b @ b.n 0x8305e20
.L083057C8:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083057D6
	.2byte 0xe324 @ b.n 0x8305e20
.L083057D6:
	str r4, [sp, #0]
	movs r0, #0
	adds r1, r5, #0
	movs r2, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083057EC
	.2byte 0xe319 @ b.n 0x8305e20
.L083057EC:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083057FA
	.2byte 0xe312 @ b.n 0x8305e20
.L083057FA:
	ldr r1, [pc, #212]
	str r4, [sp, #0]
	movs r0, #0
	movs r2, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305810
	.2byte 0xe307 @ b.n 0x8305e20
.L08305810:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830581E
	.2byte 0xe300 @ b.n 0x8305e20
.L0830581E:
	bl sub_08317074
	bl sub_083033A8
	movs r0, #0
	movs r1, #192
	movs r2, #3
	bl Fade_Start
	b .L083058D8
	movs r0, r0
	lsrs r0, r2, #20
	lsls r0, r0, #12
	ldr r6, [sp, #64]
	lsrs r5, r7, #32
	ldr r6, [sp, #160]
	lsrs r5, r7, #32
	ldr r6, [sp, #272]
	lsrs r5, r7, #32
	ldr r6, [sp, #304]
	lsrs r5, r7, #32
	ldr r6, [sp, #384]
	lsrs r5, r7, #32
	ldr r6, [sp, #464]
	lsrs r5, r7, #32
	ldr r6, [sp, #560]
	lsrs r5, r7, #32
	ldr r6, [sp, #672]
	lsrs r5, r7, #32
	ldr r6, [sp, #784]
	lsrs r5, r7, #32
	ldr r6, [sp, #864]
	lsrs r5, r7, #32
	ldr r6, [sp, #960]
	lsrs r5, r7, #32
	ldr r7, [sp, #0]
	lsrs r5, r7, #32
	ldr r7, [sp, #112]
	lsrs r5, r7, #32
	ldr r7, [sp, #160]
	lsrs r5, r7, #32
	ldr r7, [sp, #256]
	lsrs r5, r7, #32
	ldr r7, [sp, #320]
	lsrs r5, r7, #32
	ldr r7, [sp, #432]
	lsrs r5, r7, #32
	ldr r7, [sp, #528]
	lsrs r5, r7, #32
	ldr r7, [sp, #640]
	lsrs r5, r7, #32
	ldr r7, [sp, #720]
	lsrs r5, r7, #32
	ldr r7, [sp, #816]
	lsrs r5, r7, #32
	ldr r7, [sp, #912]
	lsrs r5, r7, #32
	ldr r7, [sp, #992]
	lsrs r5, r7, #32
	add r0, pc, #80
	lsrs r5, r7, #32
	add r0, pc, #176
	lsrs r5, r7, #32
	add r0, pc, #288
	lsrs r5, r7, #32
	add r0, pc, #384
	lsrs r5, r7, #32
	add r0, pc, #480
	lsrs r5, r7, #32
	add r0, pc, #528
	lsrs r5, r7, #32
	add r0, pc, #624
	lsrs r5, r7, #32
	add r0, pc, #720
	lsrs r5, r7, #32
	add r0, pc, #816
	lsrs r5, r7, #32
	add r0, pc, #880
	lsrs r5, r7, #32
	add r0, pc, #976
	lsrs r5, r7, #32
	add r1, pc, #32
	lsrs r5, r7, #32
	add r1, pc, #80
	lsrs r5, r7, #32
	add r1, pc, #176
	lsrs r5, r7, #32
	add r1, pc, #272
	lsrs r5, r7, #32
	add r1, pc, #384
	lsrs r5, r7, #32
.L083058D4:
	bl VBlankIntrWait
.L083058D8:
	bl Fade_IsBusy
	cmp r0, #0
	bne .L083058D4
	movs r4, #0
	ldr r5, [pc, #4]
	b .L083058EE
	movs r0, r0
	lsrs r2, r2, #20
	lsls r0, r0, #12
.L083058EC:
	adds r4, #1
.L083058EE:
	cmp r4, #44
	bhi .L0830590C
	bl sub_08303530
	bl VBlankIntrWait
	ldr r0, [pc, #76]
	adds r1, r5, #0
	bl sub_08002094
	movs r0, #11
	ldrh r1, [r5, #0]
	ands r0, r1
	cmp r0, #0
	beq .L083058EC
.L0830590C:
	ldr r4, [pc, #60]
	ldr r1, [pc, #64]
	ldr r2, [pc, #64]
	movs r0, #0
	str r0, [sp, #0]
	adds r0, r4, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305926
	.2byte 0xe27c @ b.n 0x8305e20
.L08305926:
	adds r0, r4, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305934
	.2byte 0xe275 @ b.n 0x8305e20
.L08305934:
	bl sub_08317074
	bl sub_083040FC
	movs r0, #0
	movs r1, #192
	movs r2, #3
	bl Fade_Start
	b .L0830595C
	lsrs r0, r2, #20
	lsls r0, r0, #12
	adds r5, #49
	lsrs r0, r6, #32
	add r1, pc, #496
	lsrs r5, r7, #32
	add r1, pc, #592
	lsrs r5, r7, #32
.L08305958:
	bl VBlankIntrWait
.L0830595C:
	bl Fade_IsBusy
	cmp r0, #0
	bne .L08305958
	movs r4, #0
	ldr r5, [pc, #4]
	b .L08305972
	movs r0, r0
	lsrs r2, r2, #20
	lsls r0, r0, #12
.L08305970:
	adds r4, #1
.L08305972:
	cmp r4, #44
	bhi .L0830598C
	bl VBlankIntrWait
	ldr r0, [pc, #292]
	adds r1, r5, #0
	bl sub_08002094
	movs r0, #11
	ldrh r1, [r5, #0]
	ands r0, r1
	cmp r0, #0
	beq .L08305970
.L0830598C:
	ldr r1, [pc, #276]
	ldr r2, [pc, #280]
	ldr r3, [pc, #280]
	movs r4, #0
	str r4, [sp, #0]
	movs r0, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083059A4
	.2byte 0xe23d @ b.n 0x8305e20
.L083059A4:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083059B2
	.2byte 0xe236 @ b.n 0x8305e20
.L083059B2:
	ldr r1, [pc, #252]
	ldr r2, [pc, #252]
	ldr r3, [pc, #256]
	ldr r0, [pc, #256]
	str r0, [sp, #0]
	movs r0, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083059CA
	.2byte 0xe22a @ b.n 0x8305e20
.L083059CA:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083059D8
	.2byte 0xe223 @ b.n 0x8305e20
.L083059D8:
	ldr r1, [pc, #228]
	str r4, [sp, #0]
	movs r0, #0
	movs r2, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083059EE
	.2byte 0xe218 @ b.n 0x8305e20
.L083059EE:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083059FC
	.2byte 0xe211 @ b.n 0x8305e20
.L083059FC:
	ldr r1, [pc, #196]
	str r4, [sp, #0]
	movs r0, #0
	movs r2, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305A12
	.2byte 0xe206 @ b.n 0x8305e20
.L08305A12:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305A20
	.2byte 0xe1ff @ b.n 0x8305e20
.L08305A20:
	ldr r1, [pc, #164]
	str r4, [sp, #0]
	movs r0, #0
	movs r2, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305A36
	.2byte 0xe1f4 @ b.n 0x8305e20
.L08305A36:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305A44
	.2byte 0xe1ed @ b.n 0x8305e20
.L08305A44:
	ldr r1, [pc, #132]
	str r4, [sp, #0]
	movs r0, #0
	movs r2, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305A5A
	.2byte 0xe1e2 @ b.n 0x8305e20
.L08305A5A:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305A68
	.2byte 0xe1db @ b.n 0x8305e20
.L08305A68:
	ldr r1, [pc, #100]
	str r4, [sp, #0]
	movs r0, #0
	movs r2, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305A7E
	.2byte 0xe1d0 @ b.n 0x8305e20
.L08305A7E:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305A8C
	.2byte 0xe1c9 @ b.n 0x8305e20
.L08305A8C:
	bl sub_08317074
	bl sub_0830298C
	movs r0, #0
	movs r1, #192
	movs r2, #3
	bl Fade_Start
	b .L08305AD8
	lsrs r0, r2, #20
	lsls r0, r0, #12
	add r1, pc, #688
	lsrs r5, r7, #32
	add r1, pc, #784
	lsrs r5, r7, #32
	add r1, pc, #896
	lsrs r5, r7, #32
	add r1, pc, #976
	lsrs r5, r7, #32
	add r2, pc, #64
	lsrs r5, r7, #32
	add r2, pc, #144
	lsrs r5, r7, #32
	add r2, pc, #240
	lsrs r5, r7, #32
	add r2, pc, #352
	lsrs r5, r7, #32
	add r2, pc, #400
	lsrs r5, r7, #32
	add r2, pc, #496
	lsrs r5, r7, #32
	add r2, pc, #576
	lsrs r5, r7, #32
	add r2, pc, #656
	lsrs r5, r7, #32
.L08305AD4:
	bl VBlankIntrWait
.L08305AD8:
	bl Fade_IsBusy
	adds r4, r0, #0
	cmp r4, #0
	bne .L08305AD4
	ldr r5, [pc, #92]
	ldr r1, [pc, #92]
	ldr r2, [pc, #96]
	str r4, [sp, #0]
	adds r0, r5, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305AFA
	.2byte 0xe192 @ b.n 0x8305e20
.L08305AFA:
	adds r0, r5, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305B08
	.2byte 0xe18b @ b.n 0x8305e20
.L08305B08:
	ldr r1, [pc, #64]
	ldr r2, [pc, #68]
	str r4, [sp, #0]
	adds r0, r5, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305B1E
	.2byte 0xe180 @ b.n 0x8305e20
.L08305B1E:
	adds r0, r5, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305B2C
	.2byte 0xe179 @ b.n 0x8305e20
.L08305B2C:
	bl sub_08317074
	bl sub_08303CF0
	bl sub_08303E78
	movs r4, #0
	ldr r5, [pc, #24]
	b .L08305B5A
	movs r0, r0
	cmp r3, #21
	lsrs r0, r6, #32
	add r2, pc, #768
	lsrs r5, r7, #32
	add r2, pc, #880
	lsrs r5, r7, #32
	add r2, pc, #976
	lsrs r5, r7, #32
	add r3, pc, #48
	lsrs r5, r7, #32
	lsrs r2, r2, #20
	lsls r0, r0, #12
.L08305B58:
	adds r4, #1
.L08305B5A:
	cmp r4, #44
	bhi .L08305B78
	bl VBlankIntrWait
	ldr r0, [pc, #80]
	adds r1, r5, #0
	bl sub_08002094
	bl sub_08303E78
	movs r0, #11
	ldrh r1, [r5, #0]
	ands r0, r1
	cmp r0, #0
	beq .L08305B58
.L08305B78:
	ldr r4, [pc, #60]
	ldr r1, [pc, #64]
	ldr r2, [pc, #64]
	ldr r3, [pc, #68]
	movs r0, #0
	str r0, [sp, #0]
	adds r0, r4, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305B92
	.2byte 0xe146 @ b.n 0x8305e20
.L08305B92:
	adds r0, r4, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305BA0
	.2byte 0xe13f @ b.n 0x8305e20
.L08305BA0:
	bl sub_08317074
	bl sub_08302F0C
	movs r0, #0
	movs r1, #192
	movs r2, #3
	bl Fade_Start
	b .L08305BCC
	lsrs r0, r2, #20
	lsls r0, r0, #12
	subs r6, #121
	lsrs r0, r6, #32
	add r3, pc, #80
	lsrs r5, r7, #32
	add r3, pc, #176
	lsrs r5, r7, #32
	add r3, pc, #272
	lsrs r5, r7, #32
.L08305BC8:
	bl VBlankIntrWait
.L08305BCC:
	bl Fade_IsBusy
	cmp r0, #0
	bne .L08305BC8
	movs r4, #0
	ldr r5, [pc, #4]
	b .L08305BE2
	movs r0, r0
	lsrs r2, r2, #20
	lsls r0, r0, #12
.L08305BE0:
	adds r4, #1
.L08305BE2:
	cmp r4, #44
	bhi .L08305BFC
	bl VBlankIntrWait
	ldr r0, [pc, #224]
	adds r1, r5, #0
	bl sub_08002094
	movs r0, #11
	ldrh r1, [r5, #0]
	ands r0, r1
	cmp r0, #0
	beq .L08305BE0
.L08305BFC:
	ldr r1, [pc, #208]
	ldr r2, [pc, #212]
	ldr r3, [pc, #212]
	movs r4, #0
	str r4, [sp, #0]
	movs r0, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305C14
	.2byte 0xe105 @ b.n 0x8305e20
.L08305C14:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305C22
	.2byte 0xe0fe @ b.n 0x8305e20
.L08305C22:
	ldr r1, [pc, #184]
	ldr r2, [pc, #184]
	ldr r3, [pc, #188]
	str r4, [sp, #0]
	movs r0, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305C38
	.2byte 0xe0f3 @ b.n 0x8305e20
.L08305C38:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305C46
	.2byte 0xe0ec @ b.n 0x8305e20
.L08305C46:
	ldr r1, [pc, #160]
	ldr r2, [pc, #160]
	str r4, [sp, #0]
	movs r0, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305C5C
	.2byte 0xe0e1 @ b.n 0x8305e20
.L08305C5C:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305C6A
	.2byte 0xe0da @ b.n 0x8305e20
.L08305C6A:
	ldr r1, [pc, #132]
	ldr r2, [pc, #132]
	ldr r3, [pc, #136]
	ldr r0, [pc, #136]
	str r0, [sp, #0]
	movs r0, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305C82
	.2byte 0xe0ce @ b.n 0x8305e20
.L08305C82:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305C90
	.2byte 0xe0c7 @ b.n 0x8305e20
.L08305C90:
	ldr r1, [pc, #108]
	ldr r2, [pc, #112]
	ldr r3, [pc, #112]
	ldr r0, [pc, #116]
	str r0, [sp, #0]
	movs r0, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305CA8
	.2byte 0xe0bb @ b.n 0x8305e20
.L08305CA8:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305CB6
	.2byte 0xe0b4 @ b.n 0x8305e20
.L08305CB6:
	bl sub_08317074
	bl sub_0830298C
	movs r0, #0
	movs r1, #192
	movs r2, #3
	bl Fade_Start
	b .L08305D14
	movs r0, r0
	lsrs r0, r2, #20
	lsls r0, r0, #12
	add r3, pc, #384
	lsrs r5, r7, #32
	add r3, pc, #496
	lsrs r5, r7, #32
	add r3, pc, #592
	lsrs r5, r7, #32
	add r3, pc, #656
	lsrs r5, r7, #32
	add r3, pc, #768
	lsrs r5, r7, #32
	add r3, pc, #864
	lsrs r5, r7, #32
	add r3, pc, #960
	lsrs r5, r7, #32
	add r4, pc, #48
	lsrs r5, r7, #32
	add r4, pc, #160
	lsrs r5, r7, #32
	add r4, pc, #256
	lsrs r5, r7, #32
	add r4, pc, #352
	lsrs r5, r7, #32
	add r4, pc, #448
	lsrs r5, r7, #32
	add r4, pc, #496
	lsrs r5, r7, #32
	add r4, pc, #608
	lsrs r5, r7, #32
	add r4, pc, #704
	lsrs r5, r7, #32
	add r4, pc, #800
	lsrs r5, r7, #32
.L08305D10:
	bl VBlankIntrWait
.L08305D14:
	bl Fade_IsBusy
	adds r4, r0, #0
	cmp r4, #0
	bne .L08305D10
	ldr r5, [pc, #164]
	ldr r1, [pc, #164]
	ldr r2, [pc, #168]
	ldr r3, [pc, #168]
	str r4, [sp, #0]
	adds r0, r5, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	.2byte 0xd075 @ beq.n 0x8305e20
	adds r0, r5, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	.2byte 0xd06f @ beq.n 0x8305e20
	ldr r1, [pc, #144]
	ldr r2, [pc, #148]
	ldr r3, [pc, #148]
	str r4, [sp, #0]
	adds r0, r5, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	.2byte 0xd065 @ beq.n 0x8305e20
	adds r0, r5, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	.2byte 0xd05f @ beq.n 0x8305e20
	bl sub_08317074
	bl sub_08302D10
	bl sub_08302E98
	ldr r5, [pc, #112]
	ldr r1, [pc, #116]
	ldr r2, [pc, #116]
	ldr r3, [pc, #120]
	str r4, [sp, #0]
	adds r0, r5, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	.2byte 0xd04e @ beq.n 0x8305e20
	adds r0, r5, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	.2byte 0xd048 @ beq.n 0x8305e20
	ldr r1, [pc, #96]
	ldr r2, [pc, #96]
	str r4, [sp, #0]
	adds r0, r5, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	.2byte 0xd03e @ beq.n 0x8305e20
	adds r0, r5, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	.2byte 0xd038 @ beq.n 0x8305e20
	bl sub_08317074
	bl sub_0830298C
	movs r0, #0
	movs r1, #192
	movs r2, #3
	bl Fade_Start
	b .L08305DFC
	movs r0, r0
	cmp r3, #21
	lsrs r0, r6, #32
	add r4, pc, #864
	lsrs r5, r7, #32
	add r4, pc, #976
	lsrs r5, r7, #32
	add r5, pc, #48
	lsrs r5, r7, #32
	add r5, pc, #96
	lsrs r5, r7, #32
	add r5, pc, #208
	lsrs r5, r7, #32
	add r5, pc, #320
	lsrs r5, r7, #32
	cmp r6, #153
	lsrs r0, r6, #32
	add r5, pc, #384
	lsrs r5, r7, #32
	add r5, pc, #496
	lsrs r5, r7, #32
	add r5, pc, #576
	lsrs r5, r7, #32
	add r5, pc, #624
	lsrs r5, r7, #32
	add r5, pc, #672
	lsrs r5, r7, #32
.L08305DF8:
	bl VBlankIntrWait
.L08305DFC:
	bl Fade_IsBusy
	cmp r0, #0
	bne .L08305DF8
	ldr r4, [pc, #36]
	ldr r1, [pc, #40]
	ldr r2, [pc, #40]
	str r0, [sp, #0]
	adds r0, r4, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	.2byte 0xd002 @ beq.n 0x8305e20
	adds r0, r4, #0
	bl sub_083025FC

	.thumb
	.align 1, 0
	.global sub_08305E20
	.thumb_func
sub_08305E20:
	movs r0, #1
	movs r1, #192
	movs r2, #60
	bl Fade_Start
	b .L08305E3C
	cmp r3, #21
	lsrs r0, r6, #32
	add r5, pc, #736
	lsrs r5, r7, #32
	add r5, pc, #832
	lsrs r5, r7, #32
.L08305E38:
	bl VBlankIntrWait
.L08305E3C:
	bl Fade_IsBusy
	cmp r0, #0
	bne .L08305E38
	movs r0, #1
	bl sub_08310110
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08305E54
	.thumb_func
sub_08305E54:
	push {r4, r5, lr}
	sub sp, #4
	bl sub_08316824
	bl sub_08302B5C
	movs r0, #0
	movs r1, #192
	movs r2, #30
	bl Fade_Start
	b .L08305E70
.L08305E6C:
	bl VBlankIntrWait
.L08305E70:
	bl Fade_IsBusy
	adds r5, r0, #0
	cmp r5, #0
	bne .L08305E6C
	ldr r4, [pc, #76]
	adds r0, r4, #0
	bl sub_083177CC
	adds r0, r4, #0
	adds r0, #56
	strb r5, [r0, #0]
	ldr r0, [pc, #64]
	strh r0, [r4, #8]
	ldr r0, [pc, #64]
	str r0, [r4, #48]
	ldr r0, [pc, #64]
	str r0, [r4, #44]
	ldr r0, [pc, #64]
	str r0, [r4, #0]
	movs r0, #128
	lsls r0, r0, #5
	str r0, [r4, #4]
	adds r0, r4, #0
	bl GAX2_init
	movs r4, #1
	negs r4, r4
	ldr r0, [pc, #48]
	ldr r0, [r0, #0]
	bl sub_08316810
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_083191AC
	ldr r1, [pc, #36]
	movs r0, #0
	bl sub_08001FC8
	movs r4, #0
	ldr r5, [pc, #32]
	b .L08305EEA
	movs r0, r0
	mov r8, ip
	lsls r0, r0, #12
	strh r1, [r4, r0]
	movs r0, r0
	.2byte 0xf2e4 @ .raw
	lsrs r5, r6, #32
	adds r4, r3, #1
	lsrs r5, r7, #32
	.2byte 0x471c @ .raw bxns r3
	lsls r0, r0, #12
	ldr r0, [r7, r6]
	lsls r0, r0, #12
	lsrs r5, r7, #1
	lsls r0, r0, #12
	lsrs r2, r2, #20
	lsls r0, r0, #12
.L08305EE8:
	adds r4, #1
.L08305EEA:
	cmp r4, #89
	bhi .L08305F08
	bl VBlankIntrWait
	ldr r0, [pc, #80]
	adds r1, r5, #0
	bl sub_08002094
	bl sub_08302CB4
	movs r0, #11
	ldrh r1, [r5, #0]
	ands r0, r1
	cmp r0, #0
	beq .L08305EE8
.L08305F08:
	ldr r4, [pc, #60]
	ldr r1, [pc, #64]
	ldr r2, [pc, #64]
	movs r0, #0
	str r0, [sp, #0]
	adds r0, r4, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305F22
	b .L08306606
.L08305F22:
	adds r0, r4, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305F30
	b .L08306606
.L08305F30:
	bl sub_08317074
	bl sub_083040FC
	movs r0, #0
	movs r1, #192
	movs r2, #3
	bl Fade_Start
	b .L08305F58
	lsrs r0, r2, #20
	lsls r0, r0, #12
	cmp r4, #181
	lsrs r0, r6, #32
	str r1, [sp, #608]
	lsrs r5, r7, #32
	add r5, pc, #880
	lsrs r5, r7, #32
.L08305F54:
	bl VBlankIntrWait
.L08305F58:
	bl Fade_IsBusy
	cmp r0, #0
	bne .L08305F54
	movs r4, #0
	ldr r5, [pc, #4]
	b .L08305F6E
	movs r0, r0
	lsrs r2, r2, #20
	lsls r0, r0, #12
.L08305F6C:
	adds r4, #1
.L08305F6E:
	cmp r4, #89
	bhi .L08305F88
	bl VBlankIntrWait
	ldr r0, [pc, #180]
	adds r1, r5, #0
	bl sub_08002094
	movs r0, #11
	ldrh r1, [r5, #0]
	ands r0, r1
	cmp r0, #0
	beq .L08305F6C
.L08305F88:
	ldr r1, [pc, #164]
	ldr r2, [pc, #168]
	movs r4, #0
	str r4, [sp, #0]
	movs r0, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305FA0
	b .L08306606
.L08305FA0:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305FAE
	b .L08306606
.L08305FAE:
	ldr r1, [pc, #136]
	ldr r2, [pc, #136]
	str r4, [sp, #0]
	movs r0, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305FC4
	b .L08306606
.L08305FC4:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305FD2
	b .L08306606
.L08305FD2:
	ldr r1, [pc, #108]
	str r4, [sp, #0]
	movs r0, #0
	movs r2, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305FE8
	b .L08306606
.L08305FE8:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305FF6
	b .L08306606
.L08305FF6:
	ldr r1, [pc, #76]
	ldr r2, [pc, #76]
	ldr r3, [pc, #80]
	str r4, [sp, #0]
	movs r0, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830600C
	b .L08306606
.L0830600C:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830601A
	b .L08306606
.L0830601A:
	bl sub_08317074
	bl sub_08303EC0
	bl sub_08304050
	ldr r5, [pc, #40]
	b .L08306056
	movs r0, r0
	lsrs r0, r2, #20
	lsls r0, r0, #12
	add r5, pc, #992
	lsrs r5, r7, #32
	add r6, pc, #48
	lsrs r5, r7, #32
	add r6, pc, #112
	lsrs r5, r7, #32
	add r6, pc, #208
	lsrs r5, r7, #32
	add r6, pc, #272
	lsrs r5, r7, #32
	add r6, pc, #352
	lsrs r5, r7, #32
	add r6, pc, #464
	lsrs r5, r7, #32
	add r6, pc, #576
	lsrs r5, r7, #32
	lsrs r2, r2, #20
	lsls r0, r0, #12
.L08306054:
	adds r4, #1
.L08306056:
	cmp r4, #89
	bhi .L08306074
	bl VBlankIntrWait
	ldr r0, [pc, #120]
	adds r1, r5, #0
	bl sub_08002094
	bl sub_08304050
	movs r0, #11
	ldrh r1, [r5, #0]
	ands r0, r1
	cmp r0, #0
	beq .L08306054
.L08306074:
	ldr r4, [pc, #100]
	ldr r1, [pc, #104]
	ldr r2, [pc, #104]
	ldr r3, [pc, #108]
	ldr r0, [pc, #108]
	str r0, [sp, #0]
	adds r0, r4, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830608E
	b .L08306606
.L0830608E:
	adds r0, r4, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830609C
	b .L08306606
.L0830609C:
	ldr r1, [pc, #80]
	ldr r2, [pc, #84]
	ldr r3, [pc, #84]
	movs r0, #0
	str r0, [sp, #0]
	adds r0, r4, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083060B4
	b .L08306606
.L083060B4:
	adds r0, r4, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083060C2
	b .L08306606
.L083060C2:
	bl sub_08317074
	bl sub_083040FC
	movs r0, #0
	movs r1, #192
	movs r2, #3
	bl Fade_Start
	b .L08306100
	movs r0, r0
	lsrs r0, r2, #20
	lsls r0, r0, #12
	eors r1, r2
	lsrs r0, r6, #32
	add r6, pc, #656
	lsrs r5, r7, #32
	add r6, pc, #752
	lsrs r5, r7, #32
	add r6, pc, #864
	lsrs r5, r7, #32
	add r6, pc, #976
	lsrs r5, r7, #32
	add r7, pc, #16
	lsrs r5, r7, #32
	add r7, pc, #112
	lsrs r5, r7, #32
	add r7, pc, #208
	lsrs r5, r7, #32
.L083060FC:
	bl VBlankIntrWait
.L08306100:
	bl Fade_IsBusy
	cmp r0, #0
	bne .L083060FC
	movs r4, #0
	ldr r5, [pc, #4]
	b .L08306116
	movs r0, r0
	lsrs r2, r2, #20
	lsls r0, r0, #12
.L08306114:
	adds r4, #1
.L08306116:
	cmp r4, #89
	bhi .L08306130
	bl VBlankIntrWait
	ldr r0, [pc, #272]
	adds r1, r5, #0
	bl sub_08002094
	movs r0, #11
	ldrh r1, [r5, #0]
	ands r0, r1
	cmp r0, #0
	beq .L08306114
.L08306130:
	ldr r1, [pc, #256]
	ldr r2, [pc, #260]
	ldr r3, [pc, #260]
	ldr r0, [pc, #264]
	str r0, [sp, #0]
	movs r0, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08306148
	b .L08306606
.L08306148:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08306156
	b .L08306606
.L08306156:
	ldr r1, [pc, #236]
	movs r5, #0
	str r5, [sp, #0]
	movs r0, #0
	movs r2, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830616E
	b .L08306606
.L0830616E:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830617C
	b .L08306606
.L0830617C:
	ldr r1, [pc, #200]
	str r5, [sp, #0]
	movs r0, #0
	movs r2, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08306192
	b .L08306606
.L08306192:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083061A0
	b .L08306606
.L083061A0:
	ldr r1, [pc, #168]
	ldr r2, [pc, #172]
	ldr r3, [pc, #172]
	str r5, [sp, #0]
	movs r0, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083061B6
	b .L08306606
.L083061B6:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083061C4
	b .L08306606
.L083061C4:
	ldr r1, [pc, #144]
	ldr r2, [pc, #148]
	ldr r3, [pc, #148]
	ldr r0, [pc, #152]
	str r0, [sp, #0]
	movs r0, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083061DC
	b .L08306606
.L083061DC:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083061EA
	b .L08306606
.L083061EA:
	bl sub_08317074
	bl sub_08302D10
	bl sub_08302E98
	ldr r4, [pc, #112]
	ldr r1, [pc, #112]
	ldr r2, [pc, #116]
	ldr r3, [pc, #116]
	str r5, [sp, #0]
	adds r0, r4, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830620E
	b .L08306606
.L0830620E:
	adds r0, r4, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830621C
	b .L08306606
.L0830621C:
	bl sub_08317074
	bl sub_083040FC
	movs r0, #0
	movs r1, #192
	movs r2, #3
	bl Fade_Start
	b .L0830627C
	lsrs r0, r2, #20
	lsls r0, r0, #12
	add r7, pc, #288
	lsrs r5, r7, #32
	add r7, pc, #400
	lsrs r5, r7, #32
	add r7, pc, #496
	lsrs r5, r7, #32
	add r7, pc, #608
	lsrs r5, r7, #32
	add r7, pc, #656
	lsrs r5, r7, #32
	add r7, pc, #736
	lsrs r5, r7, #32
	add r7, pc, #816
	lsrs r5, r7, #32
	add r7, pc, #912
	lsrs r5, r7, #32
	add r7, pc, #1008
	lsrs r5, r7, #32
	add r0, sp, #16
	lsrs r5, r7, #32
	add r0, sp, #112
	lsrs r5, r7, #32
	add r0, sp, #208
	lsrs r5, r7, #32
	add r0, sp, #304
	lsrs r5, r7, #32
	cmp r6, #153
	lsrs r0, r6, #32
	add r0, sp, #352
	lsrs r5, r7, #32
	add r0, sp, #448
	lsrs r5, r7, #32
	add r0, sp, #544
	lsrs r5, r7, #32
.L08306278:
	bl VBlankIntrWait
.L0830627C:
	bl Fade_IsBusy
	adds r4, r0, #0
	cmp r4, #0
	bne .L08306278
	ldr r1, [pc, #252]
	str r4, [sp, #0]
	movs r0, #0
	movs r2, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830629C
	b .L08306606
.L0830629C:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083062AA
	b .L08306606
.L083062AA:
	ldr r1, [pc, #220]
	ldr r2, [pc, #220]
	str r4, [sp, #0]
	movs r0, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083062C0
	b .L08306606
.L083062C0:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083062CE
	b .L08306606
.L083062CE:
	ldr r1, [pc, #192]
	ldr r2, [pc, #192]
	ldr r3, [pc, #196]
	ldr r0, [pc, #196]
	str r0, [sp, #0]
	movs r0, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083062E6
	b .L08306606
.L083062E6:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083062F4
	b .L08306606
.L083062F4:
	ldr r1, [pc, #168]
	str r4, [sp, #0]
	movs r0, #0
	movs r2, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830630A
	b .L08306606
.L0830630A:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08306318
	b .L08306606
.L08306318:
	ldr r1, [pc, #136]
	ldr r2, [pc, #140]
	ldr r3, [pc, #140]
	str r4, [sp, #0]
	movs r0, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830632E
	b .L08306606
.L0830632E:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830633C
	b .L08306606
.L0830633C:
	bl sub_08317074
	bl sub_08302D10
	bl sub_08302E98
	ldr r5, [pc, #100]
	ldr r1, [pc, #104]
	str r4, [sp, #0]
	adds r0, r5, #0
	movs r2, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08306360
	b .L08306606
.L08306360:
	adds r0, r5, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830636E
	b .L08306606
.L0830636E:
	bl sub_08317074
	bl sub_083040FC
	movs r0, #0
	movs r1, #192
	movs r2, #3
	bl Fade_Start
	b .L083063BC
	movs r0, r0
	add r0, sp, #640
	lsrs r5, r7, #32
	add r0, sp, #688
	lsrs r5, r7, #32
	add r0, sp, #784
	lsrs r5, r7, #32
	add r0, sp, #880
	lsrs r5, r7, #32
	add r0, sp, #992
	lsrs r5, r7, #32
	add r1, sp, #80
	lsrs r5, r7, #32
	add r1, sp, #176
	lsrs r5, r7, #32
	add r1, sp, #208
	lsrs r5, r7, #32
	add r1, sp, #272
	lsrs r5, r7, #32
	add r1, sp, #368
	lsrs r5, r7, #32
	add r1, sp, #480
	lsrs r5, r7, #32
	cmp r6, #153
	lsrs r0, r6, #32
	add r1, sp, #528
	lsrs r5, r7, #32
.L083063B8:
	bl VBlankIntrWait
.L083063BC:
	bl Fade_IsBusy
	adds r4, r0, #0
	cmp r4, #0
	bne .L083063B8
	ldr r1, [pc, #308]
	str r4, [sp, #0]
	movs r0, #0
	movs r2, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083063DC
	b .L08306606
.L083063DC:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083063EA
	b .L08306606
.L083063EA:
	ldr r1, [pc, #276]
	ldr r2, [pc, #276]
	ldr r3, [pc, #280]
	str r4, [sp, #0]
	movs r0, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08306400
	b .L08306606
.L08306400:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830640E
	b .L08306606
.L0830640E:
	ldr r1, [pc, #252]
	str r4, [sp, #0]
	movs r0, #0
	movs r2, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08306424
	b .L08306606
.L08306424:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08306432
	b .L08306606
.L08306432:
	ldr r1, [pc, #220]
	str r4, [sp, #0]
	movs r0, #0
	movs r2, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08306448
	b .L08306606
.L08306448:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08306456
	b .L08306606
.L08306456:
	ldr r1, [pc, #188]
	str r4, [sp, #0]
	movs r0, #0
	movs r2, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830646C
	b .L08306606
.L0830646C:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830647A
	b .L08306606
.L0830647A:
	ldr r1, [pc, #156]
	ldr r2, [pc, #156]
	str r4, [sp, #0]
	movs r0, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08306490
	b .L08306606
.L08306490:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830649E
	b .L08306606
.L0830649E:
	ldr r1, [pc, #128]
	ldr r2, [pc, #128]
	str r4, [sp, #0]
	movs r0, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083064B4
	b .L08306606
.L083064B4:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083064C2
	b .L08306606
.L083064C2:
	ldr r1, [pc, #100]
	str r4, [sp, #0]
	movs r0, #0
	movs r2, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083064D8
	b .L08306606
.L083064D8:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083064E6
	b .L08306606
.L083064E6:
	bl sub_08317074
	bl sub_08302B5C
	movs r0, #0
	movs r1, #192
	movs r2, #3
	bl Fade_Start
	b .L08306530
	movs r0, r0
	add r1, sp, #608
	lsrs r5, r7, #32
	add r1, sp, #672
	lsrs r5, r7, #32
	add r1, sp, #768
	lsrs r5, r7, #32
	add r1, sp, #880
	lsrs r5, r7, #32
	add r1, sp, #944
	lsrs r5, r7, #32
	add r1, sp, #1008
	lsrs r5, r7, #32
	add r2, sp, #16
	lsrs r5, r7, #32
	add r2, sp, #64
	lsrs r5, r7, #32
	add r2, sp, #160
	lsrs r5, r7, #32
	add r2, sp, #208
	lsrs r5, r7, #32
	add r2, sp, #288
	lsrs r5, r7, #32
	add r2, sp, #368
	lsrs r5, r7, #32
.L0830652C:
	bl VBlankIntrWait
.L08306530:
	bl Fade_IsBusy
	adds r4, r0, #0
	cmp r4, #0
	bne .L0830652C
	ldr r5, [pc, #220]
	ldr r1, [pc, #220]
	str r4, [sp, #0]
	adds r0, r5, #0
	movs r2, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08306606
	adds r0, r5, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08306606
	bl sub_08317074
	bl sub_08302D10
	bl sub_08302E98
	ldr r5, [pc, #180]
	ldr r1, [pc, #184]
	ldr r2, [pc, #184]
	ldr r3, [pc, #188]
	str r4, [sp, #0]
	adds r0, r5, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08306606
	adds r0, r5, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08306606
	ldr r1, [pc, #164]
	ldr r2, [pc, #164]
	ldr r3, [pc, #168]
	ldr r0, [pc, #168]
	str r0, [sp, #0]
	adds r0, r5, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08306606
	adds r0, r5, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08306606
	ldr r1, [pc, #144]
	ldr r2, [pc, #148]
	str r4, [sp, #0]
	adds r0, r5, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08306606
	adds r0, r5, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08306606
	ldr r1, [pc, #120]
	ldr r2, [pc, #124]
	ldr r3, [pc, #124]
	str r4, [sp, #0]
	adds r0, r5, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08306606
	adds r0, r5, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08306606
	ldr r1, [pc, #100]
	ldr r2, [pc, #104]
	str r4, [sp, #0]
	adds r0, r5, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08306606
	adds r0, r5, #0
	bl sub_083025FC
.L08306606:
	movs r0, #1
	bl sub_08310110
	movs r0, #1
	movs r1, #192
	movs r2, #3
	bl Fade_Start
	b .L08306660
	cmp r4, #181
	lsrs r0, r6, #32
	add r2, sp, #464
	lsrs r5, r7, #32
	cmp r6, #153
	lsrs r0, r6, #32
	add r2, sp, #560
	lsrs r5, r7, #32
	add r2, sp, #640
	lsrs r5, r7, #32
	add r2, sp, #720
	lsrs r5, r7, #32
	add r2, sp, #784
	lsrs r5, r7, #32
	add r2, sp, #880
	lsrs r5, r7, #32
	add r2, sp, #992
	lsrs r5, r7, #32
	add r3, sp, #64
	lsrs r5, r7, #32
	add r3, sp, #160
	lsrs r5, r7, #32
	add r3, sp, #272
	lsrs r5, r7, #32
	add r3, sp, #352
	lsrs r5, r7, #32
	add r3, sp, #448
	lsrs r5, r7, #32
	add r3, sp, #512
	lsrs r5, r7, #32
	add r3, sp, #576
	lsrs r5, r7, #32
	add r3, sp, #688
	lsrs r5, r7, #32
.L0830665C:
	bl VBlankIntrWait
.L08306660:
	bl Fade_IsBusy
	cmp r0, #0
	bne .L0830665C
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_08306670
	.thumb_func
sub_08306670:
	push {r4, r5, lr}
	sub sp, #4
	bl sub_08316824
	bl sub_08302798
	ldr r4, [pc, #92]
	adds r0, r4, #0
	bl sub_083177CC
	adds r1, r4, #0
	adds r1, #56
	movs r0, #0
	strb r0, [r1, #0]
	ldr r0, [pc, #80]
	strh r0, [r4, #8]
	ldr r0, [pc, #80]
	str r0, [r4, #48]
	ldr r0, [pc, #80]
	str r0, [r4, #44]
	ldr r0, [pc, #80]
	str r0, [r4, #0]
	movs r0, #128
	lsls r0, r0, #5
	str r0, [r4, #4]
	adds r0, r4, #0
	bl GAX2_init
	movs r4, #1
	negs r4, r4
	ldr r0, [pc, #64]
	ldr r0, [r0, #0]
	bl sub_083167F8
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08318CA4
	ldr r0, [pc, #52]
	ldr r0, [r0, #0]
	bl sub_08316810
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_083191AC
	ldr r1, [pc, #40]
	movs r0, #0
	bl sub_08001FC8
	movs r4, #0
	ldr r5, [pc, #36]
	b .L08306702
	movs r0, r0
	mov r8, ip
	lsls r0, r0, #12
	strh r1, [r4, r0]
	movs r0, r0
	lsrs r4, r0, #16
	lsrs r6, r6, #32
	adds r4, r3, #1
	lsrs r5, r7, #32
	.2byte 0x471c @ .raw bxns r3
	lsls r0, r0, #12
	ldr r4, [r6, r6]
	lsls r0, r0, #12
	ldr r0, [r7, r6]
	lsls r0, r0, #12
	lsrs r5, r7, #1
	lsls r0, r0, #12
	lsrs r2, r2, #20
	lsls r0, r0, #12
.L08306700:
	adds r4, #1
.L08306702:
	cmp r4, #89
	bhi .L0830671C
	bl VBlankIntrWait
	ldr r0, [pc, #216]
	adds r1, r5, #0
	bl sub_08002094
	movs r0, #11
	ldrh r1, [r5, #0]
	ands r0, r1
	cmp r0, #0
	beq .L08306700
.L0830671C:
	ldr r1, [pc, #200]
	ldr r2, [pc, #204]
	ldr r3, [pc, #204]
	ldr r0, [pc, #208]
	str r0, [sp, #0]
	movs r0, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08306734
	b .L083068EC
.L08306734:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08306742
	b .L083068EC
.L08306742:
	bl sub_08302958
	ldr r1, [pc, #176]
	movs r4, #0
	str r4, [sp, #0]
	movs r0, #0
	movs r2, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830675E
	b .L083068EC
.L0830675E:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830676C
	b .L083068EC
.L0830676C:
	ldr r1, [pc, #140]
	ldr r2, [pc, #144]
	ldr r3, [pc, #144]
	str r4, [sp, #0]
	movs r0, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08306782
	b .L083068EC
.L08306782:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08306790
	b .L083068EC
.L08306790:
	ldr r1, [pc, #116]
	ldr r2, [pc, #120]
	str r4, [sp, #0]
	movs r0, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083067A6
	b .L083068EC
.L083067A6:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083067B4
	b .L083068EC
.L083067B4:
	ldr r1, [pc, #88]
	ldr r2, [pc, #92]
	str r4, [sp, #0]
	movs r0, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083067CA
	b .L083068EC
.L083067CA:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083067D8
	b .L083068EC
.L083067D8:
	movs r0, #1
	movs r1, #192
	movs r2, #3
	bl Fade_Start
	b .L0830681C
	lsrs r0, r2, #20
	lsls r0, r0, #12
	add r3, sp, #752
	lsrs r5, r7, #32
	add r3, sp, #864
	lsrs r5, r7, #32
	add r3, sp, #960
	lsrs r5, r7, #32
	add r4, sp, #32
	lsrs r5, r7, #32
	add r4, sp, #96
	lsrs r5, r7, #32
	add r4, sp, #160
	lsrs r5, r7, #32
	add r4, sp, #256
	lsrs r5, r7, #32
	add r4, sp, #352
	lsrs r5, r7, #32
	add r4, sp, #400
	lsrs r5, r7, #32
	add r4, sp, #496
	lsrs r5, r7, #32
	add r4, sp, #576
	lsrs r5, r7, #32
	add r4, sp, #688
	lsrs r5, r7, #32
.L08306818:
	bl VBlankIntrWait
.L0830681C:
	bl Fade_IsBusy
	cmp r0, #0
	bne .L08306818
	bl sub_08303008
	movs r0, #0
	movs r1, #192
	movs r2, #3
	bl Fade_Start
	b .L08306838
.L08306834:
	bl VBlankIntrWait
.L08306838:
	bl Fade_IsBusy
	cmp r0, #0
	bne .L08306834
	movs r4, #0
	ldr r5, [pc, #4]
	b .L0830684E
	movs r0, r0
	lsrs r2, r2, #20
	lsls r0, r0, #12
.L0830684C:
	adds r4, #1
.L0830684E:
	cmp r4, #89
	bhi .L08306868
	bl VBlankIntrWait
	ldr r0, [pc, #160]
	adds r1, r5, #0
	bl sub_08002094
	movs r0, #11
	ldrh r1, [r5, #0]
	ands r0, r1
	cmp r0, #0
	beq .L0830684C
.L08306868:
	ldr r1, [pc, #144]
	ldr r2, [pc, #148]
	movs r4, #0
	str r4, [sp, #0]
	movs r0, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	beq .L083068EC
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	beq .L083068EC
	bl sub_08303190
	ldr r1, [pc, #116]
	str r4, [sp, #0]
	movs r0, #0
	movs r2, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	beq .L083068EC
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	beq .L083068EC
	ldr r1, [pc, #88]
	ldr r2, [pc, #88]
	ldr r3, [pc, #92]
	str r4, [sp, #0]
	movs r0, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	beq .L083068EC
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	beq .L083068EC
	bl sub_083031F0
	ldr r1, [pc, #64]
	ldr r2, [pc, #64]
	ldr r3, [pc, #68]
	str r4, [sp, #0]
	movs r0, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	beq .L083068EC
	movs r0, #0
	bl sub_083025FC
.L083068EC:
	movs r0, #1
	movs r1, #192
	movs r2, #30
	bl Fade_Start
	b .L08306924
	lsrs r0, r2, #20
	lsls r0, r0, #12
	add r4, sp, #800
	lsrs r5, r7, #32
	add r4, sp, #880
	lsrs r5, r7, #32
	add r4, sp, #928
	lsrs r5, r7, #32
	add r4, sp, #992
	lsrs r5, r7, #32
	add r5, sp, #48
	lsrs r5, r7, #32
	add r5, sp, #144
	lsrs r5, r7, #32
	add r5, sp, #224
	lsrs r5, r7, #32
	add r5, sp, #336
	lsrs r5, r7, #32
	add r5, sp, #400
	lsrs r5, r7, #32
.L08306920:
	bl VBlankIntrWait
.L08306924:
	bl Fade_IsBusy
	cmp r0, #0
	bne .L08306920
	movs r0, #1
	bl sub_08310110
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_0830693C
	.thumb_func
sub_0830693C:
	push {r4, r5, lr}
	sub sp, #4
	bl sub_08316824
	bl sub_08303548
	movs r0, #0
	movs r1, #192
	movs r2, #30
	bl Fade_Start
	b .L08306958
.L08306954:
	bl VBlankIntrWait
.L08306958:
	bl Fade_IsBusy
	adds r5, r0, #0
	cmp r5, #0
	bne .L08306954
	ldr r4, [pc, #76]
	adds r0, r4, #0
	bl sub_083177CC
	adds r0, r4, #0
	adds r0, #56
	strb r5, [r0, #0]
	ldr r0, [pc, #64]
	strh r0, [r4, #8]
	ldr r0, [pc, #64]
	str r0, [r4, #48]
	ldr r0, [pc, #64]
	str r0, [r4, #44]
	ldr r0, [pc, #64]
	str r0, [r4, #0]
	movs r0, #128
	lsls r0, r0, #5
	str r0, [r4, #4]
	adds r0, r4, #0
	bl GAX2_init
	movs r4, #1
	negs r4, r4
	ldr r0, [pc, #48]
	ldr r0, [r0, #0]
	bl sub_08316810
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_083191AC
	ldr r1, [pc, #36]
	movs r0, #0
	bl sub_08001FC8
	movs r4, #0
	ldr r5, [pc, #32]
	b .L083069D2
	movs r0, r0
	mov r8, ip
	lsls r0, r0, #12
	strh r1, [r4, r0]
	movs r0, r0
	.2byte 0xf2e4 @ .raw
	lsrs r5, r6, #32
	adds r4, r3, #1
	lsrs r5, r7, #32
	.2byte 0x471c @ .raw bxns r3
	lsls r0, r0, #12
	ldr r0, [r7, r6]
	lsls r0, r0, #12
	lsrs r5, r7, #1
	lsls r0, r0, #12
	lsrs r2, r2, #20
	lsls r0, r0, #12
.L083069D0:
	adds r4, #1
.L083069D2:
	cmp r4, #89
	bhi .L083069F0
	bl sub_08303688
	bl VBlankIntrWait
	ldr r0, [pc, #76]
	adds r1, r5, #0
	bl sub_08002094
	movs r0, #11
	ldrh r1, [r5, #0]
	ands r0, r1
	cmp r0, #0
	beq .L083069D0
.L083069F0:
	ldr r4, [pc, #60]
	ldr r1, [pc, #64]
	ldr r2, [pc, #64]
	ldr r3, [pc, #68]
	movs r0, #0
	str r0, [sp, #0]
	adds r0, r4, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08306A0A
	b .L08306D9A
.L08306A0A:
	adds r0, r4, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08306A18
	b .L08306D9A
.L08306A18:
	bl sub_08317074
	bl sub_083037F8
	movs r0, #0
	movs r1, #192
	movs r2, #3
	bl Fade_Start
	b .L08306A44
	lsrs r0, r2, #20
	lsls r0, r0, #12
	adds r6, #137
	lsrs r0, r6, #32
	add r5, sp, #480
	lsrs r5, r7, #32
	add r5, sp, #560
	lsrs r5, r7, #32
	add r5, sp, #640
	lsrs r5, r7, #32
.L08306A40:
	bl VBlankIntrWait
.L08306A44:
	bl Fade_IsBusy
	cmp r0, #0
	bne .L08306A40
	movs r4, #0
	ldr r5, [pc, #4]
	b .L08306A5A
	movs r0, r0
	lsrs r2, r2, #20
	lsls r0, r0, #12
.L08306A58:
	adds r4, #1
.L08306A5A:
	cmp r4, #89
	bhi .L08306A78
	bl VBlankIntrWait
	ldr r0, [pc, #116]
	adds r1, r5, #0
	bl sub_08002094
	bl sub_08303938
	movs r0, #11
	ldrh r1, [r5, #0]
	ands r0, r1
	cmp r0, #0
	beq .L08306A58
.L08306A78:
	ldr r4, [pc, #96]
	ldr r1, [pc, #100]
	movs r5, #0
	str r5, [sp, #0]
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08306A92
	b .L08306D9A
.L08306A92:
	adds r0, r4, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08306AA0
	b .L08306D9A
.L08306AA0:
	ldr r1, [pc, #64]
	ldr r2, [pc, #68]
	str r5, [sp, #0]
	adds r0, r4, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08306AB6
	b .L08306D9A
.L08306AB6:
	adds r0, r4, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08306AC4
	b .L08306D9A
.L08306AC4:
	bl sub_08317074
	bl sub_08303548
	movs r0, #0
	movs r1, #192
	movs r2, #3
	bl Fade_Start
	b .L08306AF0
	lsrs r0, r2, #20
	lsls r0, r0, #12
	subs r1, #57
	lsrs r0, r6, #32
	add r5, sp, #720
	lsrs r5, r7, #32
	add r5, sp, #800
	lsrs r5, r7, #32
	add r5, sp, #880
	lsrs r5, r7, #32
.L08306AEC:
	bl VBlankIntrWait
.L08306AF0:
	bl Fade_IsBusy
	cmp r0, #0
	bne .L08306AEC
	ldr r4, [pc, #56]
	ldr r1, [pc, #60]
	ldr r2, [pc, #60]
	ldr r3, [pc, #64]
	str r0, [sp, #0]
	adds r0, r4, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08306B10
	b .L08306D9A
.L08306B10:
	adds r0, r4, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08306B1E
	b .L08306D9A
.L08306B1E:
	bl sub_08317074
	bl sub_083037F8
	movs r0, #0
	movs r1, #192
	movs r2, #3
	bl Fade_Start
	b .L08306B48
	movs r0, r0
	adds r6, #137
	lsrs r0, r6, #32
	add r5, sp, #960
	lsrs r5, r7, #32
	add r6, sp, #32
	lsrs r5, r7, #32
	add r6, sp, #128
	lsrs r5, r7, #32
.L08306B44:
	bl VBlankIntrWait
.L08306B48:
	bl Fade_IsBusy
	adds r4, r0, #0
	cmp r4, #0
	bne .L08306B44
	ldr r5, [pc, #128]
	ldr r1, [pc, #128]
	str r4, [sp, #0]
	adds r0, r5, #0
	movs r2, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08306B6A
	b .L08306D9A
.L08306B6A:
	adds r0, r5, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08306B78
	b .L08306D9A
.L08306B78:
	ldr r1, [pc, #96]
	str r4, [sp, #0]
	adds r0, r5, #0
	movs r2, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08306B8E
	b .L08306D9A
.L08306B8E:
	adds r0, r5, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08306B9C
	b .L08306D9A
.L08306B9C:
	ldr r1, [pc, #64]
	str r4, [sp, #0]
	adds r0, r5, #0
	movs r2, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08306BB2
	b .L08306D9A
.L08306BB2:
	adds r0, r5, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08306BC0
	b .L08306D9A
.L08306BC0:
	bl sub_08317074
	bl sub_08303548
	movs r0, #0
	movs r1, #192
	movs r2, #3
	bl Fade_Start
	b .L08306BE8
	subs r1, #57
	lsrs r0, r6, #32
	add r6, sp, #176
	lsrs r5, r7, #32
	add r6, sp, #224
	lsrs r5, r7, #32
	add r1, sp, #1008
	lsrs r5, r7, #32
.L08306BE4:
	bl VBlankIntrWait
.L08306BE8:
	bl Fade_IsBusy
	cmp r0, #0
	bne .L08306BE4
	ldr r4, [pc, #48]
	ldr r1, [pc, #52]
	str r0, [sp, #0]
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08306C08
	b .L08306D9A
.L08306C08:
	adds r0, r4, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08306C16
	b .L08306D9A
.L08306C16:
	movs r0, #1
	movs r1, #192
	movs r2, #60
	bl Fade_Start
	b .L08306C30
	movs r0, r0
	adds r6, #137
	lsrs r0, r6, #32
	add r6, sp, #256
	lsrs r5, r7, #32
.L08306C2C:
	bl VBlankIntrWait
.L08306C30:
	bl Fade_IsBusy
	cmp r0, #0
	bne .L08306C2C
	bl sub_083036A0
	movs r0, #0
	movs r1, #192
	movs r2, #60
	bl Fade_Start
	b .L08306C50
.L08306C48:
	bl sub_083037E0
	bl VBlankIntrWait
.L08306C50:
	bl Fade_IsBusy
	cmp r0, #0
	bne .L08306C48
	ldr r4, [pc, #56]
	movs r5, #15
.L08306C5C:
	bl VBlankIntrWait
	ldr r0, [pc, #52]
	adds r1, r4, #0
	bl sub_08002094
	bl sub_083037E0
	adds r0, r5, #0
	ldrh r1, [r4, #0]
	ands r0, r1
	cmp r0, #0
	beq .L08306C5C
	ldr r0, [pc, #36]
	ldrb r0, [r0, #0]
	cmp r0, #3
	bls .L08306C80
	b .L08306D9A
.L08306C80:
	bl sub_08317074
	bl sub_083037F8
	movs r0, #0
	movs r1, #192
	movs r2, #3
	bl Fade_Start
	b .L08306CA4
	lsrs r2, r2, #20
	lsls r0, r0, #12
	lsrs r0, r2, #20
	lsls r0, r0, #12
	strb r4, [r3, #21]
	lsls r0, r0, #8
.L08306CA0:
	bl VBlankIntrWait
.L08306CA4:
	bl Fade_IsBusy
	cmp r0, #0
	bne .L08306CA0
	movs r4, #0
	ldr r5, [pc, #4]
	b .L08306CBA
	movs r0, r0
	lsrs r2, r2, #20
	lsls r0, r0, #12
.L08306CB8:
	adds r4, #1
.L08306CBA:
	cmp r4, #89
	bhi .L08306CD8
	bl VBlankIntrWait
	ldr r0, [pc, #80]
	adds r1, r5, #0
	bl sub_08002094
	bl sub_08303938
	movs r0, #11
	ldrh r1, [r5, #0]
	ands r0, r1
	cmp r0, #0
	beq .L08306CB8
.L08306CD8:
	movs r0, #17
	bl sub_083189D0
	ldr r4, [pc, #56]
	ldr r1, [pc, #56]
	ldr r2, [pc, #60]
	ldr r3, [pc, #60]
	movs r0, #0
	str r0, [sp, #0]
	adds r0, r4, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08306D9A
	adds r0, r4, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08306D9A
	ldr r0, [pc, #36]
	ldrb r0, [r0, #0]
	cmp r0, #1
	beq .L08306D4C
	cmp r0, #1
	bgt .L08306D2C
	cmp r0, #0
	beq .L08306D32
	b .L08306D9A
	lsrs r0, r2, #20
	lsls r0, r0, #12
	subs r1, #57
	lsrs r0, r6, #32
	add r6, sp, #320
	lsrs r5, r7, #32
	add r6, sp, #400
	lsrs r5, r7, #32
	add r6, sp, #496
	lsrs r5, r7, #32
	strb r6, [r4, #21]
	lsls r0, r0, #8
.L08306D2C:
	cmp r0, #3
	bgt .L08306D9A
	b .L08306D7C
.L08306D32:
	ldr r1, [pc, #8]
	ldr r2, [pc, #8]
	ldr r3, [pc, #12]
	ldr r0, [pc, #12]
	b .L08306D54
	add r6, sp, #528
	lsrs r5, r7, #32
	add r6, sp, #624
	lsrs r5, r7, #32
	add r6, sp, #736
	lsrs r5, r7, #32
	add r6, sp, #832
	lsrs r5, r7, #32
.L08306D4C:
	ldr r1, [pc, #28]
	ldr r2, [pc, #32]
	ldr r3, [pc, #32]
	ldr r0, [pc, #36]
.L08306D54:
	str r0, [sp, #0]
	adds r0, r4, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08306D9A
	adds r0, r4, #0
	bl sub_083025FC
	b .L08306D9A
	movs r0, r0
	add r6, sp, #528
	lsrs r5, r7, #32
	add r6, sp, #624
	lsrs r5, r7, #32
	add r6, sp, #928
	lsrs r5, r7, #32
	add r7, sp, #0
	lsrs r5, r7, #32
.L08306D7C:
	ldr r4, [pc, #44]
	ldr r1, [pc, #48]
	ldr r2, [pc, #48]
	ldr r3, [pc, #52]
	ldr r0, [pc, #52]
	str r0, [sp, #0]
	adds r0, r4, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08306D9A
	adds r0, r4, #0
	bl sub_083025FC
.L08306D9A:
	movs r0, #1
	bl sub_08310110
	movs r0, #1
	movs r1, #192
	movs r2, #3
	bl Fade_Start
	b .L08306DC4
	subs r1, #57
	lsrs r0, r6, #32
	add r6, sp, #528
	lsrs r5, r7, #32
	add r6, sp, #624
	lsrs r5, r7, #32
	add r7, sp, #96
	lsrs r5, r7, #32
	add r7, sp, #192
	lsrs r5, r7, #32
.L08306DC0:
	bl VBlankIntrWait
.L08306DC4:
	bl Fade_IsBusy
	cmp r0, #0
	bne .L08306DC0
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_08306DD4
	.thumb_func
sub_08306DD4:
	push {r4, r5, r6, lr}
	mov ip, r0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	add r0, sp, #20
	add r1, sp, #24
	ldrb r2, [r0, #0]
	ldrb r3, [r1, #0]
	mov r0, ip
	adds r0, #46
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq .L08306E1A
	mov r1, ip
	adds r1, #230
	movs r0, #1
	strb r0, [r1, #0]
	mov r0, ip
	adds r0, #232
	str r4, [r0, #0]
	adds r0, #4
	strh r5, [r0, #0]
	adds r0, #4
	str r6, [r0, #0]
	adds r0, #4
	strb r2, [r0, #0]
	adds r1, #16
	ldr r0, [sp, #16]
	strb r0, [r1, #0]
	mov r0, ip
	adds r0, #245
	strb r3, [r0, #0]
	movs r0, #1
	b .L08306E22
.L08306E1A:
	mov r0, ip
	bl sub_08306E28
	movs r0, #0
.L08306E22:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	.thumb
	.align 1, 0
	.global sub_08306E28
	.thumb_func
sub_08306E28:
	adds r3, r0, #0
	adds r0, #230
	movs r1, #0
	strb r1, [r0, #0]
	adds r0, #2
	str r1, [r0, #0]
	adds r0, #4
	movs r2, #0
	strh r1, [r0, #0]
	adds r1, r3, #0
	adds r1, #240
	movs r0, #2
	str r0, [r1, #0]
	adds r0, r3, #0
	adds r0, #244
	strb r2, [r0, #0]
	adds r0, #1
	strb r2, [r0, #0]
	adds r0, #1
	strb r2, [r0, #0]
	bx lr
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08306E54
	.thumb_func
sub_08306E54:
	push {r4, lr}
	ldr r4, [pc, #36]
	ldr r3, [pc, #36]
	ldrh r2, [r3, #0]
	ldrh r0, [r3, #0]
	lsls r0, r0, #8
	orrs r0, r2
	ldrh r2, [r3, #0]
	lsls r2, r2, #16
	orrs r0, r2
	ldrh r2, [r3, #0]
	lsls r2, r2, #24
	orrs r0, r2
	asrs r1, r0, #31
	str r0, [r4, #0]
	str r1, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x03005938
	.4byte 0x04000006

	.thumb
	.align 1, 0
	.global sub_08306E84
	.thumb_func
sub_08306E84:
	push {r4, lr}
	ldr r4, [pc, #32]
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	ldr r2, [pc, #28]
	ldr r3, [pc, #32]
	bl __muldi3
	ldr r2, [pc, #28]
	ldr r3, [pc, #32]
	adds r2, r2, r0
	adcs r3, r1
	str r2, [r4, #0]
	str r3, [r4, #4]
	ldr r0, [r4, #0]
	pop {r4}
	pop {r1}
	bx r1
	.4byte 0x03005938
	.4byte 0x0019660D
	.4byte 0x00000000
	.4byte 0x3C6EF35F
	.4byte 0x00000000

	.thumb
	.align 1, 0
	.global sub_08306EBC
	.thumb_func
sub_08306EBC:
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	bl sub_0830A000
	adds r6, r0, #0
	cmp r6, #1
	bne .L08306F34
	adds r7, r5, #0
	adds r7, #226
	ldrb r4, [r7, #0]
	adds r4, #1
	bl sub_0800314C
	cmp r4, r0
	bgt .L08306F34
	movs r2, #0
	movs r0, #20
	strb r0, [r5, #5]
	adds r1, r5, #0
	adds r1, #60
	movs r0, #41
	strb r0, [r1, #0]
	strb r6, [r5, #2]
	strb r6, [r5, #3]
	adds r0, r5, #0
	adds r0, #208
	str r2, [r0, #0]
	strb r2, [r5, #4]
	subs r0, #162
	strb r6, [r0, #0]
	adds r4, r5, #0
	adds r4, #100
	ldr r1, [pc, #40]
	adds r0, r4, #0
	movs r3, #0
	bl sub_080002E0
	ldrb r0, [r7, #0]
	cmp r0, #0
	beq .L08306F16
	ldrb r1, [r7, #0]
	adds r1, #2
	adds r0, r4, #0
	bl sub_0800075C
.L08306F16:
	adds r1, r5, #0
	adds r1, #212
	ldr r0, [pc, #16]
	str r0, [r1, #0]
	subs r1, #12
	ldr r0, [pc, #12]
	str r0, [r1, #0]
	b .L08306F38
	movs r0, r0
	ldmia r7, {r4, r5, r6, r7}
	lsrs r0, r2, #32
	ldr r6, [sp, #484]
	lsrs r0, r6, #32
	ldr r1, [r0, #116]
	lsrs r0, r6, #32
.L08306F34:
	movs r0, #0
	strb r0, [r5, #1]
.L08306F38:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08306F40
	.thumb_func
sub_08306F40:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #208
	ldr r0, [r1, #0]
	cmp r0, #0
	beq .L08306F8A
	ldr r0, [r0, #52]
	str r0, [r4, #52]
	ldr r0, [r1, #0]
	ldr r0, [r0, #56]
	str r0, [r4, #56]
	ldr r2, [r1, #0]
	adds r0, r2, #0
	adds r0, #90
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	ble .L08306F70
	ldrh r0, [r2, #24]
	cmp r0, #0
	bne .L08306F8A
.L08306F70:
	movs r1, #0
	movs r0, #0
	strh r0, [r2, #24]
	strb r1, [r4, #3]
	adds r0, r4, #0
	bl sub_08309D50
	adds r0, r4, #0
	adds r0, #224
	ldrh r0, [r0, #0]
	bl sub_08316920
	b .L083070EE
.L08306F8A:
	movs r6, #0
	movs r2, #100
	adds r2, r2, r4
	mov r8, r2
	b .L083070DE
.L08306F94:
	lsls r0, r6, #5
	subs r0, r0, r6
	lsls r0, r0, #3
	ldr r7, [pc, #84]
	adds r5, r0, r7
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_08000D04
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08306FB0
	b .L083070DC
.L08306FB0:
	adds r1, r4, #0
	adds r1, #208
	ldr r2, [r1, #0]
	cmp r2, #0
	beq .L08306FBC
	b .L083070DC
.L08306FBC:
	ldrh r0, [r5, #24]
	cmp r0, #0
	bne .L08306FF4
	adds r0, r4, #0
	adds r0, #226
	ldrb r3, [r0, #0]
	ldrb r2, [r5, #0]
	cmp r3, r2
	bne .L08306FD0
	b .L083070DC
.L08306FD0:
	str r5, [r1, #0]
	ldrb r0, [r0, #0]
	adds r0, #1
	strh r0, [r5, #24]
	bl sub_0800347C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	ldrb r5, [r5, #0]
	cmp r5, r0
	beq .L08306FE8
	b .L083070E8
.L08306FE8:
	movs r0, #32
	bl sub_083189D0
	b .L083070E8
	movs r5, #12
	lsls r0, r0, #12
.L08306FF4:
	adds r0, r4, #0
	adds r0, #226
	ldrb r0, [r0, #0]
	ldrb r3, [r5, #0]
	cmp r0, r3
	bne .L083070DC
	ldr r0, [pc, #64]
	lsls r1, r3, #2
	adds r1, r1, r0
	ldr r0, [r1, #0]
	adds r0, #1
	str r0, [r1, #0]
	ldr r0, [pc, #56]
	strb r2, [r0, #0]
	ldrh r0, [r5, #24]
	subs r0, #1
	lsls r4, r0, #5
	subs r4, r4, r0
	lsls r4, r4, #3
	adds r4, r4, r7
	bl sub_0800347C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	ldrb r4, [r4, #0]
	cmp r4, r0
	bne .L08307054
	ldr r2, [pc, #32]
	ldrb r3, [r5, #0]
	adds r3, #1
	movs r0, #5
	movs r1, #18
	bl sub_08004968
	ldr r2, [pc, #20]
	movs r0, #5
	movs r1, #19
	bl sub_08004914
	b .L083070B8
	ldrh r4, [r1, r0]
	lsls r0, r0, #12
	ldrh r1, [r6, r0]
	lsls r0, r0, #12
	add r7, sp, #288
	lsrs r5, r7, #32
	add r7, sp, #384
	lsrs r5, r7, #32
.L08307054:
	bl sub_0800347C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	ldrb r1, [r5, #0]
	cmp r1, r0
	bne .L08307090
	ldr r2, [pc, #36]
	movs r0, #5
	movs r1, #18
	bl sub_08004914
	ldr r2, [pc, #28]
	ldrh r1, [r5, #24]
	subs r1, #1
	lsls r0, r1, #5
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r7
	ldrb r3, [r0, #0]
	adds r3, #1
	movs r0, #5
	movs r1, #19
	bl sub_08004968
	b .L083070B8
	add r7, sp, #480
	lsrs r5, r7, #32
	add r7, sp, #576
	lsrs r5, r7, #32
.L08307090:
	ldr r2, [pc, #64]
	ldrb r3, [r5, #0]
	adds r3, #1
	movs r0, #5
	movs r1, #18
	bl sub_08004968
	ldr r2, [pc, #56]
	ldrh r1, [r5, #24]
	subs r1, #1
	lsls r0, r1, #5
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r7
	ldrb r3, [r0, #0]
	adds r3, #1
	movs r0, #5
	movs r1, #19
	bl sub_08004968
.L083070B8:
	bl sub_0800347C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	ldrb r2, [r5, #0]
	cmp r2, r0
	bne .L083070CC
	movs r0, #7
	bl sub_083189D0
.L083070CC:
	movs r0, #0
	strh r0, [r5, #24]
	b .L083070E8
	movs r0, r0
	add r7, sp, #288
	lsrs r5, r7, #32
	add r7, sp, #672
	lsrs r5, r7, #32
.L083070DC:
	adds r6, #1
.L083070DE:
	bl sub_0800314C
	cmp r6, r0
	bcs .L083070E8
	b .L08306F94
.L083070E8:
	mov r0, r8
	bl sub_08000704
.L083070EE:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_083070F8
	.thumb_func
sub_083070F8:
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #4
	strb r0, [r4, #5]
	adds r1, r4, #0
	adds r1, #60
	movs r0, #50
	strb r0, [r1, #0]
	movs r5, #1
	strb r5, [r4, #2]
	strb r5, [r4, #3]
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #56]
	movs r2, #0
	movs r3, #0
	bl sub_080002E0
	adds r1, r4, #0
	adds r1, #212
	ldr r0, [pc, #44]
	str r0, [r1, #0]
	subs r1, #12
	ldr r0, [pc, #44]
	str r0, [r1, #0]
	adds r0, r4, #0
	adds r0, #226
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq .L0830715A
	adds r0, r4, #0
	adds r0, #227
	ldrb r0, [r0, #0]
	bl sub_08001E18
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #0
	bne .L08307158
	strb r0, [r4, #3]
	b .L0830715A
	movs r0, r0
	ldrsb r0, [r4, r6]
	lsrs r3, r1, #32
	ldr r6, [sp, #484]
	lsrs r0, r6, #32
	strb r1, [r4, #5]
	lsrs r0, r6, #32
.L08307158:
	strb r5, [r4, #3]
.L0830715A:
	pop {r4, r5}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_08307160
	.thumb_func
sub_08307160:
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, #226
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq .L08307186
	adds r0, r5, #0
	adds r0, #227
	ldrb r0, [r0, #0]
	bl sub_08001E18
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #0
	bne .L08307182
	strb r0, [r5, #3]
	b .L083071B4
.L08307182:
	movs r0, #1
	strb r0, [r5, #3]
.L08307186:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	bl sub_08000704
	ldr r1, [r5, #52]
	asrs r1, r1, #8
	ldr r2, [r5, #56]
	asrs r2, r2, #8
	adds r0, r4, #0
	bl sub_083020A8
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083071B4
	adds r0, r5, #0
	bl sub_08309D50
	adds r0, r5, #0
	adds r0, #224
	ldrh r0, [r0, #0]
	bl sub_08316920
.L083071B4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_083071BC
	.thumb_func
sub_083071BC:
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #5
	strb r0, [r4, #5]
	adds r1, r4, #0
	adds r1, #60
	movs r0, #38
	strb r0, [r1, #0]
	movs r0, #1
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #28]
	movs r2, #0
	movs r3, #0
	bl sub_080002E0
	adds r1, r4, #0
	adds r1, #212
	ldr r0, [pc, #16]
	str r0, [r1, #0]
	subs r1, #12
	ldr r0, [pc, #16]
	str r0, [r1, #0]
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x081F4CB0
	.4byte 0x08309E79
	.4byte 0x08307245

	.thumb
	.align 1, 0
	.global sub_08307200
	.thumb_func
sub_08307200:
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #5
	strb r0, [r4, #5]
	adds r1, r4, #0
	adds r1, #60
	movs r0, #42
	strb r0, [r1, #0]
	movs r0, #1
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #28]
	movs r2, #1
	movs r3, #0
	bl sub_080002E0
	adds r1, r4, #0
	adds r1, #212
	ldr r0, [pc, #16]
	str r0, [r1, #0]
	subs r1, #12
	ldr r0, [pc, #16]
	str r0, [r1, #0]
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x081F4CB0
	.4byte 0x08309E79
	.4byte 0x08307245

	.thumb
	.align 1, 0
	.global sub_08307244
	.thumb_func
sub_08307244:
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	bl sub_080006C4
	ldr r1, [r5, #52]
	asrs r1, r1, #8
	ldr r2, [r5, #56]
	asrs r2, r2, #8
	adds r0, r4, #0
	bl sub_083020A8
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08307276
	adds r0, r5, #0
	bl sub_08309D50
	adds r0, r5, #0
	adds r0, #224
	ldrh r0, [r0, #0]
	bl sub_08316920
.L08307276:
	pop {r4, r5}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_0830727C
	.thumb_func
sub_0830727C:
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #5
	strb r0, [r4, #5]
	adds r1, r4, #0
	adds r1, #60
	movs r0, #59
	strb r0, [r1, #0]
	movs r0, #1
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #28]
	movs r2, #0
	movs r3, #0
	bl sub_080002E0
	adds r1, r4, #0
	adds r1, #212
	ldr r0, [pc, #16]
	str r0, [r1, #0]
	subs r1, #12
	ldr r0, [pc, #16]
	str r0, [r1, #0]
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x081F4CB0
	.4byte 0x08309E79
	.4byte 0x08307305

	.thumb
	.align 1, 0
	.global sub_083072C0
	.thumb_func
sub_083072C0:
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #5
	strb r0, [r4, #5]
	adds r1, r4, #0
	adds r1, #60
	movs r0, #61
	strb r0, [r1, #0]
	movs r0, #1
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #28]
	movs r2, #1
	movs r3, #0
	bl sub_080002E0
	adds r1, r4, #0
	adds r1, #212
	ldr r0, [pc, #16]
	str r0, [r1, #0]
	subs r1, #12
	ldr r0, [pc, #16]
	str r0, [r1, #0]
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x081F4CB0
	.4byte 0x08309E79
	.4byte 0x08307305

	.thumb
	.align 1, 0
	.global sub_08307304
	.thumb_func
sub_08307304:
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	bl sub_080006C4
	ldr r1, [r5, #52]
	asrs r1, r1, #8
	ldr r2, [r5, #56]
	asrs r2, r2, #8
	adds r0, r4, #0
	bl sub_083020A8
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08307336
	adds r0, r5, #0
	bl sub_08309D50
	adds r0, r5, #0
	adds r0, #224
	ldrh r0, [r0, #0]
	bl sub_08316920
.L08307336:
	pop {r4, r5}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_0830733C
	.thumb_func
sub_0830733C:
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #6
	strb r0, [r4, #5]
	adds r1, r4, #0
	adds r1, #60
	movs r0, #60
	strb r0, [r1, #0]
	movs r0, #1
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #28]
	movs r2, #0
	movs r3, #0
	bl sub_080002E0
	adds r1, r4, #0
	adds r1, #212
	ldr r0, [pc, #16]
	str r0, [r1, #0]
	subs r1, #12
	ldr r0, [pc, #16]
	str r0, [r1, #0]
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x081FAC80
	.4byte 0x08309E79
	.4byte 0x08307381

	.thumb
	.align 1, 0
	.global sub_08307380
	.thumb_func
sub_08307380:
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	bl sub_080006C4
	ldr r1, [r5, #52]
	asrs r1, r1, #8
	ldr r2, [r5, #56]
	asrs r2, r2, #8
	adds r0, r4, #0
	bl sub_083020A8
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083073B2
	adds r0, r5, #0
	bl sub_08309D50
	adds r0, r5, #0
	adds r0, #224
	ldrh r0, [r0, #0]
	bl sub_08316920
.L083073B2:
	pop {r4, r5}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_083073B8
	.thumb_func
sub_083073B8:
	push {lr}
	adds r0, #226
	ldrb r0, [r0, #0]
	bl sub_08001E18
	pop {r1}
	bx r1
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_083073C8
	.thumb_func
sub_083073C8:
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #5]
	cmp r0, #3
	bne .L083073E0
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #4]
	b .L083073EA
	movs r0, r0
	strb r1, [r4, #19]
	lsrs r0, r6, #32
.L083073E0:
	cmp r0, #17
	bne .L083073F4
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #12]
.L083073EA:
	str r0, [r1, #0]
	adds r0, r2, #0
	adds r0, #100
	bl sub_080006AC
.L083073F4:
	pop {r0}
	bx r0
	.4byte 0x0830779D

	.thumb
	.align 1, 0
	.global sub_083073FC
	.thumb_func
sub_083073FC:
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r0, #3
	strb r0, [r6, #5]
	adds r1, r6, #0
	adds r1, #60
	movs r0, #42
	strb r0, [r1, #0]
	movs r0, #1
	strb r0, [r6, #2]
	strb r0, [r6, #3]
	subs r1, #14
	strb r0, [r1, #0]
	adds r1, #1
	strb r0, [r1, #0]
	adds r4, r6, #0
	adds r4, #100
	ldr r5, [pc, #76]
	adds r0, r6, #0
	adds r0, #226
	ldrb r0, [r0, #0]
	bl sub_08001E18
	adds r2, r0, #0
	lsls r2, r2, #24
	lsrs r2, r2, #24
	adds r0, r4, #0
	adds r1, r5, #0
	movs r3, #0
	bl sub_080002E0
	adds r1, r6, #0
	adds r1, #212
	ldr r0, [pc, #48]
	str r0, [r1, #0]
	subs r1, #12
	ldr r0, [pc, #44]
	str r0, [r1, #0]
	ldr r0, [r6, #52]
	ldr r1, [r6, #56]
	movs r2, #1
	bl sub_08000A1C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08307466
	adds r0, r6, #0
	adds r0, #52
	adds r1, r6, #0
	adds r1, #56
	movs r2, #1
	bl sub_08000A70
.L08307466:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.4byte 0x080BE790
	.4byte 0x08309E79
	.4byte 0x08307479

	.thumb
	.align 1, 0
	.global sub_08307478
	.thumb_func
sub_08307478:
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, [r5, #52]
	asrs r0, r0, #8
	ldr r1, [r5, #56]
	asrs r1, r1, #8
	ldr r3, [pc, #44]
	ldr r2, [r3, #52]
	asrs r2, r2, #8
	ldr r3, [r3, #56]
	asrs r3, r3, #8
	movs r4, #180
	lsls r4, r4, #1
	str r4, [sp, #0]
	bl sub_08000BB4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083074B8
	adds r0, r5, #0
	adds r0, #224
	ldrh r0, [r0, #0]
	bl sub_08316920
	adds r0, r5, #0
	bl sub_08309D50
	b .L083074D8
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
.L083074B8:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r5, #0
	adds r0, #226
	ldrb r0, [r0, #0]
	bl sub_08001E18
	adds r1, r0, #0
	lsls r1, r1, #24
	lsrs r1, r1, #24
	adds r0, r4, #0
	bl sub_08000680
	adds r0, r4, #0
	bl sub_080006AC
.L083074D8:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_083074E0
	.thumb_func
sub_083074E0:
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r0, #100
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830757C
	adds r4, r6, #0
	adds r4, #226
	ldrb r0, [r4, #0]
	bl sub_08001E18
	lsls r0, r0, #24
	adds r5, r4, #0
	adds r4, #3
	cmp r0, #0
	beq .L0830750A
	ldrb r0, [r4, #0]
	cmp r0, #0
	beq .L08307522
.L0830750A:
	ldrb r0, [r5, #0]
	bl sub_08001E18
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830751C
	ldrb r0, [r4, #0]
	cmp r0, #1
	beq .L08307522
.L0830751C:
	ldrb r4, [r4, #0]
	cmp r4, #2
	bne .L08307574
.L08307522:
	movs r0, #32
	bl sub_083189D0
	ldrb r0, [r5, #0]
	bl sub_08001DF4
	ldrb r0, [r5, #0]
	bl sub_08001E18
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L0830755C
	adds r1, r6, #0
	adds r1, #227
	ldrb r0, [r1, #0]
	cmp r0, #0
	beq .L08307574
	ldr r0, [pc, #16]
	ldrb r1, [r1, #0]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1, #0]
	bl sub_0831638C
	b .L08307574
	movs r0, r0
	sub sp, #112
	lsrs r5, r7, #32
.L0830755C:
	adds r1, r6, #0
	adds r1, #228
	ldrb r0, [r1, #0]
	cmp r0, #0
	beq .L08307574
	ldr r0, [pc, #28]
	ldrb r1, [r1, #0]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1, #0]
	bl sub_0831638C
.L08307574:
	adds r1, r6, #0
	adds r1, #200
	ldr r0, [pc, #12]
	str r0, [r1, #0]
.L0830757C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083DB09C
	.4byte 0x08307479

	.thumb
	.align 1, 0
	.global sub_0830758C
	.thumb_func
sub_0830758C:
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r5, #0
.L08307592:
	movs r0, #152
	adds r1, r5, #0
	muls r1, r0
	ldr r0, [pc, #36]
	adds r4, r1, r0
	ldrb r0, [r4, #2]
	cmp r0, #0
	beq .L083075C4
	ldrb r0, [r4, #1]
	cmp r0, #2
	bne .L083075C4
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_0800104C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L083075C4
	adds r0, r4, #0
	bl sub_082FA350
	movs r0, #1
	b .L083075CC
	cmp r0, #252
	lsls r0, r0, #12
.L083075C4:
	adds r5, #1
	cmp r5, #19
	bls .L08307592
	movs r0, #0
.L083075CC:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_083075D4
	.thumb_func
sub_083075D4:
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #17
	strb r0, [r4, #5]
	adds r1, r4, #0
	adds r1, #60
	movs r0, #42
	strb r0, [r1, #0]
	movs r5, #1
	strb r5, [r4, #2]
	strb r5, [r4, #3]
	adds r0, r4, #0
	adds r0, #46
	strb r5, [r0, #0]
	adds r0, #1
	strb r5, [r0, #0]
	adds r0, #179
	ldrb r0, [r0, #0]
	bl sub_08001E18
	lsls r0, r0, #24
	lsrs r1, r0, #24
	cmp r1, #0
	beq .L08307614
	adds r0, r4, #0
	adds r0, #229
	ldrb r0, [r0, #0]
	cmp r0, #1
	beq .L0830761E
	movs r0, #0
	strh r0, [r4, #10]
	b .L08307624
.L08307614:
	adds r0, r4, #0
	adds r0, #229
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L08307622
.L0830761E:
	strh r5, [r4, #10]
	b .L08307624
.L08307622:
	strh r1, [r4, #10]
.L08307624:
	adds r0, r4, #0
	adds r0, #228
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L0830765C
	ldrh r0, [r4, #10]
	cmp r0, #0
	bne .L08307648
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #4]
	ldr r2, [pc, #8]
	b .L0830766A
	movs r0, r0
	cmp r6, #72
	lsrs r7, r3, #32
	sub sp, #224
	lsrs r5, r7, #32
.L08307648:
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #4]
	ldr r2, [pc, #8]
	ldrb r2, [r2, #0]
	b .L0830766C
	cmp r6, #72
	lsrs r7, r3, #32
	sub sp, #224
	lsrs r5, r7, #32
.L0830765C:
	ldrh r0, [r4, #10]
	cmp r0, #0
	bne .L0830767C
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #12]
	ldr r2, [pc, #12]
.L0830766A:
	ldrb r2, [r2, #1]
.L0830766C:
	movs r3, #0
	bl sub_080002E0
	b .L0830768C
	cmp r6, #72
	lsrs r7, r3, #32
	sub sp, #236
	lsrs r5, r7, #32
.L0830767C:
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #60]
	ldr r2, [pc, #64]
	ldrb r2, [r2, #0]
	movs r3, #0
	bl sub_080002E0
.L0830768C:
	adds r1, r4, #0
	adds r1, #212
	ldr r0, [pc, #52]
	str r0, [r1, #0]
	subs r1, #12
	ldr r0, [pc, #52]
	str r0, [r1, #0]
	ldr r0, [r4, #52]
	ldr r1, [r4, #56]
	movs r2, #1
	bl sub_08000A1C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L083076B8
	adds r0, r4, #0
	adds r0, #52
	adds r1, r4, #0
	adds r1, #56
	movs r2, #1
	bl sub_08000A70
.L083076B8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x081F2E48
	.4byte 0x083DB0BB
	.4byte 0x08309E79
	.4byte 0x083076D1

	.thumb
	.align 1, 0
	.global sub_083076D0
	.thumb_func
sub_083076D0:
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldrh r0, [r5, #10]
	cmp r0, #0
	bne .L083076EE
	adds r0, r5, #0
	bl sub_0830758C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L083076EE
	adds r0, r5, #0
	bl sub_083073C8
.L083076EE:
	ldr r0, [r5, #52]
	asrs r0, r0, #8
	ldr r1, [r5, #56]
	asrs r1, r1, #8
	ldr r3, [pc, #44]
	ldr r2, [r3, #52]
	asrs r2, r2, #8
	ldr r3, [r3, #56]
	asrs r3, r3, #8
	movs r4, #180
	lsls r4, r4, #1
	str r4, [sp, #0]
	bl sub_08000BB4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08307728
	adds r0, r5, #0
	bl sub_08309D50
	adds r0, r5, #0
	adds r0, #224
	ldrh r0, [r0, #0]
	bl sub_08316920
	b .L08307790
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
.L08307728:
	adds r0, r5, #0
	adds r0, #228
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L08307760
	ldrh r0, [r5, #10]
	cmp r0, #0
	bne .L0830774C
	adds r4, r5, #0
	adds r4, #100
	ldr r0, [pc, #8]
	ldrb r1, [r0, #1]
	adds r0, r4, #0
	bl sub_08000680
	b .L0830778A
	sub sp, #224
	lsrs r5, r7, #32
.L0830774C:
	adds r4, r5, #0
	adds r4, #100
	ldr r0, [pc, #8]
	ldrb r1, [r0, #0]
	adds r0, r4, #0
	bl sub_08000680
	b .L0830778A
	sub sp, #224
	lsrs r5, r7, #32
.L08307760:
	ldrh r0, [r5, #10]
	cmp r0, #0
	bne .L0830777C
	adds r4, r5, #0
	adds r4, #100
	ldr r0, [pc, #12]
	ldrb r1, [r0, #1]
	adds r0, r4, #0
	bl sub_08000680
	b .L0830778A
	movs r0, r0
	sub sp, #236
	lsrs r5, r7, #32
.L0830777C:
	adds r4, r5, #0
	adds r4, #100
	ldr r0, [pc, #20]
	ldrb r1, [r0, #0]
	adds r0, r4, #0
	bl sub_08000680
.L0830778A:
	adds r0, r4, #0
	bl sub_080006AC
.L08307790:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.4byte 0x083DB0BB

	.thumb
	.align 1, 0
	.global sub_0830779C
	.thumb_func
sub_0830779C:
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, #228
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L083077BC
	adds r4, r5, #0
	adds r4, #100
	ldr r0, [pc, #8]
	ldrb r1, [r0, #2]
	adds r0, r4, #0
	bl sub_08000680
	b .L083077CA
	sub sp, #224
	lsrs r5, r7, #32
.L083077BC:
	adds r4, r5, #0
	adds r4, #100
	ldr r0, [pc, #76]
	ldrb r1, [r0, #2]
	adds r0, r4, #0
	bl sub_08000680
.L083077CA:
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830783C
	ldrh r0, [r5, #10]
	cmp r0, #0
	bne .L08307830
	adds r4, r5, #0
	adds r4, #226
	ldrb r0, [r4, #0]
	bl sub_08001DF4
	ldrb r0, [r4, #0]
	bl sub_08001E18
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L08307818
	adds r1, r5, #0
	adds r1, #227
	ldrb r0, [r1, #0]
	cmp r0, #0
	beq .L08307830
	ldr r0, [pc, #20]
	ldrb r1, [r1, #0]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1, #0]
	bl sub_0831638C
	b .L08307830
	movs r0, r0
	sub sp, #236
	lsrs r5, r7, #32
	sub sp, #112
	lsrs r5, r7, #32
.L08307818:
	adds r1, r5, #0
	adds r1, #227
	ldrb r0, [r1, #0]
	cmp r0, #0
	beq .L08307830
	ldr r0, [pc, #32]
	ldrb r1, [r1, #0]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1, #0]
	bl sub_0831638C
.L08307830:
	adds r0, r5, #0
	adds r0, #200
	ldr r1, [pc, #16]
	str r1, [r0, #0]
	movs r0, #1
	strh r0, [r5, #10]
.L0830783C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083DB09C
	.4byte 0x083076D1

	.thumb
	.align 1, 0
	.global sub_0830784C
	.thumb_func
sub_0830784C:
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #7
	strb r0, [r4, #5]
	adds r1, r4, #0
	adds r1, #60
	movs r0, #42
	strb r0, [r1, #0]
	movs r0, #1
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	subs r1, #14
	strb r0, [r1, #0]
	adds r0, r4, #0
	adds r0, #227
	ldrb r1, [r0, #0]
	subs r0, #179
	strb r1, [r0, #0]
	adds r0, #178
	ldrb r0, [r0, #0]
	cmp r0, #1
	beq .L08307898
	cmp r0, #1
	bgt .L08307882
	cmp r0, #0
	beq .L08307888
	b .L083078F4
.L08307882:
	cmp r0, #2
	beq .L083078CC
	b .L083078F4
.L08307888:
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #4]
	movs r2, #0
	b .L083078A0
	movs r0, r0
	bpl .L083078F8
	lsrs r3, r1, #32
.L08307898:
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #40]
	movs r2, #7
.L083078A0:
	movs r3, #0
	bl sub_080002E0
	ldr r0, [r4, #52]
	ldr r1, [r4, #56]
	movs r2, #1
	bl sub_08000A1C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L0830790A
	adds r0, r4, #0
	adds r0, #52
	adds r1, r4, #0
	adds r1, #56
	movs r2, #1
	bl sub_08000A70
	b .L0830790A
	movs r0, r0
	.2byte 0xd530 @ bpl.n 0x830792c
	lsrs r3, r1, #32
.L083078CC:
	lsls r0, r1, #24
	cmp r0, #0
	bne .L083078E0
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #4]
	movs r2, #2
	b .L083078E8
	.2byte 0xd530 @ bpl.n 0x8307940
	lsrs r3, r1, #32
.L083078E0:
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #8]
	movs r2, #1
.L083078E8:
	movs r3, #0
	bl sub_080002E0
	b .L0830790A
	.2byte 0xd530 @ bpl.n 0x8307954
	lsrs r3, r1, #32
.L083078F4:
	adds r1, r4, #0
	adds r1, #226
.L083078F8:
	movs r0, #1
	strb r0, [r1, #0]
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #28]
	movs r2, #7
	movs r3, #0
	bl sub_080002E0
.L0830790A:
	adds r1, r4, #0
	adds r1, #212
	ldr r0, [pc, #20]
	str r0, [r1, #0]
	subs r1, #12
	ldr r0, [pc, #16]
	str r0, [r1, #0]
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x080BD530
	.4byte 0x08309E79
	.4byte 0x0830792D

	.thumb
	.align 1, 0
	.global sub_0830792C
	.thumb_func
sub_0830792C:
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r5, #0
	adds r6, #226
	ldrb r0, [r6, #0]
	cmp r0, #2
	beq .L08307952
	cmp r0, #2
	ble .L08307944
	cmp r0, #3
	beq .L0830798A
	b .L083079A8
.L08307944:
	cmp r0, #0
	blt .L083079A8
	adds r0, r5, #0
	adds r0, #100
	bl sub_08000704
	b .L083079A8
.L08307952:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083079A8
	movs r0, #3
	strb r0, [r6, #0]
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L0830797A
	adds r0, r4, #0
	movs r1, #6
	bl sub_08000680
	b .L08307982
.L0830797A:
	adds r0, r4, #0
	movs r1, #5
	bl sub_08000680
.L08307982:
	adds r0, r4, #0
	bl sub_080006AC
	b .L08307AAE
.L0830798A:
	adds r0, r5, #0
	adds r0, #100
	bl sub_08000704
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L083079A2
	ldr r0, [r5, #52]
	adds r0, #128
	b .L083079A6
.L083079A2:
	ldr r0, [r5, #52]
	subs r0, #128
.L083079A6:
	str r0, [r5, #52]
.L083079A8:
	ldr r4, [pc, #36]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #1
	bl sub_08000D04
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08307A8C
	adds r0, r5, #0
	adds r0, #226
	ldrb r0, [r0, #0]
	cmp r0, #1
	beq .L08307A24
	cmp r0, #1
	bgt .L083079D4
	cmp r0, #0
	beq .L083079DA
	b .L08307A8C
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
.L083079D4:
	cmp r0, #3
	bgt .L08307A8C
	b .L08307A70
.L083079DA:
	adds r0, r4, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L083079F2
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #3
	bl sub_08000680
	b .L083079FE
.L083079F2:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #4
	bl sub_08000680
.L083079FE:
	adds r0, r4, #0
	bl sub_080006AC
	adds r1, r5, #0
	adds r1, #200
	ldr r0, [pc, #16]
	str r0, [r1, #0]
	ldr r1, [pc, #16]
	ldrh r0, [r1, #0]
	adds r0, #10
	strh r0, [r1, #0]
	movs r0, #16
	bl sub_083189D0
	b .L08307AAE
	ldrb r5, [r6, #10]
	lsrs r0, r6, #32
	ldr r0, [r6, r3]
	lsls r0, r0, #12
.L08307A24:
	adds r0, r4, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L08307A3C
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #3
	bl sub_08000680
	b .L08307A48
.L08307A3C:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #4
	bl sub_08000680
.L08307A48:
	adds r0, r4, #0
	bl sub_080006AC
	adds r1, r5, #0
	adds r1, #200
	ldr r0, [pc, #20]
	str r0, [r1, #0]
	ldr r1, [pc, #20]
	ldrh r0, [r1, #0]
	adds r0, #5
	strh r0, [r1, #0]
	movs r0, #18
	bl sub_083189D0
	b .L08307AAE
	movs r0, r0
	ldrb r5, [r6, #10]
	lsrs r0, r6, #32
	ldr r0, [r6, r3]
	lsls r0, r0, #12
.L08307A70:
	adds r0, r5, #0
	bl sub_08309D50
	ldr r1, [pc, #16]
	ldrh r0, [r1, #0]
	adds r0, #1
	strh r0, [r1, #0]
	movs r0, #30
	bl sub_083189D0
	b .L08307AAE
	movs r0, r0
	ldr r0, [r6, r3]
	lsls r0, r0, #12
.L08307A8C:
	ldr r0, [r5, #52]
	asrs r0, r0, #8
	ldr r1, [r5, #56]
	asrs r1, r1, #8
	bl sub_08302078
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08307AAE
	adds r0, r5, #0
	bl sub_08309D50
	adds r0, r5, #0
	adds r0, #224
	ldrh r0, [r0, #0]
	bl sub_08316920
.L08307AAE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_08307AB4
	.thumb_func
sub_08307AB4:
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #100
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08307ACA
	adds r0, r4, #0
	bl sub_08309D50
.L08307ACA:
	pop {r4}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_08307AD0
	.thumb_func
sub_08307AD0:
	adds r0, #204
	ldr r1, [r0, #0]
	negs r0, r1
	orrs r0, r1
	lsrs r0, r0, #31
	bx lr
	.4byte 0x23011C02
	.4byte 0x680030D8
	.4byte 0x2807380D
	.4byte 0x0080D82D
	.4byte 0x18404901
	.4byte 0x46876800
	.4byte 0x083DAFC0
	.4byte 0xE0034800
	.4byte 0xFFFFFF00
	.4byte 0x00402080
	.4byte 0x20006450
	.4byte 0xE01D6410
	.4byte 0xE00F2000
	.4byte 0xE0042000
	.4byte 0xE0134800
	.4byte 0xFFFFFF00
	.4byte 0x64504802
	.4byte 0x00402080
	.4byte 0xE00F6410
	.4byte 0xFFFFFF00
	.4byte 0x00402080
	.4byte 0x48016450
	.4byte 0xE0076410
	.4byte 0xFFFFFF00
	.4byte 0x00402080
	.4byte 0x64106450
	.4byte 0x2300E000
	.4byte 0xD0032B00
	.4byte 0x31C81C11
	.4byte 0x60084801
	.4byte 0x00004770
	.4byte 0x08307EE1

	.thumb
	.align 1, 0
	.global sub_08307B5C
	.thumb_func
sub_08307B5C:
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r5, #0
	movs r0, #2
	strb r0, [r4, #5]
	adds r1, r4, #0
	adds r1, #60
	movs r0, #42
	strb r0, [r1, #0]
	movs r0, #1
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	subs r1, #14
	strb r0, [r1, #0]
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #56]
	movs r2, #2
	movs r3, #0
	bl sub_080002E0
	adds r1, r4, #0
	adds r1, #220
	ldr r0, [pc, #48]
	str r0, [r1, #0]
	subs r1, #8
	ldr r0, [pc, #44]
	str r0, [r1, #0]
	adds r2, r4, #0
	adds r2, #200
	ldr r1, [pc, #40]
	adds r3, r4, #0
	adds r3, #226
	ldrb r6, [r3, #0]
	lsls r0, r6, #2
	adds r0, r0, r1
	ldr r0, [r0, #0]
	str r0, [r2, #0]
	ldrb r0, [r3, #0]
	cmp r0, #2
	beq .L08307BFA
	cmp r0, #2
	bgt .L08307BC8
	cmp r0, #1
	beq .L08307BD2
	b .L08307C28
	add r3, pc, #576
	lsrs r3, r1, #32
	ldrb r5, [r3, #11]
	lsrs r0, r6, #32
	ldr r6, [sp, #484]
	lsrs r0, r6, #32
	sub sp, #480
	lsrs r5, r7, #32
.L08307BC8:
	cmp r0, #3
	beq .L08307C18
	cmp r0, #4
	beq .L08307C1C
	b .L08307C28
.L08307BD2:
	adds r0, r4, #0
	adds r0, #227
	ldrb r0, [r0, #0]
	lsls r0, r0, #24
	asrs r0, r0, #24
	lsls r0, r0, #2
	str r0, [r4, #64]
	adds r0, r4, #0
	adds r0, #228
	ldrb r0, [r0, #0]
	lsls r0, r0, #24
	asrs r0, r0, #24
	lsls r0, r0, #2
	str r0, [r4, #68]
	adds r0, r4, #0
	adds r0, #229
	ldrb r0, [r0, #0]
	lsls r0, r0, #6
	strh r0, [r4, #26]
	b .L08307C28
.L08307BFA:
	strh r5, [r4, #26]
	ldr r1, [pc, #20]
	adds r0, r4, #0
	adds r0, #228
	ldrb r0, [r0, #0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	ldrh r0, [r0, #0]
	strh r0, [r4, #28]
	b .L08307C28
	movs r0, r0
	ldr r0, [r0, r5]
	lsls r0, r0, #12
.L08307C18:
	strh r5, [r4, #26]
	strh r5, [r4, #28]
.L08307C1C:
	ldr r0, [r4, #52]
	asrs r0, r0, #8
	strh r0, [r4, #10]
	ldr r0, [r4, #56]
	asrs r0, r0, #8
	strh r0, [r4, #12]
.L08307C28:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08307C30
	.thumb_func
sub_08307C30:
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r5, #0
	movs r0, #2
	strb r0, [r4, #5]
	adds r1, r4, #0
	adds r1, #60
	movs r0, #42
	strb r0, [r1, #0]
	movs r0, #1
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	subs r1, #14
	strb r0, [r1, #0]
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #56]
	movs r2, #7
	movs r3, #0
	bl sub_080002E0
	adds r1, r4, #0
	adds r1, #220
	ldr r0, [pc, #48]
	str r0, [r1, #0]
	subs r1, #8
	ldr r0, [pc, #44]
	str r0, [r1, #0]
	adds r2, r4, #0
	adds r2, #200
	ldr r1, [pc, #40]
	adds r3, r4, #0
	adds r3, #226
	ldrb r6, [r3, #0]
	lsls r0, r6, #2
	adds r0, r0, r1
	ldr r0, [r0, #0]
	str r0, [r2, #0]
	ldrb r0, [r3, #0]
	cmp r0, #2
	beq .L08307CCE
	cmp r0, #2
	bgt .L08307C9C
	cmp r0, #1
	beq .L08307CA6
	b .L08307CFC
	add r3, pc, #576
	lsrs r3, r1, #32
	ldrb r5, [r3, #11]
	lsrs r0, r6, #32
	ldr r6, [sp, #484]
	lsrs r0, r6, #32
	sub sp, #480
	lsrs r5, r7, #32
.L08307C9C:
	cmp r0, #3
	beq .L08307CEC
	cmp r0, #4
	beq .L08307CF0
	b .L08307CFC
.L08307CA6:
	adds r0, r4, #0
	adds r0, #227
	ldrb r0, [r0, #0]
	lsls r0, r0, #24
	asrs r0, r0, #24
	lsls r0, r0, #2
	str r0, [r4, #64]
	adds r0, r4, #0
	adds r0, #228
	ldrb r0, [r0, #0]
	lsls r0, r0, #24
	asrs r0, r0, #24
	lsls r0, r0, #2
	str r0, [r4, #68]
	adds r0, r4, #0
	adds r0, #229
	ldrb r0, [r0, #0]
	lsls r0, r0, #6
	strh r0, [r4, #26]
	b .L08307CFC
.L08307CCE:
	strh r5, [r4, #26]
	ldr r1, [pc, #20]
	adds r0, r4, #0
	adds r0, #228
	ldrb r0, [r0, #0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	ldrh r0, [r0, #0]
	strh r0, [r4, #28]
	b .L08307CFC
	movs r0, r0
	ldr r0, [r0, r5]
	lsls r0, r0, #12
.L08307CEC:
	strh r5, [r4, #26]
	strh r5, [r4, #28]
.L08307CF0:
	ldr r0, [r4, #52]
	asrs r0, r0, #8
	strh r0, [r4, #10]
	ldr r0, [r4, #56]
	asrs r0, r0, #8
	strh r0, [r4, #12]
.L08307CFC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08307D04
	.thumb_func
sub_08307D04:
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #2
	strb r0, [r4, #5]
	adds r1, r4, #0
	adds r1, #60
	movs r0, #42
	strb r0, [r1, #0]
	movs r0, #1
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	subs r1, #14
	strb r0, [r1, #0]
	ldr r0, [pc, #16]
	ldr r0, [r0, #0]
	cmp r0, #21
	bhi .L08307D4C
	lsls r0, r0, #2
	ldr r1, [pc, #8]
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	subs r7, #12
	lsls r0, r0, #12
	add r7, sp, #896
	lsrs r5, r7, #32
	movs r2, #3
	b .L08307D4E
	movs r2, #5
	b .L08307D4E
	movs r2, #4
	b .L08307D4E
	movs r2, #1
	b .L08307D4E
	movs r2, #6
	b .L08307D4E
.L08307D4C:
	movs r2, #0
.L08307D4E:
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #56]
	movs r3, #0
	bl sub_080002E0
	adds r1, r4, #0
	adds r1, #220
	ldr r0, [pc, #48]
	str r0, [r1, #0]
	subs r1, #8
	ldr r0, [pc, #44]
	str r0, [r1, #0]
	adds r2, r4, #0
	adds r2, #200
	ldr r1, [pc, #40]
	adds r3, r4, #0
	adds r3, #226
	ldrb r5, [r3, #0]
	lsls r0, r5, #2
	adds r0, r0, r1
	ldr r0, [r0, #0]
	str r0, [r2, #0]
	ldrb r0, [r3, #0]
	cmp r0, #4
	bhi .L08307DFA
	lsls r0, r0, #2
	ldr r1, [pc, #20]
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	add r3, pc, #576
	lsrs r3, r1, #32
	ldrb r5, [r3, #11]
	lsrs r0, r6, #32
	ldr r6, [sp, #484]
	lsrs r0, r6, #32
	sub sp, #480
	lsrs r5, r7, #32
	add sp, #224
	lsrs r5, r7, #32
	adds r0, r4, #0
	adds r0, #227
	ldrb r0, [r0, #0]
	lsls r0, r0, #24
	asrs r0, r0, #24
	lsls r0, r0, #2
	str r0, [r4, #64]
	adds r0, r4, #0
	adds r0, #228
	ldrb r0, [r0, #0]
	lsls r0, r0, #24
	asrs r0, r0, #24
	lsls r0, r0, #2
	str r0, [r4, #68]
	adds r0, r4, #0
	adds r0, #229
	ldrb r0, [r0, #0]
	lsls r0, r0, #6
	strh r0, [r4, #26]
	b .L08307DFA
	movs r0, #0
	strh r0, [r4, #26]
	ldr r1, [pc, #20]
	adds r0, r4, #0
	adds r0, #228
	ldrb r0, [r0, #0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	ldrh r0, [r0, #0]
	strh r0, [r4, #28]
	b .L08307DFA
	movs r0, r0
	ldr r0, [r0, r5]
	lsls r0, r0, #12
	movs r0, #0
	strh r0, [r4, #26]
	strh r0, [r4, #28]
	ldr r0, [r4, #52]
	asrs r0, r0, #8
	strh r0, [r4, #10]
	ldr r0, [r4, #56]
	asrs r0, r0, #8
	strh r0, [r4, #12]
.L08307DFA:
	pop {r4, r5}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_08307E00
	.thumb_func
sub_08307E00:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r7, r0, #0
	adds r5, r1, #0
	ldr r0, [r7, #68]
	cmp r0, #0
	bge .L08307E18
	movs r0, #0
	b .L08307E74
.L08307E18:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #0
	bl sub_0800062C
	mov r9, r0
	adds r0, r4, #0
	movs r1, #0
	bl sub_08000614
	mov r8, r0
	ldr r6, [r5, #52]
	asrs r6, r6, #8
	mov r2, r9
	movs r1, #0
	ldrsh r0, [r2, r1]
	subs r6, r6, r0
	ldr r5, [r5, #56]
	asrs r5, r5, #8
	movs r3, #2
	ldrsh r0, [r2, r3]
	subs r5, r5, r0
	ldr r0, [r7, #52]
	asrs r0, r0, #8
	ldr r1, [r7, #56]
	asrs r1, r1, #8
	mov r7, r8
	movs r4, #4
	ldrsh r2, [r7, r4]
	adds r2, r6, r2
	movs r4, #6
	ldrsh r3, [r7, r4]
	adds r3, r5, r3
	movs r4, #8
	ldrsh r7, [r7, r4]
	mov r9, r7
	add r6, r9
	str r6, [sp, #0]
	mov r7, r8
	movs r6, #10
	ldrsh r4, [r7, r6]
	adds r5, r5, r4
	str r5, [sp, #4]
	bl sub_08000BDC
.L08307E74:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08307E84
	.thumb_func
sub_08307E84:
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [pc, #28]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08307E00
	lsls r0, r0, #24
	lsrs r1, r0, #24
	cmp r1, #0
	beq .L08307EAC
	adds r1, r5, #0
	adds r1, #204
	ldr r0, [r1, #0]
	cmp r0, r4
	beq .L08307EB8
	str r4, [r1, #0]
	b .L08307EB8
	movs r5, #12
	lsls r0, r0, #12
.L08307EAC:
	adds r2, r5, #0
	adds r2, #204
	ldr r0, [r2, #0]
	cmp r0, r4
	bne .L08307EB8
	str r1, [r2, #0]
.L08307EB8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08307EC0
	.thumb_func
sub_08307EC0:
	adds r3, r1, #0
	ldr r2, [pc, #24]
	adds r1, r2, #0
	adds r1, #204
	ldr r1, [r1, #0]
	cmp r1, r0
	bne .L08307ED8
	ldr r0, [r2, #52]
	adds r0, r0, r3
	str r0, [r2, #52]
	ldr r0, [r1, #56]
	str r0, [r2, #56]
.L08307ED8:
	bx lr
	.2byte 0x0000
	.4byte 0x0300250C

	.thumb
	.align 1, 0
	.global sub_08307EE0
	.thumb_func
sub_08307EE0:
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #100
	bl sub_08000704
	adds r0, r4, #0
	bl sub_08307E84
	ldr r0, [r4, #52]
	ldr r1, [r4, #64]
	adds r0, r0, r1
	str r0, [r4, #52]
	ldr r0, [r4, #56]
	ldr r2, [r4, #68]
	adds r0, r0, r2
	str r0, [r4, #56]
	adds r0, r4, #0
	bl sub_08307EC0
	pop {r4}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_08307F0C
	.thumb_func
sub_08307F0C:
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r0, #100
	bl sub_08000704
	adds r0, r5, #0
	bl sub_08307E84
	ldr r0, [r5, #52]
	ldr r1, [r5, #64]
	adds r0, r0, r1
	str r0, [r5, #52]
	ldr r0, [r5, #56]
	ldr r2, [r5, #68]
	adds r0, r0, r2
	str r0, [r5, #56]
	adds r0, r5, #0
	bl sub_08307EC0
	ldrh r1, [r5, #26]
	movs r2, #26
	ldrsh r0, [r5, r2]
	cmp r0, #0
	ble .L08307F42
	subs r0, r1, #1
	b .L08307F5A
.L08307F42:
	ldr r0, [r5, #64]
	negs r0, r0
	str r0, [r5, #64]
	ldr r0, [r5, #68]
	negs r0, r0
	str r0, [r5, #68]
	adds r1, r5, #0
	adds r1, #229
	ldrb r2, [r1, #0]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #2
.L08307F5A:
	strh r0, [r5, #26]
	ldr r0, [r5, #52]
	asrs r0, r0, #8
	ldr r1, [r5, #56]
	asrs r1, r1, #8
	ldr r3, [pc, #48]
	ldr r2, [r3, #52]
	asrs r2, r2, #8
	ldr r3, [r3, #56]
	asrs r3, r3, #8
	movs r4, #180
	lsls r4, r4, #2
	str r4, [sp, #0]
	bl sub_08000BB4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08307F8E
	adds r0, r5, #0
	adds r0, #224
	ldrh r0, [r0, #0]
	bl sub_08316920
	adds r0, r5, #0
	bl sub_08309D50
.L08307F8E:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x0300250C

	.thumb
	.align 1, 0
	.global sub_08307F9C
	.thumb_func
sub_08307F9C:
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r0, #100
	bl sub_08000704
	movs r4, #0
	str r4, [r5, #64]
	str r4, [r5, #68]
	adds r0, r5, #0
	bl sub_08307E84
	adds r0, r5, #0
	adds r0, #216
	ldr r0, [r0, #0]
	cmp r0, #43
	beq .L0830806A
	adds r0, r5, #0
	adds r0, #227
	ldrb r0, [r0, #0]
	bl sub_08001E18
	lsls r0, r0, #24
	lsrs r0, r0, #24
	adds r2, r5, #0
	adds r2, #229
	ldrb r3, [r2, #0]
	negs r1, r3
	orrs r1, r3
	lsrs r1, r1, #31
	cmp r0, r1
	bne .L0830806A
	ldrh r6, [r5, #28]
	movs r1, #28
	ldrsh r0, [r5, r1]
	cmp r0, #0
	ble .L08308030
	ldr r4, [pc, #68]
	adds r3, r5, #0
	adds r3, #228
	ldrb r2, [r3, #0]
	lsls r0, r2, #2
	adds r0, r0, r4
	ldr r0, [r0, #0]
	movs r2, #26
	ldrsh r1, [r5, r2]
	ldr r2, [r0, #4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r1, [r0, #4]
	str r1, [r5, #64]
	ldr r0, [r5, #52]
	adds r0, r0, r1
	str r0, [r5, #52]
	ldrb r3, [r3, #0]
	lsls r0, r3, #2
	adds r0, r0, r4
	ldr r0, [r0, #0]
	movs r3, #26
	ldrsh r1, [r5, r3]
	ldr r2, [r0, #4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r1, [r5, #56]
	ldr r0, [r0, #8]
	adds r1, r1, r0
	str r1, [r5, #56]
	subs r0, r6, #1
	b .L08308068
	ldr r0, [r0, r5]
	lsls r0, r0, #12
.L08308030:
	ldrh r0, [r5, #26]
	adds r0, #1
	strh r0, [r5, #26]
	movs r6, #26
	ldrsh r1, [r5, r6]
	ldr r3, [pc, #60]
	adds r2, r5, #0
	adds r2, #228
	ldrb r6, [r2, #0]
	lsls r0, r6, #2
	adds r0, r0, r3
	ldr r0, [r0, #0]
	ldrb r0, [r0, #0]
	cmp r1, r0
	blt .L08308050
	strh r4, [r5, #26]
.L08308050:
	ldrb r2, [r2, #0]
	lsls r0, r2, #2
	adds r0, r0, r3
	ldr r0, [r0, #0]
	movs r2, #26
	ldrsh r1, [r5, r2]
	ldr r2, [r0, #4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r0, [r0, #0]
.L08308068:
	strh r0, [r5, #28]
.L0830806A:
	ldr r1, [r5, #64]
	adds r0, r5, #0
	bl sub_08307EC0
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.4byte 0x03005940

	.thumb
	.align 1, 0
	.global sub_0830807C
	.thumb_func
sub_0830807C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	ldr r0, [r7, #52]
	mov r8, r0
	adds r0, r7, #0
	adds r0, #100
	bl sub_08000704
	movs r0, #0
	str r0, [r7, #64]
	str r0, [r7, #68]
	adds r0, r7, #0
	bl sub_08307E84
	adds r0, r7, #0
	adds r0, #216
	ldr r0, [r0, #0]
	cmp r0, #43
	beq .L08308112
	ldrh r1, [r7, #10]
	lsls r4, r1, #8
	adds r6, r7, #0
	adds r6, #227
	ldrb r2, [r6, #0]
	lsls r3, r2, #3
	ldr r2, [pc, #112]
	ldrh r5, [r7, #26]
	ldr r1, [pc, #112]
	adds r0, r1, #0
	ands r0, r5
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r2, #0
	ldrsh r0, [r0, r2]
	muls r0, r3
	asrs r0, r0, #7
	adds r4, r4, r0
	str r4, [r7, #52]
	ldrh r0, [r7, #12]
	lsls r2, r0, #8
	ldrb r6, [r6, #0]
	lsls r6, r6, #3
	mov ip, r6
	ldr r0, [pc, #84]
	ldrh r3, [r7, #28]
	ands r1, r3
	lsls r1, r1, #1
	adds r1, r1, r0
	movs r6, #0
	ldrsh r0, [r1, r6]
	mov r1, ip
	muls r1, r0
	adds r0, r1, #0
	asrs r0, r0, #7
	adds r2, r2, r0
	str r2, [r7, #56]
	adds r0, r7, #0
	adds r0, #228
	ldrb r0, [r0, #0]
	lsls r0, r0, #24
	asrs r0, r0, #24
	subs r5, r5, r0
	strh r5, [r7, #26]
	adds r0, r7, #0
	adds r0, #229
	ldrb r0, [r0, #0]
	lsls r0, r0, #24
	asrs r0, r0, #24
	subs r3, r3, r0
	strh r3, [r7, #28]
	mov r2, r8
	subs r4, r4, r2
	str r4, [r7, #64]
.L08308112:
	ldr r1, [r7, #64]
	adds r0, r7, #0
	bl sub_08307EC0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.4byte 0x083D532C
	.4byte 0x000003FF
	.4byte 0x083D5B2C

	.thumb
	.align 1, 0
	.global sub_08308130
	.thumb_func
sub_08308130:
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r0, #227
	ldrb r0, [r0, #0]
	bl sub_08001E18
	lsls r0, r0, #24
	lsrs r1, r0, #24
	cmp r1, #0
	beq .L08308162
	movs r0, #1
	strb r0, [r5, #3]
	adds r0, r5, #0
	adds r0, #100
	bl sub_08000704
	adds r0, r5, #0
	bl sub_08307E84
	adds r0, r5, #0
	movs r1, #0
	bl sub_08307EC0
	b .L08308172
.L08308162:
	ldr r0, [pc, #72]
	adds r2, r0, #0
	adds r2, #204
	ldr r0, [r2, #0]
	cmp r0, r5
	bne .L08308170
	str r1, [r2, #0]
.L08308170:
	strb r1, [r5, #3]
.L08308172:
	ldr r0, [r5, #52]
	asrs r0, r0, #8
	ldr r1, [r5, #56]
	asrs r1, r1, #8
	ldr r3, [pc, #48]
	ldr r2, [r3, #52]
	asrs r2, r2, #8
	ldr r3, [r3, #56]
	asrs r3, r3, #8
	movs r4, #180
	lsls r4, r4, #2
	str r4, [sp, #0]
	bl sub_08000BB4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083081A4
	adds r0, r5, #0
	adds r0, #224
	ldrh r0, [r0, #0]
	bl sub_08316920
	adds r0, r5, #0
	bl sub_08309D50
.L083081A4:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.4byte 0x0300250C

	.thumb
	.align 1, 0
	.global sub_083081B0
	.thumb_func
sub_083081B0:
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	mov r0, sp
	bl sub_08309CB0
	lsls r0, r0, #24
	lsrs r1, r0, #24
	cmp r1, #1
	bne .L08308214
	ldr r0, [sp, #0]
	strb r1, [r0, #1]
	ldr r0, [sp, #0]
	strb r1, [r0, #2]
	ldr r0, [sp, #0]
	strb r1, [r0, #3]
	ldr r0, [sp, #0]
	str r4, [r0, #52]
	ldr r0, [sp, #0]
	str r5, [r0, #56]
	ldr r0, [sp, #0]
	adds r0, #60
	movs r1, #45
	strb r1, [r0, #0]
	ldr r0, [sp, #0]
	movs r2, #0
	strh r6, [r0, #26]
	ldr r0, [sp, #0]
	adds r0, #200
	ldr r1, [pc, #44]
	str r1, [r0, #0]
	ldr r0, [sp, #0]
	adds r0, #212
	ldr r1, [pc, #40]
	str r1, [r0, #0]
	ldr r0, [sp, #0]
	strb r2, [r0, #5]
	ldr r0, [sp, #0]
	adds r0, #224
	movs r1, #255
	strh r1, [r0, #0]
	ldr r0, [sp, #0]
	adds r0, #100
	ldr r1, [pc, #24]
	movs r2, #0
	movs r3, #0
	bl sub_080002E0
.L08308214:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.4byte 0x08308229
	.4byte 0x08309E79
	.4byte 0x08176790

	.thumb
	.align 1, 0
	.global sub_08308228
	.thumb_func
sub_08308228:
	push {r4, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #26]
	movs r2, #26
	ldrsh r0, [r4, r2]
	cmp r0, #0
	ble .L0830824C
	subs r0, r1, #1
	movs r1, #0
	strh r0, [r4, #26]
	strb r1, [r4, #3]
	lsls r0, r0, #16
	cmp r0, #0
	bne .L08308264
	movs r0, #33
	bl sub_083189D0
	b .L08308264
.L0830824C:
	movs r0, #1
	strb r0, [r4, #3]
	adds r0, r4, #0
	adds r0, #100
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08308264
	adds r0, r4, #0
	bl sub_08309D50
.L08308264:
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_0830826C
	.thumb_func
sub_0830826C:
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	mov r0, sp
	bl sub_08309CB0
	lsls r0, r0, #24
	lsrs r6, r0, #24
	cmp r6, #1
	bne .L083082F6
	ldr r1, [sp, #0]
	movs r2, #0
	movs r0, #10
	strb r0, [r1, #5]
	ldr r0, [sp, #0]
	strb r6, [r0, #1]
	ldr r0, [sp, #0]
	strb r6, [r0, #2]
	ldr r0, [sp, #0]
	strb r6, [r0, #3]
	ldr r0, [sp, #0]
	adds r0, #46
	strb r2, [r0, #0]
	ldr r0, [sp, #0]
	str r4, [r0, #52]
	ldr r0, [sp, #0]
	str r5, [r0, #56]
	ldr r0, [sp, #0]
	adds r0, #60
	movs r1, #101
	strb r1, [r0, #0]
	bl sub_08306E84
	ldr r2, [sp, #0]
	movs r3, #255
	ands r0, r3
	movs r1, #192
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r2, #64]
	ldr r0, [sp, #0]
	adds r0, #200
	ldr r1, [pc, #60]
	str r1, [r0, #0]
	ldr r0, [sp, #0]
	adds r0, #212
	ldr r1, [pc, #56]
	str r1, [r0, #0]
	ldr r0, [sp, #0]
	adds r0, #224
	strh r3, [r0, #0]
	ldr r4, [sp, #0]
	adds r4, #100
	ldr r5, [pc, #44]
	bl sub_08306E84
	adds r2, r0, #0
	ands r2, r6
	adds r0, r4, #0
	adds r1, r5, #0
	movs r3, #0
	bl sub_080002E0
	ldr r0, [sp, #0]
	adds r0, #100
	movs r1, #1
	bl sub_0800078C
.L083082F6:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x0830830D
	.4byte 0x08309E79
	.4byte 0x080BEE20

	.thumb
	.align 1, 0
	.global sub_0830830C
	.thumb_func
sub_0830830C:
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #100
	bl sub_08000704
	ldr r0, [r4, #52]
	ldr r1, [r4, #64]
	subs r0, r0, r1
	str r0, [r4, #52]
	ldr r1, [r4, #56]
	movs r0, #128
	lsls r0, r0, #3
	adds r1, r1, r0
	str r1, [r4, #56]
	asrs r1, r1, #8
	ldr r0, [pc, #36]
	ldr r0, [r0, #28]
	adds r0, #200
	cmp r1, r0
	ble .L0830833A
	adds r0, r4, #0
	bl sub_08309D50
.L0830833A:
	ldr r0, [r4, #52]
	asrs r0, r0, #8
	cmp r0, #0
	bgt .L08308348
	adds r0, r4, #0
	bl sub_08309D50
.L08308348:
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x030038CC

	.thumb
	.align 1, 0
	.global sub_08308354
	.thumb_func
sub_08308354:
	push {r4, lr}
	adds r4, r0, #0
	movs r2, #0
	movs r0, #8
	strb r0, [r4, #5]
	adds r1, r4, #0
	adds r1, #60
	movs r0, #38
	strb r0, [r1, #0]
	strb r2, [r4, #2]
	strb r2, [r4, #3]
	adds r1, #152
	ldr r0, [pc, #24]
	str r0, [r1, #0]
	subs r1, #12
	ldr r0, [pc, #24]
	str r0, [r1, #0]
	bl sub_08306E54
	adds r0, r4, #0
	adds r0, #226
	ldrb r0, [r0, #0]
	strh r0, [r4, #26]
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x08309E79
	.4byte 0x08308391

	.thumb
	.align 1, 0
	.global sub_08308390
	.thumb_func
sub_08308390:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrh r1, [r5, #26]
	movs r2, #26
	ldrsh r0, [r5, r2]
	cmp r0, #0
	bne .L083083F4
	ldr r1, [pc, #72]
	movs r2, #145
	lsls r2, r2, #6
	adds r0, r2, #0
	strh r0, [r1, #0]
	adds r1, #2
	ldr r2, [pc, #64]
	adds r0, r2, #0
	strh r0, [r1, #0]
	bl sub_0800347C
	ldr r2, [pc, #56]
	lsls r0, r0, #24
	lsrs r0, r0, #24
	lsls r1, r0, #5
	subs r1, r1, r0
	lsls r1, r1, #3
	adds r2, #52
	adds r1, r1, r2
	ldr r0, [r1, #0]
	asrs r4, r0, #8
	bl sub_08306E84
	adds r2, r4, #0
	adds r2, #255
	movs r1, #255
	ands r1, r0
	lsls r1, r1, #1
	adds r4, r2, r1
	lsls r0, r4, #8
	movs r1, #0
	bl sub_0830826C
	adds r0, r5, #0
	adds r0, #226
	ldrb r0, [r0, #0]
	b .L083083F6
	lsls r0, r2, #1
	lsls r0, r0, #16
	lsrs r0, r1, #32
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
.L083083F4:
	subs r0, r1, #1
.L083083F6:
	strh r0, [r5, #26]
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08308400
	.thumb_func
sub_08308400:
	push {r4, lr}
	sub sp, #4
	adds r3, r0, #0
	movs r2, #0
	movs r0, #11
	strb r0, [r3, #5]
	adds r1, r3, #0
	adds r1, #60
	movs r0, #38
	strb r0, [r1, #0]
	strb r2, [r3, #2]
	strb r2, [r3, #3]
	str r2, [r3, #52]
	str r2, [r3, #56]
	movs r0, #128
	str r0, [r3, #64]
	ldr r0, [pc, #144]
	str r0, [r3, #68]
	strh r2, [r3, #26]
	adds r1, #152
	ldr r0, [pc, #140]
	str r0, [r1, #0]
	subs r1, #12
	ldr r0, [pc, #140]
	str r0, [r1, #0]
	bl sub_08306E54
	ldr r4, [pc, #136]
	adds r0, r4, #0
	movs r1, #3
	movs r2, #2
	bl sub_080012F4
	ldr r2, [pc, #128]
	adds r0, r4, #0
	movs r1, #3
	bl sub_08001314
	ldr r1, [pc, #120]
	ldr r0, [sp, #0]
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	ldr r1, [pc, #116]
	ands r0, r1
	movs r1, #128
	lsls r1, r1, #1
	orrs r0, r1
	ldr r1, [pc, #108]
	ands r0, r1
	movs r1, #128
	lsls r1, r1, #9
	orrs r0, r1
	ldr r1, [pc, #104]
	ands r0, r1
	adds r1, #1
	orrs r0, r1
	str r0, [sp, #0]
	adds r0, r4, #0
	movs r1, #3
	mov r2, sp
	bl sub_08001A48
	movs r0, #1
	movs r1, #31
	bl sub_08003F88
	ldr r1, [pc, #80]
	ldr r2, [pc, #80]
	adds r0, r2, #0
	strh r0, [r1, #0]
	movs r2, #128
	lsls r2, r2, #19
	ldrh r0, [r2, #0]
	movs r3, #128
	lsls r3, r3, #4
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2, #0]
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0
	movs r3, #0
	bl Bg_DrawLevelScreen
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0xFFFFFE80
	.4byte 0x08309E75
	.4byte 0x083084E1
	.4byte 0x0300398C
	.4byte 0x08268AC0
	.4byte 0xFFFFFF00
	.4byte 0xFFFF00FF
	.4byte 0xFF00FFFF
	.4byte 0x00FFFFFF
	.4byte 0x0400000E
	.4byte 0x00001C81

	.thumb
	.align 1, 0
	.global sub_083084E0
	.thumb_func
sub_083084E0:
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r5, [r4, #52]
	ldr r6, [r4, #56]
	bl sub_08306E84
	movs r1, #3
	ands r0, r1
	ldrh r1, [r4, #26]
	adds r0, r1, r0
	strh r0, [r4, #26]
	ldr r2, [pc, #84]
	ldr r1, [pc, #84]
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0, #0]
	lsls r0, r0, #16
	asrs r0, r0, #26
	ldr r1, [r4, #64]
	adds r1, r1, r0
	str r1, [r4, #64]
	movs r0, #128
	negs r0, r0
	cmp r1, r0
	bge .L08308516
	str r0, [r4, #64]
.L08308516:
	ldr r0, [r4, #64]
	movs r1, #160
	lsls r1, r1, #4
	cmp r0, r1
	ble .L08308522
	str r1, [r4, #64]
.L08308522:
	ldr r2, [r4, #52]
	ldr r0, [r4, #64]
	adds r2, r2, r0
	str r2, [r4, #52]
	ldr r3, [r4, #56]
	ldr r0, [r4, #68]
	adds r3, r3, r0
	str r3, [r4, #56]
	ldr r0, [pc, #32]
	asrs r2, r2, #8
	asrs r1, r5, #8
	subs r2, r2, r1
	asrs r3, r3, #8
	asrs r1, r6, #8
	subs r3, r3, r1
	movs r1, #3
	bl sub_08001404
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.4byte 0x083D532C
	.4byte 0x000003FF
	.4byte 0x0300398C

	.thumb
	.align 1, 0
	.global sub_08308558
	.thumb_func
sub_08308558:
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	movs r5, #0
	movs r0, #12
	strb r0, [r6, #5]
	strb r5, [r6, #2]
	strb r5, [r6, #3]
	adds r1, r6, #0
	adds r1, #212
	ldr r0, [pc, #128]
	str r0, [r1, #0]
	subs r1, #12
	ldr r0, [pc, #128]
	str r0, [r1, #0]
	ldr r4, [pc, #128]
	adds r0, r4, #0
	movs r1, #3
	movs r2, #1
	bl sub_080012F4
	ldr r2, [pc, #120]
	adds r0, r4, #0
	movs r1, #3
	bl sub_08001314
	ldr r1, [pc, #112]
	ldr r0, [sp, #0]
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	ldr r1, [pc, #108]
	ands r0, r1
	movs r1, #128
	lsls r1, r1, #1
	orrs r0, r1
	ldr r1, [pc, #100]
	ands r0, r1
	movs r1, #128
	lsls r1, r1, #9
	orrs r0, r1
	ldr r1, [pc, #96]
	ands r0, r1
	movs r1, #128
	lsls r1, r1, #18
	orrs r0, r1
	str r0, [sp, #0]
	adds r0, r4, #0
	movs r1, #3
	mov r2, sp
	bl sub_08001A48
	ldr r1, [pc, #76]
	ldr r2, [pc, #80]
	adds r0, r2, #0
	strh r0, [r1, #0]
	movs r2, #128
	lsls r2, r2, #19
	ldrh r0, [r2, #0]
	movs r3, #128
	lsls r3, r3, #4
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2, #0]
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0
	movs r3, #18
	bl Bg_DrawLevelScreen
	strh r5, [r6, #26]
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x08309E75
	.4byte 0x08308619
	.4byte 0x0300398C
	.4byte 0x0828D430
	.4byte 0xFFFFFF00
	.4byte 0xFFFF00FF
	.4byte 0xFF00FFFF
	.4byte 0x00FFFFFF
	.4byte 0x0400000E
	.4byte 0x00001C82

	.thumb
	.align 1, 0
	.global sub_08308618
	.thumb_func
sub_08308618:
	push {lr}
	ldr r0, [pc, #16]
	movs r1, #3
	movs r2, #2
	movs r3, #0
	bl sub_08001404
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x0300398C

	.thumb
	.align 1, 0
	.global sub_08308630
	.thumb_func
sub_08308630:
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #160
	lsls r1, r1, #19
	movs r0, #0
	strh r0, [r1, #0]
	ldr r1, [pc, #32]
	movs r0, #1
	bl sub_08001FC8
	movs r0, #1
	bl sub_08001FA0
	ldr r2, [pc, #24]
	ldrh r0, [r2, #0]
	movs r1, #16
	orrs r0, r1
	strh r0, [r2, #0]
	adds r0, r4, #0
	bl sub_08309D50
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x030007F5
	.4byte 0x04000004

	.thumb
	.align 1, 0
	.global sub_08308668
	.thumb_func
sub_08308668:
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #64]
	ldr r0, [pc, #40]
	adds r1, r1, r0
	str r1, [r4, #64]
	ldr r2, [pc, #36]
	ldr r0, [r2, #8]
	lsls r0, r0, #8
	adds r1, r1, r0
	str r1, [r4, #52]
	ldr r1, [r2, #12]
	lsls r1, r1, #8
	ldr r0, [r4, #68]
	adds r0, r0, r1
	str r0, [r4, #56]
	ldrh r0, [r4, #12]
	cmp r0, #1
	bhi .L083086A0
	adds r0, r4, #0
	adds r0, #100
	bl sub_08000704
	b .L083086B4
	.2byte 0xfe00 @ .raw
	.2byte 0xffff @ .raw
	subs r0, #204
	lsls r0, r0, #12
.L083086A0:
	adds r0, r4, #0
	adds r0, #100
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083086B4
	adds r0, r4, #0
	bl sub_08309D50
.L083086B4:
	ldr r1, [r4, #52]
	asrs r1, r1, #8
	ldr r0, [pc, #20]
	ldr r0, [r0, #8]
	subs r0, #16
	cmp r1, r0
	bge .L083086C8
	adds r0, r4, #0
	bl sub_08309D50
.L083086C8:
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x030038CC

	.thumb
	.align 1, 0
	.global sub_083086D4
	.thumb_func
sub_083086D4:
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	mov r0, sp
	bl sub_08309CB0
	lsls r0, r0, #24
	lsrs r3, r0, #24
	cmp r3, #1
	bne .L08308756
	ldr r1, [sp, #0]
	movs r2, #0
	movs r0, #19
	strb r0, [r1, #5]
	ldr r0, [sp, #0]
	strb r3, [r0, #1]
	ldr r0, [sp, #0]
	strb r3, [r0, #2]
	ldr r0, [sp, #0]
	strb r3, [r0, #3]
	ldr r0, [sp, #0]
	adds r0, #46
	strb r2, [r0, #0]
	ldr r2, [sp, #0]
	ldr r1, [pc, #84]
	ldr r0, [r1, #8]
	lsls r0, r0, #8
	adds r0, r4, r0
	str r0, [r2, #52]
	ldr r2, [sp, #0]
	ldr r0, [r1, #12]
	lsls r0, r0, #8
	adds r0, r5, r0
	str r0, [r2, #56]
	ldr r0, [sp, #0]
	str r4, [r0, #64]
	ldr r0, [sp, #0]
	str r5, [r0, #68]
	ldr r0, [sp, #0]
	adds r0, #60
	movs r1, #160
	strb r1, [r0, #0]
	ldr r0, [sp, #0]
	adds r0, #200
	ldr r1, [pc, #48]
	str r1, [r0, #0]
	ldr r0, [sp, #0]
	adds r0, #212
	ldr r1, [pc, #44]
	str r1, [r0, #0]
	ldr r0, [sp, #0]
	adds r0, #224
	movs r1, #255
	strh r1, [r0, #0]
	ldr r0, [sp, #0]
	adds r0, #100
	ldr r1, [pc, #32]
	adds r2, r6, #0
	movs r3, #0
	bl sub_080002E0
	ldr r0, [sp, #0]
	strh r6, [r0, #12]
.L08308756:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x030038CC
	.4byte 0x08308669
	.4byte 0x08309E79
	.4byte 0x080BDF00
	.4byte 0x22001C03
	.4byte 0x71582012
	.4byte 0x70DA709A
	.4byte 0x31D41C19
	.4byte 0x60084806
	.4byte 0x4806390C
	.4byte 0x1C186008
	.4byte 0x780030E2
	.4byte 0x849A8358
	.4byte 0x845A83DA
	.4byte 0x00004770
	.4byte 0x08309E79
	.4byte 0x083087A5

	.thumb
	.align 1, 0
	.global sub_083087A4
	.thumb_func
sub_083087A4:
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #26]
	movs r2, #26
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bgt .L08308828
	ldr r1, [pc, #100]
	movs r3, #32
	ldrsh r0, [r4, r3]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0, #0]
	ldr r2, [pc, #92]
	movs r5, #30
	ldrsh r1, [r4, r5]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1, #0]
	ldr r3, [pc, #84]
	movs r5, #36
	ldrsh r2, [r4, r5]
	adds r2, r2, r3
	ldrb r2, [r2, #0]
	bl sub_083086D4
	ldr r1, [pc, #72]
	movs r2, #34
	ldrsh r0, [r4, r2]
	adds r0, r0, r1
	ldrb r0, [r0, #0]
	movs r1, #0
	strh r0, [r4, #26]
	ldrh r0, [r4, #32]
	adds r0, #1
	strh r0, [r4, #32]
	lsls r0, r0, #16
	asrs r0, r0, #16
	cmp r0, #7
	ble .L083087F6
	strh r1, [r4, #32]
.L083087F6:
	ldrh r0, [r4, #30]
	adds r0, #1
	strh r0, [r4, #30]
	lsls r0, r0, #16
	asrs r0, r0, #16
	cmp r0, #6
	ble .L08308806
	strh r1, [r4, #30]
.L08308806:
	ldrh r0, [r4, #34]
	adds r0, #1
	strh r0, [r4, #34]
	lsls r0, r0, #16
	asrs r0, r0, #16
	cmp r0, #9
	ble .L0830882C
	strh r1, [r4, #34]
	b .L0830882C
	ldr r0, [r7, r5]
	lsls r0, r0, #12
	ldr r0, [r3, r6]
	lsls r0, r0, #12
	ldr r6, [r3, r5]
	lsls r0, r0, #12
	ldr r4, [r5, r5]
	lsls r0, r0, #12
.L08308828:
	subs r0, r1, #1
	strh r0, [r4, #26]
.L0830882C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08308834
	.thumb_func
sub_08308834:
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	movs r5, #0
	movs r0, #23
	strb r0, [r6, #5]
	strb r5, [r6, #2]
	strb r5, [r6, #3]
	adds r1, r6, #0
	adds r1, #212
	ldr r0, [pc, #128]
	str r0, [r1, #0]
	subs r1, #12
	ldr r0, [pc, #128]
	str r0, [r1, #0]
	ldr r4, [pc, #128]
	adds r0, r4, #0
	movs r1, #3
	movs r2, #2
	bl sub_080012F4
	ldr r2, [pc, #120]
	adds r0, r4, #0
	movs r1, #3
	bl sub_08001314
	ldr r1, [pc, #112]
	ldr r0, [sp, #0]
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	ldr r1, [pc, #108]
	ands r0, r1
	movs r1, #128
	lsls r1, r1, #1
	orrs r0, r1
	ldr r1, [pc, #100]
	ands r0, r1
	movs r1, #128
	lsls r1, r1, #9
	orrs r0, r1
	ldr r1, [pc, #96]
	ands r0, r1
	movs r1, #128
	lsls r1, r1, #18
	orrs r0, r1
	str r0, [sp, #0]
	adds r0, r4, #0
	movs r1, #3
	mov r2, sp
	bl sub_08001A48
	ldr r1, [pc, #76]
	ldr r2, [pc, #80]
	adds r0, r2, #0
	strh r0, [r1, #0]
	movs r2, #128
	lsls r2, r2, #19
	ldrh r0, [r2, #0]
	movs r3, #128
	lsls r3, r3, #4
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2, #0]
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0
	movs r3, #0
	bl Bg_DrawLevelScreen
	strh r5, [r6, #26]
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x08309E75
	.4byte 0x083088F5
	.4byte 0x0300398C
	.4byte 0x08279EF0
	.4byte 0xFFFFFF00
	.4byte 0xFFFF00FF
	.4byte 0xFF00FFFF
	.4byte 0x00FFFFFF
	.4byte 0x0400000E
	.4byte 0x00001C82

	.thumb
	.align 1, 0
	.global sub_083088F4
	.thumb_func
sub_083088F4:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, [pc, #28]
	movs r1, #26
	ldrsh r0, [r5, r1]
	ldr r3, [r4, #104]
	subs r3, r3, r0
	adds r0, r4, #0
	movs r1, #3
	movs r2, #2
	bl sub_08001404
	ldr r0, [r4, #104]
	strh r0, [r5, #26]
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x0300398C

	.thumb
	.align 1, 0
	.global sub_0830891C
	.thumb_func
sub_0830891C:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrh r2, [r5, #38]
	movs r1, #38
	ldrsh r0, [r5, r1]
	cmp r0, #0
	ble .L08308954
	ldrh r1, [r5, #40]
	movs r3, #40
	ldrsh r0, [r5, r3]
	cmp r0, #0
	ble .L0830893A
	subs r0, r1, #1
	strh r0, [r5, #40]
	b .L08308954
.L0830893A:
	movs r0, #8
	strh r0, [r5, #40]
	subs r0, r2, #1
	strh r0, [r5, #38]
	movs r1, #12
	subs r1, r1, r0
	lsls r1, r1, #16
	adds r0, r2, #3
	lsls r0, r0, #24
	orrs r0, r1
	ldr r1, [pc, #36]
	lsrs r0, r0, #16
	strh r0, [r1, #0]
.L08308954:
	ldr r4, [pc, #32]
	movs r1, #26
	ldrsh r0, [r5, r1]
	ldr r3, [r4, #104]
	subs r3, r3, r0
	adds r0, r4, #0
	movs r1, #3
	movs r2, #1
	bl sub_08001404
	ldr r0, [r4, #104]
	strh r0, [r5, #26]
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x04000052
	.4byte 0x0300398C

	.thumb
	.align 1, 0
	.global sub_0830897C
	.thumb_func
sub_0830897C:
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldrh r1, [r5, #28]
	movs r2, #28
	ldrsh r0, [r5, r2]
	cmp r0, #0
	ble .L08308992
	subs r0, r1, #1
	strh r0, [r5, #28]
	b .L08308A26
.L08308992:
	ldr r4, [pc, #156]
	adds r0, r4, #0
	movs r1, #3
	movs r2, #2
	bl sub_080012F4
	ldr r2, [pc, #148]
	adds r0, r4, #0
	movs r1, #3
	bl sub_08001314
	ldr r1, [pc, #140]
	ldr r0, [sp, #0]
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	ldr r1, [pc, #136]
	ands r0, r1
	movs r1, #128
	lsls r1, r1, #1
	orrs r0, r1
	ldr r1, [pc, #128]
	ands r0, r1
	movs r1, #128
	lsls r1, r1, #9
	orrs r0, r1
	ldr r1, [pc, #124]
	ands r0, r1
	movs r1, #128
	lsls r1, r1, #18
	orrs r0, r1
	str r0, [sp, #0]
	adds r0, r4, #0
	movs r1, #3
	mov r2, sp
	bl sub_08001A48
	ldr r1, [pc, #104]
	ldr r3, [pc, #108]
	adds r0, r3, #0
	strh r0, [r1, #0]
	movs r2, #128
	lsls r2, r2, #19
	ldrh r0, [r2, #0]
	movs r3, #128
	lsls r3, r3, #4
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2, #0]
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0
	movs r3, #0
	bl Bg_DrawLevelScreen
	movs r0, #0
	strh r0, [r5, #26]
	movs r0, #8
	strh r0, [r5, #40]
	movs r0, #12
	strh r0, [r5, #38]
	adds r1, r5, #0
	adds r1, #200
	ldr r0, [pc, #60]
	str r0, [r1, #0]
	ldr r1, [pc, #60]
	ldr r2, [pc, #64]
	adds r0, r2, #0
	strh r0, [r1, #0]
	adds r1, #2
	movs r3, #128
	lsls r3, r3, #5
	adds r0, r3, #0
	strh r0, [r1, #0]
.L08308A26:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x0300398C
	.4byte 0x082539A0
	.4byte 0xFFFFFF00
	.4byte 0xFFFF00FF
	.4byte 0xFF00FFFF
	.4byte 0x00FFFFFF
	.4byte 0x0400000E
	.4byte 0x00001C82
	.4byte 0x0830891D
	.4byte 0x04000050
	.4byte 0x00002448
	.4byte 0x21001C02
	.4byte 0x71502018
	.4byte 0x70D17091
	.4byte 0x31D41C11
	.4byte 0x60084803
	.4byte 0x4803390C
	.4byte 0x20286008
	.4byte 0x47708390
	.4byte 0x08309E75
	.4byte 0x0830897D

	.thumb
	.align 1, 0
	.global sub_08308A84
	.thumb_func
sub_08308A84:
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [pc, #32]
	movs r0, #1
	bl sub_08001FC8
	movs r0, #1
	bl sub_08001FA0
	ldr r2, [pc, #24]
	ldrh r0, [r2, #0]
	movs r1, #16
	orrs r0, r1
	strh r0, [r2, #0]
	adds r0, r4, #0
	bl sub_08309D50
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x0300083D
	.4byte 0x04000004

	.thumb
	.align 1, 0
	.global sub_08308AB4
	.thumb_func
sub_08308AB4:
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	movs r5, #0
	movs r0, #13
	strb r0, [r6, #5]
	strb r5, [r6, #2]
	strb r5, [r6, #3]
	adds r1, r6, #0
	adds r1, #212
	ldr r0, [pc, #128]
	str r0, [r1, #0]
	subs r1, #12
	ldr r0, [pc, #128]
	str r0, [r1, #0]
	ldr r4, [pc, #128]
	adds r0, r4, #0
	movs r1, #3
	movs r2, #2
	bl sub_080012F4
	ldr r2, [pc, #120]
	adds r0, r4, #0
	movs r1, #3
	bl sub_08001314
	ldr r1, [pc, #112]
	ldr r0, [sp, #0]
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	ldr r1, [pc, #108]
	ands r0, r1
	movs r1, #128
	lsls r1, r1, #1
	orrs r0, r1
	ldr r1, [pc, #100]
	ands r0, r1
	movs r1, #128
	lsls r1, r1, #9
	orrs r0, r1
	ldr r1, [pc, #96]
	ands r0, r1
	movs r1, #128
	lsls r1, r1, #18
	orrs r0, r1
	str r0, [sp, #0]
	adds r0, r4, #0
	movs r1, #3
	mov r2, sp
	bl sub_08001A48
	ldr r1, [pc, #76]
	ldr r2, [pc, #80]
	adds r0, r2, #0
	strh r0, [r1, #0]
	movs r2, #128
	lsls r2, r2, #19
	ldrh r0, [r2, #0]
	movs r3, #128
	lsls r3, r3, #4
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2, #0]
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0
	movs r3, #0
	bl Bg_DrawLevelScreen
	strh r5, [r6, #26]
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x08309E75
	.4byte 0x08308B75
	.4byte 0x0300398C
	.4byte 0x0825AB50
	.4byte 0xFFFFFF00
	.4byte 0xFFFF00FF
	.4byte 0xFF00FFFF
	.4byte 0x00FFFFFF
	.4byte 0x0400000E
	.4byte 0x00001C82

	.thumb
	.align 1, 0
	.global sub_08308B74
	.thumb_func
sub_08308B74:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [pc, #32]
	ldr r4, [pc, #36]
	ldr r0, [r4, #80]
	strh r0, [r1, #0]
	movs r1, #26
	ldrsh r0, [r5, r1]
	ldr r3, [r4, #104]
	subs r3, r3, r0
	adds r0, r4, #0
	movs r1, #3
	movs r2, #3
	bl sub_08001404
	ldr r0, [r4, #104]
	strh r0, [r5, #26]
	pop {r4, r5}
	pop {r0}
	bx r0
	.4byte 0x03003A18
	.4byte 0x0300398C

	.thumb
	.align 1, 0
	.global sub_08308BA4
	.thumb_func
sub_08308BA4:
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r7, #0
	movs r0, #14
	strb r0, [r4, #5]
	adds r1, r4, #0
	adds r1, #60
	movs r0, #42
	strb r0, [r1, #0]
	movs r6, #1
	strb r6, [r4, #2]
	adds r0, r4, #0
	adds r0, #46
	strb r6, [r0, #0]
	adds r0, #1
	strb r7, [r0, #0]
	adds r5, r4, #0
	adds r5, #227
	ldrb r0, [r5, #0]
	cmp r0, #0
	bne .L08308BD6
	strb r6, [r4, #3]
	adds r1, #140
	b .L08308BF6
.L08308BD6:
	ldrb r0, [r5, #0]
	bl sub_08316F04
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08308C20
	ldrb r0, [r5, #0]
	mov r1, sp
	bl sub_082EA468
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08308C00
	strb r6, [r4, #3]
	adds r1, r4, #0
	adds r1, #200
.L08308BF6:
	ldr r0, [pc, #4]
	str r0, [r1, #0]
	b .L08308C2C
	ldrh r5, [r3, #34]
	lsrs r0, r6, #32
.L08308C00:
	strb r7, [r4, #3]
	adds r1, r4, #0
	adds r1, #200
	ldr r0, [pc, #20]
	str r0, [r1, #0]
	strh r6, [r4, #10]
	ldr r1, [sp, #0]
	ldr r0, [r1, #52]
	asrs r0, r0, #8
	strh r0, [r4, #26]
	ldr r0, [r1, #56]
	asrs r0, r0, #8
	strh r0, [r4, #28]
	b .L08308C2C
	ldrh r1, [r1, #38]
	lsrs r0, r6, #32
.L08308C20:
	strb r7, [r4, #3]
	adds r1, r4, #0
	adds r1, #200
	ldr r0, [pc, #40]
	str r0, [r1, #0]
	strh r7, [r4, #10]
.L08308C2C:
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #32]
	adds r2, r4, #0
	adds r2, #226
	ldrb r2, [r2, #0]
	movs r3, #0
	bl sub_080002E0
	adds r1, r4, #0
	adds r1, #212
	ldr r0, [pc, #20]
	str r0, [r1, #0]
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x08308CC9
	.4byte 0x080B6430
	.4byte 0x08309E79

	.thumb
	.align 1, 0
	.global sub_08308C5C
	.thumb_func
sub_08308C5C:
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #100
	adds r0, r5, #0
	bl sub_08000704
	ldr r0, [pc, #84]
	adds r1, r4, #0
	movs r2, #1
	bl sub_08000D04
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08308C94
	movs r0, #31
	bl sub_083189D0
	ldr r0, [pc, #64]
	adds r1, r4, #0
	adds r1, #226
	ldrb r1, [r1, #0]
	adds r0, r1, r0
	movs r1, #1
	strb r1, [r0, #0]
	adds r0, r4, #0
	bl sub_08309D50
.L08308C94:
	ldr r1, [r4, #52]
	asrs r1, r1, #8
	ldr r2, [r4, #56]
	asrs r2, r2, #8
	adds r0, r5, #0
	bl sub_083020A8
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08308CB8
	adds r0, r4, #0
	bl sub_08309D50
	adds r0, r4, #0
	adds r0, #224
	ldrh r0, [r0, #0]
	bl sub_08316920
.L08308CB8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x0300250C
	.4byte 0x030028F0

	.thumb
	.align 1, 0
	.global sub_08308CC8
	.thumb_func
sub_08308CC8:
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #227
	ldrb r0, [r5, #0]
	bl sub_08316F04
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08308D2E
	ldrb r0, [r5, #0]
	mov r1, sp
	bl sub_082EA468
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08308D1C
	ldrh r1, [r4, #10]
	cmp r1, #1
	bne .L08308D08
	movs r2, #26
	ldrsh r0, [r4, r2]
	lsls r0, r0, #8
	str r0, [r4, #52]
	movs r2, #28
	ldrsh r0, [r4, r2]
	subs r0, #16
	lsls r0, r0, #8
	str r0, [r4, #56]
	strb r1, [r4, #3]
	b .L08308D0C
.L08308D08:
	movs r0, #1
	strb r0, [r4, #3]
.L08308D0C:
	adds r1, r4, #0
	adds r1, #200
	ldr r0, [pc, #4]
	str r0, [r1, #0]
	b .L08308D2E
	movs r0, r0
	ldrh r5, [r3, #34]
	lsrs r0, r6, #32
.L08308D1C:
	movs r0, #1
	strh r0, [r4, #10]
	ldr r1, [sp, #0]
	ldr r0, [r1, #52]
	asrs r0, r0, #8
	strh r0, [r4, #26]
	ldr r0, [r1, #56]
	asrs r0, r0, #8
	strh r0, [r4, #28]
.L08308D2E:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08308D38
	.thumb_func
sub_08308D38:
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r6, #0
	movs r0, #15
	strb r0, [r4, #5]
	adds r1, r4, #0
	adds r1, #60
	movs r0, #44
	strb r0, [r1, #0]
	movs r2, #1
	strb r2, [r4, #2]
	strb r2, [r4, #3]
	ldr r0, [r4, #52]
	asrs r0, r0, #8
	movs r1, #8
	negs r1, r1
	ands r0, r1
	lsls r0, r0, #8
	str r0, [r4, #52]
	ldr r0, [r4, #56]
	asrs r0, r0, #8
	ands r0, r1
	lsls r0, r0, #8
	str r0, [r4, #56]
	adds r0, r4, #0
	adds r0, #46
	strb r2, [r0, #0]
	adds r0, #1
	strb r6, [r0, #0]
	adds r1, r4, #0
	adds r1, #212
	ldr r0, [pc, #40]
	str r0, [r1, #0]
	subs r1, #12
	ldr r0, [pc, #36]
	str r0, [r1, #0]
	adds r0, r4, #0
	adds r0, #226
	ldrb r5, [r0, #0]
	cmp r5, #0
	beq .L08308DAC
	cmp r5, #1
	bne .L08308DDE
	adds r0, #1
	ldrb r0, [r0, #0]
	bl sub_08001E18
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08308DA8
	strh r6, [r4, #10]
	b .L08308DDE
	ldr r6, [sp, #484]
	lsrs r0, r6, #32
	ldrh r1, [r2, #50]
	lsrs r0, r6, #32
.L08308DA8:
	strh r5, [r4, #10]
	b .L08308DDE
.L08308DAC:
	ldr r0, [pc, #28]
	adds r1, r4, #0
	adds r1, #228
	ldrb r1, [r1, #0]
	adds r0, r1, r0
	ldrb r0, [r0, #0]
	cmp r0, #2
	bne .L08308DD0
	strh r2, [r4, #10]
	adds r0, r4, #0
	adds r0, #227
	ldrb r0, [r0, #0]
	movs r1, #0
	bl sub_08001DC8
	b .L08308DDE
	cmp r0, #240
	lsls r0, r0, #12
.L08308DD0:
	strh r5, [r4, #10]
	adds r0, r4, #0
	adds r0, #227
	ldrb r0, [r0, #0]
	movs r1, #1
	bl sub_08001DC8
.L08308DDE:
	ldr r0, [pc, #28]
	ldr r0, [r0, #0]
	subs r0, #20
	cmp r0, #3
	bhi .L08308E14
	adds r0, r4, #0
	adds r0, #229
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L08308E04
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #8]
	b .L08308E24
	movs r0, r0
	subs r7, #12
	lsls r0, r0, #12
	ldrh r0, [r4, #14]
	lsrs r3, r1, #32
.L08308E04:
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #4]
	ldrh r2, [r4, #10]
	adds r2, #2
	b .L08308E26
	ldrh r0, [r4, #14]
	lsrs r3, r1, #32
.L08308E14:
	adds r0, r4, #0
	adds r0, #229
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L08308E34
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #12]
.L08308E24:
	ldrh r2, [r4, #10]
.L08308E26:
	movs r3, #0
	bl sub_080002E0
	b .L08308E44
	movs r0, r0
	ldr r0, [r0, #0]
	lsrs r3, r1, #32
.L08308E34:
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #16]
	ldrh r2, [r4, #10]
	adds r2, #2
	movs r3, #0
	bl sub_080002E0
.L08308E44:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x080B6800

	.thumb
	.align 1, 0
	.global sub_08308E50
	.thumb_func
sub_08308E50:
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r0, #229
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L08308E6A
	adds r4, r5, #0
	adds r4, #100
	ldrh r1, [r5, #10]
	adds r0, r4, #0
	bl sub_08000680
	b .L08308E78
.L08308E6A:
	adds r4, r5, #0
	adds r4, #100
	ldrh r1, [r5, #10]
	adds r1, #2
	adds r0, r4, #0
	bl sub_08000680
.L08308E78:
	adds r0, r4, #0
	bl sub_080006AC
	adds r0, r5, #0
	adds r0, #226
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L08308EEC
	adds r0, r5, #0
	adds r0, #227
	ldrb r2, [r0, #0]
	movs r1, #0
	ldrh r0, [r5, #10]
	cmp r0, #0
	bne .L08308E98
	movs r1, #1
.L08308E98:
	adds r0, r2, #0
	bl sub_08001DC8
	ldrh r0, [r5, #10]
	cmp r0, #0
	bne .L08308F2C
	ldr r7, [pc, #56]
	adds r6, r5, #0
	adds r6, #228
	ldrb r1, [r6, #0]
	adds r0, r1, r7
	ldrb r4, [r0, #0]
	cmp r4, #1
	bne .L08308F2C
	ldr r0, [pc, #44]
	adds r1, r5, #0
	movs r2, #1
	bl sub_08000D04
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08308F2C
	ldrb r6, [r6, #0]
	adds r1, r6, r7
	movs r0, #2
	strb r0, [r1, #0]
	strh r4, [r5, #10]
	adds r1, r5, #0
	adds r1, #200
	ldr r0, [pc, #20]
	str r0, [r1, #0]
	movs r0, #28
	bl sub_083189D0
	b .L08308F2C
	movs r0, r0
	cmp r0, #240
	lsls r0, r0, #12
	movs r5, #12
	lsls r0, r0, #12
	ldrh r1, [r3, #58]
	lsrs r0, r6, #32
.L08308EEC:
	adds r4, r5, #0
	adds r4, #227
	ldrb r0, [r4, #0]
	bl sub_08001E18
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08308F04
	ldrh r0, [r5, #10]
	adds r1, r0, #0
	cmp r1, #1
	beq .L08308F18
.L08308F04:
	ldrb r0, [r4, #0]
	bl sub_08001E18
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08308F2C
	ldrh r0, [r5, #10]
	adds r1, r0, #0
	cmp r1, #0
	bne .L08308F2C
.L08308F18:
	movs r0, #1
	subs r0, r0, r1
	strh r0, [r5, #10]
	adds r1, r5, #0
	adds r1, #200
	ldr r0, [pc, #48]
	str r0, [r1, #0]
	movs r0, #28
	bl sub_083189D0
.L08308F2C:
	ldr r0, [r5, #52]
	asrs r0, r0, #8
	ldr r1, [r5, #56]
	asrs r1, r1, #8
	bl sub_08302078
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08308F4E
	adds r0, r5, #0
	adds r0, #224
	ldrh r0, [r0, #0]
	bl sub_08316920
	adds r0, r5, #0
	bl sub_08309D50
.L08308F4E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.4byte 0x08308F59

	.thumb
	.align 1, 0
	.global sub_08308F58
	.thumb_func
sub_08308F58:
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #100
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08308F70
	adds r1, r4, #0
	adds r1, #200
	ldr r0, [pc, #8]
	str r0, [r1, #0]
.L08308F70:
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x08308E51
	.4byte 0x21102200
	.4byte 0x70827141
	.4byte 0x1C0270C2
	.4byte 0x490332C8
	.4byte 0x30D46011
	.4byte 0x60014902
	.4byte 0x00004770
	.4byte 0x08308FA1
	.4byte 0x08309E75

	.thumb
	.align 1, 0
	.global sub_08308FA0
	.thumb_func
sub_08308FA0:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	ldr r1, [pc, #80]
	ldr r0, [r1, #52]
	asrs r7, r0, #11
	ldr r0, [r1, #56]
	asrs r0, r0, #11
	mov ip, r0
	ldr r0, [r4, #52]
	mov r8, r0
	asrs r5, r0, #11
	ldr r1, [r4, #56]
	mov r9, r1
	asrs r6, r1, #11
	adds r1, r4, #0
	adds r1, #227
	adds r0, r4, #0
	adds r0, #228
	ldrb r2, [r0, #0]
	adds r0, #1
	ldrb r3, [r0, #0]
	ldrb r1, [r1, #0]
	subs r0, r5, r1
	cmp r7, r0
	blt .L08309014
	adds r0, r5, r2
	cmp r7, r0
	bgt .L08309014
	subs r0, r6, r3
	cmp ip, r0
	blt .L08309014
	cmp ip, r6
	bgt .L08309014
	adds r0, r4, #0
	adds r0, #226
	ldrb r1, [r0, #0]
	cmp r1, #0
	bne .L08309008
	ldr r0, [pc, #12]
	str r1, [r0, #0]
	ldr r0, [pc, #12]
	b .L08309012
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
	cmp r0, #244
	lsls r0, r0, #12
	cmp r0, #248
	lsls r0, r0, #12
.L08309008:
	ldr r0, [pc, #56]
	mov r1, r8
	str r1, [r0, #0]
	ldr r0, [pc, #56]
	mov r1, r9
.L08309012:
	str r1, [r0, #0]
.L08309014:
	ldr r0, [r4, #52]
	asrs r0, r0, #8
	ldr r1, [r4, #56]
	asrs r1, r1, #8
	bl sub_08302058
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08309036
	adds r0, r4, #0
	adds r0, #224
	ldrh r0, [r0, #0]
	bl sub_08316920
	adds r0, r4, #0
	bl sub_08309D50
.L08309036:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x030028F4
	.4byte 0x030028F8

	.thumb
	.align 1, 0
	.global sub_0830904C
	.thumb_func
sub_0830904C:
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	strb r0, [r4, #5]
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	adds r1, r4, #0
	adds r1, #212
	ldr r0, [pc, #72]
	str r0, [r1, #0]
	subs r1, #12
	ldr r0, [pc, #72]
	str r0, [r1, #0]
	movs r0, #2
	movs r1, #0
	bl sub_08001DC8
	movs r0, #1
	movs r1, #0
	bl sub_08001DC8
	movs r0, #0
	movs r1, #0
	bl sub_08001DC8
	movs r0, #0
	bl sub_08001E18
	lsls r0, r0, #24
	lsrs r0, r0, #24
	strh r0, [r4, #10]
	movs r0, #1
	bl sub_08001E18
	lsls r0, r0, #24
	lsrs r0, r0, #24
	strh r0, [r4, #12]
	movs r0, #2
	bl sub_08001E18
	lsls r0, r0, #24
	lsrs r0, r0, #24
	strh r0, [r4, #14]
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x08309E79
	.4byte 0x083090B1

	.thumb
	.align 1, 0
	.global sub_083090B0
	.thumb_func
sub_083090B0:
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	movs r0, #2
	bl sub_08001E18
	lsls r0, r0, #24
	lsrs r4, r0, #24
	cmp r4, #1
	bne .L083090FE
	ldrh r0, [r5, #14]
	cmp r0, #0
	bne .L083090FE
	movs r0, #0
	movs r1, #0
	bl sub_08001DC8
	movs r0, #1
	movs r1, #0
	bl sub_08001DC8
	strh r4, [r5, #14]
	movs r4, #8
.L083090DE:
	adds r0, r4, #0
	mov r1, sp
	bl sub_082EA468
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083090F2
	adds r0, r4, #0
	bl sub_08316920
.L083090F2:
	adds r4, #1
	cmp r4, #11
	bls .L083090DE
	movs r0, #12
	bl sub_08316920
.L083090FE:
	movs r0, #0
	bl sub_08001E18
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08309128
	movs r0, #1
	bl sub_08001E18
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08309128
	ldrh r0, [r5, #14]
	cmp r0, #1
	bne .L08309128
	movs r0, #2
	movs r1, #0
	bl sub_08001DC8
	movs r0, #0
	strh r0, [r5, #14]
.L08309128:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_08309130
	.thumb_func
sub_08309130:
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r0, #255
	strb r0, [r7, #5]
	movs r4, #0
	movs r6, #1
	strb r6, [r7, #2]
	strb r4, [r7, #3]
	adds r1, r7, #0
	adds r1, #212
	ldr r0, [pc, #72]
	str r0, [r1, #0]
	subs r1, #12
	ldr r0, [pc, #72]
	str r0, [r1, #0]
	movs r0, #179
	lsls r0, r0, #9
	str r0, [r7, #52]
	movs r0, #252
	lsls r0, r0, #9
	str r0, [r7, #56]
	subs r1, #140
	movs r0, #39
	strb r0, [r1, #0]
	movs r5, #0
	strh r4, [r7, #10]
	movs r0, #2
	bl sub_08001E18
	lsls r0, r0, #24
	lsrs r0, r0, #24
	strh r0, [r7, #12]
	strh r4, [r7, #28]
	adds r0, r7, #0
	adds r0, #100
	ldr r1, [pc, #32]
	movs r2, #0
	movs r3, #0
	bl sub_080002E0
	adds r0, r7, #0
	adds r0, #46
	strb r6, [r0, #0]
	adds r0, #1
	strb r5, [r0, #0]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.4byte 0x08309E79
	.4byte 0x0830919D
	.4byte 0x0810E140

	.thumb
	.align 1, 0
	.global sub_0830919C
	.thumb_func
sub_0830919C:
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	strb r0, [r4, #3]
	strh r0, [r4, #10]
	movs r0, #2
	bl sub_08001E18
	lsls r0, r0, #24
	cmp r0, #0
	beq .L083091D4
	ldrh r0, [r4, #12]
	cmp r0, #0
	bne .L083091D4
	adds r1, r4, #0
	adds r1, #200
	ldr r0, [pc, #40]
	str r0, [r1, #0]
	movs r0, #1
	strh r0, [r4, #10]
	adds r0, r4, #0
	adds r0, #100
	bl sub_080006AC
	movs r0, #8
	bl sub_083189D0
	strh r0, [r4, #40]
.L083091D4:
	movs r0, #2
	bl sub_08001E18
	lsls r0, r0, #24
	lsrs r0, r0, #24
	strh r0, [r4, #12]
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083091ED

	.thumb
	.align 1, 0
	.global sub_083091EC
	.thumb_func
sub_083091EC:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #12
	adds r5, r0, #0
	movs r0, #1
	strb r0, [r5, #3]
	ldrh r0, [r5, #10]
	cmp r0, #1
	bne .L08309222
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #0
	bl sub_08000680
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08309286
	movs r0, #2
	strh r0, [r5, #10]
	movs r0, #3
	strh r0, [r5, #26]
	b .L08309252
.L08309222:
	cmp r0, #2
	bne .L0830925A
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #1
	bl sub_08000680
	adds r0, r4, #0
	bl sub_08000704
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08309286
	ldrh r1, [r5, #26]
	movs r2, #26
	ldrsh r0, [r5, r2]
	cmp r0, #0
	ble .L0830924E
	subs r0, r1, #1
	strh r0, [r5, #26]
	b .L08309286
.L0830924E:
	movs r0, #3
	strh r0, [r5, #10]
.L08309252:
	adds r0, r4, #0
	bl sub_080006AC
	b .L08309286
.L0830925A:
	cmp r0, #3
	bne .L08309286
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #2
	bl sub_08000680
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08309286
	adds r0, r5, #0
	adds r0, #200
	ldr r1, [pc, #152]
	str r1, [r0, #0]
	movs r1, #40
	ldrsh r0, [r5, r1]
	bl sub_08319148
.L08309286:
	movs r0, #1
	ldrh r2, [r5, #28]
	subs r0, r0, r2
	strh r0, [r5, #28]
	lsls r0, r0, #16
	cmp r0, #0
	beq .L08309306
	movs r7, #0
	movs r0, #0
	mov r8, r0
	movs r6, #0
.L0830929C:
	ldr r0, [pc, #120]
	adds r4, r6, r0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq .L083092D2
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_08000D04
	lsls r0, r0, #24
	cmp r0, #0
	beq .L083092D2
	mov r1, r8
	str r1, [sp, #0]
	add r0, sp, #4
	movs r1, #1
	strb r1, [r0, #0]
	add r0, sp, #8
	mov r2, r8
	strb r2, [r0, #0]
	adds r0, r4, #0
	movs r1, #6
	movs r2, #2
	movs r3, #2
	bl sub_08306DD4
.L083092D2:
	adds r6, #248
	adds r7, #1
	cmp r7, #7
	bls .L0830929C
	ldr r4, [pc, #64]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_08000D04
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08309306
	movs r2, #0
	str r2, [sp, #0]
	add r1, sp, #4
	movs r0, #1
	strb r0, [r1, #0]
	add r0, sp, #8
	strb r2, [r0, #0]
	adds r0, r4, #0
	movs r1, #6
	movs r2, #2
	movs r3, #2
	bl sub_08306DD4
.L08309306:
	add sp, #12
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x0830919D
	.4byte 0x02004400
	.4byte 0x0300250C

	.thumb
	.align 1, 0
	.global sub_08309320
	.thumb_func
sub_08309320:
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #21
	strb r0, [r5, #5]
	adds r1, r5, #0
	adds r1, #60
	movs r0, #46
	strb r0, [r1, #0]
	movs r0, #1
	strb r0, [r5, #2]
	strb r0, [r5, #3]
	adds r0, r5, #0
	adds r0, #100
	ldr r1, [pc, #60]
	movs r2, #0
	movs r3, #0
	bl sub_080002E0
	ldr r0, [r5, #52]
	ldr r1, [r5, #56]
	movs r2, #1
	bl sub_08000A1C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08309362
	adds r0, r5, #0
	adds r0, #52
	adds r1, r5, #0
	adds r1, #56
	movs r2, #1
	bl sub_08000A70
.L08309362:
	ldr r0, [pc, #24]
	ldr r0, [r0, #0]
	subs r0, #4
	cmp r0, #19
	bhi .L08309398
	lsls r0, r0, #2
	ldr r1, [pc, #16]
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	movs r0, r0
	ldrb r0, [r2, r4]
	lsrs r7, r3, #32
	subs r7, #12
	lsls r0, r0, #12
	add sp, #304
	lsrs r5, r7, #32
	movs r0, #2
	b .L0830939E
	movs r0, #0
	b .L0830939E
	movs r0, #1
	b .L0830939E
	movs r0, #0
	b .L0830939E
	movs r0, #2
	b .L0830939E
.L08309398:
	adds r0, r5, #0
	adds r0, #226
	ldrb r0, [r0, #0]
.L0830939E:
	strh r0, [r5, #10]
	ldr r0, [pc, #28]
	ldr r1, [r0, #52]
	ldr r0, [r5, #52]
	cmp r1, r0
	ble .L083093C8
	adds r4, r5, #0
	adds r4, #100
	ldr r1, [pc, #20]
	ldrh r0, [r5, #10]
	lsls r2, r0, #1
	adds r2, #1
	adds r0, r4, #0
	movs r3, #0
	bl sub_080002E0
	b .L083093DA
	movs r5, #12
	lsls r0, r0, #12
	ldrb r0, [r2, r4]
	lsrs r7, r3, #32
.L083093C8:
	adds r4, r5, #0
	adds r4, #100
	ldr r1, [pc, #56]
	ldrh r0, [r5, #10]
	lsls r2, r0, #1
	adds r0, r4, #0
	movs r3, #0
	bl sub_080002E0
.L083093DA:
	ldr r0, [pc, #48]
	ldr r0, [r0, #0]
	cmp r0, #23
	bne .L083093F2
	adds r0, r4, #0
	movs r1, #8
	bl sub_0800075C
	adds r1, r5, #0
	adds r1, #60
	movs r0, #60
	strb r0, [r1, #0]
.L083093F2:
	adds r1, r5, #0
	adds r1, #212
	ldr r0, [pc, #24]
	str r0, [r1, #0]
	subs r1, #12
	ldr r0, [pc, #20]
	str r0, [r1, #0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x081F5D10
	.4byte 0x03003F0C
	.4byte 0x08309E79
	.4byte 0x08309419

	.thumb
	.align 1, 0
	.global sub_08309418
	.thumb_func
sub_08309418:
	push {r4, lr}
	adds r2, r0, #0
	ldr r0, [pc, #24]
	ldr r1, [r0, #52]
	ldr r0, [r2, #52]
	cmp r1, r0
	ble .L0830943C
	adds r4, r2, #0
	adds r4, #100
	ldrh r2, [r2, #10]
	lsls r1, r2, #1
	adds r1, #1
	adds r0, r4, #0
	bl sub_08000680
	b .L0830944A
	movs r5, #12
	lsls r0, r0, #12
.L0830943C:
	adds r4, r2, #0
	adds r4, #100
	ldrh r2, [r2, #10]
	lsls r1, r2, #1
	adds r0, r4, #0
	bl sub_08000680
.L0830944A:
	adds r0, r4, #0
	bl sub_08000704
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x714121FF
	.4byte 0x70812100
	.4byte 0x1C0270C1
	.4byte 0x490332D4
	.4byte 0x30C86011
	.4byte 0x60014902
	.4byte 0x00004770
	.4byte 0x08309E79
	.4byte 0x0830947D

	.thumb
	.align 1, 0
	.global sub_0830947C
	.thumb_func
sub_0830947C:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #60
	adds r5, r0, #0
	ldr r0, [pc, #16]
	ldr r0, [r0, #0]
	cmp r0, #9
	beq .L083094F4
	cmp r0, #9
	bhi .L083094A0
	cmp r0, #4
	beq .L083094AC
	b .L083096DA
	subs r7, #12
	lsls r0, r0, #12
.L083094A0:
	cmp r0, #14
	beq .L0830958A
	cmp r0, #19
	bne .L083094AA
	b .L08309646
.L083094AA:
	b .L083096DA
.L083094AC:
	movs r4, #11
	add r6, sp, #4
.L083094B0:
	adds r0, r4, #0
	mov r1, sp
	bl sub_08314AC4
	lsls r0, r0, #24
	cmp r0, #0
	beq .L083094C4
	adds r0, r5, #0
	bl sub_08309D50
.L083094C4:
	adds r0, r4, #0
	bl sub_08316910
	adds r4, #1
	cmp r4, #22
	bls .L083094B0
	movs r4, #30
.L083094D2:
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08314AC4
	lsls r0, r0, #24
	cmp r0, #0
	beq .L083094E6
	adds r0, r5, #0
	bl sub_08309D50
.L083094E6:
	adds r0, r4, #0
	bl sub_08316910
	adds r4, #1
	cmp r4, #32
	bls .L083094D2
	b .L083096DA
.L083094F4:
	movs r4, #4
	add r6, sp, #8
	add r7, sp, #12
	add r0, sp, #16
	mov r8, r0
	add r0, sp, #20
	mov r9, r0
.L08309502:
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08314AC4
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08309516
	adds r0, r5, #0
	bl sub_08309D50
.L08309516:
	adds r0, r4, #0
	bl sub_08316910
	adds r4, #1
	cmp r4, #7
	bls .L08309502
	movs r4, #15
.L08309524:
	adds r0, r4, #0
	adds r1, r7, #0
	bl sub_08314AC4
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08309538
	adds r0, r5, #0
	bl sub_08309D50
.L08309538:
	adds r0, r4, #0
	bl sub_08316910
	adds r4, #1
	cmp r4, #22
	bls .L08309524
	movs r4, #24
.L08309546:
	adds r0, r4, #0
	mov r1, r8
	bl sub_08309E38
	lsls r0, r0, #24
	cmp r0, #0
	beq .L0830955A
	ldr r0, [sp, #16]
	bl sub_08309D50
.L0830955A:
	adds r0, r4, #0
	bl sub_08316910
	adds r4, #1
	cmp r4, #28
	bls .L08309546
	movs r4, #31
.L08309568:
	adds r0, r4, #0
	mov r1, r9
	bl sub_08314AC4
	lsls r0, r0, #24
	cmp r0, #0
	beq .L0830957C
	adds r0, r5, #0
	bl sub_08309D50
.L0830957C:
	adds r0, r4, #0
	bl sub_08316910
	adds r4, #1
	cmp r4, #32
	bls .L08309568
	b .L083096DA
.L0830958A:
	movs r4, #4
	add r6, sp, #24
	add r7, sp, #28
	add r0, sp, #32
	mov r8, r0
	add r0, sp, #36
	mov r9, r0
	add r0, sp, #40
	mov sl, r0
.L0830959C:
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08314AC4
	lsls r0, r0, #24
	cmp r0, #0
	beq .L083095B0
	adds r0, r5, #0
	bl sub_08309D50
.L083095B0:
	adds r0, r4, #0
	bl sub_08316910
	adds r4, #1
	cmp r4, #7
	bls .L0830959C
	movs r4, #11
.L083095BE:
	adds r0, r4, #0
	adds r1, r7, #0
	bl sub_08314AC4
	lsls r0, r0, #24
	cmp r0, #0
	beq .L083095D2
	adds r0, r5, #0
	bl sub_08309D50
.L083095D2:
	adds r0, r4, #0
	bl sub_08316910
	adds r4, #1
	cmp r4, #14
	bls .L083095BE
	movs r4, #19
.L083095E0:
	adds r0, r4, #0
	mov r1, r8
	bl sub_08314AC4
	lsls r0, r0, #24
	cmp r0, #0
	beq .L083095F4
	adds r0, r5, #0
	bl sub_08309D50
.L083095F4:
	adds r0, r4, #0
	bl sub_08316910
	adds r4, #1
	cmp r4, #22
	bls .L083095E0
	movs r4, #24
.L08309602:
	adds r0, r4, #0
	mov r1, r9
	bl sub_08309E38
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08309616
	ldr r0, [sp, #36]
	bl sub_08309D50
.L08309616:
	adds r0, r4, #0
	bl sub_08316910
	adds r4, #1
	cmp r4, #28
	bls .L08309602
	movs r4, #30
.L08309624:
	adds r0, r4, #0
	mov r1, sl
	bl sub_08314AC4
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08309638
	adds r0, r5, #0
	bl sub_08309D50
.L08309638:
	adds r0, r4, #0
	bl sub_08316910
	adds r4, #2
	cmp r4, #32
	bls .L08309624
	b .L083096DA
.L08309646:
	movs r4, #4
	add r6, sp, #44
	add r7, sp, #48
	add r0, sp, #52
	mov r8, r0
	add r0, sp, #56
	mov r9, r0
.L08309654:
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08314AC4
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08309668
	adds r0, r5, #0
	bl sub_08309D50
.L08309668:
	adds r0, r4, #0
	bl sub_08316910
	adds r4, #1
	cmp r4, #7
	bls .L08309654
	movs r4, #11
.L08309676:
	adds r0, r4, #0
	adds r1, r7, #0
	bl sub_08314AC4
	lsls r0, r0, #24
	cmp r0, #0
	beq .L0830968A
	adds r0, r5, #0
	bl sub_08309D50
.L0830968A:
	adds r0, r4, #0
	bl sub_08316910
	adds r4, #1
	cmp r4, #18
	bls .L08309676
	movs r4, #24
.L08309698:
	adds r0, r4, #0
	mov r1, r8
	bl sub_08309E38
	lsls r0, r0, #24
	cmp r0, #0
	beq .L083096AC
	ldr r0, [sp, #52]
	bl sub_08309D50
.L083096AC:
	adds r0, r4, #0
	bl sub_08316910
	adds r4, #1
	cmp r4, #28
	bls .L08309698
	movs r4, #30
.L083096BA:
	adds r0, r4, #0
	mov r1, r9
	bl sub_08314AC4
	lsls r0, r0, #24
	cmp r0, #0
	beq .L083096CE
	adds r0, r5, #0
	bl sub_08309D50
.L083096CE:
	adds r0, r4, #0
	bl sub_08316910
	adds r4, #1
	cmp r4, #31
	bls .L083096BA
.L083096DA:
	add sp, #60
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x70812100
	.4byte 0x714170C1
	.4byte 0x32C81C02
	.4byte 0x60114902
	.4byte 0x490230D4
	.4byte 0x47706001
	.4byte 0x0830970D
	.4byte 0x08309E75

	.thumb
	.align 1, 0
	.global sub_0830970C
	.thumb_func
sub_0830970C:
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	movs r6, #0
	adds r0, #226
	ldrb r4, [r0, #0]
	adds r0, #1
	b .L0830973E
.L0830971C:
	adds r0, r4, #0
	mov r1, sp
	bl sub_082EA468
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08309736
	adds r0, r4, #0
	bl sub_08316F04
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08309738
.L08309736:
	movs r6, #1
.L08309738:
	adds r4, #1
	adds r0, r5, #0
	adds r0, #227
.L0830973E:
	ldrb r0, [r0, #0]
	cmp r4, r0
	ble .L0830971C
	cmp r6, #1
	bne .L08309756
	adds r0, r5, #0
	adds r0, #228
	ldrb r0, [r0, #0]
	movs r1, #0
	bl sub_08001DC8
	b .L08309768
.L08309756:
	adds r0, r5, #0
	adds r0, #228
	ldrb r0, [r0, #0]
	movs r1, #1
	bl sub_08001DC8
	adds r0, r5, #0
	bl sub_08309D50
.L08309768:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_08309770
	.thumb_func
sub_08309770:
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	strb r0, [r4, #5]
	adds r1, r4, #0
	adds r1, #200
	ldr r0, [pc, #52]
	str r0, [r1, #0]
	adds r1, #12
	ldr r0, [pc, #52]
	str r0, [r1, #0]
	adds r0, r4, #0
	adds r0, #226
	ldrb r0, [r0, #0]
	movs r1, #1
	bl sub_08001DC8
	adds r0, r4, #0
	adds r0, #227
	ldrb r0, [r0, #0]
	movs r1, #0
	bl sub_08001DC8
	adds r1, r4, #0
	adds r1, #228
	ldrb r2, [r1, #0]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #2
	strh r0, [r4, #26]
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083097C1
	.4byte 0x08309E75

	.thumb
	.align 1, 0
	.global sub_083097C0
	.thumb_func
sub_083097C0:
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldrh r1, [r5, #26]
	movs r2, #26
	ldrsh r0, [r5, r2]
	cmp r0, #0
	ble .L083097D4
	subs r0, r1, #1
	b .L083097FA
.L083097D4:
	adds r0, r5, #0
	adds r0, #226
	ldrb r0, [r0, #0]
	bl sub_08001DF4
	adds r0, r5, #0
	adds r0, #227
	ldrb r0, [r0, #0]
	bl sub_08001DF4
	movs r0, #5
	bl sub_083189D0
	adds r1, r5, #0
	adds r1, #228
	ldrb r2, [r1, #0]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #2
.L083097FA:
	strh r0, [r5, #26]
	ldr r0, [r5, #52]
	asrs r0, r0, #8
	ldr r1, [r5, #56]
	asrs r1, r1, #8
	ldr r3, [pc, #48]
	ldr r2, [r3, #52]
	asrs r2, r2, #8
	ldr r3, [r3, #56]
	asrs r3, r3, #8
	movs r4, #175
	lsls r4, r4, #2
	str r4, [sp, #0]
	bl sub_08000BB4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830982E
	adds r0, r5, #0
	bl sub_08309D50
	adds r0, r5, #0
	adds r0, #224
	ldrh r0, [r0, #0]
	bl sub_08316920
.L0830982E:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x0300250C

	.thumb
	.align 1, 0
	.global sub_0830983C
	.thumb_func
sub_0830983C:
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #22
	strb r0, [r4, #5]
	adds r1, r4, #0
	adds r1, #60
	movs r0, #46
	strb r0, [r1, #0]
	movs r0, #1
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	adds r5, r4, #0
	adds r5, #226
	ldrb r0, [r5, #0]
	cmp r0, #0
	bne .L0830986A
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #136]
	movs r2, #0
	movs r3, #0
	bl sub_080002E0
.L0830986A:
	ldrb r0, [r5, #0]
	cmp r0, #1
	bne .L0830987E
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #116]
	movs r2, #2
	movs r3, #0
	bl sub_080002E0
.L0830987E:
	ldrb r0, [r5, #0]
	cmp r0, #2
	bne .L08309892
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #96]
	movs r2, #4
	movs r3, #0
	bl sub_080002E0
.L08309892:
	ldrb r0, [r5, #0]
	cmp r0, #3
	bne .L083098A6
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #76]
	movs r2, #6
	movs r3, #0
	bl sub_080002E0
.L083098A6:
	ldrb r5, [r5, #0]
	cmp r5, #4
	bne .L083098BA
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #56]
	movs r2, #8
	movs r3, #0
	bl sub_080002E0
.L083098BA:
	ldr r0, [r4, #52]
	ldr r1, [r4, #56]
	movs r2, #1
	bl sub_08000A1C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L083098D8
	adds r0, r4, #0
	adds r0, #52
	adds r1, r4, #0
	adds r1, #56
	movs r2, #1
	bl sub_08000A70
.L083098D8:
	adds r1, r4, #0
	adds r1, #212
	ldr r0, [pc, #16]
	str r0, [r1, #0]
	subs r1, #12
	ldr r0, [pc, #16]
	str r0, [r1, #0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.4byte 0x081F71C0
	.4byte 0x08309E79
	.4byte 0x083098F9

	.thumb
	.align 1, 0
	.global sub_083098F8
	.thumb_func
sub_083098F8:
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r0, #226
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L0830992A
	ldr r0, [pc, #20]
	ldr r1, [r0, #52]
	ldr r0, [r5, #52]
	cmp r1, r0
	ble .L08309920
	adds r0, r5, #0
	adds r0, #100
	movs r1, #1
	bl sub_08000680
	b .L0830992A
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
.L08309920:
	adds r0, r5, #0
	adds r0, #100
	movs r1, #0
	bl sub_08000680
.L0830992A:
	adds r0, r5, #0
	adds r0, #226
	adds r6, r0, #0
	adds r4, r5, #0
	adds r4, #100
	ldrb r0, [r6, #0]
	cmp r0, #1
	bne .L0830995C
	ldr r0, [pc, #20]
	ldr r1, [r0, #52]
	ldr r0, [r5, #52]
	cmp r1, r0
	ble .L08309954
	adds r0, r4, #0
	movs r1, #3
	bl sub_08000680
	b .L0830995C
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
.L08309954:
	adds r0, r4, #0
	movs r1, #2
	bl sub_08000680
.L0830995C:
	ldrb r0, [r6, #0]
	cmp r0, #2
	bne .L08309984
	ldr r0, [pc, #20]
	ldr r1, [r0, #52]
	ldr r0, [r5, #52]
	cmp r1, r0
	ble .L0830997C
	adds r0, r4, #0
	movs r1, #5
	bl sub_08000680
	b .L08309984
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
.L0830997C:
	adds r0, r4, #0
	movs r1, #4
	bl sub_08000680
.L08309984:
	ldrb r0, [r6, #0]
	cmp r0, #3
	bne .L083099AC
	ldr r0, [pc, #20]
	ldr r1, [r0, #52]
	ldr r0, [r5, #52]
	cmp r1, r0
	ble .L083099A4
	adds r0, r4, #0
	movs r1, #7
	bl sub_08000680
	b .L083099AC
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
.L083099A4:
	adds r0, r4, #0
	movs r1, #6
	bl sub_08000680
.L083099AC:
	ldrb r6, [r6, #0]
	cmp r6, #4
	bne .L083099D4
	ldr r0, [pc, #20]
	ldr r1, [r0, #52]
	ldr r0, [r5, #52]
	cmp r1, r0
	ble .L083099CC
	adds r0, r4, #0
	movs r1, #9
	bl sub_08000680
	b .L083099D4
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
.L083099CC:
	adds r0, r4, #0
	movs r1, #8
	bl sub_08000680
.L083099D4:
	adds r0, r4, #0
	bl sub_08000704
	ldr r1, [r5, #52]
	asrs r1, r1, #8
	ldr r2, [r5, #56]
	asrs r2, r2, #8
	adds r0, r4, #0
	bl sub_083020A8
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083099FE
	adds r0, r5, #0
	adds r0, #224
	ldrh r0, [r0, #0]
	bl sub_08316920
	adds r0, r5, #0
	bl sub_08309D50
.L083099FE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_08309A04
	.thumb_func
sub_08309A04:
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	strb r1, [r4, #5]
	movs r0, #1
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	adds r0, r4, #0
	adds r0, #60
	strb r1, [r0, #0]
	adds r1, r4, #0
	adds r1, #212
	ldr r0, [pc, #56]
	str r0, [r1, #0]
	subs r1, #12
	ldr r0, [pc, #56]
	str r0, [r1, #0]
	ldr r1, [pc, #56]
	ldrh r0, [r1, #0]
	strh r0, [r4, #26]
	ldrh r2, [r1, #0]
	movs r0, #25
	movs r1, #18
	bl sub_08311500
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #40]
	movs r2, #7
	movs r3, #0
	bl sub_080002E0
	movs r0, #192
	lsls r0, r0, #8
	str r0, [r4, #52]
	movs r0, #152
	lsls r0, r0, #8
	str r0, [r4, #56]
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x08309EED
	.4byte 0x08309A69
	.4byte 0x030058F0
	.4byte 0x080BD530

	.thumb
	.align 1, 0
	.global sub_08309A68
	.thumb_func
sub_08309A68:
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [pc, #48]
	ldrh r0, [r5, #0]
	ldrh r1, [r4, #26]
	cmp r0, r1
	bne .L08309A7E
	ldr r0, [pc, #44]
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq .L08309A94
.L08309A7E:
	movs r0, #25
	movs r1, #18
	movs r2, #5
	movs r3, #1
	bl sub_080049D4
	ldrh r2, [r5, #0]
	movs r0, #25
	movs r1, #18
	bl sub_08311500
.L08309A94:
	ldr r0, [pc, #8]
	ldrh r0, [r0, #0]
	strh r0, [r4, #26]
	pop {r4, r5}
	pop {r0}
	bx r0
	.4byte 0x030058F0
	.4byte 0x030059DC

	.thumb
	.align 1, 0
	.global sub_08309AA8
	.thumb_func
sub_08309AA8:
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #30]
	movs r2, #30
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bgt .L08309AF4
	movs r1, #7
	strh r1, [r4, #30]
	ldrh r0, [r4, #28]
	adds r0, #1
	ands r0, r1
	strh r0, [r4, #28]
	ldrh r0, [r4, #32]
	subs r0, #1
	ands r0, r1
	strh r0, [r4, #32]
	ldr r3, [pc, #32]
	ldr r2, [pc, #32]
	movs r5, #32
	ldrsh r1, [r4, r5]
	lsls r1, r1, #1
	adds r1, r1, r2
	movs r5, #28
	ldrsh r0, [r4, r5]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0, #0]
	lsls r0, r0, #8
	ldrh r1, [r1, #0]
	orrs r0, r1
	strh r0, [r3, #0]
	b .L08309AF8
	movs r0, r0
	lsls r2, r2, #1
	lsls r0, r0, #16
	.2byte 0xb10c @ .raw cbz r4, 0x8309af6
	lsrs r5, r7, #32
.L08309AF4:
	subs r0, r1, #1
	strh r0, [r4, #30]
.L08309AF8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08309B00
	.thumb_func
sub_08309B00:
	push {r4, lr}
	adds r3, r0, #0
	ldrh r1, [r3, #26]
	movs r2, #26
	ldrsh r0, [r3, r2]
	cmp r0, #0
	ble .L08309B14
	subs r0, r1, #1
	strh r0, [r3, #26]
	b .L08309B52
.L08309B14:
	ldrh r2, [r3, #28]
	adds r1, r2, #0
	adds r1, #8
	lsls r1, r1, #16
	movs r0, #8
	subs r0, r0, r2
	lsls r0, r0, #24
	orrs r0, r1
	ldr r2, [pc, #48]
	movs r4, #137
	lsls r4, r4, #6
	adds r1, r4, #0
	strh r1, [r2, #0]
	ldr r1, [pc, #44]
	lsrs r0, r0, #16
	strh r0, [r1, #0]
	ldrh r0, [r3, #28]
	subs r0, #1
	movs r2, #0
	strh r0, [r3, #28]
	lsls r0, r0, #16
	cmp r0, #0
	bgt .L08309B52
	adds r0, r3, #0
	adds r0, #200
	ldr r1, [pc, #24]
	str r1, [r0, #0]
	movs r0, #7
	strh r0, [r3, #30]
	strh r2, [r3, #32]
	strh r2, [r3, #28]
.L08309B52:
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x04000050
	.4byte 0x04000052
	.4byte 0x08309AA9
	.4byte 0x20001C02
	.4byte 0x70907150
	.4byte 0x1C1170D0
	.4byte 0x480531D4
	.4byte 0x390C6008
	.4byte 0x60084804
	.4byte 0x83502028
	.4byte 0x83902008
	.4byte 0x00004770
	.4byte 0x08309E75
	.4byte 0x08309B01

	.thumb
	.align 1, 0
	.global sub_08309B90
	.thumb_func
sub_08309B90:
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	strb r0, [r4, #5]
	movs r0, #1
	strb r0, [r4, #1]
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	adds r3, r4, #0
	adds r3, #60
	movs r0, #51
	strb r0, [r3, #0]
	adds r3, #152
	ldr r0, [pc, #40]
	str r0, [r3, #0]
	subs r3, #12
	ldr r0, [pc, #36]
	str r0, [r3, #0]
	str r1, [r4, #52]
	str r2, [r4, #56]
	adds r4, #100
	ldr r1, [pc, #32]
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_080002E0
	adds r0, r4, #0
	movs r1, #1
	bl sub_0800078C
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x08309E79
	.4byte 0x08309C71
	.4byte 0x08200610

	.thumb
	.align 1, 0
	.global sub_08309BE0
	.thumb_func
sub_08309BE0:
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r0, #0
	strb r0, [r4, #5]
	movs r0, #1
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	adds r1, r4, #0
	adds r1, #60
	movs r0, #50
	strb r0, [r1, #0]
	adds r1, #152
	ldr r0, [pc, #52]
	str r0, [r1, #0]
	subs r1, #12
	ldr r0, [pc, #48]
	str r0, [r1, #0]
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #44]
	movs r2, #0
	movs r3, #0
	bl sub_080002E0
	mov r0, sp
	bl sub_08309CB0
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08309C28
	ldr r0, [sp, #0]
	ldr r1, [r4, #52]
	ldr r2, [r4, #56]
	bl sub_08309B90
.L08309C28:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x08309E79
	.4byte 0x08309C3D
	.4byte 0x081FE510

	.thumb
	.align 1, 0
	.global sub_08309C3C
	.thumb_func
sub_08309C3C:
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #100
	bl sub_08000704
	ldr r0, [r4, #52]
	asrs r0, r0, #8
	ldr r1, [r4, #56]
	asrs r1, r1, #8
	bl sub_08302078
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08309C68
	adds r0, r4, #0
	adds r0, #224
	ldrh r0, [r0, #0]
	bl sub_08316920
	adds r0, r4, #0
	bl sub_08309D50
.L08309C68:
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08309C70
	.thumb_func
sub_08309C70:
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #100
	bl sub_08000704
	ldr r0, [r4, #52]
	asrs r0, r0, #8
	ldr r1, [r4, #56]
	asrs r1, r1, #8
	bl sub_08302078
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08309C92
	adds r0, r4, #0
	bl sub_08309D50
.L08309C92:
	pop {r4}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_08309C98
	.thumb_func
sub_08309C98:
	movs r1, #0
	ldr r0, [pc, #16]
	movs r2, #0
	adds r0, #1
.L08309CA0:
	strb r2, [r0, #0]
	adds r0, #248
	adds r1, #1
	cmp r1, #15
	bls .L08309CA0
	bx lr
	.4byte 0x02004C80

	.thumb
	.align 1, 0
	.global sub_08309CB0
	.thumb_func
sub_08309CB0:
	adds r3, r0, #0
	movs r2, #0
	ldr r1, [pc, #12]
.L08309CB6:
	ldrb r0, [r1, #1]
	cmp r0, #0
	bne .L08309CC8
	str r1, [r3, #0]
	movs r0, #1
	b .L08309CD2
	movs r0, r0
	ldr r4, [pc, #512]
	lsls r0, r0, #8
.L08309CC8:
	adds r1, #248
	adds r2, #1
	cmp r2, #15
	bls .L08309CB6
	movs r0, #0
.L08309CD2:
	bx lr

	.thumb
	.align 1, 0
	.global sub_08309CD4
	.thumb_func
sub_08309CD4:
	push {r4, r5, r6, lr}
	movs r6, #0
	movs r5, #0
.L08309CDA:
	ldr r0, [pc, #64]
	adds r4, r5, r0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq .L08309D0C
	ldrb r0, [r4, #4]
	cmp r0, #0
	bne .L08309D0C
	adds r0, r4, #0
	adds r0, #216
	ldr r0, [r0, #0]
	cmp r0, #0
	beq .L08309D00
	adds r0, r4, #0
	adds r0, #220
	ldr r1, [r0, #0]
	adds r0, r4, #0
	bl sub_0831A7E8
.L08309D00:
	adds r0, r4, #0
	adds r0, #200
	ldr r1, [r0, #0]
	adds r0, r4, #0
	bl sub_0831A7E8
.L08309D0C:
	adds r5, #248
	adds r6, #1
	cmp r6, #15
	bls .L08309CDA
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x02004C80

	.thumb
	.align 1, 0
	.global sub_08309D20
	.thumb_func
sub_08309D20:
	push {r4, r5, lr}
	movs r5, #0
	movs r4, #0
.L08309D26:
	ldr r0, [pc, #36]
	adds r2, r4, r0
	ldrb r0, [r2, #1]
	cmp r0, #0
	beq .L08309D3C
	adds r0, r2, #0
	adds r0, #212
	ldr r1, [r0, #0]
	adds r0, r2, #0
	bl sub_0831A7E8
.L08309D3C:
	adds r4, #248
	adds r5, #1
	cmp r5, #15
	bls .L08309D26
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x02004C80

	.thumb
	.align 1, 0
	.global sub_08309D50
	.thumb_func
sub_08309D50:
	push {lr}
	adds r1, r0, #0
	movs r0, #0
	strb r0, [r1, #1]
	ldrb r0, [r1, #2]
	cmp r0, #0
	beq .L08309D66
	adds r0, r1, #0
	adds r0, #100
	bl sub_080005D4
.L08309D66:
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08309D6C
	.thumb_func
sub_08309D6C:
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r3, #0
	ldr r0, [pc, #40]
	movs r5, #1
	adds r2, r0, #0
	adds r2, #224
	adds r1, r0, #0
.L08309D7C:
	ldrb r0, [r1, #1]
	cmp r0, #0
	beq .L08309D8A
	ldrh r0, [r2, #0]
	cmp r0, r4
	bne .L08309D8A
	strb r5, [r1, #4]
.L08309D8A:
	adds r2, #248
	adds r1, #248
	adds r3, #1
	cmp r3, #16
	bne .L08309D7C
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x02004C80

	.thumb
	.align 1, 0
	.global sub_08309DA0
	.thumb_func
sub_08309DA0:
	movs r1, #0
	ldr r0, [pc, #16]
	movs r2, #0
	adds r0, #216
.L08309DA8:
	str r2, [r0, #0]
	adds r0, #248
	adds r1, #1
	cmp r1, #16
	bne .L08309DA8
	bx lr
	.4byte 0x02004C80

	.thumb
	.align 1, 0
	.global sub_08309DB8
	.thumb_func
sub_08309DB8:
	push {r4, lr}
	adds r4, r0, #0
	movs r3, #0
	ldr r0, [pc, #16]
	adds r2, r0, #0
	adds r2, #216
.L08309DC4:
	ldrh r0, [r2, #8]
	cmp r0, r4
	bne .L08309DD4
	str r1, [r2, #0]
	movs r0, #1
	b .L08309DDE
	ldr r4, [pc, #512]
	lsls r0, r0, #8
.L08309DD4:
	adds r2, #248
	adds r3, #1
	cmp r3, #16
	bne .L08309DC4
	movs r0, #0
.L08309DDE:
	pop {r4}
	pop {r1}
	bx r1

	.thumb
	.align 1, 0
	.global sub_08309DE4
	.thumb_func
sub_08309DE4:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	adds r7, r1, #0
	movs r6, #0
	movs r5, #0
.L08309DF2:
	ldr r0, [pc, #40]
	adds r4, r5, r0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq .L08309E24
	ldrb r0, [r4, #5]
	cmp r0, r7
	bne .L08309E24
	ldr r0, [pc, #28]
	adds r1, r4, #0
	movs r2, #0
	bl sub_08000D04
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08309E24
	mov r0, r8
	str r4, [r0, #0]
	movs r0, #1
	b .L08309E2E
	movs r0, r0
	ldr r4, [pc, #512]
	lsls r0, r0, #8
	movs r5, #12
	lsls r0, r0, #12
.L08309E24:
	adds r5, #248
	adds r6, #1
	cmp r6, #15
	bls .L08309DF2
	movs r0, #0
.L08309E2E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	.thumb
	.align 1, 0
	.global sub_08309E38
	.thumb_func
sub_08309E38:
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r1, #0
	ldr r0, [pc, #24]
	adds r3, r0, #0
	adds r3, #224
	adds r2, r0, #0
.L08309E48:
	ldrb r0, [r2, #1]
	cmp r0, #0
	beq .L08309E60
	ldrh r0, [r3, #0]
	cmp r0, r4
	bne .L08309E60
	str r2, [r5, #0]
	movs r0, #1
	b .L08309E6C
	movs r0, r0
	ldr r4, [pc, #512]
	lsls r0, r0, #8
.L08309E60:
	adds r3, #248
	adds r2, #248
	adds r1, #1
	cmp r1, #15
	bls .L08309E48
	movs r0, #0
.L08309E6C:
	pop {r4, r5}
	pop {r1}
	bx r1
	.2byte 0x0000
	.4byte 0x00004770

	.thumb
	.align 1, 0
	.global sub_08309E78
	.thumb_func
sub_08309E78:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #2]
	cmp r0, #0
	beq .L08309EE4
	ldrb r0, [r5, #3]
	cmp r0, #0
	beq .L08309ED4
	adds r4, r5, #0
	adds r4, #100
	ldr r1, [r5, #52]
	asrs r1, r1, #8
	ldr r2, [r5, #56]
	asrs r2, r2, #8
	adds r0, r4, #0
	bl sub_083020A8
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08309ECC
	adds r0, r4, #0
	bl sub_08000604
	ldr r1, [r5, #52]
	asrs r1, r1, #8
	ldr r3, [pc, #28]
	ldr r0, [r3, #8]
	subs r1, r1, r0
	ldr r2, [r5, #56]
	asrs r2, r2, #8
	ldr r0, [r3, #12]
	subs r2, r2, r0
	adds r0, r5, #0
	adds r0, #60
	ldrb r3, [r0, #0]
	adds r0, r4, #0
	bl sub_08000684
	b .L08309EDE
	movs r0, r0
	subs r0, #204
	lsls r0, r0, #12
.L08309ECC:
	adds r0, r4, #0
	bl sub_0800060C
	b .L08309EDE
.L08309ED4:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	bl sub_0800060C
.L08309EDE:
	adds r0, r4, #0
	bl Sprite_Draw
.L08309EE4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08309EEC
	.thumb_func
sub_08309EEC:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #2]
	cmp r0, #0
	beq .L08309F20
	ldrb r0, [r5, #3]
	cmp r0, #0
	beq .L08309F20
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	bl sub_08000604
	ldr r1, [r5, #52]
	asrs r1, r1, #8
	ldr r2, [r5, #56]
	asrs r2, r2, #8
	adds r0, r5, #0
	adds r0, #60
	ldrb r3, [r0, #0]
	adds r0, r4, #0
	bl sub_08000684
	adds r0, r4, #0
	bl Sprite_Draw
.L08309F20:
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08309F28
	.thumb_func
sub_08309F28:
	push {r4, r5, r6, r7, lr}
	sub sp, #24
	ldr r1, [pc, #48]
	mov r0, sp
	movs r2, #24
	bl memcpy
	ldr r0, [pc, #44]
	ldrh r0, [r0, #0]
	cmp r0, #0
	beq .L08309FDA
	movs r2, #1
	ldr r1, [pc, #36]
.L08309F42:
	ldrh r0, [r1, #2]
	strh r0, [r1, #0]
	adds r1, #2
	adds r2, #1
	cmp r2, #11
	bls .L08309F42
	ldr r0, [pc, #24]
	ldr r1, [pc, #16]
	ldrh r1, [r1, #0]
	strh r1, [r0, #22]
	movs r4, #0
.L08309F58:
	movs r5, #0
	movs r3, #0
	adds r6, r4, #1
	b .L08309F74
	.2byte 0xb338 @ .raw cbz r0, 0x8309fb2
	lsrs r5, r7, #32
	lsrs r2, r2, #20
	lsls r0, r0, #12
	subs r2, #28
	lsls r0, r0, #12
.L08309F6C:
	cmp r3, #11
	bne .L08309F72
	movs r5, #1
.L08309F72:
	adds r3, #1
.L08309F74:
	cmp r3, #11
	bhi .L08309F92
	ldr r2, [pc, #104]
	lsls r1, r3, #1
	adds r2, r1, r2
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r1, r1, r0
	mov r7, sp
	adds r0, r7, r1
	ldrh r2, [r2, #0]
	ldrh r0, [r0, #0]
	cmp r2, r0
	beq .L08309F6C
.L08309F92:
	cmp r5, #0
	beq .L08309FD4
	movs r0, #7
	bl sub_083189D0
	cmp r4, #0
	bne .L08309FC4
	ldr r4, [pc, #68]
	ldr r0, [r4, #0]
	adds r0, #1
	ldr r1, [pc, #68]
	bl strcmp
	cmp r0, #0
	bne .L08309FC4
	ldr r2, [pc, #60]
	ldrb r0, [r2, #0]
	cmp r0, #0
	bne .L08309FC4
	ldr r0, [r4, #0]
	ldrb r1, [r0, #0]
	adds r1, #1
	strb r1, [r0, #0]
	movs r0, #1
	strb r0, [r2, #0]
.L08309FC4:
	movs r1, #0
	movs r2, #0
	ldr r0, [pc, #24]
.L08309FCA:
	strh r2, [r0, #0]
	adds r0, #2
	adds r1, #1
	cmp r1, #11
	bls .L08309FCA
.L08309FD4:
	adds r4, r6, #0
	cmp r4, #0
	beq .L08309F58
.L08309FDA:
	add sp, #24
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x03003A1C
	.4byte 0x0200756C
	.4byte 0x083DB350
	.4byte 0x030059BD

	.thumb
	.align 1, 0
	.global sub_08309FF4
	.thumb_func
sub_08309FF4:
	ldr r0, [pc, #4]
	ldrb r0, [r0, #0]
	bx lr
	.2byte 0x0000
	.4byte 0x030059BC
