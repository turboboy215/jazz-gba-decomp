	.include "asm/macros.inc"
	.syntax unified
	.text

@ Link_Main: [sure] Tournament Single Pak entry: multiboot master sends the client image (header 080053A0, 0x13F40 bytes from 08005460), then Link_SendClientData and multi-player SIO setup (near miss)
	.thumb
	.align 1, 0
	.global sub_080034A4
	.thumb_func
sub_080034A4:
	.global Link_Main
	.thumb_set Link_Main, sub_080034A4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	bl sub_08002B50
	ldr r4, [pc, #104]
	ldr r0, [pc, #108]
	str r0, [r4, #40]
	adds r1, r4, #0
	adds r1, #75
	movs r0, #1
	strb r0, [r1, #0]
	adds r0, r4, #0
	bl sub_080023B0
	movs r0, #0
	str r0, [sp, #4]
	ldr r7, [pc, #88]
	movs r1, #1
	mov sl, r1
	mov r9, r4
.L080034D4:
	bl VBlankIntrWait
	mov r2, sl
	str r2, [r7, #0]
	movs r1, #1
	mov r3, r9
	ldrb r2, [r3, #29]
.L080034E2:
	adds r0, r2, #0
	asrs r0, r1
	mov r3, sl
	ands r0, r3
	cmp r0, #0
	beq .L08003502
	mov r3, r9
	ldrb r0, [r3, #30]
	asrs r0, r1
	mov r3, sl
	ands r0, r3
	cmp r0, #0
	beq .L08003502
	ldr r0, [r7, #0]
	adds r0, #1
	str r0, [r7, #0]
.L08003502:
	adds r1, #1
	cmp r1, #3
	bls .L080034E2
	ldr r0, [r7, #0]
	bl sub_08002A30
	ldr r0, [r7, #0]
	cmp r0, #1
	bne .L08003530
	movs r0, #4
	movs r1, #14
	ldr r2, [pc, #16]
	bl sub_08004914
	b .L0800353C
	lsrs r4, r1, #24
	lsls r0, r0, #12
	strh r0, [r4, r6]
	lsrs r0, r0, #32
	ldr r4, [r3, r2]
	lsls r0, r0, #12
	adds r2, #144
	lsrs r5, r7, #32
.L08003530:
	movs r0, #4
	movs r1, #14
	movs r2, #25
	movs r3, #0
	bl sub_080049D4
.L0800353C:
	ldr r1, [pc, #20]
	movs r0, #14
	ldrb r2, [r1, #30]
	ands r0, r2
	cmp r0, #0
	beq .L080035C8
	ldrb r0, [r1, #24]
	cmp r0, #0
	beq .L08003558
	cmp r0, #209
	beq .L080035A8
	b .L080035C8
	lsrs r4, r1, #24
	lsls r0, r0, #12
.L08003558:
	ldr r0, [pc, #40]
	ldr r1, [r0, #0]
	adds r1, #1
	str r1, [r0, #0]
	movs r0, #31
	ands r1, r0
	cmp r1, #16
	bls .L08003588
	movs r0, #0
	movs r1, #15
	movs r2, #25
	movs r3, #0
	bl sub_080049D4
	movs r0, #0
	movs r1, #16
	movs r2, #25
	movs r3, #0
	bl sub_080049D4
	b .L080035C8
	movs r0, r0
	ldr r0, [r5, r2]
	lsls r0, r0, #12
.L08003588:
	movs r0, #0
	movs r1, #15
	ldr r2, [pc, #16]
	bl sub_08004914
	movs r0, #0
	movs r1, #16
	ldr r2, [pc, #12]
	bl sub_08004914
	b .L080035C8
	movs r0, r0
	adds r2, #168
	lsrs r5, r7, #32
	adds r2, #200
	lsrs r5, r7, #32
.L080035A8:
	movs r0, #0
	movs r1, #16
	movs r2, #25
	movs r3, #0
	bl sub_080049D4
	movs r0, #0
	movs r1, #15
	ldr r2, [pc, #84]
	bl sub_08004914
	movs r0, #0
	movs r1, #16
	ldr r2, [pc, #80]
	bl sub_08004914
.L080035C8:
	ldr r3, [sp, #4]
	cmp r3, #0
	beq .L080035EE
	movs r0, #0
	movs r1, #16
	movs r2, #25
	movs r3, #0
	bl sub_080049D4
	movs r0, #0
	movs r1, #15
	ldr r2, [pc, #48]
	bl sub_08004914
	movs r0, #0
	movs r1, #16
	ldr r2, [pc, #40]
	bl sub_08004914
.L080035EE:
	ldr r4, [pc, #40]
	ldr r0, [pc, #40]
	adds r1, r4, #0
	bl sub_08002094
	ldrh r4, [r4, #0]
	movs r0, #2
	mov r8, r0
	movs r6, #2
	adds r0, r6, #0
	ands r0, r4
	cmp r0, #0
	beq .L08003620
	movs r0, #0
	bl sub_08002A30
	b .L08003742
	adds r2, #80
	lsrs r5, r7, #32
	adds r2, #112
	lsrs r5, r7, #32
	lsrs r2, r2, #20
	lsls r0, r0, #12
	lsrs r0, r2, #20
	lsls r0, r0, #12
.L08003620:
	movs r5, #8
	adds r0, r5, #0
	ands r0, r4
	cmp r0, #0
	beq .L0800369A
	ldr r4, [pc, #40]
	ldrb r0, [r4, #24]
	cmp r0, #0
	bne .L0800369A
	ldrb r0, [r4, #30]
	cmp r0, #0
	beq .L0800369A
	movs r1, #1
	str r1, [sp, #4]
	bl sub_08316824
	ldrb r1, [r4, #30]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq .L0800365C
	movs r0, #4
	ldr r2, [pc, #8]
	strb r0, [r2, #4]
	b .L0800367E
	movs r0, r0
	lsrs r4, r1, #24
	lsls r0, r0, #12
	lsrs r0, r7, #20
	lsls r0, r0, #12
.L0800365C:
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq .L08003670
	movs r0, #3
	ldr r3, [pc, #4]
	strb r0, [r3, #4]
	b .L0800367E
	lsrs r0, r7, #20
	lsls r0, r0, #12
.L08003670:
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq .L0800367E
	mov r0, r8
	ldr r1, [pc, #216]
	strb r0, [r1, #4]
.L0800367E:
	movs r0, #0
	movs r1, #15
	movs r2, #25
	movs r3, #0
	bl sub_080049D4
	movs r0, #4
	str r0, [sp, #0]
	ldr r0, [pc, #200]
	ldr r1, [pc, #200]
	ldr r2, [pc, #204]
	movs r3, #4
	bl sub_08002844
.L0800369A:
	mov r0, r9
	bl MultiBootMain
	mov r0, r9
	bl sub_080028E4
	cmp r0, #0
	bne .L080036AC
	b .L080034D4
.L080036AC:
	bl sub_08002144
	ldr r1, [pc, #176]
	movs r0, #0
	bl sub_08001FC8
	ldr r6, [pc, #172]
	movs r4, #0
	strh r4, [r6, #0]
	ldr r5, [pc, #172]
	strh r4, [r5, #0]
	ldr r1, [pc, #172]
	strh r4, [r1, #0]
	ldr r0, [pc, #172]
	strh r4, [r0, #0]
	strh r4, [r1, #0]
	strh r4, [r0, #0]
	strh r4, [r0, #0]
	adds r0, #2
	strh r4, [r0, #0]
	adds r0, #2
	strh r4, [r0, #0]
	adds r0, #2
	strh r4, [r0, #0]
	bl VBlankIntrWait
	bl VBlankIntrWait
	bl VBlankIntrWait
	bl sub_08002B50
	ldr r1, [pc, #136]
	movs r0, #1
	strh r0, [r1, #0]
	strh r4, [r6, #0]
	subs r1, #252
	ldr r2, [pc, #132]
	adds r0, r2, #0
	strh r0, [r1, #0]
	movs r3, #128
	lsls r3, r3, #6
	adds r0, r3, #0
	strh r0, [r5, #0]
	ldrh r0, [r5, #0]
	ldr r2, [pc, #120]
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r5, #0]
	bl VBlankIntrWait
	bl VBlankIntrWait
	movs r0, #6
	bl sub_08001FA0
	ldr r1, [pc, #100]
	movs r0, #6
	bl sub_08001FC8
	ldr r5, [pc, #44]
	movs r1, #0
	strb r4, [r5, #5]
	ldr r0, [pc, #92]
	str r1, [r0, #0]
	movs r0, #0
	bl sub_08002A30
	movs r0, #1
	negs r0, r0
	str r0, [r5, #0]
	ldr r1, [pc, #80]
	movs r0, #0
	bl sub_08001FC8
.L08003742:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x03000D38
	.4byte 0x03000E0C
	.4byte 0x08005460
	.4byte 0x00013F40
	.4byte 0x08001FF1
	.4byte 0x04000134
	.4byte 0x04000128
	.4byte 0x0400012A
	.4byte 0x04000120
	.4byte 0x04000208
	.4byte 0x000083E0
	.4byte 0x00004003
	.4byte 0x08003299
	.4byte 0x0300589C
	.4byte 0x080033CD
