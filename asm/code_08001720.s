	.include "asm/macros.inc"
	.syntax unified
	.text

@ Bg_DrawLevelScreen: [sure] sets layer scroll to (x, y), redraws the visible 31x21 tiles of screenblock 0x0600F800 - layer*0x800 from 16x16 metatiles (near miss)
	.thumb
	.align 1, 0
	.global sub_08001720
	.thumb_func
sub_08001720:
	.global Bg_DrawLevelScreen
	.thumb_set Bg_DrawLevelScreen, sub_08001720
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #100
	mov r8, r0
	str r1, [sp, #0]
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r0, r1, #2
	str r0, [sp, #24]
	adds r0, #116
	add r0, r8
	str r0, [sp, #20]
	mov r4, r8
	adds r4, #4
	ldr r1, [sp, #24]
	adds r4, r4, r1
	ldr r1, [r4, #0]
	ldr r0, [r1, #0]
	lsls r2, r0, #3
	ldr r0, [r1, #4]
	lsls r0, r0, #3
	mov sl, r0
	mov r0, r8
	str r2, [sp, #88]
	bl sub_08001B94
	adds r0, #4
	str r0, [sp, #28]
	movs r3, #0
	ldr r0, [r4, #0]
	adds r0, #12
	str r0, [sp, #16]
	ldr r4, [sp, #0]
	lsls r4, r4, #1
	str r4, [sp, #32]
	ldr r0, [sp, #0]
	lsls r0, r0, #3
	mov ip, r0
	movs r1, #84
	add r1, r8
	mov r9, r1
	mov r7, r9
	add r7, ip
	str r5, [r7, #0]
	adds r1, r4, #0
	adds r1, #1
	lsls r1, r1, #2
	mov r4, r9
	adds r0, r4, r1
	str r6, [r0, #0]
	mov r4, r8
	adds r4, #52
	mov r0, ip
	adds r0, r4, r0
	str r0, [sp, #36]
	str r5, [r0, #0]
	adds r1, r4, r1
	str r6, [r1, #0]
	ldr r1, [sp, #20]
	ldrb r0, [r1, #0]
	ldr r2, [sp, #88]
	cmp r0, #0
	bne .L080017EE
	ldr r0, [r7, #0]
	cmp r0, #0
	bge .L080017B0
	str r3, [r7, #0]
	ldr r5, [sp, #36]
	str r3, [r5, #0]
.L080017B0:
	adds r1, r2, #0
	subs r1, #240
	ldr r0, [r7, #0]
	ldr r3, [sp, #24]
	str r3, [sp, #52]
	ldr r5, [sp, #32]
	str r5, [sp, #48]
	mov r6, r9
	adds r3, r4, #0
	ldr r4, [sp, #0]
	lsls r4, r4, #11
	mov r9, r4
	lsrs r5, r2, #3
	str r5, [sp, #68]
	mov r4, sl
	lsrs r4, r4, #3
	str r4, [sp, #80]
	mov r5, r8
	adds r5, #20
	str r5, [sp, #56]
	mov r4, r8
	adds r4, #36
	str r4, [sp, #76]
	cmp r0, r1
	blt .L0800183E
	adds r0, r2, #0
	subs r0, #241
	str r0, [r7, #0]
	ldr r5, [sp, #36]
	str r0, [r5, #0]
	b .L0800183E
.L080017EE:
	ldr r1, [r7, #0]
	ldr r0, [sp, #24]
	str r0, [sp, #52]
	ldr r3, [sp, #32]
	str r3, [sp, #48]
	mov r6, r9
	adds r3, r4, #0
	ldr r4, [sp, #0]
	lsls r4, r4, #11
	mov r9, r4
	lsrs r5, r2, #3
	str r5, [sp, #68]
	mov r0, sl
	lsrs r0, r0, #3
	str r0, [sp, #80]
	mov r4, r8
	adds r4, #20
	str r4, [sp, #56]
	mov r5, r8
	adds r5, #36
	str r5, [sp, #76]
	cmp r1, #0
	bge .L08001826
	adds r0, r7, #0
.L0800181E:
	adds r1, r1, r2
	cmp r1, #0
	blt .L0800181E
	str r1, [r0, #0]
.L08001826:
	mov r4, ip
	adds r5, r6, #0
	adds r0, r6, r4
	ldr r0, [r0, #0]
	cmp r0, r2
	blt .L0800183E
.L08001832:
	adds r1, r5, r4
	ldr r0, [r1, #0]
	subs r0, r0, r2
	str r0, [r1, #0]
	cmp r0, r2
	bge .L08001832
.L0800183E:
	ldr r0, [sp, #20]
	ldrb r1, [r0, #1]
	cmp r1, #0
	bne .L0800186E
	ldr r0, [sp, #48]
	adds r0, #1
	lsls r5, r0, #2
	adds r4, r6, r5
	ldr r0, [r4, #0]
	cmp r0, #0
	bge .L0800185A
	str r1, [r4, #0]
	adds r0, r3, r5
	str r1, [r0, #0]
.L0800185A:
	mov r1, sl
	subs r1, #160
	ldr r0, [r4, #0]
	cmp r0, r1
	blt .L080018B4
	subs r1, #1
	str r1, [r4, #0]
	adds r0, r3, r5
	str r1, [r0, #0]
	b .L080018B4
.L0800186E:
	ldr r2, [sp, #48]
	adds r0, r2, #0
	adds r0, #1
	lsls r0, r0, #2
	adds r4, r6, #0
	adds r0, r6, r0
	ldr r0, [r0, #0]
	cmp r0, #0
	bge .L08001890
.L08001880:
	adds r1, r2, #1
	lsls r1, r1, #2
	adds r1, r4, r1
	ldr r0, [r1, #0]
	add r0, sl
	str r0, [r1, #0]
	cmp r0, #0
	blt .L08001880
.L08001890:
	ldr r2, [sp, #48]
	adds r0, r2, #0
	adds r0, #1
	lsls r0, r0, #2
	adds r4, r6, #0
	adds r0, r6, r0
	ldr r0, [r0, #0]
	cmp r0, sl
	blt .L080018B4
.L080018A2:
	adds r1, r2, #1
	lsls r1, r1, #2
	adds r1, r4, r1
	ldr r0, [r1, #0]
	mov r5, sl
	subs r0, r0, r5
	str r0, [r1, #0]
	cmp r0, sl
	bge .L080018A2
.L080018B4:
	mov r4, ip
	adds r5, r3, #0
	adds r0, r3, r4
	ldr r0, [r0, #0]
	cmp r0, #0
	bge .L080018D0
	movs r2, #128
	lsls r2, r2, #1
.L080018C4:
	adds r1, r5, r4
	ldr r0, [r1, #0]
	adds r0, r0, r2
	str r0, [r1, #0]
	cmp r0, #0
	blt .L080018C4
.L080018D0:
	ldr r4, [sp, #48]
	adds r0, r4, #0
	adds r0, #1
	lsls r0, r0, #2
	adds r2, r3, #0
	adds r0, r3, r0
	ldr r0, [r0, #0]
	cmp r0, #0
	bge .L080018F6
	movs r5, #128
	lsls r5, r5, #1
.L080018E6:
	adds r1, r4, #1
	lsls r1, r1, #2
	adds r1, r2, r1
	ldr r0, [r1, #0]
	adds r0, r0, r5
	str r0, [r1, #0]
	cmp r0, #0
	blt .L080018E6
.L080018F6:
	mov r0, ip
	adds r4, r3, r0
	ldrb r0, [r4, #0]
	str r0, [r4, #0]
	ldr r2, [sp, #48]
	adds r2, #1
	lsls r2, r2, #2
	adds r3, r3, r2
	ldrb r0, [r3, #0]
	str r0, [r3, #0]
	ldr r5, [sp, #52]
	ldr r0, [pc, #272]
	adds r1, r5, r0
	ldr r0, [r4, #0]
	strh r0, [r1, #0]
	ldr r0, [pc, #268]
	adds r1, r5, r0
	ldr r0, [r3, #0]
	strh r0, [r1, #0]
	mov r1, ip
	adds r0, r6, r1
	ldr r0, [r0, #0]
	asrs r0, r0, #3
	str r0, [sp, #8]
	adds r2, r6, r2
	ldr r0, [r2, #0]
	asrs r1, r0, #3
	ldr r0, [r4, #0]
	asrs r7, r0, #3
	ldr r0, [r3, #0]
	asrs r3, r0, #3
	cmp r7, #0
	bge .L0800193A
	adds r7, #32
.L0800193A:
	cmp r3, #0
	bge .L08001940
	adds r3, #32
.L08001940:
	ldr r0, [pc, #228]
	mov r2, r9
	subs r2, r0, r2
	str r2, [sp, #4]
	str r7, [sp, #12]
	adds r0, r1, #0
	movs r1, #0
.L0800194E:
	ldr r7, [sp, #12]
	ldr r6, [sp, #8]
	ldr r4, [sp, #80]
	cmp r0, r4
	blt .L0800195A
	subs r0, r0, r4
.L0800195A:
	asrs r5, r0, #1
	str r5, [sp, #60]
	ldr r2, [sp, #68]
	lsrs r2, r2, #1
	str r2, [sp, #64]
	lsls r4, r3, #5
	str r4, [sp, #84]
	adds r3, #1
	str r3, [sp, #72]
	adds r5, r0, #1
	str r5, [sp, #44]
	adds r1, #1
	str r1, [sp, #40]
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #1
	mov sl, r0
	ldr r2, [sp, #52]
	mov r8, r2
	ldr r3, [sp, #76]
	add r3, r8
	mov r9, r3
	movs r3, #30
.L08001988:
	ldr r4, [sp, #68]
	cmp r6, r4
	blt .L08001990
	subs r6, r6, r4
.L08001990:
	ldr r5, [sp, #60]
	ldr r1, [sp, #64]
	adds r0, r5, #0
	muls r0, r1
	asrs r1, r6, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r2, [sp, #16]
	adds r0, r0, r2
	ldrh r0, [r0, #0]
	lsls r1, r0, #2
	adds r0, r6, #0
	movs r4, #1
	ands r0, r4
	adds r1, r1, r0
	add r1, sl
	lsls r1, r1, #1
	ldr r5, [sp, #28]
	adds r1, r1, r5
	ldrh r4, [r1, #0]
	ldr r0, [sp, #84]
	adds r5, r0, r7
	lsls r5, r5, #1
	ldr r1, [sp, #4]
	adds r5, r5, r1
	str r5, [sp, #96]
	ldrh r0, [r5, #0]
	str r3, [sp, #92]
	bl sub_0831AE58
	ldr r0, [pc, #92]
	ands r0, r4
	ldr r1, [sp, #56]
	add r1, r8
	ldr r1, [r1, #0]
	adds r1, #4
	mov r2, r9
	ldr r2, [r2, #0]
	mov ip, r2
	bl sub_0831AE48
	lsrs r4, r4, #4
	movs r5, #192
	lsls r5, r5, #4
	adds r1, r5, #0
	ands r4, r1
	orrs r4, r0
	ldr r0, [sp, #96]
	strh r4, [r0, #0]
	adds r7, #1
	movs r0, #31
	ands r7, r0
	adds r6, #1
	ldr r3, [sp, #92]
	subs r3, #1
	cmp r3, #0
	bge .L08001988
	adds r3, r0, #0
	ldr r1, [sp, #72]
	ands r3, r1
	ldr r0, [sp, #44]
	ldr r1, [sp, #40]
	cmp r1, #20
	ble .L0800194E
	add sp, #100
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.4byte 0x04000010
	.4byte 0x04000012
	.4byte 0x0600F800
	.4byte 0x00003FFF
