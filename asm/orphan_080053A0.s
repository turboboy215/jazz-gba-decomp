	.include "asm/macros.inc"
	.syntax unified
	.text
	.incbin "baserom.gba", 0x53a0, 0xe0

	.arm
	.align 2, 0
	.global sub_08005480
sub_08005480:
	ldrh r1, [r0, #8]
	tst r1, #128
	.4byte 0x0afffffc @ beq 0x8005480
.L0800548C:
	ldrh r1, [r0, #8]
	tst r1, #128
	bne .L0800548C
	ldrh r1, [r0, #8]
	tst r1, #64
	bxne lr
	ldrh r1, [r0]
	bx lr
	.4byte 0xE59F0248
	.4byte 0xEBFFFFF2
	.4byte 0x1AFFFFFD
	.4byte 0xE3A02000
	.4byte 0xE1C020BA
	.4byte 0xE3510000
	.4byte 0x1AFFFFF9
	.4byte 0xE3A02902
	.4byte 0xE3A01000
	.4byte 0xE1C010BA
	.4byte 0xEBFFFFE9
	.4byte 0x1AFFFFF4
	.4byte 0xE1510002
	.4byte 0x1AFFFFF9
	.4byte 0xE1A022A2
	.4byte 0xE3510000
	.4byte 0x1AFFFFF7
	.4byte 0xE59F3208
	.4byte 0xE1D320B0
	.4byte 0xE1C020BA
	.4byte 0xEBFFFFDF
	.4byte 0x1AFFFFFE
	.4byte 0xE1510002
	.4byte 0x1AFFFFFC
	.4byte 0xE1D320B2
	.4byte 0xE1C020BA
	.4byte 0xEBFFFFD9
	.4byte 0x1AFFFFF8
	.4byte 0xE1510002
	.4byte 0x1AFFFFF6
	.4byte 0xE3A01000
	.4byte 0xE1C010BA
	.4byte 0xE3A00012
	.4byte 0xE129F000
	.4byte 0xE59FD1C8
	.4byte 0xE3A0001F
	.4byte 0xE129F000
	.4byte 0xE59FD1C0
	.4byte 0xE28F0001
	.4byte 0xE12FFF10
	.4byte 0xA025490C
	.4byte 0x20036008
	.4byte 0x490B0600
	.4byte 0xF836F000
	.4byte 0x4A0B490A
	.4byte 0xF0004C0B
	.4byte 0x490BF838
	.4byte 0x4C0C4A0B
	.4byte 0xF833F000
	.4byte 0x49024814
	.4byte 0x4700468E
	.4byte 0x46C046C0
	.4byte 0x0200018C
	.4byte 0x03007FFC
	.4byte 0x00007BF0
	.4byte 0x020133BC
	.4byte 0x03006FBC
	.4byte 0x030070B4
	.4byte 0x02012F00
	.4byte 0x03000000
	.4byte 0x030004BC
	.4byte 0x020134B4
	.4byte 0x020134B4
	.4byte 0x030070B4
	.4byte 0x020134B4
	.4byte 0x020134B4
	.4byte 0x020134B4
	.4byte 0x020134B4
	.4byte 0x020134B4
	.4byte 0x020134B4
	.4byte 0x020084DD

	.thumb
	.align 1, 0
	.global sub_080055C8
	.thumb_func
sub_080055C8:
	cmp r1, #0
	beq .L080055D4
	movs r2, #0
.L080055CE:
	stmia r0!, {r2}
	subs r1, #4
	bne .L080055CE
.L080055D4:
	bx lr

	.thumb
	.align 1, 0
	.global sub_080055D6
	.thumb_func
sub_080055D6:
	subs r3, r4, r2
	beq .L080055E2
.L080055DA:
	ldmia r1!, {r0}
	stmia r2!, {r0}
	subs r3, #4
	bne .L080055DA
.L080055E2:
	bx lr
	.4byte 0xE3A03301
	.4byte 0xE5B32200
	.4byte 0xE1D310B8
	.4byte 0xE14F0000
	.4byte 0xE92D400F
	.4byte 0xE3A00001
	.4byte 0xE1C300B8
	.4byte 0xE0021822
	.4byte 0xE59FC100
	.4byte 0xE2110001
	.4byte 0x1A000027
	.4byte 0xE28CC004
	.4byte 0xE2110002
	.4byte 0x1A000024
	.4byte 0xE28CC004
	.4byte 0xE2110004
	.4byte 0x1A000021
	.4byte 0xE28CC004
	.4byte 0xE2110008
	.4byte 0x1A00001E
	.4byte 0xE28CC004
	.4byte 0xE2110010
	.4byte 0x1A00001B
	.4byte 0xE28CC004
	.4byte 0xE2110020
	.4byte 0x1A000018
	.4byte 0xE28CC004
	.4byte 0xE2110040
	.4byte 0x1A000015
	.4byte 0xE28CC004
	.4byte 0xE2110080
	.4byte 0x1A000012
	.4byte 0xE2822004
	.4byte 0xE2110C01
	.4byte 0x1A00000F
	.4byte 0xE28CC004
	.4byte 0xE2110C02
	.4byte 0x1A00000C
	.4byte 0xE28CC004
	.4byte 0xE2110B01
	.4byte 0x1A000009
	.4byte 0xE28CC004
	.4byte 0xE2110B02
	.4byte 0x1A000006
	.4byte 0xE28CC004
	.4byte 0xE2110A01
	.4byte 0x1A000003
	.4byte 0xE28CC004
	.4byte 0xE2110A02
	.4byte 0x1543017C
	.4byte 0x1AFFFFFE
	.4byte 0xE1C300B2
	.4byte 0xE10F3000
	.4byte 0xE3C330DF
	.4byte 0xE383301F
	.4byte 0xE129F003
	.4byte 0xE59C0000
	.4byte 0xE92D4000
	.4byte 0xE28FE000
	.4byte 0xE12FFF10
	.4byte 0xE8BD4000
	.4byte 0xE10F3000
	.4byte 0xE3C330DF
	.4byte 0xE3833092
	.4byte 0xE129F003
	.4byte 0xE8BD400F
	.4byte 0xE1C320B0
	.4byte 0xE1C310B8
	.4byte 0xE169F000
	.4byte 0xE12FFF1E
	.4byte 0x04000120
	.4byte 0x020000AC
	.4byte 0x03007FA0
	.4byte 0x03007C00
	.4byte 0x03006FD0

	.thumb
	.align 1, 0
	.global sub_08005710
	.thumb_func
sub_08005710:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #12
	adds r5, r0, #0
	mov r8, r1
	str r2, [sp, #8]
	mov r9, r3
	mov r0, r8
	adds r1, r2, #0
	bl sub_08005BAC
	str r0, [sp, #4]
	mov r0, r8
	str r0, [r5, #48]
	movs r0, #0
	str r0, [r5, #12]
	adds r0, r5, #0
	ldr r1, [sp, #8]
	bl sub_08005A94
	adds r0, r5, #0
	mov r1, r9
	bl sub_08005A70
	ldr r4, [pc, #148]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08005B44
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08005B4C
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08005B48
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08005B70
	adds r0, r5, #0
	bl sub_08005A18
	movs r4, #0
	ldr r1, [sp, #4]
	ldrh r1, [r1, #2]
	cmp r4, r1
	bcs .L08005800
	mov sl, r4
	adds r6, r5, #0
	adds r6, #52
.L0800577E:
	mov r0, r8
	ldr r1, [sp, #8]
	mov r2, r9
	adds r3, r4, #0
	bl sub_08005BBC
	ldr r1, [pc, #84]
	ldrh r0, [r0, #4]
	ands r1, r0
	ldr r7, [pc, #76]
	cmp r1, r7
	beq .L080057E4
	mov r0, r8
	ldr r1, [sp, #8]
	mov r2, r9
	adds r3, r4, #0
	bl sub_08005BDC
	ldrh r1, [r0, #0]
	ldrh r2, [r0, #2]
	ldrb r7, [r0, #12]
	lsls r3, r7, #31
	lsrs r3, r3, #31
	adds r0, #16
	str r0, [sp, #0]
	adds r0, r6, #0
	bl sub_0800E220
	lsls r0, r0, #24
	cmp r0, #0
	bne .L080057F0
	adds r3, r4, #0
	cmp r3, #11
	bhi .L080057D2
	adds r0, r5, #0
	adds r0, #52
	add r0, sl
	movs r1, #0
.L080057CA:
	adds r3, #1
	cmp r3, #11
	bls .L080057CA
	str r1, [r0, #0]
.L080057D2:
	adds r0, r5, #0
	bl sub_080059E8
	movs r0, #0
	b .L08005816
	.2byte 0xffff @ .raw
	movs r0, r0
	subs r7, #255
	movs r0, r0
.L080057E4:
	lsls r0, r4, #2
	adds r1, r5, #0
	adds r1, #52
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1, #0]
.L080057F0:
	movs r0, #4
	add sl, r0
	adds r6, #4
	adds r4, #1
	ldr r1, [sp, #4]
	ldrh r1, [r1, #2]
	cmp r4, r1
	bcc .L0800577E
.L08005800:
	cmp r4, #11
	bhi .L08005814
	movs r1, #0
	lsls r0, r4, #2
	adds r0, #52
	adds r0, r0, r5
.L0800580C:
	stmia r0!, {r1}
	adds r4, #1
	cmp r4, #11
	bls .L0800580C
.L08005814:
	movs r0, #1
.L08005816:
	add sp, #12
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08005828
	.thumb_func
sub_08005828:
	str r1, [r0, #48]
	movs r1, #0
	strh r1, [r0, #8]
	strh r1, [r0, #10]
	str r1, [r0, #12]
	bx lr

	.thumb
	.align 1, 0
	.global sub_08005834
	.thumb_func
sub_08005834:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #16
	adds r6, r0, #0
	bl sub_08005A58
	str r0, [sp, #4]
	ldrb r0, [r6, #0]
	cmp r0, #0
	bne .L08005866
	movs r7, #0
	adds r4, r6, #0
	adds r4, #52
.L08005854:
	ldmia r4!, {r0}
	cmp r0, #0
	beq .L0800585E
	bl sub_0800E3E4
.L0800585E:
	adds r7, #1
	cmp r7, #11
	bls .L08005854
	b .L080059D6
.L08005866:
	movs r7, #0
	ldr r0, [sp, #4]
	ldrh r0, [r0, #2]
	cmp r7, r0
	bcc .L08005872
	b .L080059AC
.L08005872:
	adds r1, r6, #0
	adds r1, #52
	str r1, [sp, #8]
	movs r2, #0
	str r2, [sp, #12]
.L0800587C:
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_08005A28
	adds r4, r0, #0
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_08005A40
	mov sl, r0
	ldr r1, [pc, #40]
	adds r0, r1, #0
	mov r3, sl
	ldrh r3, [r3, #4]
	ands r0, r3
	cmp r0, r1
	bne .L080058C0
	adds r0, r6, #0
	adds r0, #52
	ldr r5, [sp, #12]
	adds r4, r0, r5
	ldr r0, [r4, #0]
	cmp r0, #0
	beq .L08005994
	adds r0, r5, #0
	adds r0, #52
	adds r0, r6, r0
	bl sub_0800E320
	movs r0, #0
	str r0, [r4, #0]
	b .L08005994
	subs r7, #255
	movs r0, r0
.L080058C0:
	adds r0, r6, #0
	adds r0, #52
	ldr r1, [sp, #12]
	adds r1, r1, r0
	mov r8, r1
	ldr r5, [r1, #0]
	mov r9, r0
	cmp r5, #0
	bne .L0800590A
	ldrh r1, [r4, #0]
	ldrh r2, [r4, #2]
	ldrb r5, [r4, #12]
	lsls r3, r5, #31
	lsrs r3, r3, #31
	adds r0, r4, #0
	adds r0, #16
	str r0, [sp, #0]
	ldr r0, [sp, #8]
	bl sub_0800E220
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08005920
	adds r1, r7, #0
	cmp r1, #11
	bhi .L08005900
	mov r0, r8
	movs r2, #0
.L080058F8:
	adds r1, #1
	cmp r1, #11
	bls .L080058F8
	str r2, [r0, #0]
.L08005900:
	adds r0, r6, #0
	bl sub_080059E8
	movs r0, #0
	b .L080059D8
.L0800590A:
	ldrh r1, [r4, #0]
	ldrh r2, [r4, #2]
	ldrb r0, [r4, #12]
	lsls r3, r0, #31
	lsrs r3, r3, #31
	adds r0, r4, #0
	adds r0, #16
	str r0, [sp, #0]
	adds r0, r5, #0
	bl sub_0800E34C
.L08005920:
	ldrb r2, [r4, #12]
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	bne .L0800595C
	lsls r0, r7, #1
	adds r1, r6, #0
	adds r1, #22
	adds r1, r1, r0
	ldr r0, [pc, #24]
	ldrh r3, [r1, #0]
	cmp r3, r0
	bne .L08005950
	ldr r0, [sp, #12]
	add r0, r9
	ldr r0, [r0, #0]
	lsls r1, r2, #27
	lsrs r1, r1, #28
	bl sub_0800E384
	b .L0800595C
	movs r0, r0
	.2byte 0xffff @ .raw
	movs r0, r0
.L08005950:
	ldr r0, [sp, #12]
	add r0, r9
	ldr r0, [r0, #0]
	ldrh r1, [r1, #0]
	bl sub_0800E384
.L0800595C:
	ldr r4, [sp, #12]
	add r4, r9
	ldr r0, [r4, #0]
	mov r5, sl
	ldrb r2, [r5, #5]
	lsls r1, r2, #25
	lsrs r1, r1, #31
	lsrs r2, r2, #7
	bl sub_0800E390
	ldr r0, [r4, #0]
	movs r2, #2
	ldrsh r1, [r6, r2]
	movs r3, #0
	ldrsh r2, [r5, r3]
	subs r1, r1, r2
	movs r5, #4
	ldrsh r2, [r6, r5]
	mov r3, sl
	movs r5, #2
	ldrsh r3, [r3, r5]
	subs r2, r2, r3
	ldrb r3, [r6, #6]
	bl sub_0800E39C
	ldr r0, [r4, #0]
	bl sub_0800E3DC
.L08005994:
	ldr r5, [sp, #8]
	adds r5, #4
	str r5, [sp, #8]
	ldr r0, [sp, #12]
	adds r0, #4
	str r0, [sp, #12]
	adds r7, #1
	ldr r1, [sp, #4]
	ldrh r1, [r1, #2]
	cmp r7, r1
	bcs .L080059AC
	b .L0800587C
.L080059AC:
	cmp r7, #11
	bhi .L080059D6
	lsls r0, r7, #2
	adds r0, #52
	adds r5, r0, r6
.L080059B6:
	lsls r0, r7, #2
	adds r1, r6, #0
	adds r1, #52
	adds r4, r1, r0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq .L080059CE
	adds r0, r5, #0
	bl sub_0800E320
	movs r0, #0
	str r0, [r4, #0]
.L080059CE:
	adds r5, #4
	adds r7, #1
	cmp r7, #11
	bls .L080059B6
.L080059D6:
	movs r0, #1
.L080059D8:
	add sp, #16
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	.thumb
	.align 1, 0
	.global sub_080059E8
	.thumb_func
sub_080059E8:
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r6, #0
	adds r5, r7, #0
	adds r5, #52
.L080059F2:
	lsls r0, r6, #2
	adds r1, r7, #0
	adds r1, #52
	adds r4, r1, r0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq .L08005A06
	adds r0, r5, #0
	bl sub_0800E320
.L08005A06:
	movs r0, #0
	str r0, [r4, #0]
	adds r5, #4
	adds r6, #1
	cmp r6, #11
	bls .L080059F2
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_08005A18
	.thumb_func
sub_08005A18:
	movs r1, #1
	strb r1, [r0, #0]
	bx lr
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08005A20
	.thumb_func
sub_08005A20:
	movs r1, #0
	strb r1, [r0, #0]
	bx lr
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08005A28
	.thumb_func
sub_08005A28:
	push {r4, lr}
	adds r3, r1, #0
	ldr r4, [r0, #48]
	ldrh r1, [r0, #8]
	ldrh r2, [r0, #10]
	adds r0, r4, #0
	bl sub_08005BDC
	pop {r4}
	pop {r1}
	bx r1
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08005A40
	.thumb_func
sub_08005A40:
	push {r4, lr}
	adds r3, r1, #0
	ldr r4, [r0, #48]
	ldrh r1, [r0, #8]
	ldrh r2, [r0, #10]
	adds r0, r4, #0
	bl sub_08005BBC
	pop {r4}
	pop {r1}
	bx r1
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08005A58
	.thumb_func
sub_08005A58:
	push {lr}
	ldr r2, [r0, #48]
	ldrh r1, [r0, #8]
	adds r0, r2, #0
	bl sub_08005BAC
	pop {r1}
	bx r1

	.thumb
	.align 1, 0
	.global sub_08005A68
	.thumb_func
sub_08005A68:
	movs r1, #0
	str r1, [r0, #12]
	bx lr
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08005A70
	.thumb_func
sub_08005A70:
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl sub_08005C24
	cmp r4, r0
	bls .L08005A86
	adds r0, r5, #0
	bl sub_08005C24
	adds r4, r0, #0
.L08005A86:
	movs r0, #0
	strh r4, [r5, #10]
	str r0, [r5, #12]
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08005A94
	.thumb_func
sub_08005A94:
	strh r1, [r0, #8]
	bx lr

	.thumb
	.align 1, 0
	.global sub_08005A98
	.thumb_func
sub_08005A98:
	strh r1, [r0, #2]
	strh r2, [r0, #4]
	strb r3, [r0, #6]
	bx lr

	.thumb
	.align 1, 0
	.global sub_08005AA0
	.thumb_func
sub_08005AA0:
	push {r4, lr}
	ldrh r4, [r0, #2]
	adds r1, r4, r1
	strh r1, [r0, #2]
	ldrh r1, [r0, #4]
	adds r2, r1, r2
	strh r2, [r0, #4]
	lsls r3, r3, #24
	asrs r3, r3, #24
	ldrb r4, [r0, #6]
	adds r3, r4, r3
	strb r3, [r0, #6]
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08005AC0
	.thumb_func
sub_08005AC0:
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08005A68
	adds r0, r4, #0
	bl sub_08005C48
	strh r0, [r4, #10]
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08005AD8
	.thumb_func
sub_08005AD8:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #12]
	adds r0, #1
	str r0, [r5, #12]
	adds r0, r5, #0
	bl sub_08005C00
	ldr r1, [r5, #12]
	cmp r1, r0
	bcc .L08005AF8
	movs r0, #0
	str r0, [r5, #12]
	ldrh r0, [r5, #10]
	adds r0, #1
	strh r0, [r5, #10]
.L08005AF8:
	ldrh r4, [r5, #10]
	adds r0, r5, #0
	bl sub_08005C24
	cmp r4, r0
	bhi .L08005B08
	movs r0, #1
	b .L08005B12
.L08005B08:
	adds r0, r5, #0
	bl sub_08005C24
	strh r0, [r5, #10]
	movs r0, #0
.L08005B12:
	pop {r4, r5}
	pop {r1}
	bx r1

	.thumb
	.align 1, 0
	.global sub_08005B18
	.thumb_func
sub_08005B18:
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08005AD8
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08005B2A
	movs r0, #1
	b .L08005B32
.L08005B2A:
	adds r0, r4, #0
	bl sub_08005AC0
	movs r0, #0
.L08005B32:
	pop {r4}
	pop {r1}
	bx r1

	.thumb
	.align 1, 0
	.global sub_08005B38
	.thumb_func
sub_08005B38:
	push {lr}
	bl sub_08005C24
	pop {r1}
	bx r1
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08005B44
	.thumb_func
sub_08005B44:
	strh r1, [r0, #16]
	bx lr

	.thumb
	.align 1, 0
	.global sub_08005B48
	.thumb_func
sub_08005B48:
	strh r1, [r0, #20]
	bx lr

	.thumb
	.align 1, 0
	.global sub_08005B4C
	.thumb_func
sub_08005B4C:
	strh r1, [r0, #18]
	bx lr

	.thumb
	.align 1, 0
	.global sub_08005B50
	.thumb_func
sub_08005B50:
	adds r3, r0, #0
	cmp r2, #15
	bls .L08005B5E
	ldr r0, [pc, #20]
	cmp r2, r0
	beq .L08005B5E
	movs r2, #15
.L08005B5E:
	lsls r1, r1, #1
	adds r0, r3, #0
	adds r0, #22
	adds r0, r0, r1
	strh r2, [r0, #0]
	bx lr
	.2byte 0x0000
	.4byte 0x0000FFFF

	.thumb
	.align 1, 0
	.global sub_08005B70
	.thumb_func
sub_08005B70:
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	cmp r5, #15
	bls .L08005B82
	ldr r0, [pc, #32]
	cmp r5, r0
	beq .L08005B82
	movs r5, #15
.L08005B82:
	movs r4, #0
.L08005B84:
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_08005B50
	adds r4, #1
	cmp r4, #11
	bls .L08005B84
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x0000FFFF

	.thumb
	.align 1, 0
	.global sub_08005BA0
	.thumb_func
sub_08005BA0:
	ldrh r0, [r0, #8]
	bx lr

	.thumb
	.align 1, 0
	.global sub_08005BA4
	.thumb_func
sub_08005BA4:
	ldrh r0, [r0, #10]
	bx lr

	.thumb
	.align 1, 0
	.global sub_08005BA8
	.thumb_func
sub_08005BA8:
	ldr r0, [r0, #12]
	bx lr

	.thumb
	.align 1, 0
	.global sub_08005BAC
	.thumb_func
sub_08005BAC:
	ldr r2, [r0, #4]
	adds r0, r0, r2
	adds r0, #4
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1, #0]
	adds r0, r0, r1
	bx lr

	.thumb
	.align 1, 0
	.global sub_08005BBC
	.thumb_func
sub_08005BBC:
	push {r4, r5, lr}
	adds r4, r2, #0
	adds r5, r3, #0
	bl sub_08005BAC
	ldrh r2, [r0, #2]
	adds r1, r2, #0
	muls r1, r4
	adds r1, r1, r5
	lsls r1, r1, #3
	adds r1, #4
	adds r0, r0, r1
	pop {r4, r5}
	pop {r1}
	bx r1
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08005BDC
	.thumb_func
sub_08005BDC:
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08005BBC
	ldr r1, [r4, #0]
	adds r4, r4, r1
	adds r4, #4
	ldrh r0, [r0, #4]
	lsls r0, r0, #18
	lsrs r0, r0, #16
	adds r0, r0, r4
	ldr r0, [r0, #0]
	adds r4, r4, r0
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08005C00
	.thumb_func
sub_08005C00:
	push {lr}
	adds r1, r0, #0
	ldr r0, [pc, #8]
	ldrh r2, [r1, #16]
	cmp r2, r0
	beq .L08005C14
	ldrh r0, [r1, #16]
	b .L08005C1E
	.2byte 0xffff @ .raw
	movs r0, r0
.L08005C14:
	adds r0, r1, #0
	movs r1, #0
	bl sub_08005A40
	ldrh r0, [r0, #6]
.L08005C1E:
	pop {r1}
	bx r1
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08005C24
	.thumb_func
sub_08005C24:
	push {lr}
	adds r1, r0, #0
	ldr r0, [pc, #8]
	ldrh r2, [r1, #20]
	cmp r2, r0
	beq .L08005C38
	ldrh r0, [r1, #20]
	b .L08005C42
	.2byte 0xffff @ .raw
	movs r0, r0
.L08005C38:
	adds r0, r1, #0
	bl sub_08005A58
	ldrh r0, [r0, #0]
	subs r0, #1
.L08005C42:
	pop {r1}
	bx r1
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08005C48
	.thumb_func
sub_08005C48:
	adds r1, r0, #0
	ldr r0, [pc, #12]
	ldrh r2, [r1, #18]
	cmp r2, r0
	beq .L08005C5C
	ldrh r0, [r1, #18]
	b .L08005C5E
	movs r0, r0
	.2byte 0xffff @ .raw
	movs r0, r0
.L08005C5C:
	movs r0, #0
.L08005C5E:
	bx lr

	.thumb
	.align 1, 0
	.global sub_08005C60
	.thumb_func
sub_08005C60:
	movs r1, #0
	movs r2, #0
	ldr r0, [pc, #20]
.L08005C66:
	strb r2, [r0, #2]
	strb r1, [r0, #0]
	adds r0, #148
	adds r1, #1
	cmp r1, #20
	bne .L08005C66
	movs r1, #0
	ldr r0, [pc, #8]
	strb r1, [r0, #0]
	bx lr
	.2byte 0x0000
	.4byte 0x0300065C
	.4byte 0x030011EC

	.thumb
	.align 1, 0
	.global sub_08005C84
	.thumb_func
sub_08005C84:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [pc, #8]
	adds r3, r0, #0
	ldrb r0, [r3, #0]
	cmp r0, #19
	bls .L08005CA6
	b .L08005CC0
	asrs r4, r5, #7
	lsls r0, r0, #12
.L08005C98:
	ldrb r0, [r3, #0]
	adds r0, #1
	strb r0, [r3, #0]
	movs r0, #1
	strb r0, [r1, #2]
	str r1, [r5, #0]
	b .L08005CC2
.L08005CA6:
	ldr r0, [pc, #32]
	adds r2, r0, #2
	adds r1, r0, #0
	movs r0, #185
	lsls r0, r0, #4
	adds r4, r1, r0
.L08005CB2:
	ldrb r0, [r2, #0]
	adds r2, #148
	cmp r0, #0
	beq .L08005C98
	adds r1, #148
	cmp r1, r4
	bne .L08005CB2
.L08005CC0:
	movs r0, #0
.L08005CC2:
	pop {r4, r5}
	pop {r1}
	bx r1
	.4byte 0x0300065C

	.thumb
	.align 1, 0
	.global sub_08005CCC
	.thumb_func
sub_08005CCC:
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #2]
	cmp r0, #0
	beq .L08005CF0
	movs r0, #0
	strb r0, [r1, #2]
	ldrb r0, [r1, #3]
	cmp r0, #0
	beq .L08005CE8
	adds r0, r1, #0
	adds r0, #36
	bl sub_080059E8
.L08005CE8:
	ldr r1, [pc, #8]
	ldrb r0, [r1, #0]
	subs r0, #1
	strb r0, [r1, #0]
.L08005CF0:
	pop {r0}
	bx r0
	.4byte 0x030011EC

	.thumb
	.align 1, 0
	.global sub_08005CF8
	.thumb_func
sub_08005CF8:
	push {r4, lr}
	movs r4, #0
.L08005CFC:
	movs r0, #148
	adds r1, r4, #0
	muls r1, r0
	ldr r0, [pc, #32]
	adds r2, r1, r0
	ldrb r0, [r2, #2]
	cmp r0, #1
	bne .L08005D18
	adds r0, r2, #0
	adds r0, #136
	ldr r1, [r0, #0]
	adds r0, r2, #0
	bl sub_08012328
.L08005D18:
	adds r4, #1
	cmp r4, #20
	bne .L08005CFC
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x0300065C

	.thumb
	.align 1, 0
	.global sub_08005D28
	.thumb_func
sub_08005D28:
	push {r4, r5, r6, r7, lr}
	movs r6, #0
	ldr r7, [pc, #80]
.L08005D2E:
	movs r0, #148
	adds r1, r6, #0
	muls r1, r0
	ldr r0, [pc, #76]
	adds r5, r1, r0
	ldrb r0, [r5, #2]
	cmp r0, #0
	beq .L08005D98
	ldrb r0, [r5, #3]
	cmp r0, #0
	beq .L08005D98
	ldrb r0, [r5, #4]
	cmp r0, #0
	beq .L08005D98
	ldr r0, [r5, #16]
	asrs r0, r0, #8
	ldr r1, [r5, #20]
	asrs r1, r1, #8
	bl sub_080061E4
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08005D88
	adds r4, r5, #0
	adds r4, #36
	adds r0, r4, #0
	bl sub_08005A18
	ldr r1, [r5, #16]
	asrs r1, r1, #8
	ldr r0, [r7, #8]
	subs r1, r1, r0
	ldr r2, [r5, #20]
	asrs r2, r2, #8
	ldr r0, [r7, #12]
	subs r2, r2, r0
	ldrb r3, [r5, #12]
	adds r0, r4, #0
	bl sub_08005A98
	b .L08005D92
	asrs r0, r6, #7
	lsls r0, r0, #12
	lsls r4, r3, #25
	lsls r0, r0, #12
.L08005D88:
	adds r4, r5, #0
	adds r4, #36
	adds r0, r4, #0
	bl sub_08005A20
.L08005D92:
	adds r0, r4, #0
	bl sub_08005834
.L08005D98:
	adds r6, #1
	cmp r6, #20
	bne .L08005D2E
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_08005DA4
	.thumb_func
sub_08005DA4:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #12
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, [pc, #384]
	movs r7, #0
	str r7, [r0, #0]
	ldr r0, [pc, #384]
	str r7, [r0, #0]
	ldr r0, [pc, #384]
	mov r9, r0
	ldr r1, [pc, #384]
	mov sl, r1
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #2
	mov r8, r0
	add r0, sl
	ldrb r2, [r0, #29]
	mov r0, r9
	movs r1, #1
	bl sub_08006C04
	mov r0, sl
	adds r0, #16
	add r0, r8
	ldr r2, [r0, #0]
	mov r0, r9
	movs r1, #1
	bl sub_08006C34
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
	bge .L08005E12
	str r7, [r6, #8]
.L08005E12:
	ldr r0, [r6, #8]
	ldr r1, [r6, #24]
	cmp r0, r1
	ble .L08005E1C
	str r1, [r6, #8]
.L08005E1C:
	ldr r0, [r6, #12]
	ldr r1, [r6, #36]
	cmp r0, r1
	bge .L08005E26
	str r1, [r6, #12]
.L08005E26:
	ldr r0, [r6, #12]
	ldr r1, [r6, #28]
	cmp r0, r1
	ble .L08005E30
	str r1, [r6, #12]
.L08005E30:
	str r7, [r6, #16]
	str r7, [r6, #20]
	mov r0, r9
	movs r1, #0
	bl sub_08006BB0
	movs r7, #0
	str r6, [sp, #4]
	mov r6, sl
	mov r1, r8
	str r1, [sp, #8]
	ldr r0, [sp, #4]
	adds r0, #140
	mov sl, r0
.L08005E4C:
	ldr r4, [sp, #4]
	adds r4, #88
	adds r4, r7, r4
	ldr r1, [sp, #8]
	adds r5, r7, r1
	adds r0, r6, #0
	adds r0, #8
	adds r0, r5, r0
	ldrb r3, [r0, #0]
	strb r3, [r4, #0]
	adds r0, r6, #0
	adds r0, #52
	adds r0, r5, r0
	ldr r1, [pc, #228]
	ldr r2, [sp, #0]
	ands r2, r1
	ldrb r0, [r0, #0]
	orrs r2, r0
	str r2, [sp, #0]
	adds r0, r6, #0
	adds r0, #56
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
	adds r0, #32
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
	bl sub_08007378
	ldrb r4, [r4, #0]
	cmp r4, #1
	bne .L08005F14
	adds r0, r7, #0
	bl sub_08006074
	adds r0, r6, #0
	adds r0, #36
	add r0, r8
	ldrh r1, [r0, #0]
	adds r0, r6, #0
	adds r0, #44
	add r0, r8
	ldrh r2, [r0, #0]
	adds r0, r7, #0
	bl sub_080060A0
	lsls r4, r7, #24
	lsrs r4, r4, #24
	adds r0, r6, #0
	adds r0, #28
	adds r0, r5, r0
	ldrb r2, [r0, #0]
	mov r0, r9
	adds r1, r4, #0
	bl sub_08006C04
	lsls r5, r7, #2
	ldr r1, [sp, #8]
	adds r0, r5, r1
	ldr r1, [pc, #116]
	adds r0, r0, r1
	ldr r2, [r0, #0]
	mov r0, r9
	adds r1, r4, #0
	bl sub_08006C34
	adds r0, r7, #0
	bl sub_080060C0
	ldr r0, [sp, #4]
	adds r0, #124
	adds r5, r5, r0
	ldr r2, [r5, #0]
	mov r0, sl
	ldr r3, [r0, #0]
	mov r0, r9
	adds r1, r7, #0
	bl sub_08007040
	movs r1, #0
	str r1, [r5, #0]
	mov r0, sl
	str r1, [r0, #0]
.L08005F14:
	movs r1, #4
	add sl, r1
	movs r0, #2
	add r8, r0
	adds r7, #1
	cmp r7, #4
	bne .L08005E4C
	ldr r0, [pc, #28]
	bl sub_080073BC
	add sp, #12
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.4byte 0x03006FBC
	.4byte 0x03006FC0
	.4byte 0x030012B0
	.4byte 0x020115B8
	.4byte 0x030011F0
	.4byte 0xFFFFFF00
	.4byte 0xFFFF00FF
	.4byte 0xFF00FFFF
	.4byte 0x00FFFFFF
	.4byte 0x020115C4

	.thumb
	.align 1, 0
	.global sub_08005F60
	.thumb_func
sub_08005F60:
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
.L08005F74:
	adds r7, r5, #0
	adds r7, #88
	adds r0, r4, r7
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne .L08005F94
	lsls r0, r4, #2
	adds r1, r5, #0
	adds r1, #124
	adds r0, r0, r1
	ldr r2, [r0, #0]
	ldr r3, [r6, #0]
	ldr r0, [pc, #116]
	adds r1, r4, #0
	bl sub_08006D24
.L08005F94:
	adds r6, #4
	adds r4, #1
	cmp r4, #4
	bne .L08005F74
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
	bge .L08005FBA
	str r0, [r2, #8]
.L08005FBA:
	ldr r0, [r2, #8]
	ldr r1, [r2, #24]
	cmp r0, r1
	ble .L08005FC4
	str r1, [r2, #8]
.L08005FC4:
	ldr r0, [r2, #12]
	ldr r1, [r2, #36]
	cmp r0, r1
	bge .L08005FCE
	str r1, [r2, #12]
.L08005FCE:
	ldr r0, [r5, #28]
	adds r1, r0, #0
	adds r1, #48
	ldr r0, [r5, #12]
	cmp r0, r1
	ble .L08005FDC
	str r1, [r5, #12]
.L08005FDC:
	movs r5, #0
	adds r4, r7, #0
.L08005FE0:
	ldrb r0, [r4, #0]
	adds r4, #1
	cmp r0, #1
	bne .L08005FEE
	adds r0, r5, #0
	bl sub_080060C0
.L08005FEE:
	adds r5, #1
	cmp r5, #4
	bne .L08005FE0
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.4byte 0x030011F0
	.4byte 0x030012B0
	.4byte 0x61884901
	.4byte 0x00004770
	.4byte 0x030011F0
	.4byte 0x62084901
	.4byte 0x00004770
	.4byte 0x030011F0
	.4byte 0x61C84901
	.4byte 0x00004770
	.4byte 0x030011F0
	.4byte 0x62484901
	.4byte 0x00004770
	.4byte 0x030011F0
	.4byte 0x68C24803
	.4byte 0x68816242
	.4byte 0x61816201
	.4byte 0x477061C2
	.4byte 0x030011F0
	.4byte 0x48084907
	.4byte 0x68106882
	.4byte 0x38F000C0
	.4byte 0x68506188
	.4byte 0x38D000C0
	.4byte 0x200061C8
	.4byte 0x62486208
	.4byte 0x00004770
	.4byte 0x030011F0
	.4byte 0x030012B0

	.thumb
	.align 1, 0
	.global sub_08006074
	.thumb_func
sub_08006074:
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
	.4byte 0x030011F0

	.thumb
	.align 1, 0
	.global sub_080060A0
	.thumb_func
sub_080060A0:
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
	.4byte 0x030011F0

	.thumb
	.align 1, 0
	.global sub_080060C0
	.thumb_func
sub_080060C0:
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
	ble .L08006142
	mov r3, r8
	ldr r2, [pc, #176]
.L0800612E:
	adds r1, r4, r5
	ldr r0, [r1, #0]
	adds r0, #1
	str r0, [r1, #0]
	adds r1, r4, r3
	ldr r0, [r1, #0]
	adds r0, r0, r2
	str r0, [r1, #0]
	cmp r0, #255
	bgt .L0800612E
.L08006142:
	ldr r5, [pc, #152]
	lsls r2, r6, #2
	adds r1, r5, #0
	adds r1, #92
	adds r0, r2, r1
	ldr r0, [r0, #0]
	ldr r3, [pc, #144]
	adds r4, r2, #0
	cmp r0, r3
	bgt .L08006174
	adds r7, r5, #0
	adds r7, #124
	adds r6, r1, #0
	movs r5, #128
	lsls r5, r5, #1
.L08006160:
	adds r1, r2, r7
	ldr r0, [r1, #0]
	subs r0, #1
	str r0, [r1, #0]
	adds r1, r2, r6
	ldr r0, [r1, #0]
	adds r0, r0, r5
	str r0, [r1, #0]
	cmp r0, r3
	ble .L08006160
.L08006174:
	ldr r3, [pc, #100]
	adds r2, r4, #0
	adds r1, r3, #0
	adds r1, #108
	adds r0, r4, r1
	ldr r0, [r0, #0]
	cmp r0, #255
	ble .L080061A0
	adds r6, r3, #0
	adds r6, #140
	adds r5, r1, #0
	ldr r3, [pc, #84]
.L0800618C:
	adds r1, r2, r6
	ldr r0, [r1, #0]
	adds r0, #1
	str r0, [r1, #0]
	adds r1, r2, r5
	ldr r0, [r1, #0]
	adds r0, r0, r3
	str r0, [r1, #0]
	cmp r0, #255
	bgt .L0800618C
.L080061A0:
	ldr r5, [pc, #56]
	adds r2, r4, #0
	adds r1, r5, #0
	adds r1, #108
	adds r0, r2, r1
	ldr r0, [r0, #0]
	ldr r3, [pc, #48]
	cmp r0, r3
	bgt .L080061D0
	adds r6, r5, #0
	adds r6, #140
	adds r5, r1, #0
	movs r4, #128
	lsls r4, r4, #1
.L080061BC:
	adds r1, r2, r6
	ldr r0, [r1, #0]
	subs r0, #1
	str r0, [r1, #0]
	adds r1, r2, r5
	ldr r0, [r1, #0]
	adds r0, r0, r4
	str r0, [r1, #0]
	cmp r0, r3
	ble .L080061BC
.L080061D0:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x030011F0
	.4byte 0xFFFFFF00

	.thumb
	.align 1, 0
	.global sub_080061E4
	.thumb_func
sub_080061E4:
	ldr r3, [pc, #24]
	ldr r2, [r3, #8]
	subs r0, r0, r2
	ldr r2, [r3, #12]
	subs r1, r1, r2
	movs r2, #0
	cmp r0, #239
	bhi .L080061FA
	cmp r1, #159
	bhi .L080061FA
	movs r2, #1
.L080061FA:
	adds r0, r2, #0
	bx lr
	.2byte 0x0000
	.4byte 0x030011F0

	.thumb
	.align 1, 0
	.global sub_08006204
	.thumb_func
sub_08006204:
	ldr r3, [pc, #40]
	ldr r2, [r3, #8]
	subs r0, r0, r2
	ldr r2, [r3, #12]
	subs r2, r1, r2
	movs r3, #0
	adds r0, #240
	movs r1, #180
	lsls r1, r1, #2
	cmp r0, r1
	bhi .L0800622C
	movs r0, #160
	negs r0, r0
	cmp r2, r0
	blt .L0800622C
	movs r0, #160
	lsls r0, r0, #1
	cmp r2, r0
	bgt .L0800622C
	movs r3, #1
.L0800622C:
	adds r0, r3, #0
	bx lr
	.4byte 0x030011F0

	.thumb
	.align 1, 0
	.global sub_08006234
	.thumb_func
sub_08006234:
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
	bl sub_080061E4
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08006258
.L08006254:
	movs r0, #1
	b .L080062E6
.L08006258:
	mov r0, r9
	bl sub_08005A58
	ldrh r0, [r0, #2]
	mov sl, r0
	movs r0, #0
	mov r8, r0
	cmp r8, sl
	beq .L080062E4
.L0800626A:
	mov r0, r9
	mov r1, r8
	bl sub_08005A40
	adds r4, r0, #0
	ldr r0, [pc, #128]
	ldrh r1, [r4, #4]
	ands r0, r1
	ldr r2, [pc, #124]
	cmp r0, r2
	beq .L080062DC
	mov r0, r9
	mov r1, r8
	bl sub_08005A28
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
	bl sub_080061E4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08006254
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_080061E4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08006254
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_080061E4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08006254
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_080061E4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08006254
.L080062DC:
	movs r0, #1
	add r8, r0
	cmp r8, sl
	bne .L0800626A
.L080062E4:
	movs r0, #0
.L080062E6:
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
	.global sub_080062FC
	.thumb_func
sub_080062FC:
	push {lr}
	adds r3, r0, #0
	adds r2, r1, #0
	ldr r0, [pc, #20]
	lsrs r3, r3, #3
	lsrs r2, r2, #3
	adds r1, r3, #0
	bl sub_08012964
	lsls r0, r0, #16
	lsrs r0, r0, #16
	pop {r1}
	bx r1
	.2byte 0x0000
	.4byte 0x030012B0

	.thumb
	.align 1, 0
	.global sub_0800631C
	.thumb_func
sub_0800631C:
	push {lr}
	bl sub_080062FC
	adds r1, r0, #0
	movs r0, #15
	ands r0, r1
	pop {r1}
	bx r1

	.thumb
	.align 1, 0
	.global sub_0800632C
	.thumb_func
sub_0800632C:
	cmp r0, #0
	blt .L08006334
	movs r0, #1
	b .L08006338
.L08006334:
	movs r0, #1
	negs r0, r0
.L08006338:
	bx lr
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_0800633C
	.thumb_func
sub_0800633C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	mov r8, r0
	mov r9, r1
	adds r7, r2, #0
	adds r4, r3, #0
	ldr r5, [sp, #28]
	ldr r6, [sp, #32]
	cmp r4, #0
	bne .L08006358
	movs r4, #1
	negs r4, r4
.L08006358:
	cmp r5, #0
	bne .L08006360
	movs r5, #1
	negs r5, r5
.L08006360:
	cmp r6, #0
	bne .L08006366
	movs r6, #1
.L08006366:
	adds r0, r7, #0
	bl sub_0800632C
	cmp r0, #1
	bne .L08006376
	b .L080063A2
.L08006372:
	movs r0, #1
	b .L080063A4
.L08006376:
	mov r0, r8
	asrs r1, r0, #8
	adds r4, r1, r4
	mov r2, r9
	adds r0, r2, r7
	asrs r0, r0, #8
	adds r7, r0, r5
	adds r0, r1, r6
	cmp r4, r0
	bge .L080063A2
	adds r5, r0, #0
.L0800638C:
	adds r0, r4, #0
	adds r1, r7, #0
	bl sub_0800631C
	lsls r0, r0, #16
	lsrs r0, r0, #16
	cmp r0, #10
	beq .L08006372
	adds r4, #8
	cmp r4, r5
	blt .L0800638C
.L080063A2:
	movs r0, #0
.L080063A4:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	.thumb
	.align 1, 0
	.global sub_080063B0
	.thumb_func
sub_080063B0:
	lsls r0, r0, #16
	movs r1, #0
	ldr r2, [pc, #12]
	adds r0, r0, r2
	lsrs r0, r0, #16
	cmp r0, #8
	bhi .L080063C0
	movs r1, #1
.L080063C0:
	adds r0, r1, #0
	bx lr
	.4byte 0xFFFF0000

	.thumb
	.align 1, 0
	.global sub_080063C8
	.thumb_func
sub_080063C8:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	mov r9, r0
	mov sl, r1
	mov r8, r2
	adds r4, r3, #0
	ldr r6, [sp, #32]
	ldr r5, [sp, #36]
	ldr r7, [sp, #40]
	cmp r4, #0
	bne .L080063E8
	movs r4, #1
	negs r4, r4
.L080063E8:
	cmp r6, #0
	bne .L080063F0
	movs r6, #1
	negs r6, r6
.L080063F0:
	cmp r5, #0
	bne .L080063F6
	movs r5, #1
.L080063F6:
	cmp r7, #0
	bne .L080063FC
	movs r7, #1
.L080063FC:
	mov r0, r8
	bl sub_0800632C
	adds r3, r4, #0
	cmp r0, #1
	bne .L0800640A
	adds r3, r5, #0
.L0800640A:
	mov r0, r9
	add r0, r8
	asrs r0, r0, #8
	adds r0, r0, r3
	mov r8, r0
	mov r1, sl
	asrs r0, r1, #8
	adds r4, r0, r6
	adds r1, r0, r7
	adds r5, r0, #0
	cmp r4, r1
	bge .L0800643E
.L08006422:
	mov r0, r8
	adds r1, r4, #0
	bl sub_0800631C
	lsls r0, r0, #16
	lsrs r0, r0, #16
	cmp r0, #10
	bne .L08006436
	movs r0, #1
	b .L08006440
.L08006436:
	adds r4, #8
	adds r0, r5, r7
	cmp r4, r0
	blt .L08006422
.L0800643E:
	movs r0, #0
.L08006440:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08006450
	.thumb_func
sub_08006450:
	push {r4, r5, r6, lr}
	adds r6, r2, #0
	asrs r5, r0, #8
	asrs r4, r1, #8
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0800631C
	lsls r0, r0, #16
	lsrs r0, r0, #16
	bl sub_080063B0
	cmp r0, #0
	bne .L0800648A
	cmp r6, #0
	beq .L08006486
	adds r4, #8
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0800631C
	lsls r0, r0, #16
	lsrs r0, r0, #16
	bl sub_080063B0
	cmp r0, #0
	bne .L0800648A
.L08006486:
	movs r0, #0
	b .L0800648C
.L0800648A:
	movs r0, #1
.L0800648C:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08006494
	.thumb_func
sub_08006494:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r1
	adds r7, r2, #0
	ldr r0, [r0, #0]
	asrs r6, r0, #8
	ldr r0, [r1, #0]
	asrs r4, r0, #8
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_0800631C
	lsls r0, r0, #16
	lsrs r5, r0, #16
	adds r0, r5, #0
	bl sub_080063B0
	cmp r0, #0
	bne .L080064E8
	cmp r7, #0
	beq .L0800650E
	adds r4, #8
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_0800631C
	lsls r0, r0, #16
	lsrs r5, r0, #16
	adds r0, r5, #0
	bl sub_080063B0
	cmp r0, #0
	beq .L0800650E
	b .L080064E8
.L080064DA:
	subs r4, #8
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_0800631C
	lsls r0, r0, #16
	lsrs r5, r0, #16
.L080064E8:
	cmp r5, #9
	beq .L080064DA
	adds r0, r4, #0
	adds r0, #8
	movs r1, #8
	negs r1, r1
	ands r0, r1
	subs r4, r0, #1
	ldr r1, [pc, #28]
	movs r0, #7
	ands r6, r0
	lsls r0, r5, #3
	adds r0, r6, r0
	adds r0, r0, r1
	ldrb r0, [r0, #0]
	subs r4, r4, r0
	lsls r0, r4, #8
	mov r1, r8
	str r0, [r1, #0]
.L0800650E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.4byte 0x0200FF1C

	.thumb
	.align 1, 0
	.global sub_0800651C
	.thumb_func
sub_0800651C:
	push {lr}
	asrs r0, r0, #8
	asrs r1, r1, #8
	asrs r2, r2, #8
	asrs r3, r3, #8
	subs r0, r0, r2
	adds r2, r0, #0
	muls r2, r0
	adds r0, r2, #0
	subs r1, r1, r3
	adds r2, r1, #0
	muls r2, r1
	adds r1, r2, #0
	adds r0, r0, r1
	bl sub_0800F230
	lsls r0, r0, #16
	lsrs r0, r0, #16
	pop {r1}
	bx r1

	.thumb
	.align 1, 0
	.global sub_08006544
	.thumb_func
sub_08006544:
	push {r4, r5, lr}
	ldr r4, [sp, #12]
	movs r5, #0
	subs r2, r2, r0
	cmp r2, #0
	bge .L08006552
	negs r2, r2
.L08006552:
	cmp r2, r4
	bgt .L08006564
	subs r1, r3, r1
	cmp r1, #0
	bge .L0800655E
	negs r1, r1
.L0800655E:
	cmp r1, r4
	bgt .L08006564
	movs r5, #1
.L08006564:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	.thumb
	.align 1, 0
	.global sub_0800656C
	.thumb_func
sub_0800656C:
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #0
	cmp r4, r2
	ble .L08006588
	ldr r0, [sp, #12]
	cmp r4, r0
	bge .L08006588
	cmp r1, r3
	ble .L08006588
	ldr r0, [sp, #16]
	cmp r1, r0
	bge .L08006588
	movs r5, #1
.L08006588:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	.thumb
	.align 1, 0
	.global sub_08006590
	.thumb_func
sub_08006590:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #44
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, [r4, #44]
	asrs r0, r0, #8
	str r0, [sp, #0]
	ldr r0, [r4, #48]
	asrs r0, r0, #8
	str r0, [sp, #4]
	ldr r0, [r5, #44]
	asrs r0, r0, #8
	str r0, [sp, #8]
	ldr r0, [r5, #48]
	asrs r0, r0, #8
	str r0, [sp, #12]
	adds r0, r4, #0
	adds r0, #84
	str r0, [sp, #16]
	adds r1, #84
	str r1, [sp, #20]
	bl sub_08005A58
	ldrh r0, [r0, #2]
	str r0, [sp, #24]
	ldr r0, [sp, #20]
	bl sub_08005A58
	ldrh r0, [r0, #2]
	str r0, [sp, #28]
	adds r4, #38
	ldrb r0, [r4, #0]
	cmp r0, #0
	bne .L080065DE
	b .L0800673C
.L080065DE:
	adds r0, r5, #0
	adds r0, #38
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L080065EE
	b .L0800673C
.L080065EA:
	movs r0, #1
	b .L0800673E
.L080065EE:
	movs r2, #0
	b .L08006732
.L080065F2:
	ldr r0, [sp, #16]
	ldr r1, [sp, #32]
	bl sub_08005A40
	adds r4, r0, #0
	ldr r0, [pc, #80]
	ldrh r5, [r4, #4]
	ands r0, r5
	ldr r7, [pc, #76]
	cmp r0, r7
	bne .L0800660A
	b .L0800672E
.L0800660A:
	ldr r0, [sp, #16]
	ldr r1, [sp, #32]
	bl sub_08005A28
	adds r3, r0, #0
	movs r1, #4
	ldrsh r0, [r3, r1]
	movs r2, #1
	negs r2, r2
	cmp r0, r2
	bne .L08006622
	b .L0800672E
.L08006622:
	movs r0, #64
	ldrb r5, [r4, #5]
	ands r0, r5
	cmp r0, #0
	beq .L08006654
	movs r7, #0
	ldrsh r2, [r4, r7]
	ldr r0, [sp, #0]
	subs r2, r0, r2
	ldrh r5, [r3, #0]
	lsls r1, r5, #3
	movs r7, #8
	ldrsh r0, [r3, r7]
	subs r0, r1, r0
	adds r0, r2, r0
	str r0, [sp, #40]
	movs r5, #4
	ldrsh r0, [r3, r5]
	subs r1, r1, r0
	adds r2, r2, r1
	mov sl, r2
	b .L0800666E
	movs r0, r0
	subs r7, #255
	movs r0, r0
.L08006654:
	movs r7, #0
	ldrsh r0, [r4, r7]
	ldr r1, [sp, #0]
	subs r0, r1, r0
	movs r2, #4
	ldrsh r1, [r3, r2]
	adds r0, r0, r1
	str r0, [sp, #40]
	movs r5, #8
	ldrsh r0, [r3, r5]
	ldr r7, [sp, #40]
	adds r0, r0, r7
	mov sl, r0
.L0800666E:
	movs r1, #2
	ldrsh r0, [r4, r1]
	ldr r2, [sp, #4]
	subs r0, r2, r0
	movs r4, #6
	ldrsh r1, [r3, r4]
	adds r0, r0, r1
	mov r8, r0
	movs r5, #10
	ldrsh r0, [r3, r5]
	add r0, r8
	str r0, [sp, #36]
	movs r6, #0
	ldr r7, [sp, #28]
	cmp r6, r7
	beq .L0800672E
	ldr r0, [pc, #84]
	mov r9, r0
.L08006692:
	ldr r0, [sp, #20]
	adds r1, r6, #0
	bl sub_08005A40
	adds r4, r0, #0
	mov r0, r9
	ldrh r1, [r4, #4]
	ands r0, r1
	cmp r0, r9
	beq .L08006726
	ldr r0, [sp, #20]
	adds r1, r6, #0
	bl sub_08005A28
	adds r3, r0, #0
	movs r2, #4
	ldrsh r0, [r3, r2]
	movs r5, #1
	negs r5, r5
	cmp r0, r5
	beq .L08006726
	movs r0, #64
	ldrb r7, [r4, #5]
	ands r0, r7
	cmp r0, #0
	beq .L080066E8
	movs r0, #0
	ldrsh r2, [r4, r0]
	ldr r1, [sp, #8]
	subs r2, r1, r2
	ldrh r5, [r3, #0]
	lsls r1, r5, #3
	movs r7, #8
	ldrsh r0, [r3, r7]
	subs r0, r1, r0
	adds r5, r2, r0
	movs r7, #4
	ldrsh r0, [r3, r7]
	subs r1, r1, r0
	adds r2, r2, r1
	b .L080066FC
	subs r7, #255
	movs r0, r0
.L080066E8:
	movs r1, #0
	ldrsh r0, [r4, r1]
	ldr r2, [sp, #8]
	subs r0, r2, r0
	movs r5, #4
	ldrsh r1, [r3, r5]
	adds r5, r0, r1
	movs r7, #8
	ldrsh r0, [r3, r7]
	adds r2, r5, r0
.L080066FC:
	movs r1, #2
	ldrsh r0, [r4, r1]
	ldr r4, [sp, #12]
	subs r0, r4, r0
	movs r7, #4
	ldrsh r1, [r3, r7]
	adds r1, r0, r1
	movs r4, #10
	ldrsh r0, [r3, r4]
	adds r0, r1, r0
	cmp r8, r0
	bgt .L08006726
	ldr r7, [sp, #36]
	cmp r7, r1
	blt .L08006726
	ldr r0, [sp, #40]
	cmp r0, r2
	bgt .L08006726
	cmp sl, r5
	blt .L08006726
	b .L080065EA
.L08006726:
	adds r6, #1
	ldr r1, [sp, #28]
	cmp r6, r1
	bne .L08006692
.L0800672E:
	ldr r2, [sp, #32]
	adds r2, #1
.L08006732:
	str r2, [sp, #32]
	ldr r4, [sp, #24]
	cmp r2, r4
	beq .L0800673C
	b .L080065F2
.L0800673C:
	movs r0, #0
.L0800673E:
	add sp, #44
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08006750
	.thumb_func
sub_08006750:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #44
	ldr r2, [r0, #12]
	asrs r2, r2, #8
	str r2, [sp, #0]
	ldr r2, [r0, #16]
	asrs r2, r2, #8
	str r2, [sp, #4]
	ldr r2, [r1, #44]
	asrs r2, r2, #8
	str r2, [sp, #8]
	ldr r2, [r1, #48]
	asrs r2, r2, #8
	str r2, [sp, #12]
	adds r0, #24
	str r0, [sp, #16]
	adds r1, #84
	str r1, [sp, #20]
	bl sub_08005A58
	ldrh r0, [r0, #2]
	str r0, [sp, #24]
	ldr r0, [sp, #20]
	bl sub_08005A58
	ldrh r0, [r0, #2]
	str r0, [sp, #28]
	movs r0, #0
	str r0, [sp, #32]
	ldr r1, [sp, #24]
	cmp r0, r1
	bne .L0800679A
	b .L080068E6
.L0800679A:
	ldr r0, [sp, #16]
	ldr r1, [sp, #32]
	bl sub_08005A40
	adds r4, r0, #0
	ldr r0, [pc, #80]
	ldrh r2, [r4, #4]
	ands r0, r2
	ldr r5, [pc, #76]
	cmp r0, r5
	bne .L080067B2
	b .L080068D8
.L080067B2:
	ldr r0, [sp, #16]
	ldr r1, [sp, #32]
	bl sub_08005A28
	adds r3, r0, #0
	movs r7, #4
	ldrsh r0, [r3, r7]
	movs r1, #1
	negs r1, r1
	cmp r0, r1
	bne .L080067CA
	b .L080068D8
.L080067CA:
	movs r0, #64
	ldrb r2, [r4, #5]
	ands r0, r2
	cmp r0, #0
	beq .L080067FC
	movs r5, #0
	ldrsh r2, [r4, r5]
	ldr r7, [sp, #0]
	subs r2, r7, r2
	ldrh r0, [r3, #0]
	lsls r1, r0, #3
	movs r5, #8
	ldrsh r0, [r3, r5]
	subs r0, r1, r0
	adds r0, r2, r0
	str r0, [sp, #40]
	movs r7, #4
	ldrsh r0, [r3, r7]
	subs r1, r1, r0
	adds r2, r2, r1
	mov sl, r2
	b .L08006816
	movs r0, r0
	subs r7, #255
	movs r0, r0
.L080067FC:
	movs r1, #0
	ldrsh r0, [r4, r1]
	ldr r2, [sp, #0]
	subs r0, r2, r0
	movs r5, #4
	ldrsh r1, [r3, r5]
	adds r0, r0, r1
	str r0, [sp, #40]
	movs r7, #8
	ldrsh r0, [r3, r7]
	ldr r1, [sp, #40]
	adds r0, r0, r1
	mov sl, r0
.L08006816:
	movs r2, #2
	ldrsh r0, [r4, r2]
	ldr r4, [sp, #4]
	subs r0, r4, r0
	movs r5, #6
	ldrsh r1, [r3, r5]
	adds r0, r0, r1
	mov r8, r0
	movs r7, #10
	ldrsh r0, [r3, r7]
	add r0, r8
	str r0, [sp, #36]
	movs r6, #0
	ldr r0, [sp, #28]
	cmp r6, r0
	beq .L080068D8
	ldr r1, [pc, #84]
	mov r9, r1
.L0800683A:
	ldr r0, [sp, #20]
	adds r1, r6, #0
	bl sub_08005A40
	adds r4, r0, #0
	mov r0, r9
	ldrh r2, [r4, #4]
	ands r0, r2
	cmp r0, r9
	beq .L080068D0
	ldr r0, [sp, #20]
	adds r1, r6, #0
	bl sub_08005A28
	adds r3, r0, #0
	movs r5, #4
	ldrsh r0, [r3, r5]
	movs r7, #1
	negs r7, r7
	cmp r0, r7
	beq .L080068D0
	movs r0, #64
	ldrb r1, [r4, #5]
	ands r0, r1
	cmp r0, #0
	beq .L08006890
	movs r5, #0
	ldrsh r2, [r4, r5]
	ldr r7, [sp, #8]
	subs r2, r7, r2
	ldrh r0, [r3, #0]
	lsls r1, r0, #3
	movs r5, #8
	ldrsh r0, [r3, r5]
	subs r0, r1, r0
	adds r5, r2, r0
	movs r7, #4
	ldrsh r0, [r3, r7]
	subs r1, r1, r0
	adds r2, r2, r1
	b .L080068A4
	subs r7, #255
	movs r0, r0
.L08006890:
	movs r1, #0
	ldrsh r0, [r4, r1]
	ldr r2, [sp, #8]
	subs r0, r2, r0
	movs r5, #4
	ldrsh r1, [r3, r5]
	adds r5, r0, r1
	movs r7, #8
	ldrsh r0, [r3, r7]
	adds r2, r5, r0
.L080068A4:
	movs r1, #2
	ldrsh r0, [r4, r1]
	ldr r4, [sp, #12]
	subs r0, r4, r0
	movs r7, #6
	ldrsh r1, [r3, r7]
	adds r1, r0, r1
	movs r4, #10
	ldrsh r0, [r3, r4]
	adds r0, r1, r0
	cmp r8, r0
	bgt .L080068D0
	ldr r7, [sp, #36]
	cmp r7, r1
	blt .L080068D0
	ldr r0, [sp, #40]
	cmp r0, r2
	bgt .L080068D0
	cmp sl, r5
	blt .L080068D0
	movs r0, #1
	b .L080068E8
.L080068D0:
	adds r6, #1
	ldr r1, [sp, #28]
	cmp r6, r1
	bne .L0800683A
.L080068D8:
	ldr r2, [sp, #32]
	adds r2, #1
	str r2, [sp, #32]
	ldr r4, [sp, #24]
	cmp r2, r4
	beq .L080068E6
	b .L0800679A
.L080068E6:
	movs r0, #0
.L080068E8:
	add sp, #44
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	.thumb
	.align 1, 0
	.global sub_080068F8
	.thumb_func
sub_080068F8:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #48
	adds r4, r1, #0
	ldr r1, [r0, #16]
	asrs r1, r1, #8
	str r1, [sp, #4]
	ldr r1, [r0, #20]
	asrs r1, r1, #8
	str r1, [sp, #8]
	ldr r1, [r4, #44]
	asrs r1, r1, #8
	str r1, [sp, #12]
	ldr r1, [r4, #48]
	asrs r1, r1, #8
	str r1, [sp, #16]
	adds r0, #36
	str r0, [sp, #20]
	adds r0, r4, #0
	adds r0, #84
	str r0, [sp, #24]
	ldr r0, [sp, #20]
	bl sub_08005A58
	ldrh r0, [r0, #2]
	str r0, [sp, #28]
	ldr r0, [sp, #24]
	bl sub_08005A58
	ldrh r0, [r0, #2]
	str r0, [sp, #32]
	bl sub_08008A40
	lsls r0, r0, #24
	cmp r0, #0
	beq .L0800695E
	movs r0, #100
	str r0, [sp, #0]
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	ldr r2, [sp, #12]
	ldr r3, [sp, #16]
	bl sub_08006544
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0800695E
	b .L08006AC4
.L0800695E:
	adds r0, r4, #0
	adds r0, #39
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L0800696E
	b .L08006AC4
.L0800696A:
	movs r0, #1
	b .L08006AC6
.L0800696E:
	movs r1, #0
	str r1, [sp, #36]
	ldr r2, [sp, #28]
	cmp r1, r2
	bne .L0800697A
	b .L08006AC4
.L0800697A:
	ldr r0, [sp, #20]
	ldr r1, [sp, #36]
	bl sub_08005A40
	adds r4, r0, #0
	ldr r0, [pc, #80]
	ldrh r5, [r4, #4]
	ands r0, r5
	ldr r7, [pc, #76]
	cmp r0, r7
	bne .L08006992
	b .L08006AB6
.L08006992:
	ldr r0, [sp, #20]
	ldr r1, [sp, #36]
	bl sub_08005A28
	adds r3, r0, #0
	movs r1, #4
	ldrsh r0, [r3, r1]
	movs r2, #1
	negs r2, r2
	cmp r0, r2
	bne .L080069AA
	b .L08006AB6
.L080069AA:
	movs r0, #64
	ldrb r5, [r4, #5]
	ands r0, r5
	cmp r0, #0
	beq .L080069DC
	movs r7, #0
	ldrsh r2, [r4, r7]
	ldr r0, [sp, #4]
	subs r2, r0, r2
	ldrh r5, [r3, #0]
	lsls r1, r5, #3
	movs r7, #8
	ldrsh r0, [r3, r7]
	subs r0, r1, r0
	adds r0, r2, r0
	str r0, [sp, #44]
	movs r5, #4
	ldrsh r0, [r3, r5]
	subs r1, r1, r0
	adds r2, r2, r1
	mov sl, r2
	b .L080069F6
	movs r0, r0
	subs r7, #255
	movs r0, r0
.L080069DC:
	movs r7, #0
	ldrsh r0, [r4, r7]
	ldr r1, [sp, #4]
	subs r0, r1, r0
	movs r2, #4
	ldrsh r1, [r3, r2]
	adds r0, r0, r1
	str r0, [sp, #44]
	movs r5, #8
	ldrsh r0, [r3, r5]
	ldr r7, [sp, #44]
	adds r0, r0, r7
	mov sl, r0
.L080069F6:
	movs r1, #2
	ldrsh r0, [r4, r1]
	ldr r2, [sp, #8]
	subs r0, r2, r0
	movs r4, #6
	ldrsh r1, [r3, r4]
	adds r0, r0, r1
	mov r8, r0
	movs r5, #10
	ldrsh r0, [r3, r5]
	add r0, r8
	str r0, [sp, #40]
	movs r6, #0
	ldr r7, [sp, #32]
	cmp r6, r7
	beq .L08006AB6
	ldr r0, [pc, #84]
	mov r9, r0
.L08006A1A:
	ldr r0, [sp, #24]
	adds r1, r6, #0
	bl sub_08005A40
	adds r4, r0, #0
	mov r0, r9
	ldrh r1, [r4, #4]
	ands r0, r1
	cmp r0, r9
	beq .L08006AAE
	ldr r0, [sp, #24]
	adds r1, r6, #0
	bl sub_08005A28
	adds r3, r0, #0
	movs r2, #4
	ldrsh r0, [r3, r2]
	movs r5, #1
	negs r5, r5
	cmp r0, r5
	beq .L08006AAE
	movs r0, #64
	ldrb r7, [r4, #5]
	ands r0, r7
	cmp r0, #0
	beq .L08006A70
	movs r0, #0
	ldrsh r2, [r4, r0]
	ldr r1, [sp, #12]
	subs r2, r1, r2
	ldrh r5, [r3, #0]
	lsls r1, r5, #3
	movs r7, #8
	ldrsh r0, [r3, r7]
	subs r0, r1, r0
	adds r5, r2, r0
	movs r7, #4
	ldrsh r0, [r3, r7]
	subs r1, r1, r0
	adds r2, r2, r1
	b .L08006A84
	subs r7, #255
	movs r0, r0
.L08006A70:
	movs r1, #0
	ldrsh r0, [r4, r1]
	ldr r2, [sp, #12]
	subs r0, r2, r0
	movs r5, #4
	ldrsh r1, [r3, r5]
	adds r5, r0, r1
	movs r7, #8
	ldrsh r0, [r3, r7]
	adds r2, r5, r0
.L08006A84:
	movs r1, #2
	ldrsh r0, [r4, r1]
	ldr r4, [sp, #16]
	subs r0, r4, r0
	movs r7, #6
	ldrsh r1, [r3, r7]
	adds r1, r0, r1
	movs r4, #10
	ldrsh r0, [r3, r4]
	adds r0, r1, r0
	cmp r8, r0
	bgt .L08006AAE
	ldr r7, [sp, #40]
	cmp r7, r1
	blt .L08006AAE
	ldr r0, [sp, #44]
	cmp r0, r2
	bgt .L08006AAE
	cmp sl, r5
	blt .L08006AAE
	b .L0800696A
.L08006AAE:
	adds r6, #1
	ldr r1, [sp, #32]
	cmp r6, r1
	bne .L08006A1A
.L08006AB6:
	ldr r2, [sp, #36]
	adds r2, #1
	str r2, [sp, #36]
	ldr r4, [sp, #28]
	cmp r2, r4
	beq .L08006AC4
	b .L0800697A
.L08006AC4:
	movs r0, #0
.L08006AC6:
	add sp, #48
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08006AD8
	.thumb_func
sub_08006AD8:
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
	adds r0, #38
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq .L08006B1E
	mov r1, ip
	adds r1, #188
	movs r0, #1
	strb r0, [r1, #0]
	mov r0, ip
	adds r0, #192
	str r4, [r0, #0]
	adds r0, #4
	strh r5, [r0, #0]
	adds r0, #4
	str r6, [r0, #0]
	adds r0, #4
	strb r2, [r0, #0]
	adds r1, #18
	ldr r0, [sp, #16]
	strb r0, [r1, #0]
	mov r0, ip
	adds r0, #205
	strb r3, [r0, #0]
	movs r0, #1
	b .L08006B26
.L08006B1E:
	mov r0, ip
	bl sub_08006B2C
	movs r0, #0
.L08006B26:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	.thumb
	.align 1, 0
	.global sub_08006B2C
	.thumb_func
sub_08006B2C:
	adds r3, r0, #0
	adds r0, #188
	movs r1, #0
	strb r1, [r0, #0]
	adds r0, #4
	str r1, [r0, #0]
	adds r0, #4
	movs r2, #0
	strh r1, [r0, #0]
	adds r1, r3, #0
	adds r1, #200
	movs r0, #2
	str r0, [r1, #0]
	adds r0, r3, #0
	adds r0, #204
	strb r2, [r0, #0]
	adds r0, #1
	strb r2, [r0, #0]
	adds r0, #1
	strb r2, [r0, #0]
	bx lr
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08006B58
	.thumb_func
sub_08006B58:
	lsls r1, r1, #2
	adds r1, #4
	adds r1, r0, r1
	ldr r1, [r1, #0]
	adds r0, r0, r1
	bx lr

	.thumb
	.align 1, 0
	.global sub_08006B64
	.thumb_func
sub_08006B64:
	lsls r2, r2, #2
	adds r2, r2, r1
	ldr r1, [r2, #4]
	adds r0, r0, r1
	bx lr
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08006B70
	.thumb_func
sub_08006B70:
	push {r4, lr}
	adds r4, r0, #0
	str r1, [r4, #0]
	movs r2, #0
	movs r1, #0
	adds r0, #36
	adds r3, r4, #0
	adds r3, #20
.L08006B80:
	str r1, [r0, #16]
	str r1, [r0, #48]
	stmia r0!, {r1}
	stmia r3!, {r1}
	adds r2, #1
	cmp r2, #7
	bls .L08006B80
	adds r0, r4, #0
	movs r1, #0
	bl sub_08007350
	adds r1, r4, #0
	adds r1, #132
	str r0, [r1, #0]
	adds r0, r4, #0
	bl sub_080074CC
	adds r1, r4, #0
	adds r1, #136
	adds r0, #8
	str r0, [r1, #0]
	pop {r4}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_08006BB0
	.thumb_func
sub_08006BB0:
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, [r4, #0]
	movs r1, #0
	bl sub_08006B58
	adds r1, r0, #0
	ldr r0, [r4, #0]
	adds r2, r5, #0
	bl sub_08006B64
	movs r3, #0
	movs r2, #160
	lsls r2, r2, #19
	adds r1, r0, #0
.L08006BD0:
	ldrh r0, [r1, #0]
	adds r1, #2
	strh r0, [r2, #0]
	adds r2, #2
	adds r3, #1
	cmp r3, #255
	bls .L08006BD0
	pop {r4, r5}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_08006BE4
	.thumb_func
sub_08006BE4:
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, [r4, #0]
	movs r1, #0
	bl sub_08006B58
	adds r1, r0, #0
	ldr r0, [r4, #0]
	adds r2, r5, #0
	bl sub_08006B64
	pop {r4, r5}
	pop {r1}
	bx r1
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08006C04
	.thumb_func
sub_08006C04:
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #24
	lsrs r4, r4, #24
	lsls r5, r5, #24
	lsrs r5, r5, #24
	ldr r0, [r6, #0]
	movs r1, #2
	bl sub_08006B58
	adds r1, r0, #0
	ldmia r6!, {r0}
	adds r2, r5, #0
	bl sub_08006B64
	lsls r4, r4, #2
	adds r6, r6, r4
	str r0, [r6, #0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08006C34
	.thumb_func
sub_08006C34:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #40
	mov sl, r0
	lsls r1, r1, #24
	lsrs r1, r1, #22
	mov r3, sl
	adds r3, #20
	adds r0, r3, r1
	str r2, [r0, #0]
	mov r0, sl
	adds r0, #36
	adds r0, r0, r1
	movs r1, #0
	str r1, [r0, #0]
	movs r6, #0
	movs r4, #0
	mov r8, r3
	mov r5, r8
	mov ip, r4
	mov r9, sp
.L08006C64:
	movs r7, #0
	movs r1, #0
	cmp r1, r6
	bcs .L08006C82
	mov r0, r8
	add r0, ip
	ldr r2, [r0, #0]
	mov r3, sp
.L08006C74:
	ldmia r3!, {r0}
	cmp r2, r0
	bne .L08006C7C
	movs r7, #1
.L08006C7C:
	adds r1, #1
	cmp r1, r6
	bcc .L08006C74
.L08006C82:
	ldr r0, [r5, #0]
	cmp r0, #0
	beq .L08006C98
	cmp r7, #0
	bne .L08006C98
	mov r1, r9
	adds r1, #4
	mov r9, r1
	subs r1, #4
	stmia r1!, {r0}
	adds r6, #1
.L08006C98:
	adds r5, #4
	movs r3, #4
	add ip, r3
	adds r4, #1
	cmp r4, #3
	bls .L08006C64
	movs r0, #0
	str r0, [sp, #20]
	movs r4, #1
	cmp r4, r6
	bcs .L08006CCE
	mov r2, sp
.L08006CB0:
	movs r1, #2
	ldr r0, [r2, #0]
	ldrh r3, [r0, #2]
	cmp r3, #4
	bne .L08006CBC
	movs r1, #1
.L08006CBC:
	ldrh r0, [r0, #0]
	muls r1, r0
	ldr r0, [r2, #20]
	adds r0, r0, r1
	str r0, [r2, #24]
	adds r2, #4
	adds r4, #1
	cmp r4, r6
	bcc .L08006CB0
.L08006CCE:
	movs r4, #0
	add r0, sp, #20
	mov r9, r0
.L08006CD4:
	movs r5, #1
	negs r5, r5
	movs r1, #0
	adds r7, r4, #1
	cmp r1, r6
	bcs .L08006CF6
	lsls r0, r4, #2
	add r0, r8
	ldr r2, [r0, #0]
	mov r3, sp
.L08006CE8:
	ldmia r3!, {r0}
	cmp r2, r0
	bne .L08006CF0
	adds r5, r1, #0
.L08006CF0:
	adds r1, #1
	cmp r1, r6
	bcc .L08006CE8
.L08006CF6:
	movs r0, #1
	negs r0, r0
	cmp r5, r0
	beq .L08006D0E
	lsls r0, r4, #2
	mov r1, sl
	adds r1, #36
	adds r1, r1, r0
	lsls r0, r5, #2
	add r0, r9
	ldr r0, [r0, #0]
	str r0, [r1, #0]
.L08006D0E:
	adds r4, r7, #0
	cmp r4, #3
	bls .L08006CD4
	add sp, #40
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_08006D24
	.thumb_func
sub_08006D24:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #40
	str r0, [sp, #0]
	adds r7, r1, #0
	adds r4, r2, #0
	adds r6, r3, #0
	mov sl, r4
	mov r9, r6
	lsls r2, r7, #2
	adds r0, r2, #0
	adds r0, #116
	ldr r1, [sp, #0]
	adds r0, r1, r0
	str r0, [sp, #4]
	adds r0, r1, #0
	adds r0, #4
	adds r0, r0, r2
	ldr r1, [r0, #0]
	ldr r0, [r1, #0]
	lsls r0, r0, #3
	str r0, [sp, #8]
	ldr r0, [r1, #4]
	lsls r0, r0, #3
	str r0, [sp, #12]
	cmp r4, #0
	bne .L08006D76
	str r2, [sp, #28]
	lsls r2, r7, #1
	str r2, [sp, #24]
	lsls r4, r7, #3
	str r4, [sp, #32]
	ldr r5, [sp, #0]
	adds r5, #52
	mov r8, r5
	cmp r6, #0
	bne .L08006D76
	b .L0800700A
.L08006D76:
	lsls r2, r7, #1
	lsls r3, r7, #3
	ldr r1, [sp, #0]
	adds r1, #52
	adds r0, r1, r3
	ldr r0, [r0, #0]
	asrs r0, r0, #3
	str r0, [sp, #16]
	adds r0, r2, #1
	lsls r0, r0, #2
	adds r0, r1, r0
	ldr r0, [r0, #0]
	asrs r0, r0, #3
	str r0, [sp, #20]
	str r2, [sp, #24]
	str r3, [sp, #32]
	mov r8, r1
	mov r0, sl
	cmp r0, #8
	ble .L08006DA2
	movs r4, #8
	b .L08006DAE
.L08006DA2:
	movs r0, #8
	negs r0, r0
	mov r4, sl
	cmp sl, r0
	bge .L08006DAE
	adds r4, r0, #0
.L08006DAE:
	mov r1, r9
	cmp r1, #8
	ble .L08006DB8
	movs r6, #8
	b .L08006DC4
.L08006DB8:
	movs r0, #8
	negs r0, r0
	mov r6, r9
	cmp r9, r0
	bge .L08006DC4
	adds r6, r0, #0
.L08006DC4:
	ldr r0, [sp, #32]
	add r0, r8
	ldr r0, [r0, #0]
	adds r0, r0, r4
	asrs r0, r0, #3
	ldr r2, [sp, #16]
	cmp r2, r0
	beq .L08006DF2
	cmp r4, #0
	ble .L08006DE4
	ldr r0, [sp, #0]
	adds r1, r7, #0
	movs r2, #0
	bl sub_08012954
	b .L08006DF2
.L08006DE4:
	cmp r4, #0
	bge .L08006DF2
	ldr r0, [sp, #0]
	adds r1, r7, #0
	movs r2, #30
	bl sub_08012954
.L08006DF2:
	ldr r0, [sp, #0]
	adds r0, #84
	ldr r5, [sp, #32]
	adds r2, r0, r5
	ldr r1, [r2, #0]
	adds r1, r1, r4
	str r1, [r2, #0]
	adds r3, r5, #0
	add r3, r8
	ldr r1, [r3, #0]
	adds r1, r1, r4
	str r1, [r3, #0]
	ldr r5, [sp, #4]
	ldrb r1, [r5, #0]
	str r0, [sp, #36]
	cmp r1, #0
	bne .L08006E36
	ldr r0, [r2, #0]
	cmp r0, #0
	bge .L08006E1E
	str r1, [r2, #0]
	str r1, [r3, #0]
.L08006E1E:
	ldr r1, [sp, #8]
	subs r1, #240
	ldr r0, [r2, #0]
	lsls r5, r7, #2
	str r5, [sp, #28]
	cmp r0, r1
	blt .L08006E6A
	ldr r0, [sp, #8]
	subs r0, #241
	str r0, [r2, #0]
	str r0, [r3, #0]
	b .L08006E6A
.L08006E36:
	ldr r3, [r2, #0]
	lsls r0, r7, #2
	str r0, [sp, #28]
	cmp r3, #0
	bge .L08006E4E
	adds r0, r2, #0
	adds r2, r3, #0
.L08006E44:
	ldr r1, [sp, #8]
	adds r2, r2, r1
	cmp r2, #0
	blt .L08006E44
	str r2, [r0, #0]
.L08006E4E:
	ldr r2, [sp, #32]
	ldr r3, [sp, #36]
	adds r0, r3, r2
	ldr r0, [r0, #0]
	ldr r5, [sp, #8]
	cmp r0, r5
	blt .L08006E6A
.L08006E5C:
	adds r1, r3, r2
	ldr r0, [r1, #0]
	ldr r5, [sp, #8]
	subs r0, r0, r5
	str r0, [r1, #0]
	cmp r0, r5
	bge .L08006E5C
.L08006E6A:
	ldr r2, [sp, #32]
	mov r3, r8
	adds r0, r2, #0
	add r0, r8
	ldr r0, [r0, #0]
	cmp r0, #0
	bge .L08006E88
	movs r5, #128
	lsls r5, r5, #1
.L08006E7C:
	adds r1, r3, r2
	ldr r0, [r1, #0]
	adds r0, r0, r5
	str r0, [r1, #0]
	cmp r0, #0
	blt .L08006E7C
.L08006E88:
	ldr r1, [sp, #32]
	add r1, r8
	ldrb r0, [r1, #0]
	str r0, [r1, #0]
	asrs r0, r0, #3
	ldr r1, [sp, #16]
	cmp r1, r0
	beq .L08006EB6
	cmp r4, #0
	ble .L08006EA8
	ldr r0, [sp, #0]
	adds r1, r7, #0
	movs r2, #30
	bl sub_08012944
	b .L08006EB6
.L08006EA8:
	cmp r4, #0
	bge .L08006EB6
	ldr r0, [sp, #0]
	adds r1, r7, #0
	movs r2, #0
	bl sub_08012944
.L08006EB6:
	ldr r0, [sp, #24]
	adds r0, #1
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0, #0]
	adds r0, r0, r6
	asrs r0, r0, #3
	ldr r2, [sp, #20]
	cmp r2, r0
	beq .L08006EE8
	cmp r6, #0
	ble .L08006EDA
	ldr r0, [sp, #0]
	adds r1, r7, #0
	movs r2, #0
	bl sub_08012934
	b .L08006EE8
.L08006EDA:
	cmp r6, #0
	bge .L08006EE8
	ldr r0, [sp, #0]
	adds r1, r7, #0
	movs r2, #20
	bl sub_08012934
.L08006EE8:
	ldr r0, [sp, #24]
	adds r0, #1
	lsls r0, r0, #2
	ldr r4, [sp, #36]
	adds r2, r4, r0
	ldr r1, [r2, #0]
	adds r1, r1, r6
	str r1, [r2, #0]
	mov r5, r8
	adds r3, r5, r0
	ldr r0, [r3, #0]
	adds r0, r0, r6
	str r0, [r3, #0]
	ldr r0, [sp, #4]
	ldrb r1, [r0, #1]
	cmp r1, #0
	bne .L08006F28
	ldr r0, [r2, #0]
	cmp r0, #0
	bge .L08006F14
	str r1, [r2, #0]
	str r1, [r3, #0]
.L08006F14:
	ldr r1, [sp, #12]
	subs r1, #160
	ldr r0, [r2, #0]
	cmp r0, r1
	blt .L08006F62
	ldr r0, [sp, #12]
	subs r0, #161
	str r0, [r2, #0]
	str r0, [r3, #0]
	b .L08006F62
.L08006F28:
	ldr r3, [r2, #0]
	cmp r3, #0
	bge .L08006F3C
	adds r0, r2, #0
	adds r2, r3, #0
.L08006F32:
	ldr r1, [sp, #12]
	adds r2, r2, r1
	cmp r2, #0
	blt .L08006F32
	str r2, [r0, #0]
.L08006F3C:
	ldr r3, [sp, #24]
	adds r0, r3, #0
	adds r0, #1
	lsls r0, r0, #2
	ldr r2, [sp, #36]
	adds r0, r2, r0
	ldr r0, [r0, #0]
	ldr r4, [sp, #12]
	cmp r0, r4
	blt .L08006F62
.L08006F50:
	adds r0, r3, #1
	lsls r0, r0, #2
	adds r0, r2, r0
	ldr r1, [r0, #0]
	ldr r5, [sp, #12]
	subs r1, r1, r5
	str r1, [r0, #0]
	cmp r1, r5
	bge .L08006F50
.L08006F62:
	ldr r3, [sp, #24]
	adds r0, r3, #0
	adds r0, #1
	lsls r0, r0, #2
	mov r2, r8
	add r0, r8
	ldr r0, [r0, #0]
	cmp r0, #0
	bge .L08006F88
	movs r4, #128
	lsls r4, r4, #1
.L08006F78:
	adds r0, r3, #1
	lsls r0, r0, #2
	adds r0, r2, r0
	ldr r1, [r0, #0]
	adds r1, r1, r4
	str r1, [r0, #0]
	cmp r1, #0
	blt .L08006F78
.L08006F88:
	ldr r0, [sp, #24]
	adds r0, #1
	lsls r0, r0, #2
	add r0, r8
	ldrb r1, [r0, #0]
	str r1, [r0, #0]
	asrs r1, r1, #3
	ldr r0, [sp, #20]
	cmp r0, r1
	beq .L08006FBA
	cmp r6, #0
	ble .L08006FAC
	ldr r0, [sp, #0]
	adds r1, r7, #0
	movs r2, #20
	bl sub_08012924
	b .L08006FBA
.L08006FAC:
	cmp r6, #0
	bge .L08006FBA
	ldr r0, [sp, #0]
	adds r1, r7, #0
	movs r2, #0
	bl sub_08012924
.L08006FBA:
	mov r1, sl
	cmp r1, #8
	ble .L08006FC8
	movs r2, #8
	negs r2, r2
	add sl, r2
	b .L08006FDA
.L08006FC8:
	movs r0, #8
	negs r0, r0
	cmp sl, r0
	bge .L08006FD6
	movs r4, #8
	add sl, r4
	b .L08006FDA
.L08006FD6:
	movs r5, #0
	mov sl, r5
.L08006FDA:
	mov r0, r9
	cmp r0, #8
	ble .L08006FE8
	movs r1, #8
	negs r1, r1
	add r9, r1
	b .L08006FFA
.L08006FE8:
	movs r0, #8
	negs r0, r0
	cmp r9, r0
	bge .L08006FF6
	movs r2, #8
	add r9, r2
	b .L08006FFA
.L08006FF6:
	movs r4, #0
	mov r9, r4
.L08006FFA:
	mov r5, sl
	cmp r5, #0
	beq .L08007002
	b .L08006D76
.L08007002:
	mov r0, r9
	cmp r0, #0
	beq .L0800700A
	b .L08006D76
.L0800700A:
	ldr r2, [sp, #28]
	ldr r4, [pc, #40]
	adds r1, r2, r4
	ldr r0, [sp, #32]
	add r0, r8
	ldr r0, [r0, #0]
	strh r0, [r1, #0]
	ldr r5, [pc, #32]
	adds r1, r2, r5
	ldr r0, [sp, #24]
	adds r0, #1
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0, #0]
	strh r0, [r1, #0]
	add sp, #40
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.4byte 0x04000010
	.4byte 0x04000012

	.thumb
	.align 1, 0
	.global sub_08007040
	.thumb_func
sub_08007040:
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
	bl sub_080074B0
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
	bne .L0800710E
	ldr r0, [r7, #0]
	cmp r0, #0
	bge .L080070D0
	str r3, [r7, #0]
	ldr r5, [sp, #36]
	str r3, [r5, #0]
.L080070D0:
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
	blt .L0800715E
	adds r0, r2, #0
	subs r0, #241
	str r0, [r7, #0]
	ldr r5, [sp, #36]
	str r0, [r5, #0]
	b .L0800715E
.L0800710E:
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
	bge .L08007146
	adds r0, r7, #0
.L0800713E:
	adds r1, r1, r2
	cmp r1, #0
	blt .L0800713E
	str r1, [r0, #0]
.L08007146:
	mov r4, ip
	adds r5, r6, #0
	adds r0, r6, r4
	ldr r0, [r0, #0]
	cmp r0, r2
	blt .L0800715E
.L08007152:
	adds r1, r5, r4
	ldr r0, [r1, #0]
	subs r0, r0, r2
	str r0, [r1, #0]
	cmp r0, r2
	bge .L08007152
.L0800715E:
	ldr r0, [sp, #20]
	ldrb r1, [r0, #1]
	cmp r1, #0
	bne .L0800718E
	ldr r0, [sp, #48]
	adds r0, #1
	lsls r5, r0, #2
	adds r4, r6, r5
	ldr r0, [r4, #0]
	cmp r0, #0
	bge .L0800717A
	str r1, [r4, #0]
	adds r0, r3, r5
	str r1, [r0, #0]
.L0800717A:
	mov r1, sl
	subs r1, #160
	ldr r0, [r4, #0]
	cmp r0, r1
	blt .L080071D4
	subs r1, #1
	str r1, [r4, #0]
	adds r0, r3, r5
	str r1, [r0, #0]
	b .L080071D4
.L0800718E:
	ldr r2, [sp, #48]
	adds r0, r2, #0
	adds r0, #1
	lsls r0, r0, #2
	adds r4, r6, #0
	adds r0, r6, r0
	ldr r0, [r0, #0]
	cmp r0, #0
	bge .L080071B0
.L080071A0:
	adds r1, r2, #1
	lsls r1, r1, #2
	adds r1, r4, r1
	ldr r0, [r1, #0]
	add r0, sl
	str r0, [r1, #0]
	cmp r0, #0
	blt .L080071A0
.L080071B0:
	ldr r2, [sp, #48]
	adds r0, r2, #0
	adds r0, #1
	lsls r0, r0, #2
	adds r4, r6, #0
	adds r0, r6, r0
	ldr r0, [r0, #0]
	cmp r0, sl
	blt .L080071D4
.L080071C2:
	adds r1, r2, #1
	lsls r1, r1, #2
	adds r1, r4, r1
	ldr r0, [r1, #0]
	mov r5, sl
	subs r0, r0, r5
	str r0, [r1, #0]
	cmp r0, sl
	bge .L080071C2
.L080071D4:
	mov r4, ip
	adds r5, r3, #0
	adds r0, r3, r4
	ldr r0, [r0, #0]
	cmp r0, #0
	bge .L080071F0
	movs r2, #128
	lsls r2, r2, #1
.L080071E4:
	adds r1, r5, r4
	ldr r0, [r1, #0]
	adds r0, r0, r2
	str r0, [r1, #0]
	cmp r0, #0
	blt .L080071E4
.L080071F0:
	ldr r4, [sp, #48]
	adds r0, r4, #0
	adds r0, #1
	lsls r0, r0, #2
	adds r2, r3, #0
	adds r0, r3, r0
	ldr r0, [r0, #0]
	cmp r0, #0
	bge .L08007216
	movs r5, #128
	lsls r5, r5, #1
.L08007206:
	adds r1, r4, #1
	lsls r1, r1, #2
	adds r1, r2, r1
	ldr r0, [r1, #0]
	adds r0, r0, r5
	str r0, [r1, #0]
	cmp r0, #0
	blt .L08007206
.L08007216:
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
	bge .L0800725A
	adds r7, #32
.L0800725A:
	cmp r3, #0
	bge .L08007260
	adds r3, #32
.L08007260:
	ldr r0, [pc, #228]
	mov r2, r9
	subs r2, r0, r2
	str r2, [sp, #4]
	str r7, [sp, #12]
	adds r0, r1, #0
	movs r1, #0
.L0800726E:
	ldr r7, [sp, #12]
	ldr r6, [sp, #8]
	ldr r4, [sp, #80]
	cmp r0, r4
	blt .L0800727A
	subs r0, r0, r4
.L0800727A:
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
.L080072A8:
	ldr r4, [sp, #68]
	cmp r6, r4
	blt .L080072B0
	subs r6, r6, r4
.L080072B0:
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
	bl sub_08012914
	ldr r0, [pc, #92]
	ands r0, r4
	ldr r1, [sp, #56]
	add r1, r8
	ldr r1, [r1, #0]
	adds r1, #4
	mov r2, r9
	ldr r2, [r2, #0]
	mov ip, r2
	bl sub_08012904
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
	bge .L080072A8
	adds r3, r0, #0
	ldr r1, [sp, #72]
	ands r3, r1
	ldr r0, [sp, #44]
	ldr r1, [sp, #40]
	cmp r1, #20
	ble .L0800726E
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

	.thumb
	.align 1, 0
	.global sub_08007350
	.thumb_func
sub_08007350:
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, [r4, #0]
	movs r1, #3
	bl sub_08006B58
	adds r1, r0, #0
	ldr r0, [r4, #0]
	adds r2, r5, #0
	bl sub_08006B64
	pop {r4, r5}
	pop {r1}
	bx r1
	.2byte 0x0000
	.4byte 0x31740089
	.4byte 0x47701840

	.thumb
	.align 1, 0
	.global sub_08007378
	.thumb_func
sub_08007378:
	lsls r1, r1, #2
	adds r3, r0, r1
	ldrb r1, [r2, #0]
	adds r0, r3, #0
	adds r0, #116
	strb r1, [r0, #0]
	ldrb r0, [r2, #1]
	adds r1, r3, #0
	adds r1, #117
	strb r0, [r1, #0]
	ldrb r0, [r2, #3]
	adds r1, #2
	strb r0, [r1, #0]
	ldrb r1, [r2, #2]
	adds r0, r3, #0
	adds r0, #118
	strb r1, [r0, #0]
	bx lr

	.thumb
	.align 1, 0
	.global sub_0800739C
	.thumb_func
sub_0800739C:
	push {lr}
	sub sp, #4
	movs r0, #0
	str r0, [sp, #0]
	movs r1, #192
	lsls r1, r1, #19
	ldr r2, [pc, #12]
	mov r0, sp
	bl sub_0800F21C
	add sp, #4
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x01003FFF

	.thumb
	.align 1, 0
	.global sub_080073BC
	.thumb_func
sub_080073BC:
	push {r4, r5, lr}
	adds r3, r0, #0
	movs r4, #0
	adds r0, #118
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne .L080073E0
	ldr r1, [pc, #148]
	adds r2, r3, #0
	adds r2, #119
	movs r4, #252
	lsls r4, r4, #5
	adds r0, r4, #0
	ldrb r2, [r2, #0]
	orrs r0, r2
	strh r0, [r1, #0]
	movs r4, #128
	lsls r4, r4, #1
.L080073E0:
	adds r0, r3, #0
	adds r0, #122
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne .L08007404
	ldr r0, [pc, #120]
	adds r2, r3, #0
	adds r2, #123
	movs r5, #244
	lsls r5, r5, #5
	adds r1, r5, #0
	ldrb r2, [r2, #0]
	orrs r1, r2
	strh r1, [r0, #0]
	movs r1, #128
	lsls r1, r1, #2
	adds r0, r1, #0
	orrs r4, r0
.L08007404:
	adds r0, r3, #0
	adds r0, #126
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne .L0800742C
	ldr r1, [pc, #88]
	adds r2, r3, #0
	adds r2, #127
	movs r5, #236
	lsls r5, r5, #5
	adds r0, r5, #0
	ldrb r2, [r2, #0]
	orrs r0, r2
	strh r0, [r1, #0]
	movs r1, #128
	lsls r1, r1, #3
	adds r0, r1, #0
	orrs r4, r0
	lsls r0, r4, #16
	lsrs r4, r0, #16
.L0800742C:
	adds r0, r3, #0
	adds r0, #130
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne .L08007454
	ldr r2, [pc, #52]
	adds r1, r3, #0
	adds r1, #131
	movs r3, #228
	lsls r3, r3, #5
	adds r0, r3, #0
	ldrb r1, [r1, #0]
	orrs r0, r1
	strh r0, [r2, #0]
	movs r5, #128
	lsls r5, r5, #4
	adds r0, r5, #0
	orrs r4, r0
	lsls r0, r4, #16
	lsrs r4, r0, #16
.L08007454:
	movs r0, #128
	lsls r0, r0, #19
	strh r4, [r0, #0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.4byte 0x04000008
	.4byte 0x0400000A
	.4byte 0x0400000C
	.4byte 0x0400000E

	.thumb
	.align 1, 0
	.global sub_08007470
	.thumb_func
sub_08007470:
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, [r4, #0]
	movs r1, #5
	bl sub_08006B58
	adds r1, r0, #0
	ldr r0, [r4, #0]
	adds r2, r5, #0
	bl sub_08006B64
	pop {r4, r5}
	pop {r1}
	bx r1
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08007490
	.thumb_func
sub_08007490:
	push {lr}
	ldr r0, [r0, #0]
	movs r1, #5
	bl sub_08006B58
	ldrh r0, [r0, #2]
	pop {r1}
	bx r1

	.thumb
	.align 1, 0
	.global sub_080074A0
	.thumb_func
sub_080074A0:
	push {lr}
	ldr r0, [r0, #0]
	movs r1, #2
	bl sub_08006B58
	ldrh r0, [r0, #2]
	pop {r1}
	bx r1

	.thumb
	.align 1, 0
	.global sub_080074B0
	.thumb_func
sub_080074B0:
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0]
	movs r1, #1
	bl sub_08006B58
	adds r1, r0, #0
	ldr r0, [r4, #0]
	movs r2, #0
	bl sub_08006B64
	pop {r4}
	pop {r1}
	bx r1

	.thumb
	.align 1, 0
	.global sub_080074CC
	.thumb_func
sub_080074CC:
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0]
	movs r1, #6
	bl sub_08006B58
	adds r1, r0, #0
	ldr r0, [r4, #0]
	movs r2, #0
	bl sub_08006B64
	pop {r4}
	pop {r1}
	bx r1
	.4byte 0x0E010600
	.4byte 0x061222BF
	.4byte 0x0E001880
	.4byte 0xD8022819
	.4byte 0x38401C08
	.4byte 0x1C08E035
	.4byte 0x06003861
	.4byte 0x28190E00
	.4byte 0x1C08D802
	.4byte 0xE02C3860
	.4byte 0x38301C08
	.4byte 0x0E000600
	.4byte 0xD8022809
	.4byte 0x38151C08
	.4byte 0x1C08E023
	.4byte 0x281E3821
	.4byte 0x0080D81E
	.4byte 0x18404901
	.4byte 0x46876800
	.4byte 0x0200FF6C
	.4byte 0xE0162026
	.4byte 0xE0142027
	.4byte 0xE0122028
	.4byte 0xE0102029
	.4byte 0xE00E202A
	.4byte 0xE00C202B
	.4byte 0xE00A202C
	.4byte 0xE008202D
	.4byte 0xE006202E
	.4byte 0xE004202F
	.4byte 0xE0022030
	.4byte 0xE0002031
	.4byte 0x47702025
	.4byte 0x780A4905
	.4byte 0x70081810
	.4byte 0x0E000600
	.4byte 0xD9012807
	.4byte 0x70082007
	.4byte 0x00004770
	.4byte 0x03006FC4
	.4byte 0x780A4903
	.4byte 0x28001A10
	.4byte 0x2000DC00
	.4byte 0x47707008
	.4byte 0x03006FC4
	.4byte 0x29071C01
	.4byte 0x4801D801
	.4byte 0x47707001
	.4byte 0x03006FC4

	.thumb
	.align 1, 0
	.global sub_080075AC
	.thumb_func
sub_080075AC:
	push {r4, r5, r6, lr}
	lsls r2, r2, #16
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r5, [pc, #56]
	movs r6, #31
	movs r3, #248
	lsls r3, r3, #13
	ands r3, r2
	lsrs r3, r3, #16
	ldr r1, [pc, #48]
	ldrb r1, [r1, #0]
	lsls r4, r1, #5
	adds r3, r3, r4
	adds r3, r3, r5
	lsrs r1, r2, #21
	ands r1, r6
	adds r1, r1, r4
	adds r1, r1, r5
	lsrs r2, r2, #26
	ands r2, r6
	adds r2, r2, r4
	adds r2, r2, r5
	ldrb r1, [r1, #0]
	lsls r1, r1, #5
	ldrb r3, [r3, #0]
	orrs r1, r3
	ldrb r2, [r2, #0]
	lsls r2, r2, #10
	orrs r1, r2
	strh r1, [r0, #0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.4byte 0x02010658
	.4byte 0x03006FC4

	.thumb
	.align 1, 0
	.global sub_080075F8
	.thumb_func
sub_080075F8:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	mov ip, r3
	lsls r2, r2, #1
	adds r5, r1, r2
	movs r6, #0
	cmp r6, ip
	beq .L0800765A
	ldr r1, [pc, #88]
	mov sl, r1
	movs r7, #31
	mov r8, r7
	ldr r1, [pc, #84]
	mov r9, r1
	adds r4, r0, #0
.L0800761C:
	ldrh r1, [r4, #0]
	adds r4, #2
	movs r2, #31
	ands r2, r1
	mov r7, r9
	ldrb r7, [r7, #0]
	lsls r3, r7, #5
	adds r2, r2, r3
	add r2, sl
	lsls r1, r1, #16
	lsrs r0, r1, #21
	mov r7, r8
	ands r0, r7
	adds r0, r0, r3
	add r0, sl
	lsrs r1, r1, #26
	ands r1, r7
	adds r1, r1, r3
	add r1, sl
	ldrb r0, [r0, #0]
	lsls r0, r0, #5
	ldrb r2, [r2, #0]
	orrs r0, r2
	ldrb r1, [r1, #0]
	lsls r1, r1, #10
	orrs r0, r1
	strh r0, [r5, #0]
	adds r5, #2
	adds r6, #1
	cmp r6, ip
	bne .L0800761C
.L0800765A:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.4byte 0x02010658
	.4byte 0x03006FC4

	.thumb
	.align 1, 0
	.global sub_08007670
	.thumb_func
sub_08007670:
	push {r4, r5, r6, lr}
	ldr r5, [sp, #16]
	lsls r3, r3, #16
	lsrs r6, r3, #16
	lsls r0, r0, #11
	movs r3, #192
	lsls r3, r3, #19
	adds r4, r0, r3
	lsls r2, r2, #5
	adds r1, r1, r2
	lsls r1, r1, #1
	adds r4, r4, r1
	cmp r4, #0
	beq .L080076A4
	ldrh r0, [r4, #0]
	bl sub_0800E840
	cmp r0, #0
	beq .L0800769E
	ldrh r0, [r4, #0]
	bl sub_0800E93C
	b .L080076A4
.L0800769E:
	ldrh r0, [r4, #0]
	bl sub_08012914
.L080076A4:
	orrs r5, r6
	strh r5, [r4, #0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_080076B0
	.thumb_func
sub_080076B0:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	str r0, [sp, #4]
	mov sl, r1
	mov r8, r2
	adds r6, r3, #0
	movs r7, #0
	cmp r7, r8
	bcs .L08007712
.L080076CA:
	movs r5, #0
	adds r0, r7, #1
	mov r9, r0
	cmp r5, r6
	bcs .L0800770C
	adds r4, r7, #0
.L080076D6:
	ldr r1, [sp, #40]
	adds r0, r1, #0
	muls r0, r6
	adds r0, r4, r0
	ldr r1, [sp, #44]
	ldr r2, [sp, #52]
	bl sub_0800E86C
	adds r3, r0, #0
	lsls r3, r3, #16
	lsrs r3, r3, #16
	mov ip, r3
	mov r3, sl
	adds r2, r3, r5
	ldr r1, [sp, #56]
	lsls r0, r1, #12
	str r0, [sp, #0]
	movs r0, #31
	ldr r3, [sp, #4]
	adds r1, r3, r7
	mov r3, ip
	bl sub_08007670
	add r4, r8
	adds r5, #1
	cmp r5, r6
	bcc .L080076D6
.L0800770C:
	mov r7, r9
	cmp r7, r8
	bcc .L080076CA
.L08007712:
	movs r0, #1
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	.thumb
	.align 1, 0
	.global sub_08007724
	.thumb_func
sub_08007724:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #16
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r8, r2
	adds r7, r3, #0
	movs r1, #0
	cmp r1, r8
	bcs .L08007798
.L0800773E:
	movs r6, #0
	adds r0, r1, #1
	str r0, [sp, #12]
	cmp r6, r7
	bcs .L08007792
	ldr r2, [sp, #4]
	adds r0, r2, r1
	subs r0, #1
	mov sl, r0
	ldr r0, [sp, #64]
	lsls r5, r0, #12
	adds r4, r1, #0
	mov r1, r8
	subs r0, r1, r4
	subs r0, r0, r4
	mov r9, r0
	movs r0, #128
	lsls r0, r0, #3
	orrs r5, r0
.L08007764:
	ldr r2, [sp, #48]
	adds r0, r2, #0
	muls r0, r7
	adds r0, r4, r0
	ldr r1, [sp, #52]
	ldr r2, [sp, #60]
	bl sub_0800E86C
	adds r3, r0, #0
	lsls r3, r3, #16
	lsrs r3, r3, #16
	ldr r0, [sp, #8]
	adds r2, r0, r6
	str r5, [sp, #0]
	movs r0, #31
	mov r1, sl
	add r1, r9
	bl sub_08007670
	add r4, r8
	adds r6, #1
	cmp r6, r7
	bcc .L08007764
.L08007792:
	ldr r1, [sp, #12]
	cmp r1, r8
	bcc .L0800773E
.L08007798:
	movs r0, #1
	add sp, #16
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_080077AC
	.thumb_func
sub_080077AC:
	push {lr}
	ldr r1, [pc, #68]
	movs r2, #248
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1, #0]
	movs r2, #128
	lsls r2, r2, #19
	ldrh r0, [r2, #0]
	movs r3, #128
	lsls r3, r3, #1
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2, #0]
	ldr r0, [pc, #44]
	ldr r1, [pc, #48]
	movs r2, #16
	bl sub_0800F220
	ldr r0, [pc, #44]
	ldr r1, [pc, #44]
	movs r2, #16
	bl sub_0800F220
	movs r0, #14
	bl sub_0800E66C
	ldr r1, [pc, #36]
	movs r0, #0
	str r0, [r1, #0]
	ldr r1, [pc, #32]
	movs r0, #1
	strb r0, [r1, #0]
	pop {r1}
	bx r1
	.2byte 0x0000
	.4byte 0x04000008
	.4byte 0x02010758
	.4byte 0x050001C0
	.4byte 0x02010778
	.4byte 0x050001E0
	.4byte 0x03006FC8
	.4byte 0x03006FCC

	.thumb
	.align 1, 0
	.global sub_08007810
	.thumb_func
sub_08007810:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #20
	mov r8, r1
	mov sl, r2
	adds r7, r3, #0
	lsls r0, r0, #24
	lsrs r6, r0, #24
	ldr r0, [pc, #100]
	str r2, [r0, #0]
	cmp r1, #255
	bls .L08007832
	movs r0, #255
	mov r8, r0
.L08007832:
	mov r1, r8
	lsrs r1, r1, #2
	mov r8, r1
	movs r1, #0
	str r1, [sp, #0]
	ldr r0, [pc, #80]
	str r0, [sp, #4]
	movs r0, #31
	str r0, [sp, #8]
	str r1, [sp, #12]
	movs r0, #15
	str r0, [sp, #16]
	movs r0, #0
	movs r2, #4
	movs r3, #4
	bl sub_080076B0
	ldr r0, [pc, #60]
	ldr r0, [r0, #0]
	cmp r6, r0
	bne .L08007864
	ldr r0, [pc, #56]
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq .L080078F4
.L08007864:
	cmp r6, #9
	bhi .L080078A0
	ldr r1, [pc, #48]
	adds r0, r6, #0
	movs r2, #16
	bl sub_0800E86C
	adds r3, r0, #0
	lsls r3, r3, #16
	lsrs r3, r3, #16
	movs r0, #224
	lsls r0, r0, #8
	str r0, [sp, #0]
	movs r0, #31
	movs r1, #4
	movs r2, #2
	bl sub_08007670
	b .L080078F4
	movs r0, r0
	ldr r0, [r1, #124]
	lsls r0, r0, #12
	lsls r0, r3, #30
	lsls r1, r0, #8
	asrs r4, r7, #12
	lsls r0, r0, #12
	ldr r4, [r1, #124]
	lsls r0, r0, #12
	lsrs r0, r3, #6
	lsls r1, r0, #8
.L080078A0:
	adds r0, r6, #0
	movs r1, #10
	bl sub_0800F224
	ldr r5, [pc, #100]
	adds r1, r5, #0
	movs r2, #16
	bl sub_0800E86C
	adds r3, r0, #0
	lsls r3, r3, #16
	lsrs r3, r3, #16
	movs r4, #224
	lsls r4, r4, #8
	str r4, [sp, #0]
	movs r0, #31
	movs r1, #4
	movs r2, #2
	bl sub_08007670
	adds r0, r6, #0
	movs r1, #10
	bl sub_0800F224
	adds r1, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	subs r0, r6, r0
	adds r1, r5, #0
	movs r2, #16
	bl sub_0800E86C
	adds r3, r0, #0
	lsls r3, r3, #16
	lsrs r3, r3, #16
	str r4, [sp, #0]
	movs r0, #31
	movs r1, #5
	movs r2, #2
	bl sub_08007670
.L080078F4:
	ldr r0, [pc, #28]
	ldr r0, [r0, #0]
	cmp r8, r0
	bne .L08007904
	ldr r0, [pc, #24]
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq .L080079E8
.L08007904:
	mov r0, r8
	cmp r0, #0
	beq .L080079DC
	movs r4, #0
	b .L0800793E
	movs r0, r0
	lsrs r0, r3, #6
	lsls r1, r0, #8
	asrs r0, r0, #13
	lsls r0, r0, #12
	ldr r4, [r1, #124]
	lsls r0, r0, #12
.L0800791C:
	movs r0, #0
	ldr r1, [pc, #92]
	movs r2, #40
	bl sub_0800E86C
	adds r3, r0, #0
	lsls r3, r3, #16
	lsrs r3, r3, #16
	adds r1, r4, #4
	movs r0, #240
	lsls r0, r0, #8
	str r0, [sp, #0]
	movs r0, #31
	movs r2, #1
	bl sub_08007670
	adds r4, #1
.L0800793E:
	mov r0, r8
	movs r1, #7
	bl sub_0800F224
	cmp r4, r0
	bcc .L0800791C
	mov r0, r8
	movs r1, #7
	bl sub_08012844
	adds r1, r0, #0
	cmp r1, #0
	beq .L08007980
	movs r0, #8
	subs r0, r0, r1
	ldr r1, [pc, #28]
	movs r2, #40
	bl sub_0800E86C
	adds r3, r0, #0
	lsls r3, r3, #16
	lsrs r3, r3, #16
	adds r1, r4, #4
	movs r0, #240
	lsls r0, r0, #8
	str r0, [sp, #0]
	movs r0, #31
	movs r2, #1
	bl sub_08007670
	b .L080079A8
	lsrs r0, r3, #18
	lsls r1, r0, #8
.L08007980:
	ldr r1, [pc, #60]
	movs r0, #1
	movs r2, #40
	bl sub_0800E86C
	adds r3, r0, #0
	lsls r3, r3, #16
	lsrs r3, r3, #16
	adds r1, r4, #3
	movs r0, #240
	lsls r0, r0, #8
	str r0, [sp, #0]
	movs r0, #31
	movs r2, #1
	bl sub_08007670
	adds r0, r4, #4
	movs r1, #1
	bl sub_0800E75C
.L080079A8:
	adds r4, #5
	cmp r4, #14
	bhi .L080079E8
.L080079AE:
	adds r0, r4, #0
	movs r1, #1
	bl sub_0800E75C
	adds r4, #1
	cmp r4, #14
	bls .L080079AE
	b .L080079E8
	movs r0, r0
	lsrs r0, r3, #18
	lsls r1, r0, #8
.L080079C4:
	ldr r4, [pc, #16]
	str r5, [r4, #0]
	bl sub_08008A2C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	ldr r1, [r4, #0]
	bl sub_0800D3C8
	b .L08007A52
	ldr r0, [r1, #124]
	lsls r0, r0, #12
.L080079DC:
	movs r0, #4
	movs r1, #1
	movs r2, #9
	movs r3, #0
	bl sub_0800E798
.L080079E8:
	bl sub_08008A2C
	ldr r1, [pc, #240]
	lsls r0, r0, #24
	lsrs r0, r0, #23
	adds r0, r0, r1
	movs r1, #128
	lsls r1, r1, #1
	ldrh r0, [r0, #0]
	ands r1, r0
	cmp r1, #0
	beq .L08007A52
	movs r1, #0
	mov r9, r1
	ldr r0, [pc, #220]
	ldr r1, [r0, #0]
	adds r0, r1, #1
	cmp r0, #1
	bgt .L08007A3A
	lsls r0, r1, #24
	lsrs r4, r0, #24
	cmp r4, #1
	bhi .L08007A3A
	ldr r6, [pc, #208]
.L08007A18:
	adds r5, r4, #1
	cmp r5, #1
	bgt .L08007A3A
	bl sub_08008A2C
	lsls r0, r0, #24
	lsrs r0, r0, #23
	adds r0, #1
	adds r0, r4, r0
	adds r0, r0, r6
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L080079C4
	lsls r0, r5, #24
	lsrs r4, r0, #24
	cmp r4, #1
	bls .L08007A18
.L08007A3A:
	mov r0, r9
	cmp r0, #0
	bne .L08007A52
	ldr r4, [pc, #160]
	str r0, [r4, #0]
	bl sub_08008A2C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	ldr r1, [r4, #0]
	bl sub_0800D3C8
.L08007A52:
	ldr r4, [pc, #152]
	bl sub_08008A2C
	lsls r0, r0, #24
	lsrs r0, r0, #23
	adds r0, r0, r4
	ldr r1, [pc, #144]
	ldrh r6, [r0, #0]
	ldrh r0, [r0, #0]
	ldrh r1, [r1, #0]
	cmp r0, r1
	bne .L08007A76
	ldr r0, [pc, #136]
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq .L08007B60
	cmp r6, #0
	beq .L08007B60
.L08007A76:
	movs r5, #0
	str r5, [sp, #0]
	ldr r0, [pc, #124]
	str r0, [sp, #4]
	movs r4, #31
	str r4, [sp, #8]
	movs r0, #91
	str r0, [sp, #12]
	movs r0, #14
	str r0, [sp, #16]
	movs r0, #0
	movs r1, #17
	movs r2, #5
	movs r3, #3
	bl sub_080076B0
	str r5, [sp, #0]
	ldr r0, [pc, #96]
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r0, #106
	str r0, [sp, #12]
	movs r0, #15
	str r0, [sp, #16]
	movs r0, #0
	movs r1, #18
	movs r2, #2
	movs r3, #2
	bl sub_080076B0
	lsls r0, r6, #24
	cmp r0, #0
	blt .L08007B04
	cmp r6, #9
	bhi .L08007B04
	ldr r1, [pc, #64]
	adds r0, r6, #0
	movs r2, #28
	bl sub_0800E86C
	adds r3, r0, #0
	lsls r3, r3, #16
	lsrs r3, r3, #16
	movs r0, #224
	lsls r0, r0, #8
	str r0, [sp, #0]
	movs r0, #31
	movs r1, #2
	movs r2, #19
	bl sub_08007670
	b .L08007B60
	movs r0, r0
	asrs r4, r3, #21
	lsls r0, r0, #12
	ldr r0, [r1, #124]
	lsls r0, r0, #12
	movs r2, #84
	lsls r0, r0, #12
	movs r2, #92
	lsls r0, r0, #12
	asrs r4, r1, #13
	lsls r0, r0, #12
	ldr r4, [r1, #124]
	lsls r0, r0, #12
	asrs r0, r3, #11
	lsls r1, r0, #8
	asrs r0, r7, #18
	lsls r1, r0, #8
	lsrs r0, r3, #12
	lsls r1, r0, #8
.L08007B04:
	adds r0, r6, #0
	subs r0, #10
	cmp r0, #89
	bhi .L08007B60
	adds r0, r6, #0
	movs r1, #10
	bl sub_0800F224
	ldr r5, [pc, #196]
	adds r1, r5, #0
	movs r2, #28
	bl sub_0800E86C
	adds r3, r0, #0
	lsls r3, r3, #16
	lsrs r3, r3, #16
	movs r4, #224
	lsls r4, r4, #8
	str r4, [sp, #0]
	movs r0, #31
	movs r1, #2
	movs r2, #19
	bl sub_08007670
	adds r0, r6, #0
	movs r1, #10
	bl sub_0800F224
	adds r1, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	subs r0, r6, r0
	adds r1, r5, #0
	movs r2, #28
	bl sub_0800E86C
	adds r3, r0, #0
	lsls r3, r3, #16
	lsrs r3, r3, #16
	str r4, [sp, #0]
	movs r0, #31
	movs r1, #3
	movs r2, #19
	bl sub_08007670
.L08007B60:
	ldr r0, [pc, #124]
	ldr r0, [r0, #0]
	cmp r7, r0
	bne .L08007B7A
	ldr r0, [pc, #120]
	ldr r0, [r0, #0]
	cmp sl, r0
	bne .L08007B7A
	ldr r0, [pc, #116]
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L08007B7A
	b .L08007D0A
.L08007B7A:
	movs r0, #0
	str r0, [sp, #0]
	ldr r0, [pc, #108]
	str r0, [sp, #4]
	movs r5, #31
	str r5, [sp, #8]
	movs r0, #73
	str r0, [sp, #12]
	movs r4, #14
	str r4, [sp, #16]
	movs r0, #24
	movs r1, #0
	movs r2, #6
	movs r3, #3
	bl sub_080076B0
	ldr r0, [pc, #84]
	ldr r0, [r0, #0]
	lsls r0, r0, #1
	str r0, [sp, #0]
	ldr r0, [pc, #80]
	str r0, [sp, #4]
	str r5, [sp, #8]
	movs r0, #48
	str r0, [sp, #12]
	str r4, [sp, #16]
	movs r0, #25
	movs r1, #0
	movs r2, #2
	movs r3, #2
	bl sub_080076B0
	lsls r0, r7, #24
	cmp r0, #0
	blt .L08007BF8
	cmp r7, #9
	bhi .L08007BF8
	ldr r1, [pc, #20]
	adds r0, r7, #0
	movs r2, #28
	bl sub_0800E86C
	adds r3, r0, #0
	lsls r3, r3, #16
	lsrs r3, r3, #16
	movs r0, #224
	lsls r0, r0, #8
	str r0, [sp, #0]
	b .L08007CB8
	lsrs r0, r3, #12
	lsls r1, r0, #8
	asrs r0, r1, #13
	lsls r0, r0, #12
	asrs r4, r0, #13
	lsls r0, r0, #12
	ldr r4, [r1, #124]
	lsls r0, r0, #12
	asrs r0, r3, #2
	lsls r1, r0, #8
	ldr r0, [r1, #124]
	lsls r0, r0, #12
	lsrs r0, r3, #22
	lsls r1, r0, #8
.L08007BF8:
	adds r0, r7, #0
	subs r0, #10
	cmp r0, #89
	bhi .L08007C24
	adds r0, r7, #0
	movs r1, #10
	bl sub_0800F224
	ldr r5, [pc, #20]
	adds r1, r5, #0
	movs r2, #28
	bl sub_0800E86C
	adds r3, r0, #0
	lsls r3, r3, #16
	lsrs r3, r3, #16
	movs r4, #224
	lsls r4, r4, #8
	b .L08007C8A
	movs r0, r0
	lsrs r0, r3, #12
	lsls r1, r0, #8
.L08007C24:
	adds r1, r7, #0
	subs r1, #100
	ldr r0, [pc, #152]
	cmp r1, r0
	bhi .L08007CCC
	adds r0, r7, #0
	movs r1, #100
	bl sub_0800F224
	ldr r5, [pc, #144]
	adds r1, r5, #0
	movs r2, #28
	bl sub_0800E86C
	adds r3, r0, #0
	lsls r3, r3, #16
	lsrs r3, r3, #16
	movs r4, #224
	lsls r4, r4, #8
	str r4, [sp, #0]
	movs r0, #31
	movs r1, #27
	movs r2, #0
	bl sub_08007670
	adds r0, r7, #0
	movs r1, #100
	bl sub_0800F224
	movs r1, #100
	muls r0, r1
	subs r6, r7, r0
	adds r0, r6, #0
	movs r1, #10
	bl sub_0800F224
	adds r1, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	movs r1, #10
	bl sub_0800F224
	adds r6, r0, #0
	adds r1, r5, #0
	movs r2, #28
	bl sub_0800E86C
	adds r3, r0, #0
	lsls r3, r3, #16
	lsrs r3, r3, #16
.L08007C8A:
	str r4, [sp, #0]
	movs r0, #31
	movs r1, #28
	movs r2, #0
	bl sub_08007670
	adds r0, r7, #0
	movs r1, #10
	bl sub_0800F224
	adds r1, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	subs r0, r7, r0
	adds r1, r5, #0
	movs r2, #28
	bl sub_0800E86C
	adds r3, r0, #0
	lsls r3, r3, #16
	lsrs r3, r3, #16
	str r4, [sp, #0]
.L08007CB8:
	movs r0, #31
	movs r1, #29
	movs r2, #0
	bl sub_08007670
	b .L08007D0A
	lsls r3, r0, #14
	movs r0, r0
	lsrs r0, r3, #12
	lsls r1, r0, #8
.L08007CCC:
	ldr r5, [pc, #100]
	movs r0, #10
	adds r1, r5, #0
	movs r2, #28
	bl sub_0800E86C
	adds r3, r0, #0
	lsls r3, r3, #16
	lsrs r3, r3, #16
	movs r4, #224
	lsls r4, r4, #8
	str r4, [sp, #0]
	movs r0, #31
	movs r1, #28
	movs r2, #0
	bl sub_08007670
	movs r0, #11
	adds r1, r5, #0
	movs r2, #28
	bl sub_0800E86C
	adds r3, r0, #0
	lsls r3, r3, #16
	lsrs r3, r3, #16
	str r4, [sp, #0]
	movs r0, #31
	movs r1, #29
	movs r2, #0
	bl sub_08007670
.L08007D0A:
	ldr r0, [pc, #44]
	mov r1, r8
	str r1, [r0, #0]
	ldr r0, [pc, #40]
	mov r1, sl
	str r1, [r0, #0]
	ldr r0, [pc, #40]
	str r7, [r0, #0]
	ldr r1, [pc, #40]
	movs r0, #0
	strb r0, [r1, #0]
	movs r0, #1
	add sp, #20
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000
	.4byte 0x02010B18
	.4byte 0x03001340
	.4byte 0x03001344
	.4byte 0x03001348
	.4byte 0x03006FCC

	.thumb
	.align 1, 0
	.global sub_08007D48
	.thumb_func
sub_08007D48:
	ldr r1, [pc, #40]
	ldr r0, [pc, #44]
	str r0, [r1, #0]
	ldr r2, [pc, #44]
	str r2, [r1, #4]
	ldr r0, [pc, #44]
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [pc, #40]
	str r2, [r0, #0]
	ldr r1, [pc, #40]
	ldr r2, [pc, #44]
	adds r0, r2, #0
	strh r0, [r1, #0]
	ldr r1, [pc, #40]
	movs r0, #8
	strh r0, [r1, #0]
	ldr r1, [pc, #40]
	movs r0, #1
	strh r0, [r1, #0]
	bx lr
	.2byte 0x0000
	.4byte 0x040000D4
	.4byte 0x02000244
	.4byte 0x03001350
	.4byte 0x84000080
	.4byte 0x03007FFC
	.4byte 0x04000200
	.4byte 0x00002001
	.4byte 0x04000004
	.4byte 0x04000208

	.thumb
	.align 1, 0
	.global sub_08007D98
	.thumb_func
sub_08007D98:
	ldr r2, [pc, #12]
	movs r1, #1
	lsls r1, r0
	ldrh r0, [r2, #0]
	orrs r1, r0
	strh r1, [r2, #0]
	bx lr
	.2byte 0x0000
	.4byte 0x04000200
	.4byte 0x21014A03
	.4byte 0x88104081
	.4byte 0x80104388
	.4byte 0x00004770
	.4byte 0x04000200

	.thumb
	.align 1, 0
	.global sub_08007DC0
	.thumb_func
sub_08007DC0:
	ldr r2, [pc, #8]
	lsls r0, r0, #2
	adds r0, r0, r2
	str r1, [r0, #0]
	bx lr
	.2byte 0x0000
	.4byte 0x03006FD0

	.thumb
	.align 1, 0
	.global sub_08007DD0
	.thumb_func
sub_08007DD0:
	ldr r1, [pc, #8]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [pc, #8]
	str r1, [r0, #0]
	bx lr
	.4byte 0x03006FD0
	.4byte 0x02002A45
	.4byte 0x00004770
	.4byte 0x20014901
	.4byte 0x47708008
	.4byte 0x03007FF8

	.thumb
	.align 1, 0
	.global sub_08007DF4
	.thumb_func
sub_08007DF4:
	lsls r0, r0, #16
	lsrs r2, r0, #16
	lsls r1, r1, #16
	lsrs r1, r1, #16
	cmp r2, #1
	bne .L08007E08
	ldr r0, [pc, #0]
	b .L08007E46
	asrs r0, r5, #21
	lsls r0, r0, #12
.L08007E08:
	cmp r2, #2
	bne .L08007E14
	ldr r0, [pc, #0]
	b .L08007E46
	asrs r2, r5, #21
	lsls r0, r0, #12
.L08007E14:
	movs r0, #128
	lsls r0, r0, #2
	cmp r2, r0
	bne .L08007E24
	ldr r0, [pc, #0]
	b .L08007E46
	asrs r4, r4, #21
	lsls r0, r0, #12
.L08007E24:
	movs r0, #128
	lsls r0, r0, #1
	cmp r2, r0
	bne .L08007E34
	ldr r0, [pc, #0]
	b .L08007E46
	asrs r6, r4, #21
	lsls r0, r0, #12
.L08007E34:
	cmp r2, #4
	bne .L08007E40
	ldr r0, [pc, #0]
	b .L08007E46
	asrs r4, r5, #21
	lsls r0, r0, #12
.L08007E40:
	cmp r2, #8
	bne .L08007E48
	ldr r0, [pc, #4]
.L08007E46:
	strh r1, [r0, #0]
.L08007E48:
	bx lr
	.2byte 0x0000
	.4byte 0x0300156E

	.thumb
	.align 1, 0
	.global sub_08007E50
	.thumb_func
sub_08007E50:
	push {lr}
	movs r0, #1
	movs r1, #1
	bl sub_08007DF4
	movs r0, #2
	movs r1, #2
	bl sub_08007DF4
	movs r1, #128
	lsls r1, r1, #2
	adds r0, r1, #0
	bl sub_08007DF4
	movs r1, #128
	lsls r1, r1, #1
	adds r0, r1, #0
	bl sub_08007DF4
	movs r0, #4
	movs r1, #4
	bl sub_08007DF4
	movs r0, #8
	movs r1, #8
	bl sub_08007DF4
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08007E8C
	.thumb_func
sub_08007E8C:
	push {r4, lr}
	ldr r2, [pc, #24]
	ldrh r2, [r2, #0]
	ldr r4, [pc, #24]
	adds r3, r4, #0
	eors r3, r2
	adds r2, r3, #0
	ldrh r4, [r0, #0]
	bics r2, r4
	strh r2, [r1, #0]
	strh r3, [r0, #0]
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x04000130
	.4byte 0x000003FF

	.thumb
	.align 1, 0
	.global sub_08007EB0
	.thumb_func
sub_08007EB0:
	lsls r0, r0, #16
	lsrs r2, r0, #16
	movs r1, #240
	ands r1, r2
	movs r0, #128
	lsls r0, r0, #2
	ands r0, r2
	cmp r0, #0
	beq .L08007EC8
	ldr r0, [pc, #80]
	ldrh r0, [r0, #0]
	orrs r1, r0
.L08007EC8:
	movs r0, #128
	lsls r0, r0, #1
	ands r0, r2
	cmp r0, #0
	beq .L08007ED8
	ldr r0, [pc, #68]
	ldrh r0, [r0, #0]
	orrs r1, r0
.L08007ED8:
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq .L08007EE6
	ldr r0, [pc, #56]
	ldrh r0, [r0, #0]
	orrs r1, r0
.L08007EE6:
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq .L08007EF4
	ldr r0, [pc, #48]
	ldrh r0, [r0, #0]
	orrs r1, r0
.L08007EF4:
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	beq .L08007F02
	ldr r0, [pc, #36]
	ldrh r0, [r0, #0]
	orrs r1, r0
.L08007F02:
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq .L08007F10
	ldr r0, [pc, #28]
	ldrh r0, [r0, #0]
	orrs r1, r0
.L08007F10:
	adds r0, r1, #0
	bx lr
	.4byte 0x03001564
	.4byte 0x03001566
	.4byte 0x03001568
	.4byte 0x0300156A
	.4byte 0x0300156C
	.4byte 0x0300156E

	.thumb
	.align 1, 0
	.global sub_08007F2C
	.thumb_func
sub_08007F2C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #12
	movs r4, #0
	mov r8, r4
	bl sub_0800E184
	ldr r0, [pc, #224]
	ldr r1, [pc, #228]
	movs r2, #0
	movs r3, #16
	bl sub_080075F8
	ldr r0, [pc, #220]
	str r0, [sp, #0]
	add r0, sp, #4
	movs r1, #2
	movs r2, #2
	movs r3, #0
	bl sub_0800E220
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08007F82
	ldr r0, [sp, #4]
	bl sub_0800E3DC
	ldr r0, [sp, #4]
	movs r1, #0
	bl sub_0800E384
	ldr r0, [sp, #4]
	movs r1, #1
	movs r2, #0
	bl sub_0800E390
	ldr r0, [sp, #4]
	movs r1, #16
	movs r2, #88
	movs r3, #0
	bl sub_0800E39C
.L08007F82:
	add r0, sp, #8
	ldr r1, [pc, #164]
	str r1, [sp, #0]
	movs r1, #2
	movs r2, #2
	movs r3, #0
	bl sub_0800E220
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08007FB2
	ldr r0, [sp, #8]
	bl sub_0800E3DC
	ldr r0, [sp, #8]
	movs r1, #0
	bl sub_0800E384
	ldr r0, [sp, #8]
	movs r1, #208
	movs r2, #88
	movs r3, #0
	bl sub_0800E39C
.L08007FB2:
	movs r2, #128
	lsls r2, r2, #19
	ldrh r0, [r2, #0]
	movs r3, #130
	lsls r3, r3, #5
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2, #0]
	ldr r1, [pc, #108]
	movs r0, #0
	bl sub_08007DC0
	ldr r3, [pc, #104]
	movs r0, #1
	strh r0, [r3, #0]
	ldr r0, [pc, #100]
	ldrb r0, [r0, #0]
	cmp r0, #150
	bne .L08007FF0
	ldr r0, [pc, #96]
	ldr r1, [pc, #100]
	ldr r2, [r0, #0]
	ldr r0, [r1, #0]
	cmp r2, r0
	bne .L08007FF0
	ldrh r0, [r3, #0]
	movs r2, #128
	lsls r2, r2, #6
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r3, #0]
.L08007FF0:
	ldr r1, [pc, #80]
	movs r0, #8
	strh r0, [r1, #0]
	ldr r1, [pc, #80]
	movs r0, #1
	strh r0, [r1, #0]
	ldr r1, [pc, #76]
	ldr r0, [pc, #80]
	str r0, [r1, #0]
.L08008002:
	ldr r0, [pc, #80]
	ldr r1, [r0, #0]
	movs r0, #192
	lsls r0, r0, #1
	ands r1, r0
	subs r0, #128
	cmp r1, r0
	bne .L0800801A
	ldr r0, [pc, #68]
	ldr r0, [r0, #0]
	cmp r0, #3
	bls .L0800805C
.L0800801A:
	bl sub_0800F234
	b .L08008064
	asrs r0, r1, #27
	lsls r1, r0, #8
	lsls r0, r0, #8
	lsls r0, r0, #20
	asrs r0, r5, #29
	lsls r1, r0, #8
	asrs r0, r5, #27
	lsls r1, r0, #8
	ldr r5, [pc, #20]
	lsls r0, r0, #8
	lsls r0, r0, #8
	lsls r0, r0, #16
	lsls r2, r6, #2
	lsrs r0, r0, #32
	lsls r4, r5, #2
	lsrs r0, r0, #32
	asrs r0, r5, #26
	lsls r1, r0, #8
	movs r4, r0
	lsls r0, r0, #16
	lsls r0, r1, #8
	lsls r0, r0, #16
	asrs r0, r2, #23
	lsls r0, r0, #12
	asrs r5, r6, #21
	lsls r0, r0, #12
	asrs r4, r0, #23
	lsls r0, r0, #12
	asrs r0, r0, #23
	lsls r0, r0, #12
.L0800805C:
	movs r0, #1
	movs r1, #128
	bl sub_0800F228
.L08008064:
	ldr r0, [pc, #16]
	ldr r0, [r0, #0]
	cmp r0, #5
	bls .L0800806E
	b .L080081B4
.L0800806E:
	lsls r0, r0, #2
	ldr r1, [pc, #8]
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	asrs r0, r0, #23
	lsls r0, r0, #12
	asrs r0, r6, #26
	lsls r1, r0, #8
	ldr r1, [pc, #44]
	movs r0, #0
	str r0, [r1, #0]
	ldr r1, [pc, #44]
	movs r0, #7
	bl sub_08007DC0
	ldr r0, [pc, #32]
	ldr r0, [r0, #0]
	movs r1, #240
	lsls r1, r1, #4
	ands r0, r1
	lsrs r0, r0, #8
	bl sub_08009B84
	movs r3, #0
	mov r8, r3
	ldr r1, [pc, #20]
	ldr r0, [r1, #0]
	cmp r0, #0
	bne .L080080BC
	movs r0, #3
	b .L080081B2
	movs r0, r0
	asrs r0, r1, #23
	lsls r0, r0, #12
	ldr r5, [pc, #292]
	lsls r0, r0, #8
	asrs r0, r0, #23
	lsls r0, r0, #12
.L080080BC:
	movs r0, #2
	b .L080081B2
	ldr r0, [pc, #112]
	ldr r1, [r0, #0]
	movs r0, #16
	ands r0, r1
	cmp r0, #0
	beq .L080080E4
	movs r0, #64
	ands r1, r0
	cmp r1, #0
	beq .L080080DE
	ldr r0, [pc, #96]
	ldr r1, [r0, #0]
	ldrb r0, [r1, #0]
	adds r0, #1
	strb r0, [r1, #0]
.L080080DE:
	ldr r1, [pc, #92]
	movs r0, #3
	str r0, [r1, #0]
.L080080E4:
	.2byte 0xf001, 0xfdaa @ bl 0x8009c3c
	ldr r5, [pc, #72]
	ldr r0, [r5, #0]
	movs r1, #32
	ands r0, r1
	cmp r0, #0
	beq .L080080FA
	ldr r1, [pc, #68]
	movs r0, #4
	str r0, [r1, #0]
.L080080FA:
	ldr r0, [r5, #0]
	movs r1, #16
	ands r0, r1
	cmp r0, #0
	beq .L08008108
	movs r0, #1
	mov r8, r0
.L08008108:
	ldr r4, [pc, #52]
	adds r0, r4, #0
	bl sub_08009CA4
	str r0, [r5, #0]
	.2byte 0xf001, 0xfd93 @ bl 0x8009c3c
	ldr r2, [pc, #44]
	ldrb r0, [r4, #5]
	ldrb r1, [r2, #0]
	cmp r1, r0
	beq .L08008128
	strb r0, [r2, #0]
	ldr r1, [pc, #36]
	movs r0, #0
	str r0, [r1, #0]
.L08008128:
	ldr r1, [pc, #32]
	ldrb r2, [r2, #0]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r4, [r0, #0]
	b .L080081B4
	asrs r4, r0, #23
	lsls r0, r0, #12
	asrs r0, r2, #23
	lsls r0, r0, #12
	asrs r0, r0, #23
	lsls r0, r0, #12
	asrs r0, r0, #22
	lsls r0, r0, #12
	asrs r4, r2, #23
	lsls r0, r0, #12
	asrs r0, r3, #23
	lsls r0, r0, #12
	adds r0, r5, r3
	lsls r1, r0, #8
	.2byte 0xf001, 0xfd80 @ bl 0x8009c54
	ldr r0, [pc, #20]
	ldrb r0, [r0, #0]
	cmp r0, #11
	bne .L08008170
	movs r0, #6
	.2byte 0xf7ff, 0xfe25 @ bl 0x8007dac
	movs r0, #7
	.2byte 0xf7ff, 0xfe22 @ bl 0x8007dac
	b .L08008280
	movs r0, r0
	asrs r4, r2, #23
	lsls r0, r0, #12
.L08008170:
	ldr r1, [pc, #24]
	movs r0, #7
	bl sub_08007DC0
	ldr r0, [pc, #20]
	ldr r0, [r0, #0]
	movs r1, #128
	ands r0, r1
	adds r1, r4, #0
	bl sub_0800DBF0
	ldr r1, [pc, #12]
	movs r0, #5
	b .L080081B2
	ldrh r5, [r6, #22]
	lsls r0, r0, #8
	asrs r4, r0, #23
	lsls r0, r0, #12
	asrs r0, r0, #23
	lsls r0, r0, #12
	ldr r0, [pc, #100]
	bl sub_0800DC8C
	cmp r0, #0
	beq .L080081B4
	ldr r2, [pc, #96]
	ldr r1, [pc, #96]
	ldr r0, [r1, #0]
	str r0, [r2, #0]
	movs r0, #0
	str r0, [r1, #0]
	ldr r1, [pc, #92]
	movs r0, #1
.L080081B2:
	str r0, [r1, #0]
.L080081B4:
	ldr r2, [pc, #88]
	ldrb r0, [r2, #0]
	cmp r0, #0
	bne .L080081CE
	ldr r0, [pc, #72]
	ldr r0, [r0, #0]
	movs r1, #128
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq .L080081CE
	movs r0, #1
	strb r0, [r2, #0]
.L080081CE:
	ldr r0, [pc, #68]
	mov r1, r8
	bl sub_08009DE4
	adds r0, r7, #1
	lsls r0, r0, #24
	lsrs r0, r0, #24
	adds r7, r0, #0
	cmp r7, #10
	bls .L08008250
	movs r7, #0
	adds r0, r6, #1
	lsls r0, r0, #24
	lsrs r6, r0, #24
	cmp r6, #3
	bls .L080081F0
	movs r6, #0
.L080081F0:
	cmp r6, #1
	beq .L08008228
	cmp r6, #1
	bgt .L08008218
	cmp r6, #0
	beq .L0800821E
	b .L08008250
	movs r0, r0
	asrs r0, r3, #23
	lsls r0, r0, #12
	asrs r0, r1, #23
	lsls r0, r0, #12
	asrs r4, r0, #23
	lsls r0, r0, #12
	asrs r0, r0, #23
	lsls r0, r0, #12
	asrs r4, r1, #23
	lsls r0, r0, #12
	asrs r0, r6, #21
	lsls r0, r0, #12
.L08008218:
	cmp r6, #2
	beq .L08008240
	b .L08008250
.L0800821E:
	ldr r0, [sp, #4]
	ldr r1, [pc, #0]
	b .L0800822C
	asrs r0, r5, #29
	lsls r1, r0, #8
.L08008228:
	ldr r0, [sp, #4]
	ldr r1, [pc, #16]
.L0800822C:
	str r1, [sp, #0]
	movs r1, #2
	movs r2, #2
	movs r3, #0
	bl sub_0800E34C
	b .L08008250
	movs r0, r0
	asrs r0, r5, #31
	lsls r1, r0, #8
.L08008240:
	ldr r0, [sp, #4]
	ldr r1, [pc, #48]
	str r1, [sp, #0]
	movs r1, #2
	movs r2, #2
	movs r3, #0
	bl sub_0800E34C
.L08008250:
	ldr r0, [sp, #4]
	ldr r3, [pc, #36]
	ldr r1, [pc, #36]
	ldrb r1, [r1, #0]
	lsls r2, r1, #12
	ldr r1, [r3, #0]
	adds r1, r1, r2
	lsls r1, r1, #2
	lsrs r1, r1, #10
	adds r1, #16
	movs r2, #88
	movs r3, #0
	bl sub_0800E39C
	bl sub_0800E1CC
	b .L08008002
	.2byte 0x0000
	.4byte 0x02011868
	.4byte 0x030015D8
	.4byte 0x030015D4
.L08008280:
	.4byte 0xBC08B003
	.4byte 0xBCF04698
	.4byte 0x4700BC01

	.thumb
	.align 1, 0
	.global sub_0800828C
	.thumb_func
sub_0800828C:
	ldr r3, [pc, #68]
	ldr r2, [r3, #0]
	cmp r2, #0
	bne .L080082D0
	ldr r1, [pc, #64]
	adds r0, r1, #0
	adds r0, #20
	str r0, [r1, #12]
	str r0, [r1, #16]
	adds r0, #64
	str r0, [r1, #52]
	adds r0, #16
	str r0, [r1, #56]
	adds r0, #16
	str r0, [r1, #60]
	adds r0, #16
	str r0, [r1, #64]
	adds r0, #16
	str r0, [r1, #68]
	adds r0, #16
	str r0, [r1, #72]
	adds r0, #16
	str r0, [r1, #76]
	adds r0, #16
	str r0, [r1, #80]
	strb r2, [r1, #4]
	str r2, [r1, #8]
	movs r0, #255
	strb r0, [r1, #5]
	movs r0, #1
	negs r0, r0
	str r0, [r1, #0]
	movs r0, #1
	str r0, [r3, #0]
.L080082D0:
	bx lr
	.2byte 0x0000
	.4byte 0x03007008
	.4byte 0x030015DC

	.thumb
	.align 1, 0
	.global sub_080082DC
	.thumb_func
sub_080082DC:
	ldr r1, [pc, #4]
	str r0, [r1, #8]
	bx lr
	.2byte 0x0000
	.4byte 0x030015DC

	.thumb
	.align 1, 0
	.global sub_080082E8
	.thumb_func
sub_080082E8:
	push {r4, lr}
	ldr r2, [pc, #68]
	movs r1, #1
	strh r1, [r2, #0]
	subs r2, #212
	movs r1, #0
	strh r1, [r2, #0]
	ldr r4, [pc, #60]
	movs r2, #128
	lsls r2, r2, #6
	adds r1, r2, #0
	strh r1, [r4, #0]
	ldrh r1, [r4, #0]
	movs r3, #128
	lsls r3, r3, #7
	adds r2, r3, #0
	orrs r1, r2
	orrs r1, r0
	strh r1, [r4, #0]
	bl sub_0800F234
	bl sub_0800F234
	ldrh r1, [r4, #0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq .L0800832A
	ldrh r1, [r4, #0]
	movs r0, #128
	ands r0, r1
	cmp r0, #0
	beq .L08008338
.L0800832A:
	movs r0, #1
	b .L0800833A
	movs r0, r0
	lsls r0, r1, #8
	lsls r0, r0, #16
	lsls r0, r5, #4
	lsls r0, r0, #16
.L08008338:
	movs r0, #0
.L0800833A:
	pop {r4}
	pop {r1}
	bx r1

	.thumb
	.align 1, 0
	.global sub_08008340
	.thumb_func
sub_08008340:
	push {r4, r5, r6, lr}
	ldr r2, [pc, #48]
	movs r1, #1
	strh r1, [r2, #0]
	subs r2, #212
	movs r1, #0
	strh r1, [r2, #0]
	ldr r3, [pc, #40]
	movs r2, #128
	lsls r2, r2, #6
	adds r1, r2, #0
	strh r1, [r3, #0]
	ldrh r1, [r3, #0]
	movs r4, #128
	lsls r4, r4, #7
	adds r2, r4, #0
	orrs r1, r2
	orrs r1, r0
	strh r1, [r3, #0]
	ldrh r1, [r3, #0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq .L0800837C
	ldrh r1, [r3, #0]
	b .L0800839C
	lsls r0, r1, #8
	lsls r0, r0, #16
	lsls r0, r5, #4
	lsls r0, r0, #16
.L0800837C:
	ldr r0, [pc, #96]
	ldr r0, [r0, #8]
	cmp r0, #0
	beq .L0800838E
	bl sub_08012324
	cmp r0, #0
	bne .L0800838E
	b .L08008518
.L0800838E:
	ldr r2, [pc, #84]
	ldrh r1, [r2, #0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq .L0800837C
	ldrh r1, [r2, #0]
.L0800839C:
	movs r0, #128
	ands r0, r1
	cmp r0, #0
	bne .L0800837C
	ldr r1, [pc, #64]
	ldr r2, [pc, #68]
	adds r0, r2, #0
	strh r0, [r1, #0]
	ldr r4, [pc, #52]
	ldrh r1, [r4, #0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne .L08008400
	ldr r1, [pc, #52]
	movs r0, #6
	bl sub_08007DC0
	movs r0, #6
	bl sub_08007D98
	ldr r1, [pc, #44]
	ldr r2, [pc, #44]
	adds r0, r2, #0
	strh r0, [r1, #0]
	ldrh r0, [r4, #0]
	movs r1, #128
	orrs r0, r1
	strh r0, [r4, #0]
	ldr r1, [pc, #36]
	movs r0, #192
	strh r0, [r1, #0]
	b .L0800840E
	movs r0, r0
	asrs r4, r3, #23
	lsls r0, r0, #12
	lsls r0, r5, #4
	lsls r0, r0, #16
	lsls r2, r5, #4
	lsls r0, r0, #16
	udf #173
	movs r0, r0
	adds r3, #205
	lsls r0, r0, #8
	lsls r4, r1, #4
	lsls r0, r0, #16
	strh r0, [r4, #30]
	movs r0, r0
	lsls r6, r1, #4
	lsls r0, r0, #16
.L08008400:
	ldr r1, [pc, #72]
	movs r0, #7
	bl sub_08007DC0
	movs r0, #7
	bl sub_08007D98
.L0800840E:
	ldr r2, [pc, #64]
	movs r1, #5
	ldrsb r1, [r2, r1]
	movs r0, #1
	negs r0, r0
	adds r5, r2, #0
	cmp r1, r0
	bne .L080084F2
	adds r6, r1, #0
	adds r4, r5, #0
.L08008422:
	ldr r0, [pc, #48]
	ldr r0, [r0, #0]
	cmp r0, #1
	bhi .L0800846E
	ldr r0, [r2, #8]
	cmp r0, #0
	beq .L080084E8
	bl sub_08012324
	cmp r0, #0
	bne .L080084E8
	ldr r0, [pc, #28]
	ldrh r1, [r0, #0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne .L0800845C
	movs r0, #6
	bl sub_08007DD0
	b .L08008462
	adds r3, #205
	lsls r0, r0, #8
	asrs r4, r3, #23
	lsls r0, r0, #12
	strb r4, [r1, #0]
	lsls r0, r0, #12
	lsls r0, r5, #4
	lsls r0, r0, #16
.L0800845C:
	movs r0, #7
	bl sub_08007DD0
.L08008462:
	movs r0, #0
	strb r0, [r4, #4]
	movs r0, #255
	strb r0, [r4, #5]
	movs r0, #0
	b .L08008536
.L0800846E:
	cmp r0, #2
	beq .L08008498
	cmp r0, #2
	bhi .L0800847C
	cmp r0, #1
	beq .L08008486
	b .L080084C8
.L0800847C:
	cmp r0, #3
	beq .L080084A8
	cmp r0, #4
	beq .L080084B8
	b .L080084C8
.L08008486:
	movs r0, #4
	movs r1, #14
	ldr r2, [pc, #8]
	bl sub_0800E6FC
	b .L080084D2
	movs r0, r0
	adds r4, r2, r4
	lsls r1, r0, #8
.L08008498:
	movs r0, #4
	movs r1, #14
	ldr r2, [pc, #4]
	bl sub_0800E6FC
	b .L080084D2
	adds r4, r5, r4
	lsls r1, r0, #8
.L080084A8:
	movs r0, #4
	movs r1, #14
	ldr r2, [pc, #4]
	bl sub_0800E6FC
	b .L080084D2
	adds r4, r0, r5
	lsls r1, r0, #8
.L080084B8:
	movs r0, #4
	movs r1, #14
	ldr r2, [pc, #4]
	bl sub_0800E6FC
	b .L080084D2
	adds r4, r3, r5
	lsls r1, r0, #8
.L080084C8:
	movs r0, #4
	movs r1, #7
	ldr r2, [pc, #52]
	bl sub_0800E6FC
.L080084D2:
	ldr r0, [pc, #52]
	ldrh r1, [r0, #0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq .L080084E8
	movs r0, #4
	movs r1, #15
	ldr r2, [pc, #40]
	bl sub_0800E6FC
.L080084E8:
	ldr r2, [pc, #36]
	movs r0, #5
	ldrsb r0, [r2, r0]
	cmp r0, r6
	beq .L08008422
.L080084F2:
	movs r0, #5
	ldrsb r0, [r5, r0]
	cmp r0, #0
	bne .L0800852C
	ldr r1, [pc, #24]
	movs r0, #6
	bl sub_08007DC0
	b .L08008534
	adds r4, r6, r5
	lsls r1, r0, #8
	lsls r0, r5, #4
	lsls r0, r0, #16
	adds r4, r1, r6
	lsls r1, r0, #8
	asrs r4, r3, #23
	lsls r0, r0, #12
	adds r5, #1
	lsls r0, r0, #8
.L08008518:
	ldr r0, [pc, #8]
	ldr r1, [pc, #12]
	bl sub_08007E8C
	movs r0, #0
	b .L08008536
	asrs r0, r2, #21
	lsls r0, r0, #12
	asrs r2, r2, #21
	lsls r0, r0, #12
.L0800852C:
	ldr r1, [pc, #12]
	movs r0, #7
	bl sub_08007DC0
.L08008534:
	movs r0, #1
.L08008536:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.4byte 0x02003501

	.thumb
	.align 1, 0
	.global sub_08008540
	.thumb_func
sub_08008540:
	push {lr}
	ldr r0, [pc, #20]
	ldrb r0, [r0, #5]
	lsls r0, r0, #24
	asrs r0, r0, #24
	cmp r0, #0
	bne .L0800855C
	movs r0, #6
	bl sub_08007DD0
	b .L08008562
	movs r0, r0
	asrs r4, r3, #23
	lsls r0, r0, #12
.L0800855C:
	movs r0, #7
	bl sub_08007DD0
.L08008562:
	ldr r0, [pc, #12]
	movs r1, #0
	strb r1, [r0, #4]
	movs r1, #255
	strb r1, [r0, #5]
	pop {r0}
	bx r0
	.4byte 0x030015DC

	.thumb
	.align 1, 0
	.global sub_08008574
	.thumb_func
sub_08008574:
	push {r4, r5, r6, r7, lr}
	adds r6, r1, #0
	ldr r4, [pc, #164]
	ldrb r3, [r4, #4]
	ldr r2, [r4, #16]
	ldrh r1, [r0, #0]
	strh r1, [r2, #0]
	ldr r2, [r4, #16]
	ldrh r1, [r0, #2]
	strh r1, [r2, #2]
	ldr r2, [r4, #16]
	ldrh r1, [r0, #4]
	strh r1, [r2, #4]
	ldr r2, [r4, #16]
	ldrh r1, [r0, #6]
	strh r1, [r2, #6]
	ldr r2, [r4, #16]
	ldrh r1, [r0, #8]
	strh r1, [r2, #8]
	ldr r2, [r4, #16]
	ldrh r1, [r0, #10]
	strh r1, [r2, #10]
	ldr r2, [r4, #16]
	ldrh r1, [r0, #12]
	strh r1, [r2, #12]
	ldr r1, [r4, #16]
	ldrh r0, [r0, #14]
	strh r0, [r1, #14]
	movs r7, #1
	subs r3, #1
	movs r0, #1
	negs r0, r0
	cmp r3, r0
	beq .L08008600
	lsls r0, r3, #2
	adds r0, #68
	adds r2, r0, r4
	lsls r0, r3, #4
	adds r1, r0, r6
.L080085C2:
	ldr r0, [r2, #0]
	ldrh r0, [r0, #0]
	strh r0, [r1, #0]
	ldr r0, [r2, #0]
	ldrh r0, [r0, #2]
	strh r0, [r1, #2]
	ldr r0, [r2, #0]
	ldrh r0, [r0, #4]
	strh r0, [r1, #4]
	ldr r0, [r2, #0]
	ldrh r0, [r0, #6]
	strh r0, [r1, #6]
	ldr r0, [r2, #0]
	ldrh r0, [r0, #8]
	strh r0, [r1, #8]
	ldr r0, [r2, #0]
	ldrh r0, [r0, #10]
	strh r0, [r1, #10]
	ldr r0, [r2, #0]
	ldrh r0, [r0, #12]
	strh r0, [r1, #12]
	ldr r0, [r2, #0]
	ldrh r0, [r0, #14]
	strh r0, [r1, #14]
	subs r2, #4
	subs r1, #16
	subs r3, #1
	movs r0, #1
	negs r0, r0
	cmp r3, r0
	bne .L080085C2
.L08008600:
	ldr r0, [pc, #32]
	ldrh r4, [r0, #0]
	lsrs r4, r4, #4
	movs r0, #3
	ands r4, r0
	bl sub_08008A2C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r4, r0
	beq .L08008618
	movs r7, #0
.L08008618:
	movs r4, #0
	ldr r5, [pc, #12]
	b .L0800865C
	movs r0, r0
	asrs r4, r3, #23
	lsls r0, r0, #12
	lsls r0, r5, #4
	lsls r0, r0, #16
	.2byte 0xffff @ .raw
	movs r0, r0
.L0800862C:
	cmp r4, #1
	beq .L08008646
	cmp r4, #1
	bcc .L0800863E
	cmp r4, #2
	beq .L0800864A
	cmp r4, #3
	beq .L08008652
	b .L0800865A
.L0800863E:
	ldrh r0, [r6, #0]
	cmp r0, r5
	bne .L0800865A
	b .L08008658
.L08008646:
	ldrh r2, [r6, #16]
	b .L08008654
.L0800864A:
	ldrh r0, [r6, #32]
	cmp r0, r5
	bne .L0800865A
	b .L08008658
.L08008652:
	ldrh r2, [r6, #48]
.L08008654:
	cmp r2, r5
	bne .L0800865A
.L08008658:
	movs r7, #0
.L0800865A:
	adds r4, #1
.L0800865C:
	bl sub_08008750
	cmp r4, r0
	bcc .L0800862C
	cmp r7, #1
	bne .L08008674
	ldr r1, [pc, #4]
	movs r0, #0
	b .L0800867A
	movs r0, r0
	strb r0, [r2, #0]
	lsls r0, r0, #12
.L08008674:
	ldr r1, [pc, #24]
	ldr r0, [r1, #0]
	adds r0, #1
.L0800867A:
	str r0, [r1, #0]
	ldr r0, [pc, #16]
	ldr r0, [r0, #0]
	cmp r0, #119
	bls .L08008710
	movs r0, #1
	movs r1, #192
	movs r2, #10
	bl sub_0800E0EC
	b .L08008698
	strb r0, [r2, #0]
	lsls r0, r0, #12
.L08008694:
	bl sub_0800F234
.L08008698:
	bl sub_0800E12C
	adds r4, r0, #0
	cmp r4, #0
	bne .L08008694
	bl sub_0800EA0C
	bl sub_0800739C
	ldr r0, [pc, #76]
	strh r4, [r0, #0]
	ldr r1, [pc, #76]
	ldr r2, [pc, #76]
	adds r0, r2, #0
	strh r0, [r1, #0]
	subs r1, #8
	movs r2, #138
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1, #0]
	bl sub_0800E7E0
	movs r1, #160
	lsls r1, r1, #19
	movs r2, #213
	lsls r2, r2, #7
	adds r0, r2, #0
	strh r0, [r1, #0]
	bl sub_0800E184
	bl sub_0800F234
	ldr r2, [pc, #40]
	movs r0, #0
	movs r1, #6
	bl sub_0800E6FC
	ldr r2, [pc, #36]
	movs r0, #0
	movs r1, #13
	bl sub_0800E6FC
	ldr r2, [pc, #28]
	movs r0, #0
	movs r1, #14
	bl sub_0800E6FC
.L080086F6:
	b .L080086F6
	lsls r0, r2, #1
	lsls r0, r0, #16
	movs r0, r1
	lsls r0, r0, #16
	subs r1, r0, #4
	movs r0, r0
	adds r4, r4, r6
	lsls r1, r0, #8
	adds r4, r0, r7
	lsls r1, r0, #8
	adds r4, r4, r7
	lsls r1, r0, #8
.L08008710:
	ldr r2, [pc, #48]
	ldr r1, [r2, #0]
	movs r0, #1
	negs r0, r0
	cmp r1, r0
	bne .L0800873C
	ldr r0, [r2, #12]
	ldr r1, [r2, #16]
	str r1, [r2, #12]
	str r0, [r2, #16]
	movs r0, #5
	ldrsb r0, [r2, r0]
	cmp r0, #0
	bne .L0800873C
	ldr r2, [pc, #24]
	ldrh r0, [r2, #0]
	movs r1, #128
	orrs r0, r1
	strh r0, [r2, #0]
	ldr r1, [pc, #20]
	movs r0, #192
	strh r0, [r1, #0]
.L0800873C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x030015DC
	.4byte 0x04000128
	.4byte 0x0400010E

	.thumb
	.align 1, 0
	.global sub_08008750
	.thumb_func
sub_08008750:
	ldr r0, [pc, #4]
	ldrb r0, [r0, #4]
	bx lr
	.2byte 0x0000
	.4byte 0x030015DC
	.4byte 0x79404802
	.4byte 0x16000600
	.4byte 0x00004770
	.4byte 0x030015DC

	.thumb
	.align 1, 0
	.global sub_0800876C
	.thumb_func
sub_0800876C:
	push {r4, r5, r6, r7, lr}
	ldr r3, [pc, #192]
	movs r0, #0
	str r0, [r3, #0]
	ldr r4, [pc, #188]
	ldrh r1, [r4, #0]
	movs r0, #4
	ands r0, r1
	lsls r0, r0, #16
	lsrs r1, r0, #16
	cmp r1, #0
	bne .L08008788
	ldr r0, [pc, #176]
	strh r1, [r0, #0]
.L08008788:
	ldrh r1, [r4, #0]
	movs r0, #64
	ands r0, r1
	cmp r0, #0
	bne .L080087E4
	ldr r2, [pc, #168]
	ldrh r0, [r2, #0]
	ldr r1, [pc, #168]
	cmp r0, r1
	bne .L080087A2
	ldr r0, [r3, #0]
	adds r0, #1
	str r0, [r3, #0]
.L080087A2:
	ldr r0, [pc, #160]
	ldrh r0, [r0, #0]
	cmp r0, r1
	bne .L080087B0
	ldr r0, [r3, #0]
	adds r0, #1
	str r0, [r3, #0]
.L080087B0:
	ldr r0, [pc, #148]
	ldrh r0, [r0, #0]
	cmp r0, r1
	bne .L080087BE
	ldr r0, [r3, #0]
	adds r0, #1
	str r0, [r3, #0]
.L080087BE:
	ldr r0, [pc, #140]
	ldrh r0, [r0, #0]
	cmp r0, r1
	bne .L080087CC
	ldr r0, [r3, #0]
	adds r0, #1
	str r0, [r3, #0]
.L080087CC:
	ldrh r0, [r2, #0]
	cmp r0, #20
	bne .L080087E4
	ldr r2, [pc, #124]
	ldrh r0, [r4, #0]
	lsrs r0, r0, #4
	movs r1, #3
	ands r0, r1
	strb r0, [r2, #5]
	ldrb r0, [r3, #0]
	adds r0, #1
	strb r0, [r2, #4]
.L080087E4:
	ldr r7, [pc, #108]
	ldr r1, [pc, #88]
	adds r0, r1, #0
	strh r0, [r7, #0]
	ldr r0, [pc, #64]
	ldr r0, [r0, #0]
	cmp r0, #1
	bls .L08008878
	ldr r5, [pc, #60]
	ldrh r1, [r5, #0]
	movs r6, #4
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne .L08008892
	ldr r2, [pc, #84]
	movs r0, #5
	movs r1, #15
	bl sub_0800E6FC
	ldr r0, [pc, #76]
	ldr r4, [pc, #80]
	adds r1, r4, #0
	bl sub_08007E8C
	movs r0, #8
	ldrh r4, [r4, #0]
	ands r0, r4
	cmp r0, #0
	beq .L08008864
	movs r0, #20
	strh r0, [r7, #0]
	ldrh r0, [r5, #0]
	movs r1, #128
	orrs r0, r1
	strh r0, [r5, #0]
	b .L0800888C
	movs r0, r0
	strb r4, [r1, #0]
	lsls r0, r0, #12
	lsls r0, r5, #4
	lsls r0, r0, #16
	lsls r6, r1, #4
	lsls r0, r0, #16
	lsls r0, r4, #4
	lsls r0, r0, #16
	udf #173
	movs r0, r0
	lsls r2, r4, #4
	lsls r0, r0, #16
	lsls r4, r4, #4
	lsls r0, r0, #16
	lsls r6, r4, #4
	lsls r0, r0, #16
	asrs r4, r3, #23
	lsls r0, r0, #12
	lsls r2, r5, #4
	lsls r0, r0, #16
	subs r4, r0, r0
	lsls r1, r0, #8
	asrs r0, r2, #21
	lsls r0, r0, #12
	asrs r2, r2, #21
	lsls r0, r0, #12
.L08008864:
	ldrh r1, [r5, #0]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne .L08008892
	ldrh r0, [r5, #0]
	movs r1, #128
	orrs r0, r1
	strh r0, [r5, #0]
	b .L0800888C
.L08008878:
	ldr r2, [pc, #28]
	ldrh r1, [r2, #0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne .L08008892
	ldrh r0, [r2, #0]
	movs r1, #128
	orrs r0, r1
	strh r0, [r2, #0]
.L0800888C:
	ldr r1, [pc, #12]
	movs r0, #192
	strh r0, [r1, #0]
.L08008892:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.4byte 0x04000128
	.4byte 0x0400010E

	.thumb
	.align 1, 0
	.global sub_080088A0
	.thumb_func
sub_080088A0:
	push {r4, r5, r6, r7, lr}
	ldr r2, [pc, #104]
	ldrb r4, [r2, #4]
	movs r1, #5
	ldrsb r1, [r2, r1]
	cmp r1, #0
	bne .L080088B2
	ldr r0, [pc, #96]
	strh r1, [r0, #0]
.L080088B2:
	ldr r0, [pc, #96]
	ldrh r1, [r0, #0]
	movs r0, #64
	ands r0, r1
	cmp r0, #0
	beq .L080088CC
	ldr r0, [r2, #8]
	cmp r0, #0
	beq .L080088CC
	bl sub_08012324
	cmp r0, #0
	beq .L080089C0
.L080088CC:
	ldr r0, [pc, #60]
	ldr r1, [r0, #0]
	movs r2, #1
	negs r2, r2
	adds r3, r0, #0
	cmp r1, r2
	ble .L0800891C
	subs r4, #1
	cmp r4, r2
	beq .L0800894A
	adds r5, r3, #0
	adds r6, r2, #0
	lsls r0, r4, #1
	ldr r1, [pc, #48]
	adds r3, r0, r1
	lsls r0, r4, #2
	adds r0, #52
	adds r2, r0, r5
.L080088F0:
	ldr r0, [r5, #0]
	ldr r1, [r2, #0]
	subs r2, #4
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r3, #0]
	strh r1, [r0, #0]
	subs r3, #2
	subs r4, #1
	cmp r4, r6
	bne .L080088F0
	ldr r3, [pc, #4]
	b .L0800894A
	movs r0, r0
	asrs r4, r3, #23
	lsls r0, r0, #12
	lsls r6, r1, #4
	lsls r0, r0, #16
	lsls r0, r5, #4
	lsls r0, r0, #16
	lsls r0, r4, #4
	lsls r0, r0, #16
.L0800891C:
	subs r4, #1
	cmp r4, r2
	beq .L0800894A
	ldr r7, [pc, #84]
	lsls r0, r4, #1
	ldr r1, [pc, #84]
	adds r5, r0, r1
	adds r6, r2, #0
.L0800892C:
	ldrh r0, [r5, #0]
	cmp r0, r7
	beq .L08008940
	ldr r0, [r3, #8]
	cmp r0, #0
	beq .L08008940
	bl sub_08012324
	cmp r0, #0
	beq .L080089C0
.L08008940:
	subs r5, #2
	subs r4, #1
	ldr r3, [pc, #56]
	cmp r4, r6
	bne .L0800892C
.L0800894A:
	ldr r0, [r3, #0]
	adds r0, #1
	str r0, [r3, #0]
	cmp r0, #7
	bgt .L0800898C
	ldr r2, [pc, #44]
	ldr r1, [r3, #12]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0, #0]
	strh r0, [r2, #0]
	movs r0, #5
	ldrsb r0, [r3, r0]
	cmp r0, #0
	bne .L080089BA
	subs r2, #2
	ldrh r0, [r2, #0]
	movs r1, #128
	orrs r0, r1
	strh r0, [r2, #0]
	ldr r1, [pc, #20]
	movs r0, #192
	b .L080089B8
	udf #173
	movs r0, r0
	lsls r0, r4, #4
	lsls r0, r0, #16
	asrs r4, r3, #23
	lsls r0, r0, #12
	lsls r2, r5, #4
	lsls r0, r0, #16
	lsls r6, r1, #4
	lsls r0, r0, #16
.L0800898C:
	movs r0, #1
	negs r0, r0
	str r0, [r3, #0]
	ldr r1, [r3, #52]
	ldr r0, [r3, #68]
	str r0, [r3, #52]
	str r1, [r3, #68]
	ldr r1, [r3, #56]
	ldr r0, [r3, #72]
	str r0, [r3, #56]
	str r1, [r3, #72]
	ldr r1, [r3, #60]
	ldr r0, [r3, #76]
	str r0, [r3, #60]
	str r1, [r3, #76]
	ldr r1, [r3, #64]
	ldr r0, [r3, #80]
	str r0, [r3, #64]
	str r1, [r3, #80]
	ldr r1, [pc, #20]
	ldr r2, [pc, #20]
	adds r0, r2, #0
.L080089B8:
	strh r0, [r1, #0]
.L080089BA:
	ldr r1, [pc, #20]
	movs r0, #0
	str r0, [r1, #0]
.L080089C0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x0400012A
	.4byte 0x0000DEAD
	.4byte 0x03007004

	.thumb
	.align 1, 0
	.global sub_080089D4
	.thumb_func
sub_080089D4:
	push {lr}
	ldr r0, [pc, #64]
	ldr r1, [r0, #0]
	adds r1, #1
	str r1, [r0, #0]
	movs r0, #225
	lsls r0, r0, #2
	cmp r1, r0
	bls .L08008A04
	ldr r2, [pc, #52]
	movs r0, #9
	movs r1, #6
	bl sub_0800E6FC
	ldr r2, [pc, #44]
	movs r0, #1
	movs r1, #13
	bl sub_0800E6FC
	ldr r2, [pc, #40]
	movs r0, #7
	movs r1, #14
	bl sub_0800E6FC
.L08008A04:
	bl orphan_GAX_irq
	bl orphan_GAX_play
	ldr r1, [pc, #24]
	movs r0, #1
	strh r0, [r1, #0]
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x03007004
	.4byte 0x02011A1C
	.4byte 0x02011A28
	.4byte 0x02011A44
	.4byte 0x03007FF8

	.thumb
	.align 1, 0
	.global sub_08008A2C
	.thumb_func
sub_08008A2C:
	ldr r2, [pc, #12]
	ldrb r0, [r2, #4]
	movs r1, #0
	cmp r0, #0
	beq .L08008A38
	ldrb r1, [r2, #5]
.L08008A38:
	adds r0, r1, #0
	bx lr
	.4byte 0x030015DC

	.thumb
	.align 1, 0
	.global sub_08008A40
	.thumb_func
sub_08008A40:
	movs r1, #0
	ldr r0, [pc, #12]
	ldrb r0, [r0, #4]
	cmp r0, #1
	bls .L08008A4C
	movs r1, #1
.L08008A4C:
	adds r0, r1, #0
	bx lr
	.4byte 0x030015DC

	.thumb
	.align 1, 0
	.global sub_08008A54
	.thumb_func
sub_08008A54:
	push {r4, r5, r6, lr}
	ldr r5, [pc, #60]
	ldr r6, [pc, #60]
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_08007E8C
	bl sub_08008A2C
	adds r4, r0, #0
	ldrh r0, [r5, #0]
	bl sub_08007EB0
	ldr r1, [pc, #44]
	lsls r4, r4, #24
	lsrs r4, r4, #23
	adds r4, r4, r1
	strh r0, [r4, #0]
	bl sub_08008A2C
	adds r4, r0, #0
	ldrh r0, [r6, #0]
	bl sub_08007EB0
	ldr r1, [pc, #24]
	lsls r4, r4, #24
	lsrs r4, r4, #23
	adds r4, r4, r1
	strh r0, [r4, #0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.4byte 0x03001550
	.4byte 0x03001552
	.4byte 0x03001554
	.4byte 0x0300155C

	.thumb
	.align 1, 0
	.global sub_08008AA4
	.thumb_func
sub_08008AA4:
	push {r4, r5, lr}
	ldr r5, [pc, #168]
	ldrh r0, [r5, #0]
	cmp r0, #0
	beq .L08008ADC
	bl sub_08008A2C
	ldr r1, [pc, #160]
	lsls r0, r0, #24
	lsrs r0, r0, #23
	adds r0, r0, r1
	ldr r4, [pc, #156]
	adds r1, r4, #0
	ldrh r2, [r0, #0]
	ands r1, r2
	strh r1, [r0, #0]
	bl sub_08008A2C
	ldr r1, [pc, #144]
	lsls r0, r0, #24
	lsrs r0, r0, #23
	adds r0, r0, r1
	ldrh r1, [r0, #0]
	ands r4, r1
	strh r4, [r0, #0]
	ldrh r0, [r5, #0]
	subs r0, #1
	strh r0, [r5, #0]
.L08008ADC:
	ldr r5, [pc, #128]
	ldrh r0, [r5, #0]
	cmp r0, #0
	beq .L08008B12
	bl sub_08008A2C
	ldr r1, [pc, #104]
	lsls r0, r0, #24
	lsrs r0, r0, #23
	adds r0, r0, r1
	ldr r4, [pc, #112]
	adds r1, r4, #0
	ldrh r2, [r0, #0]
	ands r1, r2
	strh r1, [r0, #0]
	bl sub_08008A2C
	ldr r1, [pc, #92]
	lsls r0, r0, #24
	lsrs r0, r0, #23
	adds r0, r0, r1
	ldrh r1, [r0, #0]
	ands r4, r1
	strh r4, [r0, #0]
	ldrh r0, [r5, #0]
	subs r0, #1
	strh r0, [r5, #0]
.L08008B12:
	ldr r5, [pc, #84]
	ldrh r0, [r5, #0]
	cmp r0, #0
	beq .L08008B48
	bl sub_08008A2C
	ldr r1, [pc, #52]
	lsls r0, r0, #24
	lsrs r0, r0, #23
	adds r0, r0, r1
	ldr r4, [pc, #68]
	adds r1, r4, #0
	ldrh r2, [r0, #0]
	ands r1, r2
	strh r1, [r0, #0]
	bl sub_08008A2C
	ldr r1, [pc, #36]
	lsls r0, r0, #24
	lsrs r0, r0, #23
	adds r0, r0, r1
	ldrh r1, [r0, #0]
	ands r4, r1
	strh r4, [r0, #0]
	ldrh r0, [r5, #0]
	subs r0, #1
	strh r0, [r5, #0]
.L08008B48:
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x03007048
	.4byte 0x03001554
	.4byte 0x0000FFFE
	.4byte 0x0300155C
	.4byte 0x0300704C
	.4byte 0x0000FFF7
	.4byte 0x0300704A
	.4byte 0x0000FFFD

	.thumb
	.align 1, 0
	.global sub_08008B70
	.thumb_func
sub_08008B70:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	ldr r4, [pc, #44]
	bl sub_08008A2C
	lsls r0, r0, #24
	lsrs r0, r0, #23
	adds r0, r0, r4
	ldrh r4, [r0, #0]
	movs r0, #64
	ands r0, r4
	cmp r0, #0
	beq .L08008BB8
	ldr r1, [pc, #28]
	ldr r0, [r1, #0]
	cmp r0, #60
	bls .L08008BB4
	ldr r2, [pc, #24]
	ldr r1, [r2, #0]
	movs r0, #32
	negs r0, r0
	cmp r1, r0
	ble .L08008BD2
	subs r0, r1, #1
	str r0, [r2, #0]
	b .L08008BD2
	asrs r4, r2, #21
	lsls r0, r0, #12
	strb r4, [r2, #1]
	lsls r0, r0, #12
	ldr r0, [r0, #124]
	lsls r0, r0, #12
.L08008BB4:
	adds r0, #1
	b .L08008BD0
.L08008BB8:
	ldr r2, [pc, #80]
	ldr r1, [r2, #0]
	cmp r1, #0
	bge .L08008BCC
	movs r0, #128
	ands r0, r4
	cmp r0, #0
	bne .L08008BCC
	adds r0, r1, #1
	str r0, [r2, #0]
.L08008BCC:
	ldr r1, [pc, #64]
	movs r0, #0
.L08008BD0:
	str r0, [r1, #0]
.L08008BD2:
	movs r0, #128
	ands r0, r4
	cmp r0, #0
	beq .L08008C1C
	movs r1, #1
	adds r0, r4, #0
	eors r0, r1
	ands r0, r1
	cmp r0, #0
	bne .L08008BF6
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq .L08008C1C
	movs r0, #48
	ands r0, r4
	cmp r0, #0
	beq .L08008C1C
.L08008BF6:
	ldr r1, [pc, #28]
	ldr r0, [r1, #0]
	cmp r0, #60
	bls .L08008C18
	ldr r1, [pc, #12]
	ldr r0, [r1, #0]
	cmp r0, #63
	bgt .L08008C72
	adds r0, #1
	b .L08008C70
	movs r0, r0
	ldr r0, [r0, #124]
	lsls r0, r0, #12
	strb r4, [r2, #1]
	lsls r0, r0, #12
	strb r0, [r3, #1]
	lsls r0, r0, #12
.L08008C18:
	adds r0, #1
	b .L08008C70
.L08008C1C:
	ldr r7, [pc, #104]
	ldr r0, [r7, #0]
	cmp r0, #0
	ble .L08008C6C
	movs r0, #64
	ands r0, r4
	cmp r0, #0
	bne .L08008C6C
	ldr r6, [pc, #92]
	bl sub_08008A2C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	movs r5, #208
	muls r0, r5
	adds r0, r0, r6
	ldrb r0, [r0, #4]
	cmp r0, #3
	beq .L08008C6C
	bl sub_08008A2C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	muls r0, r5
	adds r0, r0, r6
	ldrb r0, [r0, #4]
	cmp r0, #5
	beq .L08008C6C
	bl sub_08008A2C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	muls r0, r5
	adds r0, r0, r6
	ldrb r0, [r0, #4]
	cmp r0, #8
	beq .L08008C6C
	ldr r0, [r7, #0]
	subs r0, #1
	str r0, [r7, #0]
.L08008C6C:
	ldr r1, [pc, #32]
	movs r0, #0
.L08008C70:
	str r0, [r1, #0]
.L08008C72:
	movs r0, #16
	ands r0, r4
	cmp r0, #0
	beq .L08008C98
	ldr r1, [pc, #24]
	ldr r0, [r1, #0]
	cmp r0, #69
	bgt .L08008CB2
	adds r0, #1
	str r0, [r1, #0]
	b .L08008CB2
	ldr r0, [r0, #124]
	lsls r0, r0, #12
	subs r4, r2, #4
	lsls r0, r0, #12
	strb r0, [r3, #1]
	lsls r0, r0, #12
	ldr r4, [r7, #120]
	lsls r0, r0, #12
.L08008C98:
	ldr r2, [pc, #44]
	ldr r1, [r2, #0]
	movs r0, #30
	negs r0, r0
	cmp r1, r0
	ble .L08008CB2
	mov r0, r8
	adds r0, #40
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne .L08008CB2
	subs r0, r1, #3
	str r0, [r2, #0]
.L08008CB2:
	movs r0, #32
	ands r4, r0
	cmp r4, #0
	beq .L08008CCC
	ldr r2, [pc, #12]
	ldr r1, [r2, #0]
	subs r0, #102
	cmp r1, r0
	ble .L08008CE2
	subs r0, r1, #1
	b .L08008CE0
	ldr r4, [r7, #120]
	lsls r0, r0, #12
.L08008CCC:
	ldr r2, [pc, #128]
	ldr r1, [r2, #0]
	cmp r1, #29
	bgt .L08008CE2
	mov r0, r8
	adds r0, #40
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L08008CE2
	adds r0, r1, #3
.L08008CE0:
	str r0, [r2, #0]
.L08008CE2:
	ldr r5, [pc, #112]
	bl sub_08008A2C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	movs r4, #208
	muls r0, r4
	adds r0, r0, r5
	ldrb r0, [r0, #4]
	cmp r0, #3
	beq .L08008D1C
	bl sub_08008A2C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	muls r0, r4
	adds r0, r0, r5
	ldrb r0, [r0, #4]
	cmp r0, #5
	beq .L08008D1C
	bl sub_08008A2C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	muls r0, r4
	adds r0, r0, r5
	ldrb r0, [r0, #4]
	cmp r0, #8
	bne .L08008D28
.L08008D1C:
	ldr r1, [pc, #56]
	ldr r0, [r1, #0]
	cmp r0, #31
	bgt .L08008D28
	adds r0, #2
	str r0, [r1, #0]
.L08008D28:
	mov r1, r8
	ldr r0, [r1, #44]
	asrs r0, r0, #8
	ldr r1, [pc, #32]
	ldr r1, [r1, #0]
	adds r0, r0, r1
	mov r2, r8
	ldr r1, [r2, #48]
	asrs r1, r1, #8
	ldr r2, [pc, #28]
	ldr r2, [r2, #0]
	adds r1, r1, r2
	bl sub_08005F60
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x03006FBC
	.4byte 0x03001F14
	.4byte 0x03006FC0

	.thumb
	.align 1, 0
	.global sub_08008D5C
	.thumb_func
sub_08008D5C:
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	bl sub_0800E184
	movs r4, #0
	bl sub_0800EA0C
	bl sub_0800739C
	ldr r0, [pc, #36]
	ldr r2, [pc, #40]
	lsls r1, r6, #4
	subs r1, r1, r6
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1, #0]
	bl sub_08006B70
	cmp r4, r5
	bcs .L08008DAC
.L08008D86:
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #1
	bl sub_0800A6A0
	adds r4, #1
	cmp r4, r5
	bcc .L08008D86
	b .L08008DAC
	asrs r0, r6, #10
	lsls r0, r0, #12
	asrs r0, r7, #22
	lsls r1, r0, #8
.L08008DA0:
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #0
	bl sub_0800A6A0
	adds r4, #1
.L08008DAC:
	cmp r4, #3
	bls .L08008DA0
	ldr r0, [pc, #168]
	ldr r5, [pc, #172]
	movs r3, #128
	lsls r3, r3, #1
	adds r1, r5, #0
	movs r2, #0
	bl sub_080075F8
	ldr r1, [pc, #160]
	ldr r0, [r1, #44]
	asrs r0, r0, #8
	ldr r1, [r1, #48]
	asrs r1, r1, #8
	adds r2, r6, #0
	bl sub_08005DA4
	bl sub_08005C60
	bl sub_0800D5C4
	ldr r4, [pc, #140]
	adds r0, r4, #0
	bl sub_0800DFB0
	adds r0, r4, #0
	bl sub_0800E064
	ldr r0, [pc, #132]
	movs r1, #31
	bl sub_0800E634
	bl sub_080077AC
	movs r0, #14
	bl sub_0800E66C
	ldr r0, [pc, #116]
	movs r1, #224
	lsls r1, r1, #1
	adds r5, r5, r1
	adds r1, r5, #0
	movs r2, #8
	bl sub_0800F21C
	movs r2, #128
	lsls r2, r2, #19
	ldrh r0, [r2, #0]
	movs r3, #130
	lsls r3, r3, #5
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2, #0]
	ldr r1, [pc, #88]
	movs r0, #0
	strb r0, [r1, #0]
	movs r4, #0
	movs r0, #0
	ldr r3, [pc, #84]
	ldr r2, [pc, #84]
	ldr r5, [pc, #88]
	ldr r1, [pc, #88]
.L08008E2A:
	stmia r5!, {r0}
	strb r0, [r2, #0]
	adds r2, #1
	strb r0, [r3, #0]
	adds r3, #1
	strb r0, [r1, #0]
	adds r1, #1
	adds r4, #1
	cmp r4, #3
	bls .L08008E2A
	ldr r0, [pc, #72]
	movs r1, #0
	strb r1, [r0, #0]
	ldr r0, [pc, #68]
	strb r1, [r0, #0]
	ldr r2, [pc, #68]
	movs r0, #1
	strb r0, [r2, #0]
	ldr r0, [pc, #68]
	strb r1, [r0, #0]
	movs r4, #0
	movs r5, #1
	negs r5, r5
	b .L08008EA6
	movs r0, r0
	adds r4, r1, #3
	lsls r1, r0, #8
	lsls r0, r0, #8
	lsls r0, r0, #20
	subs r4, r2, #4
	lsls r0, r0, #12
	asrs r0, r6, #10
	lsls r0, r0, #12
	.2byte 0xffe8 @ .raw
	lsls r0, r0, #8
	subs r4, r1, #3
	lsls r1, r0, #8
	strb r4, [r7, #0]
	lsls r0, r0, #12
	strb r4, [r5, #0]
	lsls r0, r0, #12
	strb r0, [r5, #0]
	lsls r0, r0, #12
	strb r0, [r3, #0]
	lsls r0, r0, #12
	strb r0, [r6, #0]
	lsls r0, r0, #12
	strb r5, [r7, #0]
	lsls r0, r0, #12
	strb r6, [r7, #0]
	lsls r0, r0, #12
	strb r7, [r7, #0]
	lsls r0, r0, #12
	strb r5, [r0, #1]
	lsls r0, r0, #12
.L08008E98:
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	adds r3, r5, #0
	bl sub_0800A78C
	adds r4, #1
.L08008EA6:
	bl sub_08008750
	cmp r4, r0
	bcc .L08008E98
	ldr r0, [pc, #76]
	bl sub_080082DC
	bl sub_0800E7E0
	bl sub_08008A2C
	ldr r1, [pc, #64]
	strb r0, [r1, #0]
	ldr r0, [pc, #64]
	movs r5, #0
	str r5, [r0, #0]
	ldr r4, [pc, #64]
	adds r0, r4, #0
	bl orphan_GAX2_new
	adds r0, r4, #0
	adds r0, #56
	strb r5, [r0, #0]
	ldr r0, [pc, #52]
	strh r0, [r4, #8]
	ldr r0, [pc, #52]
	str r0, [r4, #44]
	ldr r0, [pc, #52]
	str r0, [r4, #0]
	movs r0, #128
	lsls r0, r0, #5
	str r0, [r4, #4]
	adds r0, r4, #0
	bl orphan_GAX2_init
	ldr r1, [pc, #40]
	movs r0, #0
	bl sub_08007DC0
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x020047D9
	.4byte 0x03007046
	.4byte 0x03007050
	.4byte 0x030028A8
	.4byte 0x00002377
	.4byte 0x0200FE1C
	.4byte 0x030028E4
	.4byte 0x02003635

	.thumb
	.align 1, 0
	.global sub_08008F1C
	.thumb_func
sub_08008F1C:
	push {r4, r5, r6, lr}
	movs r4, #0
	ldr r6, [pc, #92]
	ldr r5, [pc, #96]
.L08008F24:
	bl sub_08008A2C
	lsls r0, r0, #24
	lsrs r0, r0, #23
	adds r0, r4, r0
	adds r0, r0, r6
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne .L08008F60
	ldrb r0, [r5, #0]
	cmp r0, #0
	bne .L08008F60
	movs r0, #5
	movs r1, #18
	movs r2, #19
	movs r3, #2
	bl sub_0800E798
	cmp r4, #1
	bne .L08008F60
	movs r0, #5
	movs r1, #18
	ldr r2, [pc, #52]
	bl sub_0800E6FC
	movs r0, #5
	movs r1, #19
	ldr r2, [pc, #48]
	bl sub_0800E6FC
.L08008F60:
	bl sub_08008A2C
	lsls r0, r0, #24
	lsrs r0, r0, #23
	adds r0, r4, r0
	adds r0, r0, r6
	ldrb r0, [r0, #0]
	strb r0, [r5, #0]
	adds r5, #1
	adds r4, #1
	cmp r4, #1
	bls .L08008F24
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x03002254
	.4byte 0x03001700
	.4byte 0x02011A54
	.4byte 0x02011A6C

	.thumb
	.align 1, 0
	.global sub_08008F90
	.thumb_func
sub_08008F90:
	push {r4, r5, r6, r7, lr}
	ldr r7, [pc, #208]
	ldr r1, [pc, #208]
	ldr r4, [pc, #212]
	ldrb r2, [r4, #0]
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrh r0, [r0, #0]
	strh r0, [r7, #0]
	ldr r6, [pc, #204]
	movs r5, #208
	ldrb r1, [r4, #0]
	adds r0, r1, #0
	muls r0, r5
	adds r0, r0, r6
	adds r1, r0, #0
	adds r1, #76
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bge .L08008FBE
	movs r0, #0
	strh r0, [r1, #0]
.L08008FBE:
	ldrb r1, [r4, #0]
	adds r0, r1, #0
	muls r0, r5
	adds r3, r0, r6
	adds r0, r3, #0
	adds r0, #76
	ldrh r0, [r0, #0]
	lsls r2, r0, #24
	ldr r0, [pc, #164]
	adds r1, r1, r0
	ldrb r1, [r1, #0]
	lsls r1, r1, #22
	orrs r1, r2
	adds r0, r3, #0
	adds r0, #79
	ldrb r0, [r0, #0]
	lsls r0, r0, #17
	orrs r0, r1
	adds r1, r3, #0
	adds r1, #40
	lsrs r0, r0, #16
	ldrb r1, [r1, #0]
	orrs r0, r1
	strh r0, [r7, #2]
	ldrb r1, [r4, #0]
	adds r0, r1, #0
	muls r0, r5
	adds r1, r6, #0
	adds r1, #44
	adds r0, r0, r1
	ldr r0, [r0, #0]
	asrs r0, r0, #8
	strh r0, [r7, #4]
	ldrb r2, [r4, #0]
	adds r0, r2, #0
	muls r0, r5
	adds r1, #4
	adds r0, r0, r1
	ldr r0, [r0, #0]
	asrs r0, r0, #8
	strh r0, [r7, #6]
	ldrb r1, [r4, #0]
	adds r0, r1, #0
	muls r0, r5
	adds r1, r6, #0
	adds r1, #56
	adds r0, r0, r1
	ldr r0, [r0, #0]
	strh r0, [r7, #8]
	ldrb r2, [r4, #0]
	adds r0, r2, #0
	muls r0, r5
	adds r1, #4
	adds r0, r0, r1
	ldr r0, [r0, #0]
	strh r0, [r7, #10]
	ldrb r0, [r4, #0]
	adds r2, r0, #0
	muls r2, r5
	adds r2, r2, r6
	ldr r1, [pc, #64]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0, #0]
	movs r1, #31
	ands r0, r1
	lsls r0, r0, #8
	ldrb r2, [r2, #4]
	orrs r0, r2
	strh r0, [r7, #12]
	ldrb r4, [r4, #0]
	adds r0, r4, #0
	muls r0, r5
	adds r1, r6, #0
	adds r1, #80
	adds r0, r0, r1
	ldr r0, [r0, #0]
	ldrh r0, [r0, #6]
	strh r0, [r7, #14]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x030016F0
	.4byte 0x03001554
	.4byte 0x03007046
	.4byte 0x03001F14
	.4byte 0x0300702C
	.4byte 0x03007018

	.thumb
	.align 1, 0
	.global sub_0800907C
	.thumb_func
sub_0800907C:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, [pc, #32]
	ldr r0, [r0, #0]
	cmp r0, #10
	bhi .L08009090
	b .L0800928A
.L08009090:
	ldr r1, [pc, #24]
	movs r0, #0
	str r0, [r1, #0]
	adds r7, r1, #0
	ldr r0, [pc, #20]
	mov r9, r0
	movs r1, #2
	add r1, r9
	mov r8, r1
	ldr r2, [pc, #16]
	mov sl, r2
	b .L080091B4
	strb r0, [r2, #1]
	lsls r0, r0, #12
	strb r0, [r0, #1]
	lsls r0, r0, #12
	asrs r0, r6, #26
	lsls r0, r0, #12
	.2byte 0x1f64 @ .raw subs r4, r4, #5
	lsls r0, r0, #12
.L080090B8:
	ldr r0, [pc, #100]
	ldrb r0, [r0, #0]
	cmp r0, r5
	beq .L080091AE
	ldr r3, [pc, #96]
	lsls r2, r5, #1
	adds r3, r2, r3
	lsls r4, r5, #4
	mov r6, r9
	adds r1, r4, r6
	ldr r0, [pc, #88]
	adds r2, r2, r0
	ldrh r0, [r1, #0]
	ldrh r6, [r2, #0]
	eors r0, r6
	ldrh r6, [r1, #0]
	ands r0, r6
	movs r6, #0
	mov ip, r6
	strh r0, [r3, #0]
	ldrh r0, [r1, #0]
	strh r0, [r2, #0]
	ldr r6, [pc, #68]
	movs r3, #208
	adds r0, r5, #0
	muls r0, r3
	adds r0, r0, r6
	add r4, r8
	ldrh r2, [r4, #0]
	lsrs r1, r2, #8
	adds r0, #76
	strh r1, [r0, #0]
	ldr r0, [pc, #52]
	adds r0, r5, r0
	ldrb r4, [r4, #0]
	lsrs r1, r4, #6
	strb r1, [r0, #0]
	ldr r2, [r7, #0]
	lsls r1, r2, #4
	add r1, r8
	movs r4, #1
	movs r0, #1
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L08009134
	adds r0, r2, #0
	muls r0, r3
	adds r0, r0, r6
	adds r0, #40
	strb r4, [r0, #0]
	b .L08009140
	strb r6, [r0, #1]
	lsls r0, r0, #12
	asrs r4, r3, #21
	lsls r0, r0, #12
	asrs r4, r2, #21
	lsls r0, r0, #12
	subs r4, r2, #4
	lsls r0, r0, #12
	strb r4, [r5, #0]
	lsls r0, r0, #12
.L08009134:
	adds r0, r2, #0
	muls r0, r3
	adds r0, r0, r6
	adds r0, #40
	mov r6, ip
	strb r6, [r0, #0]
.L08009140:
	ldr r3, [r7, #0]
	lsls r0, r3, #4
	add r0, r8
	movs r1, #63
	ldrh r0, [r0, #0]
	ands r1, r0
	ldr r2, [pc, #132]
	movs r0, #208
	muls r0, r3
	adds r0, r0, r2
	adds r0, #79
	lsrs r1, r1, #1
	ldrb r0, [r0, #0]
	cmp r1, r0
	beq .L08009168
	cmp r1, #1
	bhi .L08009168
	adds r0, r3, #0
	bl sub_0800D3C8
.L08009168:
	ldr r2, [pc, #108]
	ldr r5, [pc, #112]
	ldr r1, [r5, #0]
	lsls r0, r1, #2
	adds r3, r0, r2
	ldr r6, [pc, #108]
	lsls r1, r1, #4
	adds r0, r6, #0
	adds r0, #12
	adds r2, r1, r0
	ldrh r0, [r2, #0]
	lsrs r1, r0, #8
	movs r4, #31
	ands r1, r4
	ldr r0, [r3, #0]
	cmp r0, r1
	beq .L08009198
	ldr r1, [pc, #88]
	movs r0, #0
	strb r0, [r1, #0]
	ldrh r2, [r2, #0]
	lsrs r0, r2, #8
	ands r0, r4
	str r0, [r3, #0]
.L08009198:
	ldr r1, [r5, #0]
	movs r0, #208
	muls r0, r1
	add r0, sl
	ldr r2, [r0, #0]
	lsls r1, r1, #4
	adds r0, r6, #0
	adds r0, #14
	adds r1, r1, r0
	ldrh r0, [r1, #0]
	strh r0, [r2, #6]
.L080091AE:
	ldr r0, [r7, #0]
	adds r0, #1
	str r0, [r7, #0]
.L080091B4:
	bl sub_08008750
	ldr r5, [r7, #0]
	cmp r5, r0
	bcs .L080091C0
	b .L080090B8
.L080091C0:
	ldr r0, [pc, #36]
	ldr r3, [r0, #0]
	movs r0, #1
	ands r3, r0
	cmp r3, #0
	bne .L0800928A
	ldr r0, [pc, #12]
	str r3, [r0, #0]
	adds r7, r0, #0
	b .L08009280
	subs r4, r2, #4
	lsls r0, r0, #12
	strb r0, [r3, #0]
	lsls r0, r0, #12
	strb r0, [r0, #1]
	lsls r0, r0, #12
	asrs r0, r6, #26
	lsls r0, r0, #12
	strb r5, [r7, #0]
	lsls r0, r0, #12
	strb r0, [r2, #1]
	lsls r0, r0, #12
.L080091EC:
	ldr r0, [pc, #168]
	ldrb r0, [r0, #0]
	cmp r2, r0
	beq .L0800927A
	ldr r5, [pc, #164]
	movs r6, #208
	adds r1, r2, #0
	muls r1, r6
	adds r0, r5, #0
	adds r0, #44
	adds r3, r1, r0
	ldr r4, [pc, #156]
	lsls r0, r2, #4
	adds r1, r4, #4
	adds r0, r0, r1
	ldrh r0, [r0, #0]
	lsls r1, r0, #8
	ldr r0, [r3, #0]
	cmp r0, r1
	beq .L08009216
	str r1, [r3, #0]
.L08009216:
	ldr r1, [r7, #0]
	adds r2, r1, #0
	muls r2, r6
	adds r0, r5, #0
	adds r0, #48
	adds r2, r2, r0
	lsls r1, r1, #4
	adds r0, r4, #6
	adds r1, r1, r0
	ldrh r1, [r1, #0]
	lsls r1, r1, #8
	ldr r0, [r2, #0]
	cmp r0, r1
	beq .L08009234
	str r1, [r2, #0]
.L08009234:
	ldr r2, [r7, #0]
	adds r3, r2, #0
	muls r3, r6
	adds r1, r5, #0
	adds r1, #56
	adds r1, r3, r1
	lsls r2, r2, #4
	adds r0, r4, #0
	adds r0, #8
	adds r0, r2, r0
	movs r6, #0
	ldrsh r0, [r0, r6]
	str r0, [r1, #0]
	adds r1, r5, #0
	adds r1, #60
	adds r1, r3, r1
	adds r0, r4, #0
	adds r0, #10
	adds r0, r2, r0
	movs r6, #0
	ldrsh r0, [r0, r6]
	str r0, [r1, #0]
	adds r3, r3, r5
	adds r0, r4, #0
	adds r0, #12
	adds r2, r2, r0
	movs r1, #15
	ldrh r2, [r2, #0]
	ands r1, r2
	ldrb r0, [r3, #4]
	cmp r0, r1
	beq .L0800927A
	adds r0, r3, #0
	bl sub_0800A5B8
.L0800927A:
	ldr r0, [r7, #0]
	adds r0, #1
	str r0, [r7, #0]
.L08009280:
	bl sub_08008750
	ldr r2, [r7, #0]
	cmp r2, r0
	bcc .L080091EC
.L0800928A:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.4byte 0x03007046
	.4byte 0x03001F14
	.4byte 0x030016B0

	.thumb
	.align 1, 0
	.global sub_080092A4
	.thumb_func
sub_080092A4:
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r7, r0, #0
	ldr r1, [pc, #100]
	ldr r5, [pc, #100]
	ldrb r2, [r5, #0]
	movs r0, #208
	muls r0, r2
	adds r0, r0, r1
	adds r0, #76
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bgt .L080093AE
	ldr r6, [pc, #84]
	adds r0, r2, r6
	ldrb r4, [r0, #0]
	cmp r4, #0
	bne .L080093AE
	bl sub_0800E7E0
	ldr r1, [pc, #76]
	ldrb r0, [r1, #0]
	cmp r0, #0
	beq .L080092D8
	strb r4, [r1, #0]
.L080092D8:
	ldrb r2, [r5, #0]
	adds r1, r2, r6
	movs r0, #1
	strb r0, [r1, #0]
	ldr r3, [pc, #60]
	ldrb r0, [r5, #0]
	adds r2, r0, r3
	ldr r1, [pc, #60]
	adds r0, r0, r1
	ldrb r0, [r0, #0]
	strb r0, [r2, #0]
	ldr r0, [pc, #56]
	ldrb r1, [r5, #0]
	adds r0, r1, r0
	ldrb r1, [r0, #0]
	adds r1, #1
	strb r1, [r0, #0]
	ldrb r0, [r5, #0]
	adds r1, r0, r3
	ldrb r2, [r1, #0]
	cmp r0, r2
	beq .L08009330
	ldr r0, [pc, #36]
	lsls r1, r2, #2
	adds r1, r1, r0
	ldr r0, [r1, #0]
	adds r0, #1
	b .L0800933E
	subs r4, r2, #4
	lsls r0, r0, #12
	strb r6, [r0, #1]
	lsls r0, r0, #12
	strb r0, [r5, #0]
	lsls r0, r0, #12
	strb r5, [r0, #1]
	lsls r0, r0, #12
	strb r4, [r5, #0]
	lsls r0, r0, #12
	strb r4, [r3, #1]
	lsls r0, r0, #12
	strb r0, [r6, #0]
	lsls r0, r0, #12
	strb r0, [r3, #0]
	lsls r0, r0, #12
.L08009330:
	ldr r1, [pc, #84]
	lsls r0, r0, #2
	adds r1, r0, r1
	ldr r0, [r1, #0]
	cmp r0, #0
	beq .L08009340
	subs r0, #1
.L0800933E:
	str r0, [r1, #0]
.L08009340:
	ldr r5, [pc, #72]
	ldr r2, [pc, #76]
	ldr r3, [pc, #76]
	movs r4, #208
	ldrb r1, [r3, #0]
	adds r0, r1, #0
	muls r0, r4
	adds r1, r2, #0
	adds r1, #44
	adds r0, r0, r1
	ldr r0, [r0, #0]
	asrs r0, r0, #8
	str r0, [r5, #0]
	ldr r1, [pc, #60]
	ldrb r5, [r3, #0]
	adds r0, r5, #0
	muls r0, r4
	adds r2, #48
	adds r0, r0, r2
	ldr r0, [r0, #0]
	asrs r0, r0, #8
	str r0, [r1, #0]
	ldr r1, [pc, #44]
	ldrb r0, [r3, #0]
	adds r1, r0, r1
	ldrb r2, [r1, #0]
	cmp r2, r0
	beq .L080093A4
	ldr r2, [pc, #36]
	ldrb r3, [r1, #0]
	adds r3, #1
	movs r0, #6
	movs r1, #14
	bl sub_0800E730
	b .L080093AE
	strb r0, [r3, #0]
	lsls r0, r0, #12
	strb r4, [r6, #0]
	lsls r0, r0, #12
	subs r4, r2, #4
	lsls r0, r0, #12
	strb r6, [r0, #1]
	lsls r0, r0, #12
	strb r0, [r7, #0]
	lsls r0, r0, #12
	strb r4, [r5, #0]
	lsls r0, r0, #12
	subs r4, r0, r2
	lsls r1, r0, #8
.L080093A4:
	ldr r2, [pc, #356]
	movs r0, #4
	movs r1, #14
	bl sub_0800E6FC
.L080093AE:
	ldr r1, [pc, #352]
	ldr r6, [pc, #352]
	movs r0, #208
	ldrb r5, [r6, #0]
	muls r0, r5
	adds r0, r0, r1
	ldrb r0, [r0, #1]
	cmp r0, #0
	beq .L080093C2
	b .L08009504
.L080093C2:
	ldr r2, [pc, #340]
	movs r0, #4
	movs r1, #15
	bl sub_0800E6FC
	ldr r2, [pc, #332]
	ldr r5, [pc, #336]
	ldr r3, [r5, #0]
	ldr r4, [pc, #336]
	ldrb r0, [r4, #0]
	str r0, [sp, #0]
	movs r0, #1
	movs r1, #7
	bl sub_0800E730
	ldr r2, [pc, #324]
	ldr r3, [r5, #4]
	ldrb r0, [r4, #1]
	str r0, [sp, #0]
	movs r0, #1
	movs r1, #8
	bl sub_0800E730
	bl sub_08008750
	cmp r0, #2
	bls .L08009408
	ldr r2, [pc, #304]
	ldr r3, [r5, #8]
	ldrb r0, [r4, #2]
	str r0, [sp, #0]
	movs r0, #1
	movs r1, #9
	bl sub_0800E730
.L08009408:
	bl sub_08008750
	cmp r0, #3
	bls .L08009420
	ldr r2, [pc, #284]
	ldr r3, [r5, #12]
	ldrb r0, [r4, #3]
	str r0, [sp, #0]
	movs r0, #1
	movs r1, #10
	bl sub_0800E730
.L08009420:
	ldr r0, [pc, #272]
	ldrb r6, [r6, #0]
	lsls r1, r6, #1
	adds r1, r1, r0
	movs r0, #32
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L0800943E
	ldr r1, [pc, #260]
	ldr r0, [r1, #0]
	cmp r0, #4
	bls .L0800943E
	subs r0, #5
	str r0, [r1, #0]
.L0800943E:
	ldr r2, [pc, #244]
	ldr r0, [pc, #208]
	ldrb r0, [r0, #0]
	lsls r1, r0, #1
	adds r1, r1, r2
	movs r0, #16
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L08009468
	ldr r2, [pc, #228]
	ldr r0, [pc, #228]
	ldr r0, [r0, #8]
	ldr r0, [r0, #0]
	lsls r0, r0, #3
	subs r0, #120
	ldr r1, [r2, #0]
	cmp r1, r0
	bcs .L08009468
	adds r0, r1, #5
	str r0, [r2, #0]
.L08009468:
	ldr r2, [pc, #200]
	ldr r0, [pc, #168]
	ldrb r0, [r0, #0]
	lsls r1, r0, #1
	adds r1, r1, r2
	movs r0, #64
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L08009488
	ldr r1, [pc, #192]
	ldr r0, [r1, #0]
	cmp r0, #4
	bls .L08009488
	subs r0, #5
	str r0, [r1, #0]
.L08009488:
	ldr r2, [pc, #168]
	ldr r0, [pc, #136]
	ldrb r0, [r0, #0]
	lsls r1, r0, #1
	adds r1, r1, r2
	movs r0, #128
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L080094B2
	ldr r2, [pc, #160]
	ldr r0, [pc, #156]
	ldr r0, [r0, #8]
	ldr r0, [r0, #4]
	lsls r0, r0, #3
	subs r0, #32
	ldr r1, [r2, #0]
	cmp r1, r0
	bcs .L080094B2
	adds r0, r1, #5
	str r0, [r2, #0]
.L080094B2:
	ldr r0, [pc, #144]
	ldr r4, [pc, #92]
	ldrb r2, [r4, #0]
	lsls r1, r2, #1
	adds r1, r1, r0
	movs r0, #1
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L08009504
	ldr r1, [pc, #128]
	movs r0, #255
	strh r0, [r1, #0]
	adds r1, #4
	movs r0, #16
	strh r0, [r1, #0]
	bl sub_0800E7E0
	ldr r1, [pc, #116]
	movs r0, #1
	strb r0, [r1, #0]
	ldrb r0, [r4, #0]
	movs r3, #1
	negs r3, r3
	adds r1, r7, #0
	adds r2, r3, #0
	bl sub_0800A78C
	movs r0, #0
	movs r1, #192
	movs r2, #15
	bl sub_0800E0EC
	ldr r1, [pc, #88]
	movs r0, #20
	strb r0, [r1, #0]
	ldr r0, [pc, #88]
	ldrb r4, [r4, #0]
	adds r0, r4, r0
	movs r1, #0
	strb r1, [r0, #0]
.L08009504:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.4byte 0x02011A9C
	.4byte 0x03001F14
	.4byte 0x03007046
	.4byte 0x02011AB0
	.4byte 0x02011AC8
	.4byte 0x03007018
	.4byte 0x03007030
	.4byte 0x02011AE8
	.4byte 0x02011B08
	.4byte 0x02011B28
	.4byte 0x03001554
	.4byte 0x03007034
	.4byte 0x030012B0
	.4byte 0x03007038
	.4byte 0x0300155C
	.4byte 0x04000050
	.4byte 0x03006FCC
	.4byte 0x03007044
	.4byte 0x03007028

	.thumb
	.align 1, 0
	.global sub_08009558
	.thumb_func
sub_08009558:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	mov sl, r0
	ldr r1, [pc, #12]
	movs r0, #0
	str r0, [r1, #0]
	adds r5, r1, #0
	ldr r0, [pc, #8]
	mov r9, r0
	b .L080096FC
	movs r0, r0
	strb r0, [r0, #1]
	lsls r0, r0, #12
	strb r0, [r3, #0]
	lsls r0, r0, #12
.L0800957C:
	ldr r7, [pc, #128]
	ldrb r2, [r7, #0]
	cmp r1, r2
	bne .L08009586
	b .L080096F6
.L08009586:
	ldr r6, [pc, #124]
	movs r0, #208
	mov r8, r0
	mov r3, r8
	muls r3, r1
	adds r0, r3, r6
	adds r0, #76
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	ble .L0800959E
	b .L080096C8
.L0800959E:
	ldr r0, [pc, #104]
	adds r2, r1, r0
	ldrb r1, [r2, #0]
	cmp r1, #0
	beq .L080095AA
	b .L080096F6
.L080095AA:
	movs r0, #1
	strb r0, [r2, #0]
	ldr r0, [pc, #92]
	strb r1, [r0, #0]
	ldr r4, [pc, #92]
	ldr r2, [r5, #0]
	adds r0, r2, r4
	ldrb r1, [r0, #0]
	cmp r2, r1
	beq .L08009674
	lsls r1, r1, #2
	add r1, r9
	ldr r0, [r1, #0]
	adds r0, #1
	str r0, [r1, #0]
	ldr r0, [pc, #72]
	adds r0, r2, r0
	ldrb r1, [r0, #0]
	adds r1, #1
	strb r1, [r0, #0]
	movs r0, #5
	movs r1, #18
	movs r2, #19
	movs r3, #2
	bl sub_0800E798
	ldr r3, [r5, #0]
	adds r0, r3, r4
	ldrb r1, [r0, #0]
	ldrb r7, [r7, #0]
	cmp r1, r7
	beq .L08009660
	ldrb r3, [r0, #0]
	mov r0, r8
	muls r0, r3
	adds r0, r0, r6
	adds r0, #79
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq .L08009618
	cmp r0, #1
	beq .L0800963C
	b .L080096F6
	strb r6, [r0, #1]
	lsls r0, r0, #12
	subs r4, r2, #4
	lsls r0, r0, #12
	strb r0, [r5, #0]
	lsls r0, r0, #12
	strb r5, [r7, #0]
	lsls r0, r0, #12
	strb r4, [r5, #0]
	lsls r0, r0, #12
	strb r0, [r6, #0]
	lsls r0, r0, #12
.L08009618:
	adds r3, #1
	movs r0, #5
	movs r1, #18
	ldr r2, [pc, #20]
	bl sub_0800E730
	ldr r3, [r5, #0]
	adds r3, #1
	movs r0, #5
	movs r1, #19
	ldr r2, [pc, #8]
	bl sub_0800E730
	b .L080096F6
	subs r0, r1, r5
	lsls r1, r0, #8
	subs r0, r4, r5
	lsls r1, r0, #8
.L0800963C:
	adds r3, #1
	movs r0, #5
	movs r1, #18
	ldr r2, [pc, #20]
	bl sub_0800E730
	ldr r3, [r5, #0]
	adds r3, #1
	movs r0, #5
	movs r1, #19
	ldr r2, [pc, #8]
	bl sub_0800E730
	b .L080096F6
	subs r0, r7, r5
	lsls r1, r0, #8
	subs r0, r2, r6
	lsls r1, r0, #8
.L08009660:
	adds r3, #1
	movs r0, #5
	movs r1, #18
	ldr r2, [pc, #8]
	bl sub_0800E730
	b .L080096F6
	movs r0, r0
	subs r0, r5, r6
	lsls r1, r0, #8
.L08009674:
	movs r0, #5
	movs r1, #18
	movs r2, #19
	movs r3, #2
	bl sub_0800E798
	ldr r3, [r5, #0]
	adds r3, #1
	movs r0, #5
	movs r1, #18
	ldr r2, [pc, #48]
	bl sub_0800E730
	movs r0, #5
	movs r1, #19
	ldr r2, [pc, #44]
	bl sub_0800E730
	ldr r0, [r5, #0]
	adds r0, r0, r4
	ldrb r0, [r0, #0]
	lsls r0, r0, #2
	mov r2, r9
	adds r1, r0, r2
	ldr r0, [r1, #0]
	cmp r0, #0
	beq .L080096AE
	subs r0, #1
	str r0, [r1, #0]
.L080096AE:
	ldr r0, [pc, #20]
	ldr r1, [r5, #0]
	adds r1, r1, r0
	ldrb r0, [r1, #0]
	adds r0, #1
	strb r0, [r1, #0]
	b .L080096F6
	subs r0, r0, r7
	lsls r1, r0, #8
	subs r0, r3, r7
	lsls r1, r0, #8
	strb r0, [r6, #0]
	lsls r0, r0, #12
.L080096C8:
	ldr r4, [pc, #76]
	adds r0, r1, r4
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne .L080096F6
	adds r0, r6, #0
	adds r0, #44
	adds r0, r3, r0
	ldr r2, [r0, #0]
	asrs r2, r2, #8
	adds r0, r6, #0
	adds r0, #48
	adds r0, r3, r0
	ldr r3, [r0, #0]
	asrs r3, r3, #8
	adds r0, r1, #0
	mov r1, sl
	bl sub_0800A78C
	ldr r0, [r5, #0]
	adds r0, r0, r4
	movs r1, #0
	strb r1, [r0, #0]
.L080096F6:
	ldr r0, [r5, #0]
	adds r0, #1
	str r0, [r5, #0]
.L080096FC:
	bl sub_08008750
	ldr r1, [r5, #0]
	cmp r1, r0
	bcs .L08009708
	b .L0800957C
.L08009708:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x03007028

	.thumb
	.align 1, 0
	.global sub_0800971C
	.thumb_func
sub_0800971C:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov r9, r0
	mov r8, r1
	movs r7, #0
	ldr r0, [pc, #116]
	add r0, r9
	ldrb r0, [r0, #0]
	mov r9, r0
	movs r2, #128
	lsls r2, r2, #19
	ldrh r0, [r2, #0]
	movs r3, #130
	lsls r3, r3, #5
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2, #0]
	bl sub_08008750
	adds r1, r0, #0
	mov r0, r9
	bl sub_08008D5C
	movs r0, #0
	movs r1, #192
	movs r2, #3
	bl sub_0800E0EC
	bl sub_0800F234
	bl sub_0800F234
	bl sub_0800F234
	bl sub_0800F234
	bl sub_0800F234
	ldr r4, [pc, #52]
	mov sl, r4
.L08009774:
	bl sub_0800E12C
	bl sub_0800F234
	bl sub_0800E1CC
	bl sub_08008A54
	bl sub_08008F90
	ldr r0, [pc, #32]
	ldr r1, [pc, #36]
	bl sub_08008574
	ldr r0, [pc, #32]
	ldr r0, [r0, #0]
	cmp r0, #120
	bls .L08009834
	movs r0, #1
	movs r1, #192
	movs r2, #10
	bl sub_0800E0EC
	b .L080097BC
	adds r6, r4, #2
	lsls r1, r0, #8
	strb r6, [r0, #1]
	lsls r0, r0, #12
	asrs r0, r6, #27
	lsls r0, r0, #12
	asrs r0, r6, #26
	lsls r0, r0, #12
	strb r4, [r0, #0]
	lsls r0, r0, #12
.L080097B8:
	bl sub_0800F234
.L080097BC:
	bl sub_0800E12C
	adds r4, r0, #0
	cmp r4, #0
	bne .L080097B8
	bl sub_0800EA0C
	bl sub_0800739C
	ldr r0, [pc, #76]
	strh r4, [r0, #0]
	ldr r1, [pc, #76]
	ldr r4, [pc, #76]
	adds r0, r4, #0
	strh r0, [r1, #0]
	subs r1, #8
	movs r2, #138
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1, #0]
	bl sub_0800E7E0
	movs r1, #160
	lsls r1, r1, #19
	movs r3, #213
	lsls r3, r3, #7
	adds r0, r3, #0
	strh r0, [r1, #0]
	bl sub_0800E184
	bl sub_0800F234
	movs r0, #9
	movs r1, #6
	ldr r2, [pc, #36]
	bl sub_0800E6FC
	movs r0, #1
	movs r1, #13
	ldr r2, [pc, #32]
	bl sub_0800E6FC
	movs r0, #7
	movs r1, #14
	ldr r2, [pc, #24]
	bl sub_0800E6FC
.L0800981A:
	b .L0800981A
	lsls r0, r2, #1
	lsls r0, r0, #16
	movs r0, r1
	lsls r0, r0, #16
	subs r1, r0, #4
	movs r0, r0
	subs r0, r6, r7
	lsls r1, r0, #8
	subs r4, r7, r7
	lsls r1, r0, #8
	adds r0, r3, #0
	lsls r1, r0, #8
.L08009834:
	ldr r4, [pc, #36]
	ldr r1, [r4, #0]
	cmp r1, #0
	beq .L08009868
	ldr r1, [pc, #32]
	ldrb r0, [r1, #0]
	adds r0, #1
	strb r0, [r1, #0]
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #59
	bls .L08009856
	movs r0, #6
	movs r1, #6
	ldr r2, [pc, #16]
	bl sub_0800E6FC
.L08009856:
	movs r0, #0
	str r0, [r4, #0]
	b .L08009870
	strb r4, [r2, #0]
	lsls r0, r0, #12
	strb r6, [r7, #0]
	lsls r0, r0, #12
	adds r0, r5, #0
	lsls r1, r0, #8
.L08009868:
	ldr r0, [pc, #40]
	strb r1, [r0, #0]
	bl sub_0800907C
.L08009870:
	bl sub_08008AA4
	ldr r1, [pc, #32]
	movs r0, #208
	mov r4, sl
	ldrb r4, [r4, #0]
	muls r0, r4
	adds r1, r0, r1
	adds r0, r1, #0
	adds r0, #76
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	ble .L0800989C
	adds r0, r1, #0
	bl sub_08008B70
	b .L080098A8
	strb r6, [r7, #0]
	lsls r0, r0, #12
	subs r4, r2, #4
	lsls r0, r0, #12
.L0800989C:
	ldr r0, [pc, #80]
	ldr r0, [r0, #0]
	ldr r1, [pc, #80]
	ldr r1, [r1, #0]
	bl sub_08005F60
.L080098A8:
	mov r0, r9
	bl sub_08009558
	ldr r6, [pc, #72]
	mov r3, sl
	ldrb r4, [r3, #0]
	movs r0, #208
	adds r5, r4, #0
	muls r5, r0
	adds r3, r5, r6
	adds r2, r3, #0
	adds r2, #76
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	ble .L080098E6
	ldr r1, [pc, #48]
	lsls r0, r4, #2
	adds r0, r0, r1
	ldrb r0, [r0, #0]
	movs r4, #0
	ldrsh r1, [r2, r4]
	adds r2, #3
	ldrb r2, [r2, #0]
	adds r3, r6, #0
	adds r3, #80
	adds r3, r5, r3
	ldr r3, [r3, #0]
	ldrh r3, [r3, #6]
	bl sub_08007810
.L080098E6:
	ldr r1, [pc, #24]
	movs r0, #0
	str r0, [r1, #0]
	adds r4, r1, #0
	b .L08009930
	strb r4, [r6, #0]
	lsls r0, r0, #12
	strb r0, [r7, #0]
	lsls r0, r0, #12
	subs r4, r2, #4
	lsls r0, r0, #12
	strb r0, [r3, #0]
	lsls r0, r0, #12
	strb r0, [r0, #1]
	lsls r0, r0, #12
.L08009904:
	ldr r3, [pc, #20]
	movs r0, #208
	adds r1, r2, #0
	muls r1, r0
	adds r0, r1, r3
	ldrb r0, [r0, #1]
	cmp r0, #0
	beq .L08009920
	adds r0, r2, #0
	bl sub_0800AA08
	b .L0800992A
	subs r4, r2, #4
	lsls r0, r0, #12
.L08009920:
	adds r0, r3, #0
	adds r0, #84
	adds r0, r1, r0
	bl sub_08005B18
.L0800992A:
	ldr r0, [r4, #0]
	adds r0, #1
	str r0, [r4, #0]
.L08009930:
	bl sub_08008750
	ldr r2, [r4, #0]
	cmp r2, r0
	bcc .L08009904
	bl sub_08005CF8
	ldr r0, [pc, #28]
	bl sub_0800E064
	bl sub_0800D784
	bl sub_08005D28
	bl sub_0800D7AC
	ldr r1, [pc, #12]
	movs r0, #0
	str r0, [r1, #0]
	adds r4, r1, #0
	b .L08009970
	movs r0, r0
	asrs r0, r6, #10
	lsls r0, r0, #12
	strb r0, [r0, #1]
	lsls r0, r0, #12
.L08009964:
	adds r0, r1, #0
	bl sub_0800AC14
	ldr r0, [r4, #0]
	adds r0, #1
	str r0, [r4, #0]
.L08009970:
	bl sub_08008750
	ldr r1, [r4, #0]
	cmp r1, r0
	bcc .L08009964
	mov r0, r9
	bl sub_080092A4
	movs r5, #0
	b .L08009A66
.L08009984:
	ldr r0, [pc, #16]
	lsls r1, r5, #2
	adds r1, r1, r0
	ldr r0, [r1, #0]
	cmp r0, r8
	bcc .L08009A64
	movs r4, #0
	adds r6, r1, #0
	b .L080099A0
	movs r0, r0
	strb r0, [r3, #0]
	lsls r0, r0, #12
.L0800999C:
	movs r7, #1
	adds r4, #1
.L080099A0:
	cmp r4, #14
	bhi .L080099C4
	bl sub_0800F234
	bl sub_08008F90
	ldr r0, [pc, #140]
	ldr r1, [pc, #144]
	bl sub_08008574
	cmp r4, #6
	bhi .L080099BC
	bl sub_0800907C
.L080099BC:
	ldr r0, [r6, #0]
	cmp r0, r8
	bcs .L0800999C
	movs r7, #0
.L080099C4:
	cmp r7, #0
	beq .L08009A72
	bl sub_0800E7E0
	ldr r0, [pc, #116]
	movs r1, #0
	strh r1, [r0, #0]
	adds r0, #4
	strh r1, [r0, #0]
	adds r3, r5, #1
	movs r0, #7
	movs r1, #3
	ldr r2, [pc, #104]
	bl sub_0800E730
	ldr r5, [pc, #104]
	ldr r3, [r5, #0]
	ldr r4, [pc, #104]
	ldrb r0, [r4, #0]
	str r0, [sp, #0]
	movs r0, #1
	movs r1, #7
	ldr r2, [pc, #96]
	bl sub_0800E730
	ldr r3, [r5, #4]
	ldrb r0, [r4, #1]
	str r0, [sp, #0]
	movs r0, #1
	movs r1, #8
	ldr r2, [pc, #84]
	bl sub_0800E730
	bl sub_08008750
	cmp r0, #2
	bls .L08009A1E
	ldr r3, [r5, #8]
	ldrb r0, [r4, #2]
	str r0, [sp, #0]
	movs r0, #1
	movs r1, #9
	ldr r2, [pc, #64]
	bl sub_0800E730
.L08009A1E:
	bl sub_08008750
	cmp r0, #3
	bhi .L08009A28
	b .L08009B5C
.L08009A28:
	ldr r3, [r5, #12]
	ldrb r0, [r4, #3]
	str r0, [sp, #0]
	movs r0, #1
	movs r1, #10
	ldr r2, [pc, #44]
	bl sub_0800E730
	b .L08009B5C
	movs r0, r0
	asrs r0, r6, #27
	lsls r0, r0, #12
	asrs r0, r6, #26
	lsls r0, r0, #12
	lsls r0, r2, #1
	lsls r0, r0, #16
	adds r4, r7, #0
	lsls r1, r0, #8
	strb r0, [r3, #0]
	lsls r0, r0, #12
	strb r0, [r6, #0]
	lsls r0, r0, #12
	subs r0, r1, r3
	lsls r1, r0, #8
	subs r0, r5, r3
	lsls r1, r0, #8
	subs r0, r1, r4
	lsls r1, r0, #8
	subs r0, r5, r4
	lsls r1, r0, #8
.L08009A64:
	adds r5, #1
.L08009A66:
	bl sub_08008750
	cmp r5, r0
	bcc .L08009984
	cmp r7, #0
	bne .L08009B5C
.L08009A72:
	ldr r0, [pc, #44]
	mov r1, sl
	ldrb r2, [r1, #0]
	lsls r1, r2, #1
	adds r1, r1, r0
	movs r0, #8
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L08009ABA
	ldr r0, [pc, #28]
	adds r0, r2, r0
	ldrb r5, [r0, #0]
	cmp r5, #0
	bne .L08009ABA
	ldr r4, [pc, #20]
	ldrb r0, [r4, #0]
	cmp r0, #0
	bne .L08009AAC
	movs r0, #1
	strb r0, [r4, #0]
	b .L08009ABA
	movs r0, r0
	asrs r4, r3, #21
	lsls r0, r0, #12
	strb r0, [r5, #0]
	lsls r0, r0, #12
	strb r5, [r0, #1]
	lsls r0, r0, #12
.L08009AAC:
	movs r0, #6
	movs r1, #2
	movs r2, #17
	movs r3, #4
	bl sub_0800E798
	strb r5, [r4, #0]
.L08009ABA:
	ldr r0, [pc, #88]
	ldrb r1, [r0, #0]
	cmp r1, #0
	beq .L08009B30
	ldr r5, [pc, #84]
	ldrb r0, [r5, #0]
	cmp r0, #0
	bne .L08009B34
	ldr r4, [pc, #80]
	ldr r3, [r4, #0]
	movs r0, #6
	movs r1, #2
	ldr r2, [pc, #76]
	bl sub_0800E730
	ldr r3, [r4, #4]
	movs r0, #6
	movs r1, #3
	ldr r2, [pc, #68]
	bl sub_0800E730
	bl sub_08008750
	cmp r0, #2
	bls .L08009AF8
	ldr r3, [r4, #8]
	movs r0, #6
	movs r1, #4
	ldr r2, [pc, #52]
	bl sub_0800E730
.L08009AF8:
	bl sub_08008750
	cmp r0, #3
	bls .L08009B0C
	ldr r3, [r4, #12]
	movs r0, #6
	movs r1, #5
	ldr r2, [pc, #36]
	bl sub_0800E730
.L08009B0C:
	movs r0, #1
	strb r0, [r5, #0]
	b .L08009B34
	movs r0, r0
	strb r5, [r0, #1]
	lsls r0, r0, #12
	strb r5, [r7, #0]
	lsls r0, r0, #12
	strb r0, [r3, #0]
	lsls r0, r0, #12
	adds r4, r1, #1
	lsls r1, r0, #8
	adds r0, r4, #1
	lsls r1, r0, #8
	adds r4, r6, #1
	lsls r1, r0, #8
	adds r0, r1, #2
	lsls r1, r0, #8
.L08009B30:
	ldr r0, [pc, #56]
	strb r1, [r0, #0]
.L08009B34:
	bl sub_08008A2C
	adds r3, r0, #0
	lsls r3, r3, #24
	lsrs r3, r3, #24
	adds r3, #1
	movs r0, #15
	movs r1, #1
	ldr r2, [pc, #40]
	bl sub_0800E730
	bl sub_08008F1C
	ldr r1, [pc, #36]
	ldr r0, [r1, #0]
	adds r0, #1
	str r0, [r1, #0]
	cmp r7, #0
	bne .L08009B5C
	b .L08009774
.L08009B5C:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.4byte 0x0300703D
	.4byte 0x02011C9C
	.4byte 0x03007050
	.4byte 0x20014901
	.4byte 0x47706008
	.4byte 0x03007014

	.thumb
	.align 1, 0
	.global sub_08009B84
	.thumb_func
sub_08009B84:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r4, r0, #0
	ldr r6, [pc, #136]
	movs r2, #0
	strh r2, [r6, #0]
	ldr r5, [pc, #136]
	ldrh r1, [r5, #0]
	ldr r0, [pc, #136]
	ands r0, r1
	strh r0, [r5, #0]
	movs r0, #1
	mov r9, r0
	strh r0, [r6, #0]
	ldr r0, [pc, #128]
	strh r2, [r0, #0]
	ldr r2, [pc, #128]
	movs r1, #128
	lsls r1, r1, #6
	adds r0, r1, #0
	strh r0, [r2, #0]
	ldrh r0, [r2, #0]
	ldr r3, [pc, #120]
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2, #0]
	movs r0, #0
	mov r8, r0
	str r0, [sp, #0]
	ldr r7, [pc, #108]
	ldr r2, [pc, #112]
	mov r0, sp
	adds r1, r7, #0
	bl sub_0800F220
	lsls r4, r4, #4
	movs r0, #15
	ldrb r1, [r7, #2]
	ands r0, r1
	orrs r0, r4
	strb r0, [r7, #2]
	movs r0, #12
	str r0, [r7, #20]
	str r0, [r7, #24]
	adds r0, r7, #0
	adds r0, #48
	str r0, [r7, #28]
	adds r0, #24
	str r0, [r7, #32]
	adds r0, #24
	str r0, [r7, #36]
	adds r0, #96
	str r0, [r7, #40]
	movs r3, #144
	lsls r3, r3, #1
	adds r0, r7, r3
	str r0, [r7, #44]
	mov r0, r8
	strh r0, [r6, #0]
	ldrh r0, [r5, #0]
	movs r1, #128
	orrs r0, r1
	strh r0, [r5, #0]
	mov r1, r9
	strh r1, [r6, #0]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x04000208
	.4byte 0x04000200
	.4byte 0x0000FF3F
	.4byte 0x04000134
	.4byte 0x04000128
	.4byte 0x00004003
	.4byte 0x030004C0
	.4byte 0x05000060
	.4byte 0x78084904
	.4byte 0xD0032800
	.4byte 0x798A2080
	.4byte 0x71884310
	.4byte 0x00004770
	.4byte 0x030004C0
	.4byte 0x20004B0C
	.4byte 0x4A0C8018
	.4byte 0x480C8811
	.4byte 0x80104008
	.4byte 0x80182001
	.4byte 0x4A0B490A
	.4byte 0x80081C10
	.4byte 0x480A391C
	.4byte 0x31F66008
	.4byte 0x800820C0
	.4byte 0x207F4908
	.4byte 0x4010798A
	.4byte 0x47707188
	.4byte 0x04000208
	.4byte 0x04000200
	.4byte 0x0000FF3F
	.4byte 0x04000128
	.4byte 0x00002003
	.4byte 0x0000ABFB
	.4byte 0x030004C0

	.thumb
	.align 1, 0
	.global sub_08009CA4
	.thumb_func
sub_08009CA4:
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	ldr r5, [pc, #20]
	ldr r7, [r5, #0]
	ldr r6, [pc, #20]
	ldrb r0, [r6, #1]
	cmp r0, #1
	beq .L08009D2E
	cmp r0, #1
	bgt .L08009CC8
	cmp r0, #0
	beq .L08009CCE
	b .L08009D72
	movs r0, r0
	lsls r0, r5, #4
	lsls r0, r0, #16
	lsls r0, r0, #19
	lsls r0, r0, #12
.L08009CC8:
	cmp r0, #2
	beq .L08009D6C
	b .L08009D72
.L08009CCE:
	movs r1, #48
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	bne .L08009D28
	movs r0, #136
	adds r4, r7, #0
	ands r4, r0
	cmp r4, #8
	bne .L08009D72
	movs r1, #4
	adds r0, r7, #0
	ands r0, r1
	lsls r0, r0, #24
	lsrs r1, r0, #24
	cmp r1, #0
	bne .L08009D28
	ldr r0, [r6, #20]
	cmp r0, #12
	bne .L08009D28
	ldr r3, [pc, #88]
	strh r1, [r3, #0]
	ldr r2, [pc, #88]
	ldrh r1, [r2, #0]
	ldr r0, [pc, #88]
	ands r0, r1
	strh r0, [r2, #0]
	ldrh r0, [r2, #0]
	movs r1, #64
	orrs r0, r1
	strh r0, [r2, #0]
	movs r0, #1
	strh r0, [r3, #0]
	ldrb r1, [r5, #1]
	movs r0, #65
	negs r0, r0
	ands r0, r1
	strb r0, [r5, #1]
	ldr r1, [pc, #64]
	ldr r0, [pc, #64]
	str r0, [r1, #0]
	adds r1, #246
	movs r0, #192
	strh r0, [r1, #0]
	strb r4, [r6, #0]
.L08009D28:
	ldr r1, [pc, #56]
	movs r0, #1
	strb r0, [r1, #1]
.L08009D2E:
	ldr r1, [pc, #52]
	movs r0, #240
	ldrb r2, [r1, #2]
	ands r0, r2
	cmp r0, #0
	beq .L08009D6C
	movs r0, #64
	ldrb r2, [r1, #6]
	ands r0, r2
	cmp r0, #0
	bne .L08009D6C
	ldrb r0, [r1, #8]
	cmp r0, #7
	bhi .L08009D68
	adds r0, #1
	strb r0, [r1, #8]
	b .L08009D6C
	lsls r0, r1, #8
	lsls r0, r0, #16
	lsls r0, r0, #8
	lsls r0, r0, #16
	.2byte 0xff7f @ .raw
	movs r0, r0
	lsls r4, r1, #4
	lsls r0, r0, #16
	add r3, sp, #1004
	movs r0, r0
	lsls r0, r0, #19
	lsls r0, r0, #12
.L08009D68:
	movs r0, #2
	strb r0, [r1, #1]
.L08009D6C:
	mov r0, ip
	bl sub_08009E90
.L08009D72:
	ldr r2, [pc, #48]
	ldrb r0, [r2, #11]
	adds r0, #1
	strb r0, [r2, #11]
	ldrb r1, [r2, #6]
	movs r3, #16
	ands r3, r1
	ldrb r0, [r2, #3]
	orrs r3, r0
	movs r0, #32
	ands r0, r1
	orrs r3, r0
	movs r0, #64
	ands r0, r1
	orrs r3, r0
	ldrb r1, [r2, #2]
	lsrs r0, r1, #4
	lsls r0, r0, #8
	ldrb r2, [r2, #0]
	cmp r2, #8
	bne .L08009DA8
	movs r1, #128
	orrs r1, r0
	orrs r1, r3
	b .L08009DAC
	lsls r0, r0, #19
	lsls r0, r0, #12
.L08009DA8:
	adds r1, r3, #0
	orrs r1, r0
.L08009DAC:
	ldr r2, [pc, #36]
	ldrb r0, [r2, #7]
	cmp r0, #0
	beq .L08009DBA
	movs r0, #128
	lsls r0, r0, #5
	orrs r1, r0
.L08009DBA:
	ldrb r2, [r2, #8]
	lsrs r0, r2, #3
	lsls r2, r0, #15
	lsls r0, r7, #26
	lsrs r0, r0, #30
	cmp r0, #3
	bls .L08009DD8
	movs r0, #128
	lsls r0, r0, #6
	orrs r0, r2
	orrs r0, r1
	b .L08009DDC
	movs r0, r0
	lsls r0, r0, #19
	lsls r0, r0, #12
.L08009DD8:
	adds r0, r1, #0
	orrs r0, r2
.L08009DDC:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08009DE4
	.thumb_func
sub_08009DE4:
	push {r4, r5, r6, r7, lr}
	movs r6, #0
	ldr r4, [pc, #152]
	ldr r3, [r4, #28]
	movs r2, #1
	ands r1, r2
	lsls r1, r1, #4
	movs r2, #17
	negs r2, r2
	ldrb r5, [r3, #1]
	ands r2, r5
	orrs r2, r1
	strb r2, [r3, #1]
	ldr r5, [r4, #28]
	ldr r1, [pc, #132]
	movs r3, #1
	adds r2, r3, #0
	ldrb r1, [r1, #3]
	ands r2, r1
	lsls r2, r2, #5
	movs r1, #33
	negs r1, r1
	ldrb r7, [r5, #1]
	ands r1, r7
	orrs r1, r2
	strb r1, [r5, #1]
	ldr r2, [r4, #28]
	ldrb r5, [r4, #6]
	lsls r1, r5, #25
	lsrs r1, r1, #31
	ands r3, r1
	lsls r3, r3, #6
	movs r1, #65
	negs r1, r1
	ldrb r7, [r2, #1]
	ands r1, r7
	orrs r1, r3
	strb r1, [r2, #1]
	ldr r2, [r4, #28]
	ldrb r1, [r4, #11]
	strb r1, [r2, #0]
	ldr r3, [r4, #28]
	ldrb r2, [r4, #2]
	lsls r1, r2, #28
	lsrs r1, r1, #28
	ldrb r2, [r4, #3]
	eors r2, r1
	movs r1, #15
	ands r2, r1
	movs r1, #16
	negs r1, r1
	ldrb r5, [r3, #1]
	ands r1, r5
	orrs r1, r2
	strb r1, [r3, #1]
	ldr r1, [r4, #28]
	strh r6, [r1, #2]
	ldr r1, [r4, #28]
	adds r1, #4
	ldr r2, [pc, #48]
	bl sub_0800F220
	movs r2, #0
	ldr r1, [r4, #28]
.L08009E64:
	ldrh r0, [r1, #0]
	adds r1, #2
	adds r6, r6, r0
	adds r2, #1
	cmp r2, #9
	bls .L08009E64
	ldr r0, [r4, #28]
	mvns r1, r6
	subs r1, #12
	strh r1, [r0, #2]
	movs r0, #1
	strb r0, [r4, #4]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x030004C0
	.4byte 0x03000640
	.4byte 0x04000004

	.thumb
	.align 1, 0
	.global sub_08009E90
	.thumb_func
sub_08009E90:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov r9, r0
	ldr r0, [pc, #280]
	movs r1, #0
	mov r8, r1
	bl sub_08012324
	lsls r0, r0, #24
	ldr r2, [pc, #272]
	mov r3, r8
	strb r3, [r2, #3]
	movs r1, #65
	negs r1, r1
	ldrb r7, [r2, #6]
	ands r1, r7
	strb r1, [r2, #6]
	cmp r0, #0
	beq .L08009F42
	movs r4, #3
	adds r6, r2, #0
	movs r0, #13
	negs r0, r0
	mov sl, r0
.L08009EC8:
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #3
	ldr r1, [r6, #44]
	adds r1, r1, r0
	mov r8, r1
	movs r3, #0
	movs r2, #0
	subs r1, r4, #1
	str r1, [sp, #4]
	mov r1, r8
.L08009EDE:
	ldrh r0, [r1, #0]
	adds r1, #2
	adds r3, r3, r0
	adds r2, #1
	cmp r2, #9
	bls .L08009EDE
	lsls r0, r3, #16
	asrs r0, r0, #16
	mov r5, r8
	adds r5, #4
	cmp r0, sl
	bne .L08009F2E
	movs r0, #1
	lsls r0, r4
	ldrb r2, [r6, #3]
	orrs r0, r2
	strb r0, [r6, #3]
	ldrb r2, [r6, #6]
	lsls r1, r2, #28
	lsrs r1, r1, #28
	mov r3, r8
	ldrb r3, [r3, #1]
	lsls r0, r3, #26
	lsrs r0, r0, #31
	lsls r0, r4
	orrs r0, r1
	movs r1, #15
	ands r0, r1
	movs r7, #16
	negs r7, r7
	adds r1, r7, #0
	ands r2, r1
	orrs r2, r0
	strb r2, [r6, #6]
	lsls r1, r4, #4
	add r1, r9
	adds r0, r5, #0
	ldr r2, [pc, #148]
	bl sub_0800F220
.L08009F2E:
	movs r0, #0
	str r0, [sp, #0]
	mov r0, sp
	adds r1, r5, #0
	ldr r2, [pc, #140]
	bl sub_0800F220
	ldr r4, [sp, #4]
	cmp r4, #0
	bge .L08009EC8
.L08009F42:
	ldr r5, [pc, #120]
	ldrb r2, [r5, #2]
	lsls r0, r2, #28
	lsrs r0, r0, #28
	ldrb r4, [r5, #3]
	orrs r0, r4
	movs r1, #15
	ands r0, r1
	movs r1, #16
	negs r1, r1
	ands r1, r2
	orrs r1, r0
	lsrs r2, r1, #4
	lsls r0, r1, #28
	lsrs r0, r0, #28
	orrs r2, r0
	lsls r2, r2, #4
	movs r3, #15
	ands r3, r1
	orrs r3, r2
	strb r3, [r5, #2]
	movs r1, #1
	adds r0, r1, #0
	ands r0, r4
	cmp r0, #0
	beq .L08009FF8
	ldrb r0, [r5, #0]
	cmp r0, #8
	bne .L08009FC8
	movs r0, #3
	ands r0, r4
	cmp r0, #0
	beq .L08009F96
	lsls r0, r4, #24
	lsrs r0, r0, #24
	lsrs r1, r3, #4
	cmp r0, r1
	bne .L08009F96
	movs r0, #16
	ldrb r1, [r5, #6]
	orrs r0, r1
	strb r0, [r5, #6]
.L08009F96:
	ldr r4, [pc, #36]
	ldrb r5, [r4, #6]
	lsls r2, r5, #28
	lsrs r2, r2, #28
	movs r0, #14
	ldrb r7, [r4, #2]
	lsrs r3, r7, #4
	adds r1, r0, #0
	ands r1, r2
	ands r0, r3
	cmp r1, r0
	bne .L08009FE0
	movs r0, #64
	orrs r0, r5
	strb r0, [r4, #6]
	b .L08009FE0
	movs r0, r0
	ldr r6, [sp, #240]
	lsls r0, r0, #8
	lsls r0, r0, #19
	lsls r0, r0, #12
	movs r4, r0
	lsls r0, r0, #16
	movs r4, r0
	lsls r0, r0, #20
.L08009FC8:
	mov r2, r8
	ldrb r2, [r2, #1]
	lsls r0, r2, #25
	lsrs r0, r0, #31
	ands r1, r0
	lsls r1, r1, #6
	movs r0, #65
	negs r0, r0
	ldrb r3, [r5, #6]
	ands r0, r3
	orrs r0, r1
	strb r0, [r5, #6]
.L08009FE0:
	ldr r2, [pc, #40]
	mov r7, r8
	ldrb r7, [r7, #1]
	lsls r1, r7, #27
	lsrs r1, r1, #31
	lsls r1, r1, #5
	movs r0, #33
	negs r0, r0
	ldrb r3, [r2, #6]
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #6]
.L08009FF8:
	ldr r0, [pc, #16]
	ldrb r0, [r0, #3]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.4byte 0x030004C0

	.thumb
	.align 1, 0
	.global sub_0800A010
	.thumb_func
sub_0800A010:
	push {r4, r5, lr}
	ldr r4, [pc, #88]
	ldrb r5, [r4, #0]
	cmp r5, #0
	beq .L0800A07C
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq .L0800A096
	movs r0, #128
	ldrb r1, [r4, #6]
	ands r0, r1
	cmp r0, #0
	beq .L0800A096
	movs r0, #1
	negs r0, r0
	str r0, [r4, #24]
	ldr r1, [r4, #40]
	ldr r0, [r4, #36]
	str r0, [r4, #40]
	str r1, [r4, #36]
	ldrb r0, [r4, #4]
	cmp r0, #0
	beq .L0800A04C
	ldr r1, [r4, #32]
	ldr r0, [r4, #28]
	str r0, [r4, #32]
	str r1, [r4, #28]
	movs r0, #0
	strb r0, [r4, #4]
	str r0, [r4, #20]
.L0800A04C:
	ldr r2, [pc, #32]
	ldr r0, [r2, #0]
	lsls r0, r0, #25
	lsrs r0, r0, #31
	strb r0, [r4, #7]
	ldr r0, [pc, #28]
	strh r0, [r2, #2]
	ldrh r0, [r2, #0]
	movs r1, #128
	orrs r0, r1
	strh r0, [r2, #0]
	ldr r1, [pc, #20]
	movs r0, #192
	strh r0, [r1, #0]
	b .L0800A096
	movs r0, r0
	lsls r0, r0, #19
	lsls r0, r0, #12
	lsls r0, r5, #4
	lsls r0, r0, #16
	.2byte 0xfefe @ .raw
	movs r0, r0
	lsls r6, r1, #4
	lsls r0, r0, #16
.L0800A07C:
	ldrb r0, [r4, #9]
	cmp r0, #0
	bne .L0800A094
	ldr r3, [pc, #24]
	strh r5, [r3, #0]
	ldr r2, [pc, #24]
	ldrh r0, [r2, #0]
	movs r1, #128
	orrs r0, r1
	strh r0, [r2, #0]
	movs r0, #1
	strh r0, [r3, #0]
.L0800A094:
	strb r5, [r4, #9]
.L0800A096:
	pop {r4, r5}
	pop {r0}
	bx r0
	.4byte 0x04000208
	.4byte 0x03007FF8

	.thumb
	.align 1, 0
	.global sub_0800A0A4
	.thumb_func
sub_0800A0A4:
	push {lr}
	ldr r0, [pc, #48]
	ldr r0, [r0, #0]
	movs r1, #128
	ands r0, r1
	cmp r0, #0
	beq .L0800A0C0
	ldr r0, [pc, #40]
	ldr r0, [r0, #0]
	subs r0, #2
	cmp r0, #1
	bhi .L0800A0C0
	bl sub_0800A010
.L0800A0C0:
	ldr r3, [pc, #28]
	movs r0, #0
	strh r0, [r3, #0]
	ldr r2, [pc, #28]
	ldrh r0, [r2, #0]
	movs r1, #1
	orrs r0, r1
	strh r0, [r2, #0]
	strh r1, [r3, #0]
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x030015C4
	.4byte 0x030015C0
	.4byte 0x04000208
	.4byte 0x03007FF8

	.thumb
	.align 1, 0
	.global sub_0800A0E8
	.thumb_func
sub_0800A0E8:
	push {r4, r5, lr}
	sub sp, #8
	ldr r0, [pc, #232]
	ldr r1, [r0, #4]
	ldr r0, [r0, #0]
	str r0, [sp, #0]
	str r1, [sp, #4]
	ldr r2, [pc, #228]
	ldr r0, [pc, #228]
	ldr r0, [r0, #0]
	lsls r0, r0, #25
	lsrs r0, r0, #31
	movs r4, #0
	strb r0, [r2, #7]
	mov r1, sp
	ldr r0, [pc, #220]
	ldrh r1, [r1, #0]
	cmp r1, r0
	bne .L0800A146
	ldr r0, [r2, #24]
	cmp r0, #9
	ble .L0800A146
	movs r0, #1
	negs r0, r0
	str r0, [r2, #24]
	ldr r1, [r2, #40]
	ldr r0, [r2, #36]
	str r0, [r2, #40]
	str r1, [r2, #36]
	ldrb r0, [r2, #4]
	cmp r0, #0
	beq .L0800A134
	ldr r1, [r2, #32]
	ldr r0, [r2, #28]
	str r0, [r2, #32]
	str r1, [r2, #28]
	strb r4, [r2, #4]
	str r4, [r2, #20]
.L0800A134:
	ldr r3, [pc, #176]
	strh r4, [r3, #0]
	ldr r2, [pc, #176]
	ldrh r0, [r2, #0]
	movs r1, #128
	orrs r0, r1
	strh r0, [r2, #0]
	movs r0, #1
	strh r0, [r3, #0]
.L0800A146:
	ldr r3, [pc, #148]
	ldr r0, [r3, #20]
	cmp r0, #9
	bgt .L0800A15A
	ldr r2, [pc, #144]
	ldr r1, [r3, #32]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0, #0]
	strh r0, [r2, #2]
.L0800A15A:
	ldr r0, [r3, #20]
	cmp r0, #10
	bgt .L0800A164
	adds r0, #1
	str r0, [r3, #20]
.L0800A164:
	ldr r0, [r3, #24]
	cmp r0, #0
	blt .L0800A196
	adds r5, r3, #0
	mov r2, sp
	movs r4, #0
	movs r3, #3
.L0800A172:
	ldr r0, [r5, #24]
	ldr r1, [r5, #36]
	lsls r0, r0, #1
	adds r1, r4, r1
	adds r0, r0, r1
	ldrh r1, [r2, #0]
	adds r2, #2
	strh r1, [r0, #0]
	adds r4, #24
	subs r3, #1
	cmp r3, #0
	bge .L0800A172
	ldr r1, [pc, #80]
	ldr r0, [r1, #24]
	cmp r0, #9
	bne .L0800A196
	movs r0, #1
	strb r0, [r1, #5]
.L0800A196:
	ldr r2, [pc, #68]
	ldr r0, [r2, #24]
	cmp r0, #10
	bgt .L0800A1A2
	adds r0, #1
	str r0, [r2, #24]
.L0800A1A2:
	ldrb r0, [r2, #0]
	cmp r0, #0
	beq .L0800A1AE
	ldr r1, [pc, #68]
	movs r0, #0
	strh r0, [r1, #0]
.L0800A1AE:
	ldr r0, [r2, #20]
	cmp r0, #10
	bgt .L0800A1CA
	ldrb r0, [r2, #0]
	cmp r0, #0
	beq .L0800A1CA
	ldr r2, [pc, #36]
	ldrh r0, [r2, #0]
	movs r1, #128
	orrs r0, r1
	strh r0, [r2, #0]
	ldr r1, [pc, #40]
	movs r0, #192
	strh r0, [r1, #0]
.L0800A1CA:
	ldr r1, [pc, #16]
	movs r0, #1
	strb r0, [r1, #9]
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.4byte 0x04000120
	.4byte 0x030004C0
	.4byte 0x04000128
	.4byte 0x0000FEFE
	.4byte 0x04000208
	.4byte 0x03007FF8
	.4byte 0x0400010E

	.thumb
	.align 1, 0
	.global sub_0800A1F4
	.thumb_func
sub_0800A1F4:
	push {r4, r5, r6, lr}
	movs r2, #0
	ldr r5, [pc, #28]
	movs r3, #128
	lsls r3, r3, #2
	movs r4, #255
.L0800A200:
	lsls r0, r2, #3
	adds r1, r0, r5
	movs r6, #224
	lsls r6, r6, #19
	adds r0, r0, r6
	strh r3, [r0, #0]
	strh r3, [r1, #0]
	adds r2, #1
	cmp r2, #128
	beq .L0800A21C
	strb r2, [r1, #6]
	b .L0800A222
	asrs r4, r0, #28
	lsls r0, r0, #12
.L0800A21C:
	ldrb r0, [r1, #6]
	orrs r0, r4
	strb r0, [r1, #6]
.L0800A222:
	movs r0, #0
	strb r0, [r1, #7]
	lsls r0, r2, #24
	lsrs r2, r0, #24
	cmp r0, #0
	bge .L0800A200
	ldr r0, [pc, #24]
	movs r2, #0
	strb r2, [r0, #0]
	ldr r1, [pc, #20]
	movs r0, #255
	strb r0, [r1, #0]
	ldr r0, [pc, #20]
	strb r2, [r0, #0]
	bl sub_0800A470
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.4byte 0x03001B08
	.4byte 0x03001B0C
	.4byte 0x03001B10

	.thumb
	.align 1, 0
	.global sub_0800A254
	.thumb_func
sub_0800A254:
	push {r4, r5, lr}
	ldr r0, [pc, #92]
	ldrb r4, [r0, #0]
	movs r5, #0
	cmp r4, #255
	beq .L0800A282
.L0800A260:
	lsls r4, r4, #3
	ldr r0, [pc, #84]
	adds r4, r4, r0
	lsls r1, r5, #3
	movs r0, #224
	lsls r0, r0, #19
	adds r1, r1, r0
	adds r0, r4, #0
	movs r2, #3
	bl sub_0800F220
	ldrb r4, [r4, #6]
	adds r0, r5, #1
	lsls r0, r0, #24
	lsrs r5, r0, #24
	cmp r4, #255
	bne .L0800A260
.L0800A282:
	ldr r2, [pc, #56]
	ldrb r0, [r2, #0]
	cmp r0, r5
	bls .L0800A2AA
	adds r1, r5, #0
	cmp r5, r0
	bcs .L0800A2AA
	movs r3, #128
	lsls r3, r3, #2
.L0800A294:
	lsls r0, r1, #3
	movs r4, #224
	lsls r4, r4, #19
	adds r0, r0, r4
	strh r3, [r0, #0]
	adds r0, r1, #1
	lsls r0, r0, #24
	lsrs r1, r0, #24
	ldrb r0, [r2, #0]
	cmp r1, r0
	bcc .L0800A294
.L0800A2AA:
	ldr r0, [pc, #16]
	strb r5, [r0, #0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.4byte 0x03001B0C
	.4byte 0x03001704
	.4byte 0x03001B10

	.thumb
	.align 1, 0
	.global sub_0800A2C0
	.thumb_func
sub_0800A2C0:
	ldr r2, [pc, #28]
	ldrb r3, [r2, #0]
	cmp r3, #255
	beq .L0800A2DA
	lsls r1, r3, #3
	ldr r0, [pc, #24]
	adds r1, r1, r0
	ldrb r0, [r1, #6]
	strb r0, [r2, #0]
	ldr r2, [pc, #20]
	ldrb r0, [r2, #0]
	strb r0, [r1, #6]
	strb r3, [r2, #0]
.L0800A2DA:
	adds r0, r3, #0
	bx lr
	.2byte 0x0000
	.4byte 0x03001B08
	.4byte 0x03001704
	.4byte 0x03001B0C

	.thumb
	.align 1, 0
	.global sub_0800A2EC
	.thumb_func
sub_0800A2EC:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	lsls r0, r0, #24
	lsrs r4, r0, #24
	lsls r1, r1, #16
	lsrs r1, r1, #16
	mov r9, r1
	lsls r2, r2, #16
	lsrs r2, r2, #16
	mov r8, r2
	ldr r0, [pc, #68]
	ldrb r2, [r0, #0]
	movs r7, #255
	lsls r3, r3, #24
	lsrs r6, r3, #24
	adds r5, r0, #0
	ldr r0, [pc, #60]
	mov ip, r0
	cmp r2, #255
	beq .L0800A32C
	mov r3, ip
.L0800A31A:
	lsls r0, r2, #3
	adds r0, r0, r3
	ldrb r1, [r0, #7]
	cmp r1, r6
	bcs .L0800A32C
	adds r7, r2, #0
	ldrb r2, [r0, #6]
	cmp r2, #255
	bne .L0800A31A
.L0800A32C:
	lsls r3, r4, #3
	mov r0, r8
	lsls r0, r0, #24
	mov r8, r0
	cmp r4, r7
	beq .L0800A392
	cmp r4, r2
	beq .L0800A392
	ldrb r1, [r5, #0]
	cmp r1, r4
	bne .L0800A35E
	ldr r0, [pc, #12]
	adds r0, r3, r0
	ldrb r0, [r0, #6]
	strb r0, [r5, #0]
	b .L0800A374
	subs r4, r1, r4
	lsls r0, r0, #12
	asrs r4, r0, #28
	lsls r0, r0, #12
.L0800A354:
	mov r5, ip
	adds r0, r3, r5
	ldrb r0, [r0, #6]
	strb r0, [r1, #6]
	b .L0800A374
.L0800A35E:
	ldrb r0, [r5, #0]
	cmp r0, #255
	beq .L0800A374
	ldr r5, [pc, #28]
.L0800A366:
	lsls r0, r0, #3
	adds r1, r0, r5
	ldrb r0, [r1, #6]
	cmp r0, r4
	beq .L0800A354
	cmp r0, #255
	bne .L0800A366
.L0800A374:
	ldr r1, [pc, #12]
	adds r0, r3, r1
	strb r2, [r0, #6]
	cmp r7, #255
	bne .L0800A38C
	ldr r0, [pc, #8]
	strb r4, [r0, #0]
	b .L0800A392
	asrs r4, r0, #28
	lsls r0, r0, #12
	subs r4, r1, r4
	lsls r0, r0, #12
.L0800A38C:
	lsls r0, r7, #3
	adds r0, r0, r1
	strb r4, [r0, #6]
.L0800A392:
	ldr r0, [pc, #92]
	adds r0, r3, r0
	strb r6, [r0, #7]
	movs r4, #0
	movs r1, #0
	ldr r2, [pc, #84]
.L0800A39E:
	ldrb r0, [r2, #0]
	adds r2, #1
	cmp r6, r0
	bls .L0800A3A8
	adds r4, #1
.L0800A3A8:
	adds r1, #1
	cmp r1, #3
	bne .L0800A39E
	ldr r2, [pc, #64]
	adds r2, r3, r2
	ldr r0, [pc, #68]
	ldrh r1, [r2, #4]
	ands r0, r1
	lsls r1, r4, #10
	orrs r0, r1
	strh r0, [r2, #4]
	movs r0, #255
	lsls r0, r0, #8
	ldrh r3, [r2, #0]
	ands r0, r3
	mov r5, r8
	lsrs r1, r5, #24
	orrs r0, r1
	strh r0, [r2, #0]
	movs r1, #254
	lsls r1, r1, #8
	ldrh r0, [r2, #2]
	ands r1, r0
	ldr r5, [pc, #36]
	adds r3, r5, #0
	mov r0, r9
	ands r0, r3
	orrs r1, r0
	strh r1, [r2, #2]
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x03001704
	.4byte 0x03001B04
	.4byte 0x0000F3FF
	.4byte 0x000001FF

	.thumb
	.align 1, 0
	.global sub_0800A400
	.thumb_func
sub_0800A400:
	push {r4, lr}
	lsls r0, r0, #24
	lsrs r3, r0, #24
	ldr r2, [pc, #24]
	ldrb r0, [r2, #0]
	cmp r3, #255
	beq .L0800A460
	cmp r0, r3
	bne .L0800A428
	ldr r0, [pc, #16]
	lsls r1, r3, #3
	adds r0, r1, r0
	ldrb r0, [r0, #6]
	strb r0, [r2, #0]
	b .L0800A44A
	movs r0, r0
	subs r4, r1, r4
	lsls r0, r0, #12
	asrs r4, r0, #28
	lsls r0, r0, #12
.L0800A428:
	ldr r4, [pc, #4]
	lsls r1, r3, #3
	b .L0800A436
	movs r0, r0
	asrs r4, r0, #28
	lsls r0, r0, #12
.L0800A434:
	ldrb r0, [r2, #6]
.L0800A436:
	cmp r0, #255
	beq .L0800A44A
	lsls r0, r0, #3
	adds r2, r0, r4
	ldrb r0, [r2, #6]
	cmp r0, r3
	bne .L0800A434
	adds r0, r1, r4
	ldrb r0, [r0, #6]
	strb r0, [r2, #6]
.L0800A44A:
	ldr r0, [pc, #28]
	adds r2, r1, r0
	movs r1, #0
	movs r0, #128
	lsls r0, r0, #2
	strh r0, [r2, #0]
	strb r1, [r2, #7]
	ldr r1, [pc, #16]
	ldrb r0, [r1, #0]
	strb r0, [r2, #6]
	strb r3, [r1, #0]
.L0800A460:
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x03001704
	.4byte 0x03001B08

	.thumb
	.align 1, 0
	.global sub_0800A470
	.thumb_func
sub_0800A470:
	ldr r1, [pc, #16]
	movs r0, #32
	strb r0, [r1, #0]
	movs r0, #96
	strb r0, [r1, #1]
	movs r0, #160
	strb r0, [r1, #2]
	movs r0, #224
	strb r0, [r1, #3]
	bx lr
	.4byte 0x03001B04
	.4byte 0x18804A01
	.4byte 0x47707001
	.4byte 0x03001B04

	.thumb
	.align 1, 0
	.global sub_0800A494
	.thumb_func
sub_0800A494:
	sub sp, #4
	movs r0, #0
	str r0, [sp, #0]
	ldr r1, [pc, #20]
	mov r0, sp
	str r0, [r1, #0]
	ldr r0, [pc, #16]
	str r0, [r1, #4]
	ldr r0, [pc, #16]
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	add sp, #4
	bx lr
	.2byte 0x0000
	.4byte 0x040000D4
	.4byte 0x03001B14
	.4byte 0x85000100

	.thumb
	.align 1, 0
	.global sub_0800A4BC
	.thumb_func
sub_0800A4BC:
	push {r4, r5, r6, r7, lr}
	mov ip, r2
	adds r4, r1, #0
	muls r4, r0
	cmp r3, #0
	beq .L0800A4CA
	lsls r4, r4, #1
.L0800A4CA:
	movs r0, #128
	lsls r0, r0, #3
	subs r1, r0, r4
	lsls r7, r4, #3
	ldr r6, [pc, #36]
.L0800A4D4:
	adds r5, r1, r6
	ldrb r0, [r5, #0]
	cmp r0, #0
	bne .L0800A4FC
	movs r2, #0
	cmp r2, r4
	bcs .L0800A4F2
	adds r3, r5, #0
.L0800A4E4:
	ldrb r0, [r3, #0]
	adds r3, #1
	cmp r0, #0
	bne .L0800A4FC
	adds r2, #1
	cmp r2, r4
	bcc .L0800A4E4
.L0800A4F2:
	lsls r0, r1, #16
	lsrs r6, r0, #16
	b .L0800A500
	subs r4, r2, r4
	lsls r0, r0, #12
.L0800A4FC:
	subs r1, r1, r4
	b .L0800A4D4
.L0800A500:
	movs r0, #1
	strb r0, [r5, #0]
	movs r1, #1
	lsls r2, r6, #5
	cmp r1, r4
	bcs .L0800A51A
	movs r3, #255
	adds r0, r5, #1
.L0800A510:
	strb r3, [r0, #0]
	adds r0, #1
	adds r1, #1
	cmp r1, r4
	bcc .L0800A510
.L0800A51A:
	ldr r0, [pc, #24]
	adds r1, r2, r0
	ldr r0, [pc, #24]
	ands r7, r0
	mov r0, ip
	adds r2, r7, #0
	bl sub_0800F21C
	adds r0, r6, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000
	.4byte 0x06010000
	.4byte 0x001FFFFF

	.thumb
	.align 1, 0
	.global sub_0800A53C
	.thumb_func
sub_0800A53C:
	push {r4, lr}
	adds r4, r3, #0
	ldr r3, [sp, #8]
	lsls r0, r0, #16
	lsrs r0, r0, #16
	muls r2, r1
	cmp r3, #0
	beq .L0800A54E
	lsls r2, r2, #1
.L0800A54E:
	lsls r1, r0, #5
	ldr r0, [pc, #20]
	adds r1, r1, r0
	lsls r2, r2, #3
	ldr r0, [pc, #20]
	ands r2, r0
	adds r0, r4, #0
	bl sub_0800F21C
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x06010000
	.4byte 0x001FFFFF

	.thumb
	.align 1, 0
	.global sub_0800A570
	.thumb_func
sub_0800A570:
	push {r4, lr}
	lsls r0, r0, #16
	lsrs r2, r0, #16
	adds r1, r2, #0
	ldr r0, [pc, #52]
	cmp r2, r0
	beq .L0800A5AA
	ldr r3, [pc, #52]
	adds r0, r2, #1
	lsls r0, r0, #16
	lsrs r2, r0, #16
	adds r1, r1, r3
	movs r0, #0
	strb r0, [r1, #0]
	adds r0, r2, r3
	ldrb r0, [r0, #0]
	cmp r0, #255
	bne .L0800A5AA
	movs r4, #0
.L0800A596:
	adds r1, r2, #0
	adds r0, r1, #1
	lsls r0, r0, #16
	lsrs r2, r0, #16
	adds r1, r1, r3
	strb r4, [r1, #0]
	adds r0, r2, r3
	ldrb r0, [r0, #0]
	cmp r0, #255
	beq .L0800A596
.L0800A5AA:
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x0000FFFF
	.4byte 0x03001B14

	.thumb
	.align 1, 0
	.global sub_0800A5B8
	.thumb_func
sub_0800A5B8:
	adds r2, r0, #0
	strb r1, [r2, #4]
	subs r0, r1, #1
	cmp r0, #11
	bhi .L0800A69A
	lsls r0, r0, #2
	ldr r1, [pc, #4]
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	subs r4, r5, #3
	lsls r1, r0, #8
	adds r0, r2, #0
	adds r0, #184
	ldr r1, [pc, #0]
	b .L0800A62E
	ldr r1, [r7, r5]
	lsls r0, r0, #8
	adds r1, r2, #0
	adds r1, #184
	ldr r0, [pc, #4]
	str r0, [r1, #0]
	b .L0800A69A
	movs r0, r0
	ldrb r5, [r4, r6]
	lsls r0, r0, #8
	adds r1, r2, #0
	adds r1, #184
	ldr r0, [pc, #4]
	str r0, [r1, #0]
	b .L0800A69A
	movs r0, r0
	str r1, [r7, #12]
	lsls r0, r0, #8
	adds r0, r2, #0
	adds r0, #184
	ldr r1, [pc, #8]
	str r1, [r0, #0]
	ldr r0, [pc, #8]
	str r0, [r2, #60]
	b .L0800A69A
	movs r0, r0
	str r1, [r4, #40]
	lsls r0, r0, #8
	.2byte 0xf800 @ .raw
	.2byte 0xffff @ .raw
	adds r1, r2, #0
	adds r1, #184
	ldr r0, [pc, #8]
	str r0, [r1, #0]
	ldr r0, [r2, #48]
	asrs r0, r0, #8
	strh r0, [r2, #30]
	b .L0800A69A
	str r1, [r6, #100]
	lsls r0, r0, #8
	adds r0, r2, #0
	adds r0, #184
	ldr r1, [pc, #8]
.L0800A62E:
	str r1, [r0, #0]
	movs r0, #1
	strh r0, [r2, #14]
	b .L0800A69A
	movs r0, r0
	ldr r5, [r1, #44]
	lsls r0, r0, #8
	adds r0, r2, #0
	adds r0, #184
	ldr r1, [pc, #8]
	str r1, [r0, #0]
	movs r0, #0
	strh r0, [r2, #8]
	b .L0800A69A
	movs r0, r0
	ldr r1, [r3, #68]
	lsls r0, r0, #8
	adds r1, r2, #0
	adds r1, #184
	ldr r0, [pc, #12]
	str r0, [r1, #0]
	movs r1, #0
	movs r0, #90
	strh r0, [r2, #22]
	strh r1, [r2, #14]
	b .L0800A69A
	movs r0, r0
	ldr r5, [r6, #96]
	lsls r0, r0, #8
	adds r1, r2, #0
	adds r1, #184
	ldr r0, [pc, #4]
	str r0, [r1, #0]
	b .L0800A69A
	movs r0, r0
	strb r5, [r3, #16]
	lsls r0, r0, #8
	adds r0, r2, #0
	adds r0, #184
	ldr r1, [pc, #8]
	str r1, [r0, #0]
	movs r0, #0
	strh r0, [r2, #26]
	b .L0800A69A
	movs r0, r0
	strb r1, [r7, #2]
	lsls r0, r0, #8
	adds r0, r2, #0
	adds r0, #184
	ldr r1, [pc, #8]
	str r1, [r0, #0]
	movs r0, #0
	str r0, [r2, #56]
	strh r0, [r2, #16]
.L0800A69A:
	bx lr
	.4byte 0x02007245

	.thumb
	.align 1, 0
	.global sub_0800A6A0
	.thumb_func
sub_0800A6A0:
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	lsls r2, r2, #24
	lsrs r2, r2, #24
	movs r0, #208
	adds r1, r6, #0
	muls r1, r0
	ldr r0, [pc, #8]
	adds r4, r1, r0
	cmp r2, #0
	bne .L0800A6C0
	strb r2, [r4, #1]
	b .L0800A77E
	subs r4, r2, #4
	lsls r0, r0, #12
.L0800A6C0:
	movs r2, #0
	strb r6, [r4, #0]
	adds r1, r4, #0
	adds r1, #52
	movs r0, #40
	strb r0, [r1, #0]
	adds r0, r4, #0
	adds r0, #72
	movs r5, #0
	strh r2, [r0, #0]
	adds r1, #22
	ldr r0, [pc, #76]
	strh r0, [r1, #0]
	str r2, [r4, #56]
	str r2, [r4, #60]
	movs r0, #192
	lsls r0, r0, #2
	str r0, [r4, #64]
	movs r0, #128
	lsls r0, r0, #4
	str r0, [r4, #68]
	adds r0, r4, #0
	adds r0, #40
	strb r5, [r0, #0]
	strb r5, [r4, #5]
	subs r0, #2
	movs r3, #1
	strb r3, [r0, #0]
	adds r0, #1
	strb r3, [r0, #0]
	strh r2, [r4, #10]
	strb r3, [r4, #1]
	strb r3, [r4, #3]
	adds r0, #39
	strb r3, [r0, #0]
	adds r1, #2
	movs r0, #255
	strh r0, [r1, #0]
	ldr r0, [pc, #24]
	lsls r1, r6, #1
	adds r0, r1, r0
	strh r2, [r0, #0]
	strh r2, [r4, #24]
	cmp r7, #0
	bne .L0800A730
	ldr r0, [pc, #16]
	adds r0, r1, r0
	strb r5, [r0, #0]
	b .L0800A736
	movs r0, r0
	.2byte 0xfff0 @ .raw
	movs r0, r0
	movs r2, #92
	lsls r0, r0, #12
	movs r2, #84
	lsls r0, r0, #12
.L0800A730:
	ldr r0, [pc, #80]
	adds r0, r1, r0
	strb r3, [r0, #0]
.L0800A736:
	ldr r0, [pc, #76]
	adds r0, #1
	adds r0, r1, r0
	movs r1, #0
	strb r1, [r0, #0]
	adds r5, r4, #0
	adds r5, #84
	ldr r1, [pc, #64]
	adds r0, r5, #0
	movs r2, #63
	movs r3, #0
	bl sub_08005710
	ldrb r0, [r4, #0]
	cmp r0, #0
	beq .L0800A760
	ldrb r1, [r4, #0]
	adds r1, #2
	adds r0, r5, #0
	bl sub_08005B70
.L0800A760:
	adds r0, r4, #0
	movs r1, #1
	bl sub_0800A5B8
	adds r0, r6, #0
	bl sub_0800D310
	adds r0, r6, #0
	movs r1, #0
	bl sub_0800D3A0
	adds r0, r6, #0
	movs r1, #0
	bl sub_0800D3C8
.L0800A77E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.4byte 0x03002254
	.4byte 0x020272E0

	.thumb
	.align 1, 0
	.global sub_0800A78C
	.thumb_func
sub_0800A78C:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #88
	str r0, [sp, #48]
	str r2, [sp, #52]
	str r3, [sp, #56]
	movs r0, #208
	ldr r1, [sp, #48]
	muls r0, r1
	ldr r1, [pc, #76]
	adds r0, r0, r1
	mov r8, r0
	cmp r2, #0
	blt .L0800A7B2
	cmp r3, #0
	bge .L0800A894
.L0800A7B2:
	movs r6, #0
	mov r2, r8
	adds r2, #40
	str r2, [sp, #84]
	mov r3, r8
	adds r3, #38
	str r3, [sp, #76]
	mov r4, r8
	adds r4, #39
	str r4, [sp, #80]
	mov r0, r8
	adds r0, #76
	str r0, [sp, #60]
	ldr r2, [sp, #48]
	lsls r2, r2, #1
	str r2, [sp, #72]
	adds r3, #46
	str r3, [sp, #64]
	ldr r4, [pc, #32]
	mov sl, r4
	mov r9, r1
.L0800A7DC:
	mov r0, sl
	adds r1, r6, #0
	bl sub_0800E098
	ldrh r7, [r0, #0]
	mov r0, sl
	adds r1, r6, #0
	bl sub_0800E098
	ldrh r5, [r0, #2]
	movs r4, #0
	b .L0800A834
	subs r4, r2, #4
	lsls r0, r0, #12
	asrs r0, r6, #10
	lsls r0, r0, #12
.L0800A7FC:
	movs r0, #208
	adds r2, r4, #0
	muls r2, r0
	mov r0, r9
	adds r0, #44
	adds r0, r2, r0
	ldr r1, [r0, #0]
	asrs r1, r1, #8
	ldr r0, [pc, #84]
	adds r2, r2, r0
	ldr r0, [r2, #0]
	asrs r0, r0, #8
	subs r1, r7, r1
	subs r2, r5, r0
	adds r1, #240
	movs r0, #180
	lsls r0, r0, #2
	cmp r1, r0
	bhi .L0800A832
	movs r0, #160
	negs r0, r0
	cmp r2, r0
	blt .L0800A832
	movs r0, #160
	lsls r0, r0, #1
	cmp r2, r0
	ble .L0800A842
.L0800A832:
	adds r4, #1
.L0800A834:
	bl sub_08008750
	cmp r4, r0
	bcc .L0800A7FC
	movs r1, #0
	cmp r1, #0
	beq .L0800A848
.L0800A842:
	adds r6, #1
	cmp r6, #4
	bls .L0800A7DC
.L0800A848:
	cmp r6, #5
	bhi .L0800A86C
	ldr r4, [pc, #24]
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_0800E098
	ldrh r0, [r0, #0]
	lsls r0, r0, #8
	mov r2, r8
	str r0, [r2, #44]
	adds r0, r4, #0
	adds r1, r6, #0
	b .L0800A974
	subs r4, r0, #5
	lsls r0, r0, #12
	asrs r0, r6, #10
	lsls r0, r0, #12
.L0800A86C:
	ldr r4, [pc, #32]
	adds r0, r4, #0
	movs r1, #0
	bl sub_0800E098
	ldrh r0, [r0, #0]
	lsls r0, r0, #8
	mov r1, r8
	str r0, [r1, #44]
	adds r0, r4, #0
	movs r1, #0
	bl sub_0800E098
	ldrh r0, [r0, #2]
	lsls r0, r0, #8
	mov r2, r8
	str r0, [r2, #48]
	b .L0800A980
	asrs r0, r6, #10
	lsls r0, r0, #12
.L0800A894:
	movs r7, #0
	mov r3, sp
	adds r3, #4
	str r3, [sp, #68]
	mov r4, r8
	adds r4, #40
	str r4, [sp, #84]
	mov r0, r8
	adds r0, #38
	str r0, [sp, #76]
	mov r1, r8
	adds r1, #39
	str r1, [sp, #80]
	mov r2, r8
	adds r2, #76
	str r2, [sp, #60]
	ldr r3, [sp, #48]
	lsls r3, r3, #1
	str r3, [sp, #72]
	adds r4, #44
	str r4, [sp, #64]
	ldr r0, [pc, #316]
	mov sl, r0
	mov r9, sp
.L0800A8C4:
	mov r0, sl
	adds r1, r7, #0
	bl sub_0800E098
	adds r6, r0, #0
	mov r0, sl
	adds r1, r7, #0
	bl sub_0800E098
	adds r5, r0, #0
	mov r0, sl
	adds r1, r7, #0
	bl sub_0800E098
	adds r4, r0, #0
	mov r0, sl
	adds r1, r7, #0
	bl sub_0800E098
	ldrh r6, [r6, #0]
	ldr r1, [sp, #52]
	subs r2, r6, r1
	ldrh r5, [r5, #0]
	subs r1, r5, r1
	muls r2, r1
	ldrh r4, [r4, #2]
	ldr r3, [sp, #56]
	subs r1, r4, r3
	ldrh r0, [r0, #2]
	subs r0, r0, r3
	muls r0, r1
	adds r0, r2, r0
	cmp r0, #0
	bge .L0800A90A
	negs r0, r0
.L0800A90A:
	bl sub_0800F230
	lsls r1, r7, #3
	lsls r0, r0, #16
	lsrs r0, r0, #16
	mov r4, r9
	str r0, [r4, #0]
	ldr r0, [sp, #68]
	adds r1, r0, r1
	str r7, [r1, #0]
	movs r1, #8
	add r9, r1
	adds r7, #1
	cmp r7, #5
	bls .L0800A8C4
	movs r1, #0
	movs r7, #6
.L0800A92C:
	subs r0, r7, r1
	adds r6, r1, #1
	cmp r0, #1
	ble .L0800A958
	mov r4, sp
	subs r5, r0, #1
.L0800A938:
	ldr r1, [r4, #0]
	ldr r0, [r4, #8]
	cmp r1, r0
	bls .L0800A950
	ldr r2, [r4, #0]
	ldr r3, [r4, #4]
	ldr r0, [r4, #8]
	ldr r1, [r4, #12]
	str r0, [r4, #0]
	str r1, [r4, #4]
	str r2, [r4, #8]
	str r3, [r4, #12]
.L0800A950:
	adds r4, #8
	subs r5, #1
	cmp r5, #0
	bne .L0800A938
.L0800A958:
	adds r1, r6, #0
	cmp r1, #4
	ble .L0800A92C
	ldr r4, [pc, #156]
	ldr r1, [sp, #4]
	adds r0, r4, #0
	bl sub_0800E098
	ldrh r0, [r0, #0]
	lsls r0, r0, #8
	mov r2, r8
	str r0, [r2, #44]
	ldr r1, [sp, #4]
	adds r0, r4, #0
.L0800A974:
	bl sub_0800E098
	ldrh r0, [r0, #2]
	lsls r0, r0, #8
	mov r3, r8
	str r0, [r3, #48]
.L0800A980:
	movs r1, #0
	mov r4, r8
	str r1, [r4, #56]
	str r1, [r4, #60]
	ldr r0, [sp, #84]
	strb r1, [r0, #0]
	strb r1, [r4, #5]
	movs r2, #1
	ldr r3, [sp, #76]
	strb r2, [r3, #0]
	ldr r4, [sp, #80]
	strb r2, [r4, #0]
	movs r3, #0
	mov r0, r8
	strh r1, [r0, #10]
	strb r2, [r0, #1]
	strb r2, [r0, #3]
	movs r0, #255
	ldr r4, [sp, #60]
	strh r0, [r4, #0]
	ldr r0, [pc, #84]
	ldr r4, [sp, #72]
	adds r0, r4, r0
	strh r1, [r0, #0]
	mov r0, r8
	strh r1, [r0, #24]
	ldr r0, [pc, #76]
	adds r1, r4, r0
	strb r2, [r1, #0]
	adds r0, #1
	adds r0, r4, r0
	strb r3, [r0, #0]
	mov r0, r8
	bl sub_08006B2C
	ldr r0, [sp, #64]
	movs r1, #63
	bl sub_08005A94
	mov r0, r8
	movs r1, #1
	bl sub_0800A5B8
	ldr r0, [sp, #48]
	bl sub_0800D310
	ldr r0, [sp, #48]
	movs r1, #0
	bl sub_0800D3C8
	mov r1, r8
	ldr r0, [r1, #80]
	bl sub_0800F0E4
	add sp, #88
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.4byte 0x030012B0
	.4byte 0x0300225C
	.4byte 0x03002254

	.thumb
	.align 1, 0
	.global sub_0800AA08
	.thumb_func
sub_0800AA08:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #12
	movs r1, #208
	muls r1, r0
	ldr r0, [pc, #72]
	adds r4, r1, r0
	adds r0, r4, #0
	adds r0, #184
	ldr r1, [r0, #0]
	adds r0, r4, #0
	bl sub_08012328
	ldr r0, [r4, #80]
	bl sub_0800F144
	ldrh r1, [r4, #24]
	movs r2, #24
	ldrsh r0, [r4, r2]
	cmp r0, #0
	ble .L0800AA7C
	subs r0, r1, #1
	strh r0, [r4, #24]
	lsls r0, r0, #16
	cmp r0, #0
	bgt .L0800AA4E
	adds r1, r4, #0
	adds r1, #39
	movs r0, #1
	strb r0, [r1, #0]
	subs r1, #1
	strb r0, [r1, #0]
.L0800AA4E:
	movs r0, #7
	ldrh r1, [r4, #24]
	ands r0, r1
	cmp r0, #1
	bgt .L0800AA68
	adds r0, r4, #0
	adds r0, #84
	movs r1, #14
	bl sub_08005B70
	b .L0800AAA0
	subs r4, r2, #4
	lsls r0, r0, #12
.L0800AA68:
	ldrb r0, [r4, #0]
	cmp r0, #0
	beq .L0800AA82
	adds r0, r4, #0
	adds r0, #84
	ldrb r1, [r4, #0]
	adds r1, #2
	bl sub_08005B70
	b .L0800AAA0
.L0800AA7C:
	ldrb r0, [r4, #0]
	cmp r0, #0
	bne .L0800AA94
.L0800AA82:
	adds r0, r4, #0
	adds r0, #84
	ldr r1, [pc, #8]
	bl sub_08005B70
	b .L0800AAA0
	movs r0, r0
	.2byte 0xffff @ .raw
	movs r0, r0
.L0800AA94:
	adds r0, r4, #0
	adds r0, #84
	ldrb r1, [r4, #0]
	adds r1, #2
	bl sub_08005B70
.L0800AAA0:
	movs r2, #0
	mov r9, r2
	movs r0, #128
	lsls r0, r0, #3
	mov sl, r0
.L0800AAAA:
	ldr r1, [pc, #148]
	movs r0, #208
	mov r2, r9
	muls r2, r0
	adds r0, r2, #0
	adds r5, r0, r1
	ldrb r0, [r5, #1]
	cmp r0, #0
	beq .L0800ABA8
	cmp r4, r5
	beq .L0800ABA8
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0
	bl sub_08006590
	lsls r0, r0, #24
	cmp r0, #0
	beq .L0800ABA8
	ldr r2, [r4, #44]
	ldr r3, [r5, #44]
	subs r1, r2, r3
	cmp r1, #0
	bge .L0800AADC
	negs r1, r1
.L0800AADC:
	ldr r0, [pc, #100]
	cmp r1, r0
	bgt .L0800ABA8
	cmp r2, r3
	bge .L0800AB4C
	ldr r1, [pc, #96]
	adds r0, r2, r1
	ldr r1, [r4, #48]
	movs r2, #32
	negs r2, r2
	mov r8, r2
	str r2, [sp, #0]
	movs r7, #12
	str r7, [sp, #4]
	movs r6, #8
	negs r6, r6
	str r6, [sp, #8]
	ldr r2, [pc, #72]
	movs r3, #12
	negs r3, r3
	bl sub_080063C8
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0800AB16
	ldr r0, [r4, #44]
	ldr r1, [pc, #52]
	adds r0, r0, r1
	str r0, [r4, #44]
.L0800AB16:
	ldr r0, [r5, #44]
	ldr r2, [pc, #44]
	adds r0, r0, r2
	ldr r1, [r5, #48]
	mov r2, r8
	str r2, [sp, #0]
	str r7, [sp, #4]
	str r6, [sp, #8]
	movs r2, #128
	lsls r2, r2, #3
	movs r3, #12
	negs r3, r3
	bl sub_080063C8
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0800ABA8
	ldr r0, [r5, #44]
	movs r1, #128
	lsls r1, r1, #3
	b .L0800ABA4
	subs r4, r2, #4
	lsls r0, r0, #12
	subs r7, r7, r7
	movs r0, r0
	.2byte 0xfc00 @ .raw
	.2byte 0xffff @ .raw
.L0800AB4C:
	mov r1, sl
	adds r0, r2, r1
	ldr r1, [r4, #48]
	movs r2, #32
	negs r2, r2
	mov r8, r2
	str r2, [sp, #0]
	movs r7, #12
	str r7, [sp, #4]
	movs r6, #8
	negs r6, r6
	str r6, [sp, #8]
	mov r2, sl
	movs r3, #12
	negs r3, r3
	bl sub_080063C8
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0800AB7E
	ldr r0, [r4, #44]
	movs r1, #128
	lsls r1, r1, #3
	adds r0, r0, r1
	str r0, [r4, #44]
.L0800AB7E:
	ldr r0, [r5, #44]
	movs r2, #128
	lsls r2, r2, #3
	adds r0, r0, r2
	ldr r1, [r5, #48]
	mov r2, r8
	str r2, [sp, #0]
	str r7, [sp, #4]
	str r6, [sp, #8]
	ldr r2, [pc, #116]
	movs r3, #12
	negs r3, r3
	bl sub_080063C8
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0800ABA8
	ldr r0, [r5, #44]
	ldr r1, [pc, #100]
.L0800ABA4:
	adds r0, r0, r1
	str r0, [r5, #44]
.L0800ABA8:
	movs r2, #1
	add r9, r2
	mov r0, r9
	cmp r0, #4
	beq .L0800ABB4
	b .L0800AAAA
.L0800ABB4:
	ldr r0, [r4, #44]
	ldr r1, [pc, #84]
	cmp r0, r1
	bgt .L0800ABC2
	movs r0, #128
	lsls r0, r0, #4
	str r0, [r4, #44]
.L0800ABC2:
	ldr r0, [r4, #48]
	cmp r0, r1
	bgt .L0800ABCE
	movs r0, #128
	lsls r0, r0, #4
	str r0, [r4, #48]
.L0800ABCE:
	ldr r1, [r4, #44]
	asrs r1, r1, #8
	ldr r2, [pc, #60]
	ldr r0, [r2, #8]
	ldr r0, [r0, #0]
	lsls r0, r0, #3
	subs r0, #8
	cmp r1, r0
	bls .L0800ABE4
	lsls r0, r0, #8
	str r0, [r4, #44]
.L0800ABE4:
	ldr r1, [r4, #48]
	asrs r1, r1, #8
	ldr r0, [r2, #8]
	ldr r0, [r0, #4]
	lsls r0, r0, #3
	subs r0, #8
	cmp r1, r0
	bls .L0800ABF8
	lsls r0, r0, #8
	str r0, [r4, #48]
.L0800ABF8:
	add sp, #12
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.4byte 0xFFFFFC00
	.4byte 0x000007FF
	.4byte 0x030012B0

	.thumb
	.align 1, 0
	.global sub_0800AC14
	.thumb_func
sub_0800AC14:
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r0, #208
	adds r1, r6, #0
	muls r1, r0
	ldr r0, [pc, #72]
	adds r5, r1, r0
	ldrb r0, [r5, #3]
	cmp r0, #0
	beq .L0800AC70
	adds r4, r5, #0
	adds r4, #84
	ldr r1, [r5, #44]
	asrs r1, r1, #8
	ldr r2, [r5, #48]
	asrs r2, r2, #8
	adds r0, r4, #0
	bl sub_08006234
	lsls r0, r0, #24
	cmp r0, #0
	beq .L0800AC70
	adds r0, r4, #0
	bl sub_08005A18
	ldr r1, [r5, #44]
	asrs r1, r1, #8
	ldr r3, [pc, #32]
	ldr r0, [r3, #8]
	subs r1, r1, r0
	ldr r2, [r5, #48]
	asrs r2, r2, #8
	ldr r0, [r3, #12]
	subs r2, r2, r0
	adds r0, r5, #0
	adds r0, #52
	ldrb r3, [r0, #0]
	adds r0, r4, #0
	bl sub_08005A98
	b .L0800AC7A
	movs r0, r0
	subs r4, r2, #4
	lsls r0, r0, #12
	asrs r0, r6, #7
	lsls r0, r0, #12
.L0800AC70:
	adds r4, r5, #0
	adds r4, #84
	adds r0, r4, #0
	bl sub_08005A20
.L0800AC7A:
	adds r0, r4, #0
	bl sub_08005834
	adds r0, r6, #0
	bl sub_0800D4A4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_0800AC8C
	.thumb_func
sub_0800AC8C:
	push {r4, r5, lr}
	adds r2, r0, #0
	movs r4, #0
	adds r0, #188
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq .L0800ACE8
	ldrh r0, [r2, #10]
	cmp r0, #0
	bne .L0800ACA6
	adds r0, r2, #0
	adds r0, #204
	ldrb r4, [r0, #0]
.L0800ACA6:
	adds r0, r2, #0
	adds r0, #205
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq .L0800ACBC
	adds r1, r2, #0
	adds r1, #38
	movs r0, #0
	strb r0, [r1, #0]
	adds r1, #1
	strb r0, [r1, #0]
.L0800ACBC:
	adds r0, r2, #0
	adds r0, #206
	ldrb r0, [r0, #0]
	strh r0, [r2, #24]
	adds r0, r2, #0
	adds r0, #196
	ldrh r3, [r0, #0]
	adds r1, r2, #0
	adds r1, #76
	movs r5, #0
	ldrsh r0, [r1, r5]
	subs r0, r0, r3
	cmp r0, #0
	blt .L0800ACDE
	ldrh r5, [r1, #0]
	subs r0, r5, r3
	b .L0800ACE0
.L0800ACDE:
	movs r0, #0
.L0800ACE0:
	strh r0, [r1, #0]
	adds r0, r2, #0
	bl sub_08006B2C
.L0800ACE8:
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	.thumb
	.align 1, 0
	.global sub_0800ACF0
	.thumb_func
sub_0800ACF0:
	push {lr}
	ldr r0, [r0, #80]
	bl sub_0800D2C8
	adds r0, #64
	pop {r1}
	bx r1
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_0800AD00
	.thumb_func
sub_0800AD00:
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #80]
	bl sub_0800D2DC
	adds r1, r0, #0
	ldr r0, [r4, #64]
	adds r0, r0, r1
	pop {r4}
	pop {r1}
	bx r1
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_0800AD18
	.thumb_func
sub_0800AD18:
	push {r4, r5, r6, r7, lr}
	sub sp, #12
	adds r5, r0, #0
	ldrb r0, [r5, #5]
	cmp r0, #1
	beq .L0800AD36
	ldrb r0, [r5, #4]
	strb r0, [r5, #5]
	ldrh r0, [r5, #10]
	cmp r0, #0
	bne .L0800AD36
	adds r0, r5, #0
	adds r0, #84
	bl sub_08005AC0
.L0800AD36:
	ldrh r1, [r5, #10]
	cmp r1, #1
	bne .L0800ADA0
	adds r0, r5, #0
	adds r0, #40
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L0800AD54
	adds r4, r5, #0
	adds r4, #84
	adds r0, r4, #0
	movs r1, #5
	bl sub_08005A94
	b .L0800AD60
.L0800AD54:
	adds r4, r5, #0
	adds r4, #84
	adds r0, r4, #0
	movs r1, #4
	bl sub_08005A94
.L0800AD60:
	adds r0, r4, #0
	bl sub_08005AD8
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #0
	bne .L0800AD70
	strh r0, [r5, #10]
.L0800AD70:
	ldr r0, [r5, #56]
	movs r1, #64
	bl sub_0800EB3C
	adds r2, r0, #0
	str r2, [r5, #56]
	ldr r0, [r5, #44]
	ldr r1, [r5, #48]
	movs r3, #16
	negs r3, r3
	movs r4, #32
	negs r4, r4
	str r4, [sp, #0]
	movs r4, #16
	str r4, [sp, #4]
	subs r4, #24
	str r4, [sp, #8]
	bl sub_080063C8
	lsls r0, r0, #24
	cmp r0, #0
	beq .L0800AD9E
	b .L0800B0C8
.L0800AD9E:
	b .L0800B0CE
.L0800ADA0:
	ldr r0, [r5, #80]
	bl sub_0800F1B8
	lsls r0, r0, #24
	cmp r0, #0
	beq .L0800ADAE
	b .L0800AF48
.L0800ADAE:
	ldr r7, [pc, #76]
	ldrb r2, [r5, #0]
	lsls r0, r2, #1
	adds r0, r0, r7
	ldrh r2, [r0, #0]
	movs r0, #64
	ands r0, r2
	cmp r0, #0
	beq .L0800AE44
	movs r1, #1
	adds r0, r1, #0
	eors r0, r2
	ands r0, r1
	cmp r0, #0
	beq .L0800AE44
	movs r0, #48
	ands r0, r2
	adds r4, r5, #0
	adds r4, #84
	adds r6, r5, #0
	adds r6, #40
	cmp r0, #0
	beq .L0800AE0A
	adds r0, r4, #0
	bl sub_08005AC0
	ldrb r1, [r5, #0]
	lsls r0, r1, #1
	adds r0, r0, r7
	ldrh r1, [r0, #0]
	movs r0, #32
	ands r0, r1
	lsls r0, r0, #16
	lsrs r2, r0, #16
	cmp r2, #0
	beq .L0800AE00
	movs r0, #1
	strb r0, [r6, #0]
	b .L0800AE0A
	asrs r4, r2, #21
	lsls r0, r0, #12
.L0800AE00:
	movs r0, #16
	ands r0, r1
	cmp r0, #0
	beq .L0800AE0A
	strb r2, [r6, #0]
.L0800AE0A:
	adds r0, r4, #0
	bl sub_08005BA0
	cmp r0, #19
	beq .L0800AE24
	adds r0, r4, #0
	bl sub_08005BA0
	cmp r0, #18
	beq .L0800AE24
	adds r0, r4, #0
	bl sub_08005AC0
.L0800AE24:
	ldrb r0, [r6, #0]
	cmp r0, #0
	bne .L0800AE34
	adds r0, r4, #0
	movs r1, #19
	bl sub_08005A94
	b .L0800AE3C
.L0800AE34:
	adds r0, r4, #0
	movs r1, #18
	bl sub_08005A94
.L0800AE3C:
	adds r0, r4, #0
	bl sub_08005AD8
	b .L0800AE84
.L0800AE44:
	adds r0, r5, #0
	adds r0, #40
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L0800AE5C
	adds r4, r5, #0
	adds r4, #84
	adds r0, r4, #0
	movs r1, #63
	bl sub_08005A94
	b .L0800AE68
.L0800AE5C:
	adds r4, r5, #0
	adds r4, #84
	adds r0, r4, #0
	movs r1, #62
	bl sub_08005A94
.L0800AE68:
	adds r0, r5, #0
	adds r0, #76
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #64
	ble .L0800AE7E
	adds r0, r4, #0
	movs r1, #1
	bl sub_08005A70
	b .L0800AE84
.L0800AE7E:
	adds r0, r4, #0
	bl sub_08005B18
.L0800AE84:
	ldr r0, [r5, #56]
	cmp r0, #0
	beq .L0800AE92
	adds r0, r5, #0
	movs r1, #6
	bl sub_0800A5B8
.L0800AE92:
	ldr r1, [pc, #48]
	ldrb r0, [r5, #0]
	lsls r2, r0, #1
	adds r1, r2, r1
	movs r0, #1
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L0800AEC8
	adds r0, r5, #0
	bl sub_0800D420
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L0800AF48
	adds r0, r5, #0
	movs r1, #1
	bl sub_0800A5B8
	adds r0, r4, #0
	bl sub_08005AC0
	b .L0800AF48
	movs r0, r0
	asrs r4, r2, #21
	lsls r0, r0, #12
.L0800AEC8:
	ldr r1, [pc, #60]
	adds r1, r2, r1
	movs r0, #128
	lsls r0, r0, #2
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L0800AEEA
	ldr r0, [pc, #48]
	adds r0, r2, r0
	ldrh r0, [r0, #0]
	cmp r0, #0
	beq .L0800AEEA
	adds r0, r5, #0
	movs r1, #9
	bl sub_0800A5B8
.L0800AEEA:
	ldr r1, [pc, #28]
	ldrb r0, [r5, #0]
	lsls r2, r0, #1
	adds r1, r2, r1
	movs r0, #2
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L0800AF10
	adds r0, r5, #0
	movs r1, #3
	bl sub_0800A5B8
	b .L0800B13A
	movs r0, r0
	asrs r4, r3, #21
	lsls r0, r0, #12
	movs r2, #92
	lsls r0, r0, #12
.L0800AF10:
	ldr r0, [pc, #120]
	adds r0, r2, r0
	ldrh r1, [r0, #0]
	movs r0, #48
	ands r0, r1
	cmp r0, #0
	beq .L0800AF2E
	movs r0, #64
	ands r0, r1
	cmp r0, #0
	bne .L0800AF2E
	adds r0, r5, #0
	movs r1, #2
	bl sub_0800A5B8
.L0800AF2E:
	ldr r0, [pc, #92]
	ldrb r2, [r5, #0]
	lsls r1, r2, #1
	adds r1, r1, r0
	movs r0, #128
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L0800AF48
	adds r0, r5, #0
	movs r1, #7
	bl sub_0800A5B8
.L0800AF48:
	ldr r0, [r5, #80]
	bl sub_0800F1B8
	lsls r0, r0, #24
	lsrs r2, r0, #24
	cmp r2, #1
	beq .L0800AF58
	b .L0800B0D6
.L0800AF58:
	ldr r3, [pc, #48]
	ldrb r1, [r5, #0]
	lsls r0, r1, #1
	adds r0, r0, r3
	ldrh r1, [r0, #0]
	movs r0, #64
	ands r0, r1
	cmp r0, #0
	beq .L0800AFDA
	movs r0, #16
	ands r0, r1
	cmp r0, #0
	beq .L0800AF90
	movs r0, #0
	strh r2, [r5, #12]
	adds r1, r5, #0
	adds r1, #40
	strb r0, [r1, #0]
	adds r4, r5, #0
	adds r4, #84
	adds r0, r4, #0
	movs r1, #31
	bl sub_08005A94
	b .L0800B096
	movs r0, r0
	asrs r4, r2, #21
	lsls r0, r0, #12
.L0800AF90:
	movs r0, #32
	ands r0, r1
	cmp r0, #0
	beq .L0800AFB0
	movs r0, #1
	strh r2, [r5, #12]
	adds r1, r5, #0
	adds r1, #40
	strb r0, [r1, #0]
	adds r4, r5, #0
	adds r4, #84
	adds r0, r4, #0
	movs r1, #30
	bl sub_08005A94
	b .L0800B096
.L0800AFB0:
	movs r0, #3
	strh r0, [r5, #12]
	adds r0, r5, #0
	adds r0, #40
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L0800AFCC
	adds r4, r5, #0
	adds r4, #84
	adds r0, r4, #0
	movs r1, #57
	bl sub_08005A94
	b .L0800B096
.L0800AFCC:
	adds r4, r5, #0
	adds r4, #84
	adds r0, r4, #0
	movs r1, #56
	bl sub_08005A94
	b .L0800B096
.L0800AFDA:
	movs r0, #128
	ands r0, r1
	lsls r0, r0, #16
	lsrs r0, r0, #16
	cmp r0, #0
	beq .L0800B03A
	movs r0, #2
	strh r0, [r5, #12]
	ldrb r1, [r5, #0]
	lsls r0, r1, #1
	adds r0, r0, r3
	ldrh r1, [r0, #0]
	movs r0, #16
	ands r0, r1
	cmp r0, #0
	beq .L0800B004
	adds r0, r5, #0
	adds r0, #40
	movs r1, #0
	strb r1, [r0, #0]
	b .L0800B01E
.L0800B004:
	movs r0, #32
	ands r0, r1
	cmp r0, #0
	beq .L0800B014
	adds r0, r5, #0
	adds r0, #40
	strb r2, [r0, #0]
	b .L0800B02C
.L0800B014:
	adds r0, r5, #0
	adds r0, #40
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L0800B02C
.L0800B01E:
	adds r4, r5, #0
	adds r4, #84
	adds r0, r4, #0
	movs r1, #33
	bl sub_08005A94
	b .L0800B096
.L0800B02C:
	adds r4, r5, #0
	adds r4, #84
	adds r0, r4, #0
	movs r1, #32
	bl sub_08005A94
	b .L0800B096
.L0800B03A:
	strh r0, [r5, #12]
	ldrb r1, [r5, #0]
	lsls r0, r1, #1
	adds r0, r0, r3
	ldrh r1, [r0, #0]
	movs r0, #16
	ands r0, r1
	cmp r0, #0
	beq .L0800B056
	adds r0, r5, #0
	adds r0, #40
	movs r1, #0
	strb r1, [r0, #0]
	b .L0800B07C
.L0800B056:
	movs r0, #32
	ands r0, r1
	cmp r0, #0
	beq .L0800B072
	adds r0, r5, #0
	adds r0, #40
	strb r2, [r0, #0]
	adds r4, r5, #0
	adds r4, #84
	adds r0, r4, #0
	movs r1, #28
	bl sub_08005A94
	b .L0800B096
.L0800B072:
	adds r0, r5, #0
	adds r0, #40
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L0800B08A
.L0800B07C:
	adds r4, r5, #0
	adds r4, #84
	adds r0, r4, #0
	movs r1, #29
	bl sub_08005A94
	b .L0800B096
.L0800B08A:
	adds r4, r5, #0
	adds r4, #84
	adds r0, r4, #0
	movs r1, #28
	bl sub_08005A94
.L0800B096:
	adds r0, r4, #0
	bl sub_08005B18
	ldr r0, [r5, #56]
	movs r1, #64
	bl sub_0800EB3C
	adds r2, r0, #0
	str r2, [r5, #56]
	ldr r0, [r5, #44]
	ldr r1, [r5, #48]
	movs r3, #16
	negs r3, r3
	movs r4, #32
	negs r4, r4
	str r4, [sp, #0]
	movs r4, #16
	str r4, [sp, #4]
	subs r4, #24
	str r4, [sp, #8]
	bl sub_080063C8
	lsls r0, r0, #24
	cmp r0, #0
	beq .L0800B0CE
.L0800B0C8:
	movs r0, #0
	str r0, [r5, #56]
	b .L0800B0D6
.L0800B0CE:
	ldr r0, [r5, #44]
	ldr r1, [r5, #56]
	adds r0, r0, r1
	str r0, [r5, #44]
.L0800B0D6:
	ldr r0, [r5, #44]
	ldr r1, [r5, #48]
	movs r2, #1
	bl sub_08006450
	lsls r0, r0, #24
	cmp r0, #0
	beq .L0800B0FA
	adds r0, r5, #0
	adds r0, #44
	adds r1, r5, #0
	adds r1, #48
	movs r2, #1
	bl sub_08006494
	movs r0, #0
	str r0, [r5, #60]
	b .L0800B102
.L0800B0FA:
	adds r0, r5, #0
	movs r1, #5
	bl sub_0800A5B8
.L0800B102:
	adds r0, r5, #0
	bl sub_0800AC8C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L0800B120
	strh r0, [r5, #10]
	adds r0, r5, #0
	adds r0, #84
	bl sub_08005AC0
	ldr r0, [r5, #80]
	bl sub_0800F0E4
.L0800B120:
	adds r0, r5, #0
	adds r0, #76
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bgt .L0800B13A
	ldr r0, [r5, #80]
	bl sub_0800F0E4
	adds r0, r5, #0
	movs r1, #12
	bl sub_0800A5B8
.L0800B13A:
	add sp, #12
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_0800B144
	.thumb_func
sub_0800B144:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #12
	adds r7, r0, #0
	ldrb r0, [r7, #5]
	cmp r0, #2
	beq .L0800B164
	ldrb r0, [r7, #4]
	strb r0, [r7, #5]
	adds r0, r7, #0
	adds r0, #84
	bl sub_08005AC0
.L0800B164:
	adds r0, r7, #0
	adds r0, #40
	ldrb r1, [r0, #0]
	mov r9, r0
	cmp r1, #0
	bne .L0800B17C
	ldr r0, [pc, #4]
	ldrb r2, [r7, #0]
	lsls r1, r2, #1
	b .L0800B182
	asrs r4, r2, #21
	lsls r0, r0, #12
.L0800B17C:
	ldr r0, [pc, #76]
	ldrb r4, [r7, #0]
	lsls r1, r4, #1
.L0800B182:
	adds r1, r1, r0
	movs r0, #64
	ldrh r1, [r1, #0]
	ands r0, r1
	lsls r0, r0, #16
	lsrs r0, r0, #16
	cmp r0, #0
	beq .L0800B194
	movs r0, #1
.L0800B194:
	strh r0, [r7, #12]
	ldr r0, [r7, #80]
	bl sub_0800F1B8
	lsls r0, r0, #24
	cmp r0, #0
	beq .L0800B258
	mov r1, r9
	ldrb r0, [r1, #0]
	cmp r0, #0
	bne .L0800B1DE
	ldr r0, [pc, #32]
	ldrb r2, [r7, #0]
	lsls r1, r2, #1
	adds r1, r1, r0
	movs r0, #64
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L0800B1D0
	adds r4, r7, #0
	adds r4, #84
	adds r0, r4, #0
	movs r1, #27
	bl sub_08005A94
	b .L0800B210
	movs r0, r0
	asrs r4, r2, #21
	lsls r0, r0, #12
.L0800B1D0:
	adds r4, r7, #0
	adds r4, #84
	adds r0, r4, #0
	movs r1, #25
	bl sub_08005A94
	b .L0800B210
.L0800B1DE:
	ldr r0, [pc, #32]
	ldrb r4, [r7, #0]
	lsls r1, r4, #1
	adds r1, r1, r0
	movs r0, #64
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L0800B204
	adds r4, r7, #0
	adds r4, #84
	adds r0, r4, #0
	movs r1, #26
	bl sub_08005A94
	b .L0800B210
	movs r0, r0
	asrs r4, r2, #21
	lsls r0, r0, #12
.L0800B204:
	adds r4, r7, #0
	adds r4, #84
	adds r0, r4, #0
	movs r1, #24
	bl sub_08005A94
.L0800B210:
	mov r8, r4
	ldr r0, [pc, #60]
	ldrb r2, [r7, #0]
	lsls r1, r2, #1
	adds r1, r1, r0
	movs r0, #2
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L0800B230
	ldr r0, [r7, #80]
	bl sub_0800D2F0
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0800B306
.L0800B230:
	ldr r0, [pc, #32]
	ldrb r4, [r7, #0]
	lsls r1, r4, #1
	adds r1, r1, r0
	movs r0, #48
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L0800B244
	b .L0800B36A
.L0800B244:
	adds r0, r7, #0
	movs r1, #1
	bl sub_0800A5B8
	b .L0800B36A
	movs r0, r0
	asrs r4, r3, #21
	lsls r0, r0, #12
	asrs r4, r2, #21
	lsls r0, r0, #12
.L0800B258:
	ldr r0, [pc, #48]
	ldrb r2, [r7, #0]
	lsls r1, r2, #1
	adds r1, r1, r0
	movs r0, #64
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L0800B29E
	ldr r0, [r7, #80]
	bl sub_0800D300
	lsls r0, r0, #24
	cmp r0, #0
	beq .L0800B29E
	mov r4, r9
	ldrb r0, [r4, #0]
	cmp r0, #0
	bne .L0800B290
	adds r4, r7, #0
	adds r4, #84
	adds r0, r4, #0
	movs r1, #23
	bl sub_08005A94
	b .L0800B2C0
	asrs r4, r2, #21
	lsls r0, r0, #12
.L0800B290:
	adds r4, r7, #0
	adds r4, #84
	adds r0, r4, #0
	movs r1, #22
	bl sub_08005A94
	b .L0800B2C0
.L0800B29E:
	mov r0, r9
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne .L0800B2B4
	adds r4, r7, #0
	adds r4, #84
	adds r0, r4, #0
	movs r1, #20
	bl sub_08005A94
	b .L0800B2C0
.L0800B2B4:
	adds r4, r7, #0
	adds r4, #84
	adds r0, r4, #0
	movs r1, #21
	bl sub_08005A94
.L0800B2C0:
	mov r8, r4
	ldr r0, [pc, #76]
	ldrb r2, [r7, #0]
	lsls r1, r2, #1
	adds r1, r1, r0
	movs r0, #1
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L0800B2F4
	adds r0, r7, #0
	bl sub_0800D420
	lsls r0, r0, #24
	cmp r0, #0
	beq .L0800B2F4
	ldr r0, [r7, #80]
	bl sub_0800D300
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0800B2F4
	adds r0, r7, #0
	movs r1, #1
	bl sub_0800A5B8
.L0800B2F4:
	ldr r4, [pc, #28]
	ldrb r0, [r7, #0]
	lsls r2, r0, #1
	adds r1, r2, r4
	movs r0, #2
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L0800B318
.L0800B306:
	adds r0, r7, #0
	movs r1, #3
	bl sub_0800A5B8
	b .L0800B486
	asrs r4, r2, #21
	lsls r0, r0, #12
	asrs r4, r3, #21
	lsls r0, r0, #12
.L0800B318:
	ldr r1, [pc, #240]
	adds r1, r2, r1
	movs r0, #48
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	bne .L0800B32E
	adds r0, r7, #0
	movs r1, #6
	bl sub_0800A5B8
.L0800B32E:
	ldrb r2, [r7, #0]
	lsls r1, r2, #1
	adds r1, r1, r4
	movs r0, #128
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L0800B346
	adds r0, r7, #0
	movs r1, #7
	bl sub_0800A5B8
.L0800B346:
	ldrb r0, [r7, #0]
	lsls r2, r0, #1
	adds r1, r2, r4
	movs r0, #128
	lsls r0, r0, #2
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L0800B36A
	ldr r0, [pc, #180]
	adds r0, r2, r0
	ldrh r0, [r0, #0]
	cmp r0, #0
	beq .L0800B36A
	adds r0, r7, #0
	movs r1, #9
	bl sub_0800A5B8
.L0800B36A:
	mov r0, r8
	bl sub_08005B18
	ldr r6, [pc, #152]
	ldrb r2, [r7, #0]
	lsls r1, r2, #1
	adds r1, r1, r6
	movs r4, #16
	mov sl, r4
	mov r0, sl
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L0800B3AA
	movs r0, #0
	mov r1, r9
	strb r0, [r1, #0]
	ldr r5, [r7, #56]
	adds r0, r7, #0
	bl sub_0800ACF0
	adds r4, r0, #0
	adds r0, r7, #0
	bl sub_0800AD00
	adds r3, r0, #0
	movs r0, #1
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_0800EB0C
	str r0, [r7, #56]
.L0800B3AA:
	ldrb r2, [r7, #0]
	lsls r1, r2, #1
	adds r1, r1, r6
	movs r0, #32
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L0800B3E2
	movs r0, #1
	mov r4, r9
	strb r0, [r4, #0]
	movs r5, #1
	negs r5, r5
	ldr r6, [r7, #56]
	adds r0, r7, #0
	bl sub_0800ACF0
	adds r4, r0, #0
	adds r0, r7, #0
	bl sub_0800AD00
	adds r3, r0, #0
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl sub_0800EB0C
	str r0, [r7, #56]
.L0800B3E2:
	ldr r0, [r7, #44]
	ldr r1, [r7, #48]
	ldr r2, [r7, #56]
	movs r3, #16
	negs r3, r3
	movs r4, #32
	negs r4, r4
	str r4, [sp, #0]
	mov r4, sl
	str r4, [sp, #4]
	movs r4, #8
	negs r4, r4
	str r4, [sp, #8]
	bl sub_080063C8
	lsls r0, r0, #24
	cmp r0, #0
	beq .L0800B414
	movs r0, #0
	str r0, [r7, #56]
	b .L0800B41C
	asrs r4, r2, #21
	lsls r0, r0, #12
	movs r2, #92
	lsls r0, r0, #12
.L0800B414:
	ldr r0, [r7, #44]
	ldr r1, [r7, #56]
	adds r0, r0, r1
	str r0, [r7, #44]
.L0800B41C:
	ldr r0, [r7, #44]
	ldr r1, [r7, #48]
	movs r2, #1
	bl sub_08006450
	lsls r0, r0, #24
	cmp r0, #0
	beq .L0800B440
	adds r0, r7, #0
	adds r0, #44
	adds r1, r7, #0
	adds r1, #48
	movs r2, #1
	bl sub_08006494
	movs r0, #0
	str r0, [r7, #60]
	b .L0800B448
.L0800B440:
	adds r0, r7, #0
	movs r1, #5
	bl sub_0800A5B8
.L0800B448:
	adds r0, r7, #0
	bl sub_0800AC8C
	lsls r0, r0, #24
	lsrs r4, r0, #24
	cmp r4, #1
	bne .L0800B46C
	adds r0, r7, #0
	movs r1, #1
	bl sub_0800A5B8
	strh r4, [r7, #10]
	mov r0, r8
	bl sub_08005AC0
	ldr r0, [r7, #80]
	bl sub_0800F0E4
.L0800B46C:
	adds r0, r7, #0
	adds r0, #76
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bgt .L0800B486
	ldr r0, [r7, #80]
	bl sub_0800F0E4
	adds r0, r7, #0
	movs r1, #12
	bl sub_0800A5B8
.L0800B486:
	add sp, #12
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_0800B498
	.thumb_func
sub_0800B498:
	push {r4, r5, r6, lr}
	sub sp, #12
	adds r5, r0, #0
	ldrb r0, [r5, #5]
	cmp r0, #6
	beq .L0800B4B0
	ldrb r0, [r5, #4]
	strb r0, [r5, #5]
	adds r0, r5, #0
	adds r0, #84
	bl sub_08005AC0
.L0800B4B0:
	adds r0, r5, #0
	adds r0, #40
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne .L0800B4C8
	adds r4, r5, #0
	adds r4, #84
	adds r0, r4, #0
	movs r1, #62
	bl sub_08005A94
	b .L0800B4D4
.L0800B4C8:
	adds r4, r5, #0
	adds r4, #84
	adds r0, r4, #0
	movs r1, #63
	bl sub_08005A94
.L0800B4D4:
	adds r6, r4, #0
	adds r0, r6, #0
	bl sub_08005B18
	ldr r4, [pc, #24]
	ldrb r1, [r5, #0]
	lsls r0, r1, #1
	adds r0, r0, r4
	ldrh r1, [r0, #0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq .L0800B4FC
	adds r0, r5, #0
	movs r1, #3
	bl sub_0800A5B8
	b .L0800B636
	asrs r4, r3, #21
	lsls r0, r0, #12
.L0800B4FC:
	movs r0, #128
	ands r0, r1
	cmp r0, #0
	beq .L0800B50C
	adds r0, r5, #0
	movs r1, #7
	bl sub_0800A5B8
.L0800B50C:
	ldrb r0, [r5, #0]
	lsls r2, r0, #1
	adds r1, r2, r4
	movs r0, #128
	lsls r0, r0, #2
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L0800B530
	ldr r0, [pc, #108]
	adds r0, r2, r0
	ldrh r0, [r0, #0]
	cmp r0, #0
	beq .L0800B530
	adds r0, r5, #0
	movs r1, #9
	bl sub_0800A5B8
.L0800B530:
	ldr r0, [pc, #92]
	ldrb r2, [r5, #0]
	lsls r1, r2, #1
	adds r1, r1, r0
	movs r0, #1
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L0800B558
	adds r0, r5, #0
	bl sub_0800D420
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L0800B558
	adds r0, r5, #0
	movs r1, #1
	bl sub_0800A5B8
.L0800B558:
	ldr r0, [r5, #56]
	movs r1, #64
	bl sub_0800EB3C
	adds r2, r0, #0
	str r2, [r5, #56]
	ldr r0, [r5, #44]
	ldr r1, [r5, #48]
	movs r3, #16
	negs r3, r3
	movs r4, #32
	negs r4, r4
	str r4, [sp, #0]
	movs r4, #16
	str r4, [sp, #4]
	subs r4, #24
	str r4, [sp, #8]
	bl sub_080063C8
	lsls r0, r0, #24
	cmp r0, #0
	beq .L0800B594
	movs r0, #0
	str r0, [r5, #56]
	b .L0800B59C
	movs r0, r0
	movs r2, #92
	lsls r0, r0, #12
	asrs r4, r3, #21
	lsls r0, r0, #12
.L0800B594:
	ldr r0, [r5, #44]
	ldr r1, [r5, #56]
	adds r0, r0, r1
	str r0, [r5, #44]
.L0800B59C:
	ldr r0, [r5, #56]
	cmp r0, #0
	bne .L0800B5CC
	ldr r0, [pc, #28]
	ldrb r2, [r5, #0]
	lsls r1, r2, #1
	adds r1, r1, r0
	movs r0, #48
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L0800B5C4
	adds r0, r5, #0
	movs r1, #2
	bl sub_0800A5B8
	b .L0800B5CC
	movs r0, r0
	asrs r4, r2, #21
	lsls r0, r0, #12
.L0800B5C4:
	adds r0, r5, #0
	movs r1, #1
	bl sub_0800A5B8
.L0800B5CC:
	ldr r0, [r5, #44]
	ldr r1, [r5, #48]
	movs r2, #1
	bl sub_08006450
	lsls r0, r0, #24
	cmp r0, #0
	beq .L0800B5F0
	adds r0, r5, #0
	adds r0, #44
	adds r1, r5, #0
	adds r1, #48
	movs r2, #1
	bl sub_08006494
	movs r0, #0
	str r0, [r5, #60]
	b .L0800B5F8
.L0800B5F0:
	adds r0, r5, #0
	movs r1, #5
	bl sub_0800A5B8
.L0800B5F8:
	adds r0, r5, #0
	bl sub_0800AC8C
	lsls r0, r0, #24
	lsrs r4, r0, #24
	cmp r4, #1
	bne .L0800B61C
	adds r0, r5, #0
	movs r1, #1
	bl sub_0800A5B8
	strh r4, [r5, #10]
	adds r0, r6, #0
	bl sub_08005AC0
	ldr r0, [r5, #80]
	bl sub_0800F0E4
.L0800B61C:
	adds r0, r5, #0
	adds r0, #76
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bgt .L0800B636
	ldr r0, [r5, #80]
	bl sub_0800F0E4
	adds r0, r5, #0
	movs r1, #12
	bl sub_0800A5B8
.L0800B636:
	add sp, #12
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_0800B640
	.thumb_func
sub_0800B640:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #12
	adds r7, r0, #0
	ldrb r0, [r7, #5]
	cmp r0, #3
	beq .L0800B676
	ldrb r0, [r7, #4]
	strb r0, [r7, #5]
	ldrh r0, [r7, #10]
	cmp r0, #0
	bne .L0800B662
	adds r0, r7, #0
	adds r0, #84
	bl sub_08005AC0
.L0800B662:
	bl sub_08008A2C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	ldrb r1, [r7, #0]
	cmp r1, r0
	bne .L0800B676
	movs r0, #6
	bl orphan_GAX_fx
.L0800B676:
	ldrh r2, [r7, #10]
	cmp r2, #1
	bne .L0800B6B4
	adds r0, r7, #0
	adds r0, #40
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L0800B694
	adds r4, r7, #0
	adds r4, #84
	adds r0, r4, #0
	movs r1, #5
	bl sub_08005A94
	b .L0800B6A0
.L0800B694:
	adds r4, r7, #0
	adds r4, #84
	adds r0, r4, #0
	movs r1, #4
	bl sub_08005A94
.L0800B6A0:
	adds r0, r4, #0
	bl sub_08005AD8
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #0
	beq .L0800B6B0
	b .L0800B8D6
.L0800B6B0:
	strh r0, [r7, #10]
	b .L0800B8D6
.L0800B6B4:
	ldr r0, [r7, #80]
	bl sub_0800F1B8
	lsls r0, r0, #24
	lsrs r5, r0, #24
	cmp r5, #0
	bne .L0800B79C
	ldr r1, [r7, #56]
	cmp r1, #0
	bne .L0800B6EE
	adds r0, r7, #0
	adds r0, #40
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L0800B6E0
	adds r4, r7, #0
	adds r4, #84
	adds r0, r4, #0
	movs r1, #17
	bl sub_08005A94
	b .L0800B750
.L0800B6E0:
	adds r4, r7, #0
	adds r4, #84
	adds r0, r4, #0
	movs r1, #16
	bl sub_08005A94
	b .L0800B750
.L0800B6EE:
	adds r2, r1, #0
	cmp r1, #0
	bge .L0800B6F6
	negs r2, r1
.L0800B6F6:
	ldr r0, [pc, #24]
	cmp r2, r0
	bgt .L0800B71E
	adds r0, r1, #0
	bl sub_0800EAE4
	cmp r0, #1
	bne .L0800B714
	adds r4, r7, #0
	adds r4, #84
	adds r0, r4, #0
	movs r1, #17
	b .L0800B730
	lsls r7, r7, #7
	movs r0, r0
.L0800B714:
	adds r4, r7, #0
	adds r4, #84
	adds r0, r4, #0
	movs r1, #16
	b .L0800B744
.L0800B71E:
	adds r0, r1, #0
	bl sub_0800EAE4
	cmp r0, #1
	bne .L0800B73C
	adds r4, r7, #0
	adds r4, #84
	adds r0, r4, #0
	movs r1, #11
.L0800B730:
	bl sub_08005A94
	adds r0, r7, #0
	adds r0, #40
	strb r5, [r0, #0]
	b .L0800B750
.L0800B73C:
	adds r4, r7, #0
	adds r4, #84
	adds r0, r4, #0
	movs r1, #10
.L0800B744:
	bl sub_08005A94
	adds r1, r7, #0
	adds r1, #40
	movs r0, #1
	strb r0, [r1, #0]
.L0800B750:
	adds r0, r4, #0
	bl sub_08005AD8
	ldr r0, [pc, #136]
	ldrb r3, [r7, #0]
	lsls r1, r3, #1
	adds r1, r1, r0
	movs r0, #2
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L0800B776
	ldrh r0, [r7, #14]
	cmp r0, #1
	bne .L0800B776
	adds r0, r7, #0
	movs r1, #8
	bl sub_0800A5B8
.L0800B776:
	ldr r0, [pc, #108]
	ldrb r2, [r7, #0]
	lsls r1, r2, #1
	adds r1, r1, r0
	movs r0, #1
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L0800B79C
	adds r0, r7, #0
	bl sub_0800D420
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L0800B79C
	adds r0, r4, #0
	bl sub_08005AC0
.L0800B79C:
	ldr r0, [r7, #80]
	bl sub_0800F1B8
	lsls r0, r0, #24
	lsrs r2, r0, #24
	cmp r2, #1
	beq .L0800B7AC
	b .L0800B8D6
.L0800B7AC:
	ldr r0, [pc, #52]
	ldrb r3, [r7, #0]
	lsls r1, r3, #1
	adds r1, r1, r0
	ldrh r1, [r1, #0]
	movs r0, #64
	ands r0, r1
	cmp r0, #0
	beq .L0800B832
	movs r0, #16
	ands r0, r1
	cmp r0, #0
	beq .L0800B7E8
	movs r0, #0
	strh r2, [r7, #12]
	adds r1, r7, #0
	adds r1, #40
	strb r0, [r1, #0]
	adds r4, r7, #0
	adds r4, #84
	adds r0, r4, #0
	movs r1, #49
	bl sub_08005A94
	b .L0800B8D0
	movs r0, r0
	asrs r4, r3, #21
	lsls r0, r0, #12
	asrs r4, r2, #21
	lsls r0, r0, #12
.L0800B7E8:
	movs r0, #32
	ands r0, r1
	cmp r0, #0
	beq .L0800B808
	movs r0, #1
	strh r2, [r7, #12]
	adds r1, r7, #0
	adds r1, #40
	strb r0, [r1, #0]
	adds r4, r7, #0
	adds r4, #84
	adds r0, r4, #0
	movs r1, #48
	bl sub_08005A94
	b .L0800B8D0
.L0800B808:
	movs r0, #3
	strh r0, [r7, #12]
	adds r0, r7, #0
	adds r0, #40
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L0800B824
	adds r4, r7, #0
	adds r4, #84
	adds r0, r4, #0
	movs r1, #55
	bl sub_08005A94
	b .L0800B8D0
.L0800B824:
	adds r4, r7, #0
	adds r4, #84
	adds r0, r4, #0
	movs r1, #54
	bl sub_08005A94
	b .L0800B8D0
.L0800B832:
	movs r0, #128
	ands r0, r1
	lsls r0, r0, #16
	lsrs r0, r0, #16
	cmp r0, #0
	beq .L0800B8AA
	movs r0, #16
	ands r0, r1
	cmp r0, #0
	beq .L0800B860
	movs r1, #0
	movs r0, #2
	strh r0, [r7, #12]
	adds r0, r7, #0
	adds r0, #40
	strb r1, [r0, #0]
	adds r4, r7, #0
	adds r4, #84
	adds r0, r4, #0
	movs r1, #51
	bl sub_08005A94
	b .L0800B8D0
.L0800B860:
	movs r0, #32
	ands r0, r1
	cmp r0, #0
	beq .L0800B880
	movs r0, #2
	strh r0, [r7, #12]
	adds r0, r7, #0
	adds r0, #40
	strb r2, [r0, #0]
	adds r4, r7, #0
	adds r4, #84
	adds r0, r4, #0
	movs r1, #50
	bl sub_08005A94
	b .L0800B8D0
.L0800B880:
	movs r0, #4
	strh r0, [r7, #12]
	adds r0, r7, #0
	adds r0, #40
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L0800B89C
	adds r4, r7, #0
	adds r4, #84
	adds r0, r4, #0
	movs r1, #53
	bl sub_08005A94
	b .L0800B8D0
.L0800B89C:
	adds r4, r7, #0
	adds r4, #84
	adds r0, r4, #0
	movs r1, #52
	bl sub_08005A94
	b .L0800B8D0
.L0800B8AA:
	strh r0, [r7, #12]
	adds r0, r7, #0
	adds r0, #40
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L0800B8C4
	adds r4, r7, #0
	adds r4, #84
	adds r0, r4, #0
	movs r1, #47
	bl sub_08005A94
	b .L0800B8D0
.L0800B8C4:
	adds r4, r7, #0
	adds r4, #84
	adds r0, r4, #0
	movs r1, #46
	bl sub_08005A94
.L0800B8D0:
	adds r0, r4, #0
	bl sub_08005B18
.L0800B8D6:
	ldr r0, [pc, #184]
	mov r8, r0
	ldrb r2, [r7, #0]
	lsls r1, r2, #1
	add r1, r8
	movs r0, #16
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L0800B908
	ldr r5, [r7, #56]
	adds r0, r7, #0
	bl sub_0800ACF0
	adds r4, r0, #0
	adds r0, r7, #0
	bl sub_0800AD00
	adds r3, r0, #0
	movs r0, #1
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_0800EB0C
	str r0, [r7, #56]
.L0800B908:
	ldrb r3, [r7, #0]
	lsls r1, r3, #1
	add r1, r8
	movs r0, #32
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L0800B93A
	movs r5, #1
	negs r5, r5
	ldr r6, [r7, #56]
	adds r0, r7, #0
	bl sub_0800ACF0
	adds r4, r0, #0
	adds r0, r7, #0
	bl sub_0800AD00
	adds r3, r0, #0
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl sub_0800EB0C
	str r0, [r7, #56]
.L0800B93A:
	ldr r1, [r7, #60]
	movs r0, #1
	movs r2, #64
	bl sub_0800EAF4
	adds r2, r0, #0
	str r2, [r7, #60]
	ldrb r0, [r7, #0]
	lsls r1, r0, #1
	add r1, r8
	movs r0, #2
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	bne .L0800B96A
	ldr r0, [pc, #56]
	cmp r2, r0
	ble .L0800B96A
	movs r0, #1
	adds r1, r2, #0
	movs r2, #48
	bl sub_0800EAF4
	str r0, [r7, #60]
.L0800B96A:
	ldr r0, [r7, #44]
	ldr r1, [r7, #48]
	ldr r2, [r7, #60]
	movs r3, #4
	negs r3, r3
	movs r4, #32
	negs r4, r4
	str r4, [sp, #0]
	movs r4, #4
	str r4, [sp, #4]
	bl sub_0800633C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L0800B998
	movs r0, #0
	str r0, [r7, #60]
	b .L0800B9A0
	movs r0, r0
	asrs r4, r2, #21
	lsls r0, r0, #12
	.2byte 0xf880 @ .raw
	.2byte 0xffff @ .raw
.L0800B998:
	ldr r0, [r7, #48]
	ldr r1, [r7, #60]
	adds r0, r0, r1
	str r0, [r7, #48]
.L0800B9A0:
	ldr r0, [r7, #60]
	bl sub_0800EAE4
	movs r1, #1
	negs r1, r1
	cmp r0, r1
	beq .L0800B9B6
	adds r0, r7, #0
	movs r1, #5
	bl sub_0800A5B8
.L0800B9B6:
	ldr r0, [r7, #44]
	ldr r1, [r7, #48]
	ldr r2, [r7, #56]
	movs r3, #16
	negs r3, r3
	movs r4, #32
	negs r4, r4
	str r4, [sp, #0]
	movs r4, #16
	str r4, [sp, #4]
	movs r4, #4
	str r4, [sp, #8]
	bl sub_080063C8
	lsls r0, r0, #24
	cmp r0, #0
	beq .L0800B9DE
	movs r0, #0
	str r0, [r7, #56]
	b .L0800B9E6
.L0800B9DE:
	ldr r0, [r7, #44]
	ldr r1, [r7, #56]
	adds r0, r0, r1
	str r0, [r7, #44]
.L0800B9E6:
	adds r0, r7, #0
	bl sub_0800AC8C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L0800BA04
	strh r0, [r7, #10]
	adds r0, r7, #0
	adds r0, #84
	bl sub_08005AC0
	ldr r0, [r7, #80]
	bl sub_0800F0E4
.L0800BA04:
	add sp, #12
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_0800BA10
	.thumb_func
sub_0800BA10:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #12
	adds r7, r0, #0
	ldrb r0, [r7, #5]
	cmp r0, #5
	beq .L0800BA32
	ldrb r0, [r7, #4]
	strb r0, [r7, #5]
	ldrh r0, [r7, #10]
	cmp r0, #0
	bne .L0800BA32
	adds r0, r7, #0
	adds r0, #84
	bl sub_08005AC0
.L0800BA32:
	ldrh r1, [r7, #10]
	cmp r1, #1
	bne .L0800BA70
	adds r0, r7, #0
	adds r0, #40
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L0800BA50
	adds r4, r7, #0
	adds r4, #84
	adds r0, r4, #0
	movs r1, #5
	bl sub_08005A94
	b .L0800BA5C
.L0800BA50:
	adds r4, r7, #0
	adds r4, #84
	adds r0, r4, #0
	movs r1, #4
	bl sub_08005A94
.L0800BA5C:
	adds r0, r4, #0
	bl sub_08005AD8
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #0
	beq .L0800BA6C
	b .L0800BC92
.L0800BA6C:
	strh r0, [r7, #10]
	b .L0800BC92
.L0800BA70:
	ldr r0, [r7, #80]
	bl sub_0800F1B8
	lsls r0, r0, #24
	lsrs r5, r0, #24
	cmp r5, #0
	bne .L0800BB58
	ldr r1, [r7, #56]
	cmp r1, #0
	bne .L0800BAAA
	adds r0, r7, #0
	adds r0, #40
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L0800BA9C
	adds r4, r7, #0
	adds r4, #84
	adds r0, r4, #0
	movs r1, #13
	bl sub_08005A94
	b .L0800BB0C
.L0800BA9C:
	adds r4, r7, #0
	adds r4, #84
	adds r0, r4, #0
	movs r1, #12
	bl sub_08005A94
	b .L0800BB0C
.L0800BAAA:
	adds r2, r1, #0
	cmp r1, #0
	bge .L0800BAB2
	negs r2, r1
.L0800BAB2:
	ldr r0, [pc, #24]
	cmp r2, r0
	bgt .L0800BADA
	adds r0, r1, #0
	bl sub_0800EAE4
	cmp r0, #1
	bne .L0800BAD0
	adds r4, r7, #0
	adds r4, #84
	adds r0, r4, #0
	movs r1, #13
	b .L0800BAEC
	lsls r7, r7, #7
	movs r0, r0
.L0800BAD0:
	adds r4, r7, #0
	adds r4, #84
	adds r0, r4, #0
	movs r1, #12
	b .L0800BB00
.L0800BADA:
	adds r0, r1, #0
	bl sub_0800EAE4
	cmp r0, #1
	bne .L0800BAF8
	adds r4, r7, #0
	adds r4, #84
	adds r0, r4, #0
	movs r1, #7
.L0800BAEC:
	bl sub_08005A94
	adds r0, r7, #0
	adds r0, #40
	strb r5, [r0, #0]
	b .L0800BB0C
.L0800BAF8:
	adds r4, r7, #0
	adds r4, #84
	adds r0, r4, #0
	movs r1, #6
.L0800BB00:
	bl sub_08005A94
	adds r1, r7, #0
	adds r1, #40
	movs r0, #1
	strb r0, [r1, #0]
.L0800BB0C:
	adds r0, r4, #0
	bl sub_08005AD8
	ldr r0, [pc, #136]
	ldrb r2, [r7, #0]
	lsls r1, r2, #1
	adds r1, r1, r0
	movs r0, #2
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L0800BB32
	ldrh r3, [r7, #14]
	cmp r3, #1
	bne .L0800BB32
	adds r0, r7, #0
	movs r1, #8
	bl sub_0800A5B8
.L0800BB32:
	ldr r0, [pc, #108]
	ldrb r2, [r7, #0]
	lsls r1, r2, #1
	adds r1, r1, r0
	movs r0, #1
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L0800BB58
	adds r0, r7, #0
	bl sub_0800D420
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L0800BB58
	adds r0, r4, #0
	bl sub_08005AC0
.L0800BB58:
	ldr r0, [r7, #80]
	bl sub_0800F1B8
	lsls r0, r0, #24
	lsrs r2, r0, #24
	cmp r2, #1
	beq .L0800BB68
	b .L0800BC92
.L0800BB68:
	ldr r0, [pc, #52]
	ldrb r3, [r7, #0]
	lsls r1, r3, #1
	adds r1, r1, r0
	ldrh r1, [r1, #0]
	movs r0, #64
	ands r0, r1
	cmp r0, #0
	beq .L0800BBEE
	movs r0, #16
	ands r0, r1
	cmp r0, #0
	beq .L0800BBA4
	movs r0, #0
	strh r2, [r7, #12]
	adds r1, r7, #0
	adds r1, #40
	strb r0, [r1, #0]
	adds r4, r7, #0
	adds r4, #84
	adds r0, r4, #0
	movs r1, #39
	bl sub_08005A94
	b .L0800BC8C
	movs r0, r0
	asrs r4, r3, #21
	lsls r0, r0, #12
	asrs r4, r2, #21
	lsls r0, r0, #12
.L0800BBA4:
	movs r0, #32
	ands r0, r1
	cmp r0, #0
	beq .L0800BBC4
	movs r0, #1
	strh r2, [r7, #12]
	adds r1, r7, #0
	adds r1, #40
	strb r0, [r1, #0]
	adds r4, r7, #0
	adds r4, #84
	adds r0, r4, #0
	movs r1, #38
	bl sub_08005A94
	b .L0800BC8C
.L0800BBC4:
	movs r0, #3
	strh r0, [r7, #12]
	adds r0, r7, #0
	adds r0, #40
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L0800BBE0
	adds r4, r7, #0
	adds r4, #84
	adds r0, r4, #0
	movs r1, #45
	bl sub_08005A94
	b .L0800BC8C
.L0800BBE0:
	adds r4, r7, #0
	adds r4, #84
	adds r0, r4, #0
	movs r1, #44
	bl sub_08005A94
	b .L0800BC8C
.L0800BBEE:
	movs r0, #128
	ands r0, r1
	lsls r0, r0, #16
	lsrs r0, r0, #16
	cmp r0, #0
	beq .L0800BC66
	movs r0, #16
	ands r0, r1
	cmp r0, #0
	beq .L0800BC1C
	movs r1, #0
	movs r0, #2
	strh r0, [r7, #12]
	adds r0, r7, #0
	adds r0, #40
	strb r1, [r0, #0]
	adds r4, r7, #0
	adds r4, #84
	adds r0, r4, #0
	movs r1, #41
	bl sub_08005A94
	b .L0800BC8C
.L0800BC1C:
	movs r0, #32
	ands r0, r1
	cmp r0, #0
	beq .L0800BC3C
	movs r0, #2
	strh r0, [r7, #12]
	adds r0, r7, #0
	adds r0, #40
	strb r2, [r0, #0]
	adds r4, r7, #0
	adds r4, #84
	adds r0, r4, #0
	movs r1, #40
	bl sub_08005A94
	b .L0800BC8C
.L0800BC3C:
	movs r0, #4
	strh r0, [r7, #12]
	adds r0, r7, #0
	adds r0, #40
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L0800BC58
	adds r4, r7, #0
	adds r4, #84
	adds r0, r4, #0
	movs r1, #43
	bl sub_08005A94
	b .L0800BC8C
.L0800BC58:
	adds r4, r7, #0
	adds r4, #84
	adds r0, r4, #0
	movs r1, #42
	bl sub_08005A94
	b .L0800BC8C
.L0800BC66:
	strh r0, [r7, #12]
	adds r0, r7, #0
	adds r0, #40
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L0800BC80
	adds r4, r7, #0
	adds r4, #84
	adds r0, r4, #0
	movs r1, #37
	bl sub_08005A94
	b .L0800BC8C
.L0800BC80:
	adds r4, r7, #0
	adds r4, #84
	adds r0, r4, #0
	movs r1, #36
	bl sub_08005A94
.L0800BC8C:
	adds r0, r4, #0
	bl sub_08005B18
.L0800BC92:
	ldr r6, [pc, #140]
	ldrb r4, [r7, #0]
	lsls r1, r4, #1
	adds r1, r1, r6
	movs r0, #16
	mov r8, r0
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L0800BCC4
	ldr r5, [r7, #56]
	adds r0, r7, #0
	bl sub_0800ACF0
	adds r4, r0, #0
	adds r0, r7, #0
	bl sub_0800AD00
	adds r3, r0, #0
	movs r0, #1
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_0800EB0C
	str r0, [r7, #56]
.L0800BCC4:
	ldrb r2, [r7, #0]
	lsls r1, r2, #1
	adds r1, r1, r6
	movs r0, #32
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L0800BCF6
	movs r5, #1
	negs r5, r5
	ldr r6, [r7, #56]
	adds r0, r7, #0
	bl sub_0800ACF0
	adds r4, r0, #0
	adds r0, r7, #0
	bl sub_0800AD00
	adds r3, r0, #0
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl sub_0800EB0C
	str r0, [r7, #56]
.L0800BCF6:
	ldr r0, [r7, #44]
	ldr r1, [r7, #48]
	ldr r2, [r7, #56]
	movs r3, #16
	negs r3, r3
	movs r4, #32
	negs r4, r4
	str r4, [sp, #0]
	mov r4, r8
	str r4, [sp, #4]
	movs r4, #4
	str r4, [sp, #8]
	bl sub_080063C8
	lsls r0, r0, #24
	cmp r0, #0
	beq .L0800BD24
	movs r0, #0
	str r0, [r7, #56]
	b .L0800BD2C
	movs r0, r0
	asrs r4, r2, #21
	lsls r0, r0, #12
.L0800BD24:
	ldr r0, [r7, #44]
	ldr r1, [r7, #56]
	adds r0, r0, r1
	str r0, [r7, #44]
.L0800BD2C:
	ldr r1, [r7, #60]
	movs r3, #128
	lsls r3, r3, #4
	movs r0, #1
	movs r2, #64
	bl sub_0800EB0C
	str r0, [r7, #60]
	ldr r1, [r7, #48]
	adds r1, r1, r0
	str r1, [r7, #48]
	movs r4, #0
	ldr r0, [r7, #44]
	movs r2, #0
	bl sub_08006450
	lsls r0, r0, #24
	cmp r0, #0
	beq .L0800BD62
	adds r0, r7, #0
	adds r0, #44
	adds r1, r7, #0
	adds r1, #48
	movs r2, #0
	bl sub_08006494
	movs r4, #1
.L0800BD62:
	cmp r4, #0
	beq .L0800BE40
	adds r0, r7, #0
	adds r0, #76
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bgt .L0800BD82
	ldr r0, [r7, #80]
	bl sub_0800F0E4
	adds r0, r7, #0
	movs r1, #12
	bl sub_0800A5B8
	b .L0800BE5E
.L0800BD82:
	ldr r0, [r7, #80]
	bl sub_0800F1B8
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L0800BDD6
	ldr r0, [r7, #48]
	asrs r0, r0, #8
	movs r2, #30
	ldrsh r1, [r7, r2]
	subs r0, r0, r1
	ldr r1, [pc, #44]
	cmp r0, r1
	ble .L0800BDCC
	ldr r0, [r7, #80]
	bl sub_0800F0E4
	movs r1, #0
	str r1, [sp, #0]
	add r0, sp, #4
	strb r1, [r0, #0]
	add r0, sp, #8
	strb r1, [r0, #0]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #32
	movs r3, #2
	bl sub_08006AD8
	adds r0, r7, #0
	movs r1, #10
	bl sub_0800A5B8
	b .L0800BE3C
	lsls r3, r5, #4
	movs r0, r0
.L0800BDCC:
	adds r0, r7, #0
	movs r1, #1
	bl sub_0800A5B8
	b .L0800BE3C
.L0800BDD6:
	ldr r0, [r7, #48]
	asrs r0, r0, #8
	movs r3, #30
	ldrsh r1, [r7, r3]
	subs r0, r0, r1
	ldr r1, [pc, #44]
	cmp r0, r1
	ble .L0800BE14
	ldr r0, [r7, #80]
	bl sub_0800F0E4
	adds r0, r7, #0
	movs r1, #10
	bl sub_0800A5B8
	movs r1, #0
	str r1, [sp, #0]
	add r0, sp, #4
	strb r1, [r0, #0]
	add r0, sp, #8
	strb r1, [r0, #0]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #32
	movs r3, #2
	bl sub_08006AD8
	b .L0800BE3C
	movs r0, r0
	lsls r3, r5, #4
	movs r0, r0
.L0800BE14:
	ldr r0, [pc, #24]
	ldrb r4, [r7, #0]
	lsls r1, r4, #1
	adds r1, r1, r0
	movs r0, #128
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L0800BE34
	adds r0, r7, #0
	movs r1, #7
	bl sub_0800A5B8
	b .L0800BE3C
	asrs r4, r2, #21
	lsls r0, r0, #12
.L0800BE34:
	adds r0, r7, #0
	movs r1, #4
	bl sub_0800A5B8
.L0800BE3C:
	movs r0, #0
	str r0, [r7, #60]
.L0800BE40:
	adds r0, r7, #0
	bl sub_0800AC8C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L0800BE5E
	strh r0, [r7, #10]
	adds r0, r7, #0
	adds r0, #84
	bl sub_08005AC0
	ldr r0, [r7, #80]
	bl sub_0800F0E4
.L0800BE5E:
	add sp, #12
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_0800BE6C
	.thumb_func
sub_0800BE6C:
	push {r4, r5, r6, r7, lr}
	sub sp, #12
	adds r5, r0, #0
	ldrb r0, [r5, #5]
	cmp r0, #4
	beq .L0800BE94
	ldrb r0, [r5, #4]
	strb r0, [r5, #5]
	ldrh r0, [r5, #10]
	cmp r0, #0
	beq .L0800BE8C
	adds r0, r5, #0
	movs r1, #1
	bl sub_0800A5B8
	b .L0800BFEE
.L0800BE8C:
	adds r0, r5, #0
	adds r0, #84
	bl sub_08005AC0
.L0800BE94:
	ldr r1, [r5, #56]
	cmp r1, #0
	bge .L0800BE9C
	negs r1, r1
.L0800BE9C:
	ldr r0, [pc, #28]
	cmp r1, r0
	bgt .L0800BECE
	adds r0, r5, #0
	adds r0, #40
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L0800BEC0
	adds r4, r5, #0
	adds r4, #84
	adds r0, r4, #0
	movs r1, #15
	bl sub_08005A94
	b .L0800BEF2
	movs r0, r0
	lsls r7, r7, #7
	movs r0, r0
.L0800BEC0:
	adds r4, r5, #0
	adds r4, #84
	adds r0, r4, #0
	movs r1, #14
	bl sub_08005A94
	b .L0800BEF2
.L0800BECE:
	adds r0, r5, #0
	adds r0, #40
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L0800BEE6
	adds r4, r5, #0
	adds r4, #84
	adds r0, r4, #0
	movs r1, #9
	bl sub_08005A94
	b .L0800BEF2
.L0800BEE6:
	adds r4, r5, #0
	adds r4, #84
	adds r0, r4, #0
	movs r1, #8
	bl sub_08005A94
.L0800BEF2:
	adds r6, r4, #0
	adds r0, r6, #0
	bl sub_08005AD8
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0800BF08
	adds r0, r5, #0
	movs r1, #1
	bl sub_0800A5B8
.L0800BF08:
	ldr r0, [pc, #56]
	ldrb r2, [r5, #0]
	lsls r1, r2, #1
	adds r1, r1, r0
	movs r0, #48
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L0800BF22
	adds r0, r5, #0
	movs r1, #2
	bl sub_0800A5B8
.L0800BF22:
	ldr r0, [pc, #36]
	ldrb r2, [r5, #0]
	lsls r1, r2, #1
	adds r1, r1, r0
	movs r0, #2
	ldrh r1, [r1, #0]
	ands r0, r1
	lsls r0, r0, #16
	lsrs r7, r0, #16
	cmp r7, #0
	beq .L0800BF4C
	adds r0, r5, #0
	movs r1, #3
	bl sub_0800A5B8
	b .L0800BFEE
	movs r0, r0
	asrs r4, r2, #21
	lsls r0, r0, #12
	asrs r4, r3, #21
	lsls r0, r0, #12
.L0800BF4C:
	ldr r0, [r5, #56]
	movs r1, #64
	bl sub_0800EB3C
	adds r2, r0, #0
	str r2, [r5, #56]
	ldr r0, [r5, #44]
	ldr r1, [r5, #48]
	movs r3, #16
	negs r3, r3
	movs r4, #32
	negs r4, r4
	str r4, [sp, #0]
	movs r4, #16
	str r4, [sp, #4]
	subs r4, #24
	str r4, [sp, #8]
	bl sub_080063C8
	lsls r0, r0, #24
	cmp r0, #0
	beq .L0800BF7C
	str r7, [r5, #56]
	b .L0800BF84
.L0800BF7C:
	ldr r0, [r5, #44]
	ldr r1, [r5, #56]
	adds r0, r0, r1
	str r0, [r5, #44]
.L0800BF84:
	ldr r0, [r5, #44]
	ldr r1, [r5, #48]
	movs r2, #1
	bl sub_08006450
	lsls r0, r0, #24
	cmp r0, #0
	beq .L0800BFA8
	adds r0, r5, #0
	adds r0, #44
	adds r1, r5, #0
	adds r1, #48
	movs r2, #1
	bl sub_08006494
	movs r0, #0
	str r0, [r5, #60]
	b .L0800BFB0
.L0800BFA8:
	adds r0, r5, #0
	movs r1, #5
	bl sub_0800A5B8
.L0800BFB0:
	adds r0, r5, #0
	bl sub_0800AC8C
	lsls r0, r0, #24
	lsrs r4, r0, #24
	cmp r4, #1
	bne .L0800BFD4
	adds r0, r5, #0
	movs r1, #1
	bl sub_0800A5B8
	strh r4, [r5, #10]
	adds r0, r6, #0
	bl sub_08005AC0
	ldr r0, [r5, #80]
	bl sub_0800F0E4
.L0800BFD4:
	adds r0, r5, #0
	adds r0, #76
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bgt .L0800BFEE
	ldr r0, [r5, #80]
	bl sub_0800F0E4
	adds r0, r5, #0
	movs r1, #12
	bl sub_0800A5B8
.L0800BFEE:
	add sp, #12
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_0800BFF8
	.thumb_func
sub_0800BFF8:
	push {r4, r5, lr}
	sub sp, #12
	adds r5, r0, #0
	ldrb r0, [r5, #5]
	cmp r0, #7
	beq .L0800C010
	ldrb r0, [r5, #4]
	strb r0, [r5, #5]
	adds r0, r5, #0
	adds r0, #84
	bl sub_08005AC0
.L0800C010:
	ldrh r0, [r5, #8]
	cmp r0, #0
	bne .L0800C04A
	adds r0, r5, #0
	adds r0, #40
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L0800C02E
	adds r4, r5, #0
	adds r4, #84
	adds r0, r4, #0
	movs r1, #3
	bl sub_08005A94
	b .L0800C03A
.L0800C02E:
	adds r4, r5, #0
	adds r4, #84
	adds r0, r4, #0
	movs r1, #2
	bl sub_08005A94
.L0800C03A:
	adds r0, r4, #0
	bl sub_08005AD8
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0800C04A
	movs r0, #1
	strh r0, [r5, #8]
.L0800C04A:
	ldrh r2, [r5, #8]
	cmp r2, #1
	bne .L0800C136
	ldr r3, [pc, #80]
	ldrb r0, [r5, #0]
	lsls r1, r0, #1
	adds r1, r1, r3
	movs r0, #16
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L0800C06A
	adds r1, r5, #0
	adds r1, #40
	movs r0, #0
	strb r0, [r1, #0]
.L0800C06A:
	ldrb r0, [r5, #0]
	lsls r1, r0, #1
	adds r1, r1, r3
	movs r0, #32
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L0800C080
	adds r0, r5, #0
	adds r0, #40
	strb r2, [r0, #0]
.L0800C080:
	ldr r0, [r5, #80]
	bl sub_0800F1B8
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0800C0F6
	adds r0, r5, #0
	adds r0, #40
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L0800C0A8
	adds r4, r5, #0
	adds r4, #84
	adds r0, r4, #0
	movs r1, #3
	bl sub_08005A94
	b .L0800C0B4
	asrs r4, r2, #21
	lsls r0, r0, #12
.L0800C0A8:
	adds r4, r5, #0
	adds r4, #84
	adds r0, r4, #0
	movs r1, #2
	bl sub_08005A94
.L0800C0B4:
	adds r0, r4, #0
	movs r1, #3
	bl sub_08005A70
	ldr r2, [pc, #96]
	ldrb r0, [r5, #0]
	lsls r1, r0, #1
	adds r1, r1, r2
	movs r0, #128
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	bne .L0800C0D2
	movs r0, #2
	strh r0, [r5, #8]
.L0800C0D2:
	ldrb r0, [r5, #0]
	lsls r1, r0, #1
	adds r1, r1, r2
	movs r0, #1
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L0800C0F6
	adds r0, r5, #0
	bl sub_0800D420
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L0800C0F6
	adds r0, r4, #0
	bl sub_08005AC0
.L0800C0F6:
	ldr r0, [r5, #80]
	bl sub_0800F1B8
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L0800C136
	movs r0, #0
	strh r0, [r5, #12]
	adds r0, r5, #0
	adds r0, #40
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L0800C124
	adds r4, r5, #0
	adds r4, #84
	adds r0, r4, #0
	movs r1, #35
	bl sub_08005A94
	b .L0800C130
	asrs r4, r2, #21
	lsls r0, r0, #12
.L0800C124:
	adds r4, r5, #0
	adds r4, #84
	adds r0, r4, #0
	movs r1, #34
	bl sub_08005A94
.L0800C130:
	adds r0, r4, #0
	bl sub_08005B18
.L0800C136:
	ldrh r1, [r5, #8]
	cmp r1, #2
	bne .L0800C144
	adds r0, r5, #0
	movs r1, #1
	bl sub_0800A5B8
.L0800C144:
	ldr r0, [r5, #56]
	movs r1, #64
	bl sub_0800EB3C
	adds r2, r0, #0
	str r2, [r5, #56]
	ldr r0, [r5, #44]
	ldr r1, [r5, #48]
	movs r3, #16
	negs r3, r3
	movs r4, #32
	negs r4, r4
	str r4, [sp, #0]
	movs r4, #16
	str r4, [sp, #4]
	subs r4, #24
	str r4, [sp, #8]
	bl sub_080063C8
	lsls r0, r0, #24
	cmp r0, #0
	beq .L0800C176
	movs r0, #0
	str r0, [r5, #56]
	b .L0800C17E
.L0800C176:
	ldr r0, [r5, #44]
	ldr r1, [r5, #56]
	adds r0, r0, r1
	str r0, [r5, #44]
.L0800C17E:
	ldr r0, [r5, #44]
	ldr r1, [r5, #48]
	movs r2, #1
	bl sub_08006450
	lsls r0, r0, #24
	cmp r0, #0
	beq .L0800C1A2
	adds r0, r5, #0
	adds r0, #44
	adds r1, r5, #0
	adds r1, #48
	movs r2, #1
	bl sub_08006494
	movs r0, #0
	str r0, [r5, #60]
	b .L0800C1AA
.L0800C1A2:
	adds r0, r5, #0
	movs r1, #5
	bl sub_0800A5B8
.L0800C1AA:
	adds r0, r5, #0
	bl sub_0800AC8C
	adds r0, r5, #0
	adds r0, #76
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bgt .L0800C1CA
	ldr r0, [r5, #80]
	bl sub_0800F0E4
	adds r0, r5, #0
	movs r1, #12
	bl sub_0800A5B8
.L0800C1CA:
	add sp, #12
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_0800C1D4
	.thumb_func
sub_0800C1D4:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #12
	adds r7, r0, #0
	ldrb r0, [r7, #5]
	cmp r0, #8
	beq .L0800C1F0
	ldrb r0, [r7, #4]
	strb r0, [r7, #5]
	adds r0, r7, #0
	adds r0, #84
	bl sub_08005AC0
.L0800C1F0:
	ldr r0, [pc, #152]
	ldrb r2, [r7, #0]
	lsls r1, r2, #1
	adds r1, r1, r0
	movs r0, #32
	ldrh r1, [r1, #0]
	ands r0, r1
	adds r4, r7, #0
	adds r4, #84
	cmp r0, #0
	beq .L0800C222
	adds r1, r7, #0
	adds r1, #40
	ldrb r0, [r1, #0]
	cmp r0, #1
	beq .L0800C222
	movs r0, #1
	strb r0, [r1, #0]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08005A94
	adds r0, r4, #0
	bl sub_08005AC0
.L0800C222:
	ldr r0, [pc, #104]
	ldrb r2, [r7, #0]
	lsls r1, r2, #1
	adds r1, r1, r0
	movs r0, #16
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L0800C250
	adds r1, r7, #0
	adds r1, #40
	ldrb r0, [r1, #0]
	cmp r0, #0
	beq .L0800C250
	movs r0, #0
	strb r0, [r1, #0]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08005A94
	adds r0, r4, #0
	bl sub_08005AC0
.L0800C250:
	adds r0, r4, #0
	bl sub_08005BA0
	cmp r0, #0
	beq .L0800C264
	adds r0, r4, #0
	bl sub_08005BA0
	cmp r0, #1
	bne .L0800C29A
.L0800C264:
	adds r0, r4, #0
	bl sub_08005AD8
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0800C2E6
	adds r0, r4, #0
	bl sub_08005AC0
	adds r0, r7, #0
	adds r0, #40
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L0800C290
	adds r0, r4, #0
	movs r1, #1
	bl sub_08005A94
	b .L0800C2E6
	movs r0, r0
	asrs r4, r2, #21
	lsls r0, r0, #12
.L0800C290:
	adds r0, r4, #0
	movs r1, #0
	bl sub_08005A94
	b .L0800C2E6
.L0800C29A:
	ldr r0, [pc, #36]
	ldrb r2, [r7, #0]
	lsls r1, r2, #1
	adds r1, r1, r0
	movs r0, #48
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L0800C2C4
	adds r0, r7, #0
	adds r0, #40
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq .L0800C2CE
	adds r0, r4, #0
	movs r1, #0
	bl sub_08005A94
	b .L0800C2E0
	asrs r4, r2, #21
	lsls r0, r0, #12
.L0800C2C4:
	adds r0, r7, #0
	adds r0, #40
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L0800C2D8
.L0800C2CE:
	adds r0, r4, #0
	movs r1, #1
	bl sub_08005A94
	b .L0800C2E0
.L0800C2D8:
	adds r0, r4, #0
	movs r1, #0
	bl sub_08005A94
.L0800C2E0:
	adds r0, r4, #0
	bl sub_08005B18
.L0800C2E6:
	ldr r6, [pc, #164]
	ldrb r4, [r7, #0]
	lsls r1, r4, #1
	adds r1, r1, r6
	movs r0, #2
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	bne .L0800C300
	adds r0, r7, #0
	movs r1, #5
	bl sub_0800A5B8
.L0800C300:
	ldrb r0, [r7, #0]
	lsls r1, r0, #1
	adds r1, r1, r6
	movs r2, #16
	mov r8, r2
	mov r0, r8
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L0800C332
	ldr r5, [r7, #56]
	adds r0, r7, #0
	bl sub_0800ACF0
	adds r4, r0, #0
	adds r0, r7, #0
	bl sub_0800AD00
	adds r3, r0, #0
	movs r0, #1
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_0800EB0C
	str r0, [r7, #56]
.L0800C332:
	ldrb r4, [r7, #0]
	lsls r1, r4, #1
	adds r1, r1, r6
	movs r0, #32
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L0800C364
	movs r5, #1
	negs r5, r5
	ldr r6, [r7, #56]
	adds r0, r7, #0
	bl sub_0800ACF0
	adds r4, r0, #0
	adds r0, r7, #0
	bl sub_0800AD00
	adds r3, r0, #0
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl sub_0800EB0C
	str r0, [r7, #56]
.L0800C364:
	ldr r0, [r7, #44]
	ldr r1, [r7, #48]
	ldr r2, [r7, #56]
	movs r3, #16
	negs r3, r3
	movs r4, #32
	negs r4, r4
	str r4, [sp, #0]
	mov r4, r8
	str r4, [sp, #4]
	movs r4, #4
	str r4, [sp, #8]
	bl sub_080063C8
	lsls r0, r0, #24
	cmp r0, #0
	beq .L0800C390
	movs r0, #0
	str r0, [r7, #56]
	b .L0800C398
	asrs r4, r2, #21
	lsls r0, r0, #12
.L0800C390:
	ldr r0, [r7, #44]
	ldr r1, [r7, #56]
	adds r0, r0, r1
	str r0, [r7, #44]
.L0800C398:
	ldr r1, [r7, #60]
	movs r3, #128
	lsls r3, r3, #2
	movs r0, #1
	movs r2, #16
	bl sub_0800EB0C
	adds r2, r0, #0
	str r2, [r7, #60]
	ldr r0, [r7, #48]
	adds r4, r0, r2
	str r4, [r7, #48]
	cmp r2, #0
	ble .L0800C400
	movs r5, #0
	ldr r0, [r7, #44]
	adds r1, r4, #0
	movs r2, #0
	bl sub_08006450
	lsls r0, r0, #24
	cmp r0, #0
	beq .L0800C3D6
	adds r0, r7, #0
	adds r0, #44
	adds r1, r7, #0
	adds r1, #48
	movs r2, #0
	bl sub_08006494
	movs r5, #1
.L0800C3D6:
	cmp r5, #0
	beq .L0800C420
	adds r0, r7, #0
	adds r0, #76
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bgt .L0800C3F6
	ldr r0, [r7, #80]
	bl sub_0800F0E4
	adds r0, r7, #0
	movs r1, #12
	bl sub_0800A5B8
	b .L0800C44C
.L0800C3F6:
	adds r0, r7, #0
	movs r1, #1
	bl sub_0800A5B8
	b .L0800C41C
.L0800C400:
	ldr r0, [r7, #44]
	movs r3, #8
	negs r3, r3
	movs r1, #32
	negs r1, r1
	str r1, [sp, #0]
	movs r1, #8
	str r1, [sp, #4]
	adds r1, r4, #0
	bl sub_0800633C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L0800C420
.L0800C41C:
	movs r0, #0
	str r0, [r7, #60]
.L0800C420:
	adds r0, r7, #0
	bl sub_0800AC8C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L0800C438
	strh r0, [r7, #10]
	adds r0, r7, #0
	movs r1, #5
	bl sub_0800A5B8
.L0800C438:
	ldrh r0, [r7, #22]
	subs r0, #1
	strh r0, [r7, #22]
	lsls r0, r0, #16
	cmp r0, #0
	bgt .L0800C44C
	adds r0, r7, #0
	movs r1, #5
	bl sub_0800A5B8
.L0800C44C:
	add sp, #12
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_0800C458
	.thumb_func
sub_0800C458:
	push {r4, r5, lr}
	sub sp, #12
	adds r5, r0, #0
	ldrb r0, [r5, #5]
	cmp r0, #9
	beq .L0800C470
	ldrb r0, [r5, #4]
	strb r0, [r5, #5]
	adds r0, r5, #0
	adds r0, #84
	bl sub_08005AC0
.L0800C470:
	ldr r0, [r5, #56]
	movs r1, #64
	bl sub_0800EB3C
	adds r2, r0, #0
	str r2, [r5, #56]
	ldr r0, [r5, #44]
	ldr r1, [r5, #48]
	movs r3, #16
	negs r3, r3
	movs r4, #32
	negs r4, r4
	str r4, [sp, #0]
	movs r4, #16
	str r4, [sp, #4]
	subs r4, #24
	str r4, [sp, #8]
	bl sub_080063C8
	lsls r0, r0, #24
	cmp r0, #0
	beq .L0800C4A2
	movs r0, #0
	str r0, [r5, #56]
	b .L0800C4AA
.L0800C4A2:
	ldr r0, [r5, #44]
	ldr r1, [r5, #56]
	adds r0, r0, r1
	str r0, [r5, #44]
.L0800C4AA:
	ldr r1, [pc, #60]
	ldrb r0, [r5, #0]
	lsls r2, r0, #1
	adds r1, r2, r1
	movs r0, #128
	lsls r0, r0, #2
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L0800C4CE
	ldr r0, [pc, #44]
	adds r0, r2, r0
	ldrh r0, [r0, #0]
	cmp r0, #0
	beq .L0800C4CE
	ldrh r0, [r5, #26]
	adds r0, #1
	strh r0, [r5, #26]
.L0800C4CE:
	adds r0, r5, #0
	adds r0, #40
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L0800C4F0
	adds r4, r5, #0
	adds r4, #84
	adds r0, r4, #0
	movs r1, #65
	bl sub_08005A94
	b .L0800C4FC
	movs r0, r0
	asrs r4, r2, #21
	lsls r0, r0, #12
	movs r2, #92
	lsls r0, r0, #12
.L0800C4F0:
	adds r4, r5, #0
	adds r4, #84
	adds r0, r4, #0
	movs r1, #64
	bl sub_08005A94
.L0800C4FC:
	adds r0, r4, #0
	bl sub_08005AD8
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #0
	bne .L0800C516
	strh r0, [r5, #26]
	adds r0, r5, #0
	movs r1, #1
	bl sub_0800A5B8
	b .L0800C572
.L0800C516:
	adds r0, r4, #0
	bl sub_08005BA4
	cmp r0, #8
	bne .L0800C572
	adds r0, r4, #0
	bl sub_08005BA8
	cmp r0, #0
	bne .L0800C572
	ldr r4, [pc, #120]
	ldrb r1, [r5, #0]
	lsls r0, r1, #1
	adds r0, r0, r4
	ldrh r1, [r0, #0]
	subs r1, #1
	strh r1, [r0, #0]
	movs r0, #26
	ldrsh r1, [r5, r0]
	movs r0, #13
	muls r1, r0
	movs r0, #128
	lsls r0, r0, #3
	adds r1, r1, r0
	negs r1, r1
	adds r0, r5, #0
	bl sub_0800C808
	bl sub_08008A2C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	ldrb r1, [r5, #0]
	cmp r1, r0
	bne .L0800C572
	lsls r0, r1, #1
	adds r0, r0, r4
	ldrh r0, [r0, #0]
	cmp r0, #0
	bne .L0800C572
	movs r0, #0
	movs r1, #17
	movs r2, #4
	movs r3, #3
	bl sub_0800E798
.L0800C572:
	adds r0, r5, #0
	bl sub_0800AC8C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L0800C582
	strh r0, [r5, #10]
.L0800C582:
	ldr r0, [r5, #44]
	ldr r1, [r5, #48]
	movs r2, #1
	bl sub_08006450
	lsls r0, r0, #24
	cmp r0, #0
	beq .L0800C5A8
	adds r0, r5, #0
	adds r0, #44
	adds r1, r5, #0
	adds r1, #48
	movs r2, #1
	bl sub_08006494
	b .L0800C5B0
	movs r0, r0
	movs r2, #92
	lsls r0, r0, #12
.L0800C5A8:
	adds r0, r5, #0
	movs r1, #5
	bl sub_0800A5B8
.L0800C5B0:
	adds r0, r5, #0
	bl sub_0800AC8C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L0800C5C0
	strh r0, [r5, #10]
.L0800C5C0:
	adds r0, r5, #0
	adds r0, #76
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bgt .L0800C5DA
	ldr r0, [r5, #80]
	bl sub_0800F0E4
	adds r0, r5, #0
	movs r1, #12
	bl sub_0800A5B8
.L0800C5DA:
	add sp, #12
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_0800C5E4
	.thumb_func
sub_0800C5E4:
	push {r4, r5, r6, r7, lr}
	sub sp, #12
	adds r5, r0, #0
	ldrb r0, [r5, #5]
	cmp r0, #10
	beq .L0800C626
	ldrb r0, [r5, #4]
	strb r0, [r5, #5]
	adds r0, r5, #0
	adds r0, #84
	bl sub_08005AC0
	adds r1, r5, #0
	adds r1, #76
	movs r2, #0
	ldrsh r0, [r1, r2]
	subs r0, #32
	cmp r0, #0
	blt .L0800C610
	ldrh r0, [r1, #0]
	subs r0, #32
	b .L0800C612
.L0800C610:
	movs r0, #0
.L0800C612:
	strh r0, [r1, #0]
	bl sub_08008A40
	lsls r0, r0, #24
	cmp r0, #0
	beq .L0800C626
	ldr r0, [pc, #36]
	ldrb r1, [r5, #0]
	adds r0, r1, r0
	strb r1, [r0, #0]
.L0800C626:
	ldrh r0, [r5, #16]
	cmp r0, #0
	bne .L0800C66E
	adds r0, r5, #0
	adds r0, #40
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L0800C648
	adds r4, r5, #0
	adds r4, #84
	adds r0, r4, #0
	movs r1, #59
	bl sub_08005A94
	b .L0800C654
	strb r4, [r3, #1]
	lsls r0, r0, #12
.L0800C648:
	adds r4, r5, #0
	adds r4, #84
	adds r0, r4, #0
	movs r1, #58
	bl sub_08005A94
.L0800C654:
	adds r0, r4, #0
	bl sub_08005AD8
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0800C66E
	movs r0, #2
	strh r0, [r5, #16]
	movs r0, #3
	strh r0, [r5, #28]
	adds r0, r4, #0
	bl sub_08005AC0
.L0800C66E:
	ldrh r0, [r5, #16]
	cmp r0, #2
	bne .L0800C75A
	ldr r4, [pc, #176]
	ldrb r2, [r5, #0]
	lsls r1, r2, #1
	adds r1, r1, r4
	movs r7, #16
	adds r0, r7, #0
	ldrh r1, [r1, #0]
	ands r0, r1
	adds r6, r5, #0
	adds r6, #40
	cmp r0, #0
	beq .L0800C69E
	movs r0, #0
	strb r0, [r6, #0]
	ldr r1, [r5, #56]
	movs r0, #1
	movs r2, #64
	movs r3, #64
	bl sub_0800EB0C
	str r0, [r5, #56]
.L0800C69E:
	ldrb r0, [r5, #0]
	lsls r1, r0, #1
	adds r1, r1, r4
	movs r0, #32
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L0800C6C0
	movs r0, #1
	strb r0, [r6, #0]
	subs r0, #2
	ldr r1, [r5, #56]
	movs r2, #64
	movs r3, #64
	bl sub_0800EB0C
	str r0, [r5, #56]
.L0800C6C0:
	ldr r0, [r5, #44]
	ldr r1, [r5, #48]
	ldr r2, [r5, #56]
	movs r3, #16
	negs r3, r3
	movs r4, #32
	negs r4, r4
	str r4, [sp, #0]
	str r7, [sp, #4]
	movs r4, #8
	str r4, [sp, #8]
	bl sub_080063C8
	lsls r0, r0, #24
	cmp r0, #0
	beq .L0800C6E4
	movs r0, #0
	str r0, [r5, #56]
.L0800C6E4:
	ldr r1, [r5, #44]
	ldr r0, [r5, #56]
	adds r1, r1, r0
	str r1, [r5, #44]
	movs r1, #64
	bl sub_0800EB3C
	str r0, [r5, #56]
	ldr r0, [r5, #44]
	ldr r1, [r5, #48]
	movs r2, #1
	bl sub_08006450
	lsls r0, r0, #24
	cmp r0, #0
	beq .L0800C712
	adds r0, r5, #0
	adds r0, #44
	adds r1, r5, #0
	adds r1, #48
	movs r2, #1
	bl sub_08006494
.L0800C712:
	ldrb r0, [r6, #0]
	cmp r0, #0
	bne .L0800C72C
	adds r4, r5, #0
	adds r4, #84
	adds r0, r4, #0
	movs r1, #61
	bl sub_08005A94
	b .L0800C738
	movs r0, r0
	asrs r4, r2, #21
	lsls r0, r0, #12
.L0800C72C:
	adds r4, r5, #0
	adds r4, #84
	adds r0, r4, #0
	movs r1, #60
	bl sub_08005A94
.L0800C738:
	adds r0, r4, #0
	bl sub_08005AD8
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0800C75A
	ldrh r0, [r5, #28]
	subs r0, #1
	strh r0, [r5, #28]
	lsls r0, r0, #16
	cmp r0, #0
	bne .L0800C754
	movs r0, #1
	strh r0, [r5, #16]
.L0800C754:
	adds r0, r4, #0
	bl sub_08005AC0
.L0800C75A:
	ldrh r2, [r5, #16]
	cmp r2, #1
	bne .L0800C7A4
	adds r0, r5, #0
	adds r0, #40
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L0800C778
	adds r4, r5, #0
	adds r4, #84
	adds r0, r4, #0
	movs r1, #67
	bl sub_08005A94
	b .L0800C784
.L0800C778:
	adds r4, r5, #0
	adds r4, #84
	adds r0, r4, #0
	movs r1, #66
	bl sub_08005A94
.L0800C784:
	adds r0, r4, #0
	bl sub_08005AD8
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0800C7A4
	adds r1, r5, #0
	adds r1, #38
	movs r0, #1
	strb r0, [r1, #0]
	adds r1, #1
	strb r0, [r1, #0]
	adds r0, r5, #0
	movs r1, #1
	bl sub_0800A5B8
.L0800C7A4:
	adds r0, r5, #0
	bl sub_0800AC8C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L0800C7B4
	movs r0, #1
	strh r0, [r5, #10]
.L0800C7B4:
	add sp, #12
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_0800C7BC
	.thumb_func
sub_0800C7BC:
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_08006B2C
	ldrb r0, [r5, #5]
	cmp r0, #12
	beq .L0800C7F2
	ldrb r0, [r5, #4]
	movs r4, #0
	strb r0, [r5, #5]
	adds r0, r5, #0
	adds r0, #84
	bl sub_08005AC0
	ldr r0, [r5, #80]
	bl sub_0800F0E4
	str r4, [r5, #56]
	movs r0, #0
	strh r4, [r5, #24]
	strh r4, [r5, #10]
	adds r1, r5, #0
	adds r1, #38
	strb r0, [r1, #0]
	adds r1, #1
	strb r0, [r1, #0]
	strb r0, [r5, #3]
.L0800C7F2:
	bl sub_08008A40
	lsls r0, r0, #24
	cmp r0, #0
	beq .L0800C800
	movs r0, #0
	strb r0, [r5, #1]
.L0800C800:
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_0800C808
	.thumb_func
sub_0800C808:
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	mov r0, sp
	bl sub_08005C84
	lsls r0, r0, #24
	cmp r0, #0
	beq .L0800C8C2
	ldr r0, [sp, #0]
	adds r0, #140
	str r4, [r0, #0]
	ldr r0, [sp, #0]
	movs r1, #1
	strb r1, [r0, #3]
	ldr r0, [sp, #0]
	strb r1, [r0, #4]
	ldr r1, [sp, #0]
	adds r0, r4, #0
	adds r0, #40
	ldrb r0, [r0, #0]
	strb r0, [r1, #10]
	ldr r1, [sp, #0]
	adds r0, r4, #0
	adds r0, #52
	ldrb r0, [r0, #0]
	subs r0, #1
	strb r0, [r1, #12]
	ldr r0, [sp, #0]
	str r5, [r0, #28]
	ldr r1, [sp, #0]
	ldrb r0, [r1, #10]
	cmp r0, #0
	bne .L0800C884
	ldr r0, [r4, #44]
	movs r2, #128
	lsls r2, r2, #5
	adds r0, r0, r2
	str r0, [r1, #16]
	ldr r1, [sp, #0]
	ldr r0, [r4, #48]
	ldr r2, [pc, #28]
	adds r0, r0, r2
	str r0, [r1, #20]
	ldr r1, [sp, #0]
	movs r0, #192
	lsls r0, r0, #2
	str r0, [r1, #24]
	ldr r0, [sp, #0]
	adds r0, #36
	ldr r1, [pc, #16]
	movs r2, #1
	movs r3, #0
	bl sub_08005710
	b .L0800C8AA
	movs r0, r0
	b .L0800C880
	.2byte 0xffff @ .raw
.L0800C880:
	strh r0, [r2, r6]
	lsls r2, r0, #8
.L0800C884:
	ldr r0, [r4, #44]
	ldr r2, [pc, #68]
	adds r0, r0, r2
	str r0, [r1, #16]
	ldr r1, [sp, #0]
	ldr r0, [r4, #48]
	ldr r2, [pc, #60]
	adds r0, r0, r2
	str r0, [r1, #20]
	ldr r1, [sp, #0]
	ldr r0, [pc, #56]
	str r0, [r1, #24]
	ldr r0, [sp, #0]
	adds r0, #36
	ldr r1, [pc, #52]
	movs r2, #0
	movs r3, #0
	bl sub_08005710
.L0800C8AA:
	ldr r0, [sp, #0]
	adds r0, #136
	ldr r1, [pc, #44]
	str r1, [r0, #0]
	ldr r0, [sp, #0]
	movs r2, #0
	strh r2, [r0, #6]
	ldr r1, [sp, #0]
	movs r0, #6
	strh r0, [r1, #8]
	ldr r0, [sp, #0]
	strh r2, [r0, #12]
.L0800C8C2:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0xFFFFF000
	.4byte 0xFFFFE000
	.4byte 0xFFFFFD00
	.4byte 0x02025390
	.4byte 0x02007541

	.thumb
	.align 1, 0
	.global sub_0800C8E0
	.thumb_func
sub_0800C8E0:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #12
	adds r5, r0, #0
	ldr r0, [r5, #16]
	ldr r1, [r5, #20]
	ldr r2, [r5, #24]
	movs r6, #6
	negs r6, r6
	str r6, [sp, #0]
	movs r7, #6
	str r7, [sp, #4]
	str r7, [sp, #8]
	adds r3, r6, #0
	bl sub_080063C8
	lsls r0, r0, #24
	cmp r0, #0
	beq .L0800C91A
	movs r0, #1
	ldrb r1, [r5, #10]
	subs r0, r0, r1
	strb r0, [r5, #10]
	ldr r0, [r5, #24]
	negs r0, r0
	str r0, [r5, #24]
.L0800C91A:
	adds r4, r5, #0
	adds r4, #36
	adds r0, r4, #0
	bl sub_08005B18
	ldr r0, [r5, #16]
	ldr r1, [r5, #24]
	adds r0, r0, r1
	str r0, [r5, #16]
	ldr r1, [r5, #20]
	ldr r2, [r5, #28]
	str r6, [sp, #0]
	str r7, [sp, #4]
	adds r3, r6, #0
	bl sub_0800633C
	lsls r0, r0, #24
	mov r9, r4
	cmp r0, #0
	beq .L0800C948
	ldr r0, [r5, #28]
	negs r0, r0
	str r0, [r5, #28]
.L0800C948:
	ldr r0, [r5, #20]
	ldr r1, [r5, #28]
	adds r0, r0, r1
	str r0, [r5, #20]
	adds r1, #64
	str r1, [r5, #28]
	movs r6, #0
	ldr r2, [pc, #248]
	mov sl, r2
	mov r8, r9
.L0800C95C:
	movs r0, #208
	muls r0, r6
	mov r3, sl
	adds r4, r0, r3
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq .L0800C9DA
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080068F8
	lsls r0, r0, #24
	cmp r0, #0
	beq .L0800C9DA
	movs r2, #1
	adds r0, r5, #0
	adds r0, #140
	ldr r1, [r0, #0]
	adds r7, r0, #0
	cmp r1, r4
	bne .L0800C996
	ldrh r1, [r5, #8]
	movs r3, #8
	ldrsh r0, [r5, r3]
	cmp r0, #0
	ble .L0800C996
	subs r0, r1, #1
	strh r0, [r5, #8]
	movs r2, #0
.L0800C996:
	cmp r2, #0
	beq .L0800C9DA
	mov r0, r8
	ldr r1, [pc, #180]
	bl sub_08005828
	mov r0, r8
	bl sub_08005AC0
	adds r1, r5, #0
	adds r1, #136
	ldr r0, [pc, #168]
	str r0, [r1, #0]
	movs r0, #208
	muls r0, r6
	add r0, sl
	movs r1, #2
	str r1, [sp, #0]
	add r2, sp, #4
	movs r1, #1
	strb r1, [r2, #0]
	add r2, sp, #8
	movs r1, #0
	strb r1, [r2, #0]
	movs r1, #1
	movs r2, #60
	movs r3, #2
	bl sub_08006AD8
	ldr r1, [pc, #136]
	adds r1, r6, r1
	ldr r0, [r7, #0]
	ldrb r0, [r0, #0]
	strb r0, [r1, #0]
.L0800C9DA:
	adds r6, #1
	cmp r6, #3
	bls .L0800C95C
	ldr r0, [r5, #16]
	ldr r1, [r5, #20]
	movs r2, #192
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	bl sub_08006450
	lsls r0, r0, #24
	cmp r0, #0
	beq .L0800CA16
	ldr r1, [r5, #28]
	cmp r1, #0
	blt .L0800CA16
	movs r3, #6
	ldrsh r0, [r5, r3]
	cmp r0, #0
	bne .L0800CA2A
	movs r0, #6
	strh r0, [r5, #6]
	asrs r0, r1, #1
	negs r0, r0
	str r0, [r5, #28]
	ldr r1, [pc, #80]
	cmp r0, r1
	ble .L0800CA16
	str r1, [r5, #28]
.L0800CA16:
	ldrh r1, [r5, #6]
	movs r2, #6
	ldrsh r0, [r5, r2]
	cmp r0, #0
	beq .L0800CA40
	subs r0, r1, #1
	strh r0, [r5, #6]
	lsls r0, r0, #16
	cmp r0, #0
	bne .L0800CA40
.L0800CA2A:
	ldr r1, [pc, #40]
	mov r0, r9
	bl sub_08005828
	mov r0, r9
	bl sub_08005AC0
	adds r1, r5, #0
	adds r1, #136
	ldr r0, [pc, #24]
	str r0, [r1, #0]
.L0800CA40:
	add sp, #12
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.4byte 0x03001F14
	.4byte 0x020255F0
	.4byte 0x020076C5
	.4byte 0x0300705C
	.4byte 0xFFFFFE00

	.thumb
	.align 1, 0
	.global sub_0800CA64
	.thumb_func
sub_0800CA64:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #12
	adds r5, r0, #0
	movs r1, #12
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bne .L0800CA80
	movs r0, #1
	strh r0, [r5, #12]
	movs r0, #4
	bl orphan_GAX_fx
.L0800CA80:
	ldrb r0, [r5, #10]
	cmp r0, #0
	bne .L0800CA94
	adds r4, r5, #0
	adds r4, #36
	adds r0, r4, #0
	movs r1, #1
	bl sub_08005A94
	b .L0800CAA0
.L0800CA94:
	adds r4, r5, #0
	adds r4, #36
	adds r0, r4, #0
	movs r1, #0
	bl sub_08005A94
.L0800CAA0:
	adds r7, r4, #0
	movs r6, #0
	ldr r0, [pc, #108]
	mov r8, r0
.L0800CAA8:
	movs r0, #208
	muls r0, r6
	mov r1, r8
	adds r4, r0, r1
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq .L0800CAEE
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080068F8
	lsls r0, r0, #24
	cmp r0, #0
	beq .L0800CAEE
	movs r0, #2
	str r0, [sp, #0]
	add r1, sp, #4
	movs r0, #1
	strb r0, [r1, #0]
	add r1, sp, #8
	movs r0, #0
	strb r0, [r1, #0]
	adds r0, r4, #0
	movs r1, #1
	movs r2, #4
	movs r3, #2
	bl sub_08006AD8
	ldr r1, [pc, #52]
	adds r1, r6, r1
	adds r0, r5, #0
	adds r0, #140
	ldr r0, [r0, #0]
	ldrb r0, [r0, #0]
	strb r0, [r1, #0]
.L0800CAEE:
	adds r6, #1
	cmp r6, #3
	bls .L0800CAA8
	adds r0, r7, #0
	bl sub_08005AD8
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0800CB06
	adds r0, r5, #0
	bl sub_08005CCC
.L0800CB06:
	add sp, #12
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x03001F14
	.4byte 0x0300705C

	.thumb
	.align 1, 0
	.global sub_0800CB1C
	.thumb_func
sub_0800CB1C:
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	mov r0, sp
	bl sub_08005C84
	lsls r0, r0, #24
	lsrs r1, r0, #24
	cmp r1, #1
	beq .L0800CB32
	b .L0800CD4A
.L0800CB32:
	ldr r0, [sp, #0]
	adds r0, #140
	str r4, [r0, #0]
	ldr r0, [sp, #0]
	movs r3, #0
	strb r1, [r0, #3]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	adds r0, #40
	ldrb r0, [r0, #0]
	strb r0, [r1, #10]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	adds r0, #52
	ldrb r0, [r0, #0]
	subs r0, #1
	strb r0, [r1, #12]
	ldr r0, [sp, #0]
	adds r0, #136
	ldr r1, [pc, #64]
	str r1, [r0, #0]
	ldr r2, [sp, #0]
	adds r0, r2, #0
	adds r0, #140
	ldr r0, [r0, #0]
	ldr r1, [r0, #16]
	ldrh r0, [r1, #12]
	cmp r0, #0
	bne .L0800CC10
	ldrb r0, [r1, #4]
	cmp r0, #7
	bne .L0800CBB8
	ldr r0, [r1, #48]
	ldr r1, [pc, #40]
	adds r0, r0, r1
	str r0, [r2, #20]
	ldr r1, [sp, #0]
	ldrb r0, [r1, #10]
	cmp r0, #0
	bne .L0800CBA4
	adds r0, r1, #0
	adds r0, #140
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #44]
	movs r2, #140
	lsls r2, r2, #6
	adds r0, r0, r2
	str r0, [r1, #16]
	ldr r1, [sp, #0]
	movs r0, #128
	lsls r0, r0, #4
	b .L0800CBFC
	ldrb r1, [r7, #6]
	lsls r0, r0, #8
	.2byte 0xf100, 0xffff @ bl 0x810dba2
.L0800CBA4:
	adds r0, r1, #0
	adds r0, #140
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #44]
	ldr r3, [pc, #4]
	b .L0800CBF4
	movs r0, r0
	udf #0
	.2byte 0xffff @ .raw
.L0800CBB8:
	ldr r0, [r1, #48]
	ldr r1, [pc, #40]
	adds r0, r0, r1
	str r0, [r2, #20]
	ldr r1, [sp, #0]
	ldrb r0, [r1, #10]
	cmp r0, #0
	bne .L0800CBE8
	adds r0, r1, #0
	adds r0, #140
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #44]
	movs r2, #224
	lsls r2, r2, #5
	adds r0, r0, r2
	str r0, [r1, #16]
	ldr r1, [sp, #0]
	movs r0, #128
	lsls r0, r0, #4
	b .L0800CBFC
	movs r0, r0
	.2byte 0xe300 @ b.n 0x800d1e8
	.2byte 0xffff @ .raw
.L0800CBE8:
	adds r0, r1, #0
	adds r0, #140
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #44]
	ldr r3, [pc, #20]
.L0800CBF4:
	adds r0, r0, r3
	str r0, [r1, #16]
	ldr r1, [sp, #0]
	ldr r0, [pc, #16]
.L0800CBFC:
	str r0, [r1, #24]
	ldr r1, [sp, #0]
	movs r0, #0
	str r0, [r1, #28]
	b .L0800CCFE
	movs r0, r0
	.2byte 0xe400 @ b.n 0x800c40c
	.2byte 0xffff @ .raw
	.2byte 0xf800 @ .raw
	.2byte 0xffff @ .raw
.L0800CC10:
	cmp r0, #1
	bne .L0800CC64
	ldr r0, [r1, #48]
	ldr r1, [pc, #48]
	adds r0, r0, r1
	str r0, [r2, #20]
	ldr r0, [sp, #0]
	ldr r2, [pc, #44]
	str r2, [r0, #28]
	ldr r1, [sp, #0]
	ldrb r0, [r1, #10]
	cmp r0, #0
	bne .L0800CC50
	adds r0, r1, #0
	adds r0, #140
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #44]
	movs r2, #176
	lsls r2, r2, #5
	adds r0, r0, r2
	str r0, [r1, #16]
	ldr r1, [sp, #0]
	movs r0, #128
	lsls r0, r0, #4
	str r0, [r1, #24]
	b .L0800CCFE
	movs r0, r0
	.2byte 0xcc00 @ .raw ldmia r4!, {}
	.2byte 0xffff @ .raw
	.2byte 0xf800 @ .raw
	.2byte 0xffff @ .raw
.L0800CC50:
	adds r0, r1, #0
	adds r0, #140
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #44]
	ldr r3, [pc, #4]
	b .L0800CCB6
	movs r0, r0
	.2byte 0xec00 @ .raw
	.2byte 0xffff @ .raw
.L0800CC64:
	cmp r0, #3
	bne .L0800CC8C
	ldr r0, [r1, #44]
	str r0, [r2, #16]
	ldr r1, [sp, #0]
	adds r0, r1, #0
	adds r0, #140
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #48]
	ldr r2, [pc, #8]
	adds r0, r0, r2
	str r0, [r1, #20]
	ldr r1, [sp, #0]
	ldr r0, [pc, #4]
	b .L0800CCF8
	b .L0800CC88
	.2byte 0xffff @ .raw
.L0800CC88:
	.2byte 0xf800 @ .raw
	.2byte 0xffff @ .raw
.L0800CC8C:
	cmp r0, #2
	bne .L0800CCDC
	ldr r0, [r1, #48]
	ldr r3, [pc, #44]
	adds r0, r0, r3
	str r0, [r2, #20]
	ldr r0, [sp, #0]
	movs r2, #128
	lsls r2, r2, #4
	str r2, [r0, #28]
	ldr r1, [sp, #0]
	ldrb r0, [r1, #10]
	cmp r0, #0
	bne .L0800CCC4
	adds r0, r1, #0
	adds r0, #140
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #44]
	movs r3, #128
	lsls r3, r3, #6
.L0800CCB6:
	adds r0, r0, r3
	str r0, [r1, #16]
	ldr r0, [sp, #0]
	str r2, [r0, #24]
	b .L0800CCFE
	.2byte 0xf800 @ .raw
	.2byte 0xffff @ .raw
.L0800CCC4:
	adds r0, r1, #0
	adds r0, #140
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #44]
	ldr r2, [pc, #8]
	adds r0, r0, r2
	str r0, [r1, #16]
	b .L0800CCFA
	movs r0, r0
	b .L0800CCDC
	.2byte 0xffff @ .raw
.L0800CCDC:
	cmp r0, #4
	bne .L0800CCFE
	ldr r0, [r1, #44]
	str r0, [r2, #16]
	ldr r1, [sp, #0]
	adds r0, r1, #0
	adds r0, #140
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #48]
	str r0, [r1, #20]
	ldr r1, [sp, #0]
	movs r0, #128
	lsls r0, r0, #4
.L0800CCF8:
	str r0, [r1, #28]
.L0800CCFA:
	ldr r0, [sp, #0]
	str r3, [r0, #24]
.L0800CCFE:
	ldr r1, [sp, #0]
	ldrb r0, [r1, #10]
	cmp r0, #0
	bne .L0800CD1C
	adds r0, r1, #0
	adds r0, #36
	ldr r1, [pc, #12]
	movs r2, #2
	movs r3, #0
	bl sub_08005710
	b .L0800CD2A
	movs r0, r0
	.2byte 0xf810 @ .raw
	lsls r1, r0, #8
.L0800CD1C:
	adds r0, r1, #0
	adds r0, #36
	ldr r1, [pc, #48]
	movs r2, #3
	movs r3, #0
	bl sub_08005710
.L0800CD2A:
	ldr r1, [sp, #0]
	movs r0, #0
	strb r0, [r1, #4]
	ldr r1, [sp, #0]
	ldr r0, [r1, #16]
	asrs r0, r0, #8
	ldr r1, [r1, #20]
	asrs r1, r1, #8
	bl sub_08006204
	lsls r0, r0, #24
	cmp r0, #0
	beq .L0800CD4A
	movs r0, #1
	bl orphan_GAX_fx
.L0800CD4A:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x0201F810

	.thumb
	.align 1, 0
	.global sub_0800CD58
	.thumb_func
sub_0800CD58:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #12
	adds r5, r0, #0
	movs r0, #0
	mov sl, r0
	movs r3, #1
	negs r3, r3
	mov r9, r3
	movs r0, #1
	mov r8, r0
.L0800CD74:
	ldr r0, [r5, #16]
	ldr r1, [r5, #20]
	ldr r2, [r5, #24]
	mov r3, r9
	str r3, [sp, #0]
	mov r3, r8
	str r3, [sp, #4]
	str r3, [sp, #8]
	mov r3, r9
	bl sub_080063C8
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0800CDBC
	ldr r0, [r5, #16]
	ldr r1, [r5, #20]
	ldr r2, [r5, #28]
	mov r3, r9
	str r3, [sp, #0]
	mov r3, r8
	str r3, [sp, #4]
	movs r3, #1
	negs r3, r3
	bl sub_0800633C
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0800CDBC
	ldr r0, [r5, #16]
	ldr r1, [r5, #20]
	movs r2, #0
	bl sub_08006450
	lsls r0, r0, #24
	cmp r0, #0
	beq .L0800CDCC
.L0800CDBC:
	adds r1, r5, #0
	adds r1, #136
	ldr r0, [pc, #4]
	str r0, [r1, #0]
	b .L0800CED2
	movs r0, r0
	ldrb r1, [r1, #13]
	lsls r0, r0, #8
.L0800CDCC:
	ldr r0, [r5, #16]
	ldr r1, [r5, #24]
	adds r0, r0, r1
	str r0, [r5, #16]
	ldr r0, [r5, #20]
	ldr r1, [r5, #28]
	adds r0, r0, r1
	str r0, [r5, #20]
	movs r4, #0
	adds r6, r5, #0
	adds r6, #140
	ldr r7, [pc, #52]
.L0800CDE4:
	ldr r0, [r6, #0]
	ldr r0, [r0, #16]
	ldrb r0, [r0, #0]
	cmp r4, r0
	beq .L0800CE72
	movs r0, #208
	muls r0, r4
	adds r1, r0, r7
	ldrb r0, [r1, #1]
	cmp r0, #0
	beq .L0800CE72
	adds r0, r5, #0
	bl sub_080068F8
	lsls r0, r0, #24
	cmp r0, #0
	beq .L0800CE72
	ldrb r0, [r5, #10]
	cmp r0, #0
	bne .L0800CE1C
	adds r0, r5, #0
	adds r0, #36
	movs r1, #1
	bl sub_08005A94
	b .L0800CE26
	subs r4, r2, #4
	lsls r0, r0, #12
.L0800CE1C:
	adds r0, r5, #0
	adds r0, #36
	movs r1, #0
	bl sub_08005A94
.L0800CE26:
	movs r0, #208
	muls r0, r4
	adds r3, r7, #0
	adds r3, #44
	adds r3, r3, r0
	mov ip, r3
	adds r0, r0, r7
	adds r1, r0, #0
	adds r1, #72
	movs r3, #0
	ldrsh r2, [r1, r3]
	lsls r2, r2, #8
	mov r3, ip
	ldr r1, [r3, #0]
	adds r1, r1, r2
	str r1, [r5, #16]
	adds r2, r5, #0
	adds r2, #136
	ldr r1, [pc, #88]
	str r1, [r2, #0]
	movs r1, #2
	str r1, [sp, #0]
	add r1, sp, #4
	movs r2, #0
	strb r2, [r1, #0]
	add r1, sp, #8
	strb r2, [r1, #0]
	movs r1, #1
	movs r2, #15
	movs r3, #2
	bl sub_08006AD8
	ldr r1, [pc, #64]
	adds r1, r4, r1
	ldr r0, [r6, #0]
	ldr r0, [r0, #16]
	ldrb r0, [r0, #0]
	strb r0, [r1, #0]
.L0800CE72:
	adds r4, #1
	cmp r4, #3
	bls .L0800CDE4
	ldr r0, [r5, #16]
	asrs r0, r0, #8
	ldr r1, [r5, #20]
	asrs r1, r1, #8
	ldr r2, [r6, #0]
	ldr r3, [r2, #16]
	ldr r2, [r3, #44]
	asrs r2, r2, #8
	ldr r3, [r3, #48]
	asrs r3, r3, #8
	movs r4, #180
	lsls r4, r4, #1
	str r4, [sp, #0]
	bl sub_08006544
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0800CEAC
	adds r0, r5, #0
	bl sub_08005CCC
	b .L0800CED2
	ldrb r1, [r1, #13]
	lsls r0, r0, #8
	strb r4, [r3, #1]
	lsls r0, r0, #12
.L0800CEAC:
	ldr r0, [r5, #16]
	ldr r4, [pc, #52]
	cmp r0, r4
	bgt .L0800CEBA
	adds r0, r5, #0
	bl sub_08005CCC
.L0800CEBA:
	ldr r0, [r5, #20]
	cmp r0, r4
	bgt .L0800CEC6
	adds r0, r5, #0
	bl sub_08005CCC
.L0800CEC6:
	movs r0, #1
	add sl, r0
	mov r3, sl
	cmp r3, #2
	beq .L0800CED2
	b .L0800CD74
.L0800CED2:
	add sp, #12
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x000007FF

	.thumb
	.align 1, 0
	.global sub_0800CEE8
	.thumb_func
sub_0800CEE8:
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #36
	bl sub_08005AD8
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0800CF04
	adds r0, r4, #0
	bl sub_08005CCC
.L0800CF04:
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_0800CF0C
	.thumb_func
sub_0800CF0C:
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	mov r0, sp
	bl sub_08005C84
	lsls r0, r0, #24
	lsrs r1, r0, #24
	cmp r1, #1
	beq .L0800CF22
	b .L0800D106
.L0800CF22:
	ldr r0, [sp, #0]
	adds r0, #140
	str r4, [r0, #0]
	ldr r0, [sp, #0]
	movs r3, #0
	strb r1, [r0, #3]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	adds r0, #40
	ldrb r0, [r0, #0]
	strb r0, [r1, #10]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	adds r0, #52
	ldrb r0, [r0, #0]
	subs r0, #1
	strb r0, [r1, #12]
	ldr r0, [sp, #0]
	adds r0, #136
	ldr r1, [pc, #32]
	str r1, [r0, #0]
	ldr r2, [sp, #0]
	adds r0, r2, #0
	adds r0, #140
	ldr r0, [r0, #0]
	ldr r1, [r0, #16]
	ldrh r0, [r1, #12]
	cmp r0, #0
	bne .L0800CFC0
	ldrb r0, [r1, #4]
	cmp r0, #7
	bne .L0800CF74
	ldr r0, [r1, #48]
	ldr r1, [pc, #8]
	adds r0, r0, r1
	b .L0800CF7A
	movs r0, r0
	ldrb r5, [r6, #21]
	lsls r0, r0, #8
	.2byte 0xf800 @ .raw
	.2byte 0xffff @ .raw
.L0800CF74:
	ldr r0, [r1, #48]
	ldr r3, [pc, #36]
	adds r0, r0, r3
.L0800CF7A:
	str r0, [r2, #20]
	ldr r0, [sp, #0]
	movs r1, #0
	str r1, [r0, #28]
	ldr r1, [sp, #0]
	ldrb r0, [r1, #10]
	cmp r0, #0
	bne .L0800CFA0
	adds r0, r1, #0
	adds r0, #140
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #44]
	movs r2, #128
	lsls r2, r2, #6
	b .L0800CFE8
	movs r0, r0
	.2byte 0xe800 @ .raw
	.2byte 0xffff @ .raw
.L0800CFA0:
	adds r0, r1, #0
	adds r0, #140
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #44]
	ldr r3, [pc, #12]
	adds r0, r0, r3
	str r0, [r1, #16]
	ldr r1, [sp, #0]
	ldr r0, [pc, #8]
	str r0, [r1, #24]
	b .L0800D0AE
	b .L0800CFBC
	.2byte 0xffff @ .raw
.L0800CFBC:
	.2byte 0xf800 @ .raw
	.2byte 0xffff @ .raw
.L0800CFC0:
	cmp r0, #1
	bne .L0800D014
	ldr r0, [r1, #48]
	ldr r1, [pc, #48]
	adds r0, r0, r1
	str r0, [r2, #20]
	ldr r0, [sp, #0]
	ldr r2, [pc, #44]
	str r2, [r0, #28]
	ldr r1, [sp, #0]
	ldrb r0, [r1, #10]
	cmp r0, #0
	bne .L0800D000
	adds r0, r1, #0
	adds r0, #140
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #44]
	movs r2, #192
	lsls r2, r2, #5
.L0800CFE8:
	adds r0, r0, r2
	str r0, [r1, #16]
	ldr r1, [sp, #0]
	movs r0, #128
	lsls r0, r0, #4
	str r0, [r1, #24]
	b .L0800D0AE
	movs r0, r0
	beq .L0800CFFC
	.2byte 0xffff @ .raw
.L0800CFFC:
	.2byte 0xf800 @ .raw
	.2byte 0xffff @ .raw
.L0800D000:
	adds r0, r1, #0
	adds r0, #140
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #44]
	ldr r3, [pc, #4]
	b .L0800D066
	movs r0, r0
	.2byte 0xe800 @ .raw
	.2byte 0xffff @ .raw
.L0800D014:
	cmp r0, #3
	bne .L0800D03C
	ldr r0, [r1, #44]
	str r0, [r2, #16]
	ldr r1, [sp, #0]
	adds r0, r1, #0
	adds r0, #140
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #48]
	ldr r2, [pc, #8]
	adds r0, r0, r2
	str r0, [r1, #20]
	ldr r1, [sp, #0]
	ldr r0, [pc, #4]
	b .L0800D0A8
	b .L0800D038
	.2byte 0xffff @ .raw
.L0800D038:
	.2byte 0xf800 @ .raw
	.2byte 0xffff @ .raw
.L0800D03C:
	cmp r0, #2
	bne .L0800D08C
	ldr r0, [r1, #48]
	ldr r3, [pc, #44]
	adds r0, r0, r3
	str r0, [r2, #20]
	ldr r0, [sp, #0]
	movs r2, #128
	lsls r2, r2, #4
	str r2, [r0, #28]
	ldr r1, [sp, #0]
	ldrb r0, [r1, #10]
	cmp r0, #0
	bne .L0800D074
	adds r0, r1, #0
	adds r0, #140
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #44]
	movs r3, #128
	lsls r3, r3, #6
.L0800D066:
	adds r0, r0, r3
	str r0, [r1, #16]
	ldr r0, [sp, #0]
	str r2, [r0, #24]
	b .L0800D0AE
	.2byte 0xf800 @ .raw
	.2byte 0xffff @ .raw
.L0800D074:
	adds r0, r1, #0
	adds r0, #140
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #44]
	ldr r2, [pc, #8]
	adds r0, r0, r2
	str r0, [r1, #16]
	b .L0800D0AA
	movs r0, r0
	b .L0800D08C
	.2byte 0xffff @ .raw
.L0800D08C:
	cmp r0, #4
	bne .L0800D0AE
	ldr r0, [r1, #44]
	str r0, [r2, #16]
	ldr r1, [sp, #0]
	adds r0, r1, #0
	adds r0, #140
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #48]
	str r0, [r1, #20]
	ldr r1, [sp, #0]
	movs r0, #128
	lsls r0, r0, #4
.L0800D0A8:
	str r0, [r1, #28]
.L0800D0AA:
	ldr r0, [sp, #0]
	str r3, [r0, #24]
.L0800D0AE:
	ldr r1, [sp, #0]
	ldrb r0, [r1, #10]
	cmp r0, #0
	bne .L0800D0CC
	adds r0, r1, #0
	adds r0, #36
	ldr r1, [pc, #12]
	movs r2, #2
	movs r3, #0
	bl sub_08005710
	b .L0800D0DA
	movs r0, r0
	.2byte 0xf810 @ .raw
	lsls r1, r0, #8
.L0800D0CC:
	adds r0, r1, #0
	adds r0, #36
	ldr r1, [pc, #60]
	movs r2, #3
	movs r3, #0
	bl sub_08005710
.L0800D0DA:
	ldr r1, [sp, #0]
	movs r0, #0
	strb r0, [r1, #4]
	movs r0, #2
	bl sub_0800DF8C
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0800D106
	ldr r1, [sp, #0]
	ldr r0, [r1, #16]
	asrs r0, r0, #8
	ldr r1, [r1, #20]
	asrs r1, r1, #8
	bl sub_08006204
	lsls r0, r0, #24
	cmp r0, #0
	beq .L0800D106
	movs r0, #2
	bl orphan_GAX_fx
.L0800D106:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x0201F810

	.thumb
	.align 1, 0
	.global sub_0800D114
	.thumb_func
sub_0800D114:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #12
	adds r5, r0, #0
	movs r0, #0
	mov sl, r0
	movs r3, #1
	negs r3, r3
	mov r9, r3
	movs r0, #1
	mov r8, r0
.L0800D130:
	ldr r0, [r5, #16]
	ldr r1, [r5, #20]
	ldr r2, [r5, #24]
	mov r3, r9
	str r3, [sp, #0]
	mov r3, r8
	str r3, [sp, #4]
	str r3, [sp, #8]
	mov r3, r9
	bl sub_080063C8
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0800D178
	ldr r0, [r5, #16]
	ldr r1, [r5, #20]
	ldr r2, [r5, #28]
	mov r3, r9
	str r3, [sp, #0]
	mov r3, r8
	str r3, [sp, #4]
	movs r3, #1
	negs r3, r3
	bl sub_0800633C
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0800D178
	ldr r0, [r5, #16]
	ldr r1, [r5, #20]
	movs r2, #0
	bl sub_08006450
	lsls r0, r0, #24
	cmp r0, #0
	beq .L0800D188
.L0800D178:
	adds r1, r5, #0
	adds r1, #136
	ldr r0, [pc, #4]
	str r0, [r1, #0]
	b .L0800D28E
	movs r0, r0
	ldrb r1, [r1, #13]
	lsls r0, r0, #8
.L0800D188:
	ldr r0, [r5, #16]
	ldr r1, [r5, #24]
	adds r0, r0, r1
	str r0, [r5, #16]
	ldr r0, [r5, #20]
	ldr r1, [r5, #28]
	adds r0, r0, r1
	str r0, [r5, #20]
	movs r4, #0
	adds r6, r5, #0
	adds r6, #140
	ldr r7, [pc, #52]
.L0800D1A0:
	ldr r0, [r6, #0]
	ldr r0, [r0, #16]
	ldrb r0, [r0, #0]
	cmp r4, r0
	beq .L0800D22E
	movs r0, #208
	muls r0, r4
	adds r1, r0, r7
	ldrb r0, [r1, #1]
	cmp r0, #0
	beq .L0800D22E
	adds r0, r5, #0
	bl sub_080068F8
	lsls r0, r0, #24
	cmp r0, #0
	beq .L0800D22E
	ldrb r0, [r5, #10]
	cmp r0, #0
	bne .L0800D1D8
	adds r0, r5, #0
	adds r0, #36
	movs r1, #1
	bl sub_08005A94
	b .L0800D1E2
	subs r4, r2, #4
	lsls r0, r0, #12
.L0800D1D8:
	adds r0, r5, #0
	adds r0, #36
	movs r1, #0
	bl sub_08005A94
.L0800D1E2:
	movs r0, #208
	muls r0, r4
	adds r3, r7, #0
	adds r3, #44
	adds r3, r3, r0
	mov ip, r3
	adds r0, r0, r7
	adds r1, r0, #0
	adds r1, #72
	movs r3, #0
	ldrsh r2, [r1, r3]
	lsls r2, r2, #8
	mov r3, ip
	ldr r1, [r3, #0]
	adds r1, r1, r2
	str r1, [r5, #16]
	adds r2, r5, #0
	adds r2, #136
	ldr r1, [pc, #88]
	str r1, [r2, #0]
	movs r1, #2
	str r1, [sp, #0]
	add r1, sp, #4
	movs r2, #0
	strb r2, [r1, #0]
	add r1, sp, #8
	strb r2, [r1, #0]
	movs r1, #1
	movs r2, #20
	movs r3, #2
	bl sub_08006AD8
	ldr r1, [pc, #64]
	adds r1, r4, r1
	ldr r0, [r6, #0]
	ldr r0, [r0, #16]
	ldrb r0, [r0, #0]
	strb r0, [r1, #0]
.L0800D22E:
	adds r4, #1
	cmp r4, #3
	bls .L0800D1A0
	ldr r0, [r5, #16]
	asrs r0, r0, #8
	ldr r1, [r5, #20]
	asrs r1, r1, #8
	ldr r2, [r6, #0]
	ldr r3, [r2, #16]
	ldr r2, [r3, #44]
	asrs r2, r2, #8
	ldr r3, [r3, #48]
	asrs r3, r3, #8
	movs r4, #180
	lsls r4, r4, #1
	str r4, [sp, #0]
	bl sub_08006544
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0800D268
	adds r0, r5, #0
	bl sub_08005CCC
	b .L0800D28E
	ldrb r5, [r0, #28]
	lsls r0, r0, #8
	strb r4, [r3, #1]
	lsls r0, r0, #12
.L0800D268:
	ldr r0, [r5, #16]
	ldr r4, [pc, #52]
	cmp r0, r4
	bgt .L0800D276
	adds r0, r5, #0
	bl sub_08005CCC
.L0800D276:
	ldr r0, [r5, #20]
	cmp r0, r4
	bgt .L0800D282
	adds r0, r5, #0
	bl sub_08005CCC
.L0800D282:
	movs r0, #1
	add sl, r0
	mov r3, sl
	cmp r3, #2
	beq .L0800D28E
	b .L0800D130
.L0800D28E:
	add sp, #12
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x000007FF

	.thumb
	.align 1, 0
	.global sub_0800D2A4
	.thumb_func
sub_0800D2A4:
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #36
	bl sub_08005AD8
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0800D2C0
	adds r0, r4, #0
	bl sub_08005CCC
.L0800D2C0:
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_0800D2C8
	.thumb_func
sub_0800D2C8:
	ldr r1, [pc, #12]
	ldrb r0, [r0, #1]
	lsls r0, r0, #4
	adds r1, #8
	adds r0, r0, r1
	ldr r0, [r0, #0]
	bx lr
	.2byte 0x0000
	.4byte 0x02011F1C

	.thumb
	.align 1, 0
	.global sub_0800D2DC
	.thumb_func
sub_0800D2DC:
	ldr r1, [pc, #12]
	ldrb r0, [r0, #1]
	lsls r0, r0, #4
	adds r1, #8
	adds r0, r0, r1
	ldr r0, [r0, #0]
	bx lr
	.2byte 0x0000
	.4byte 0x02011F1C

	.thumb
	.align 1, 0
	.global sub_0800D2F0
	.thumb_func
sub_0800D2F0:
	ldr r1, [pc, #8]
	ldrb r0, [r0, #1]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldrb r0, [r0, #5]
	bx lr
	.4byte 0x02011F1C

	.thumb
	.align 1, 0
	.global sub_0800D300
	.thumb_func
sub_0800D300:
	ldr r1, [pc, #8]
	ldrb r0, [r0, #1]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldrb r0, [r0, #6]
	bx lr
	.4byte 0x02011F1C

	.thumb
	.align 1, 0
	.global sub_0800D310
	.thumb_func
sub_0800D310:
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	movs r1, #208
	adds r6, r0, #0
	muls r6, r1
	ldr r1, [pc, #108]
	adds r6, r6, r1
	lsls r4, r0, #1
	adds r4, r4, r0
	lsls r4, r4, #4
	ldr r5, [pc, #100]
	adds r7, r4, r5
	movs r0, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_0800F0C0
	ldr r3, [pc, #92]
	ldr r0, [pc, #92]
	str r0, [sp, #0]
	adds r0, r7, #0
	movs r1, #0
	adds r2, r3, #0
	bl sub_0800F0F0
	movs r0, #10
	str r0, [sp, #0]
	adds r0, r7, #0
	movs r1, #0
	movs r2, #3
	movs r3, #6
	bl sub_0800F104
	adds r5, #24
	adds r7, r4, r5
	movs r0, #1
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_0800F0C0
	ldr r3, [pc, #52]
	ldr r0, [pc, #56]
	str r0, [sp, #0]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #0
	bl sub_0800F0F0
	movs r0, #0
	str r0, [sp, #0]
	adds r0, r7, #0
	movs r1, #0
	movs r2, #1
	movs r3, #6
	bl sub_0800F104
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.4byte 0x03001F14
	.4byte 0x03002264
	.4byte 0x0000FFFF
	.4byte 0x0200777D
	.4byte 0x000003E7
	.4byte 0x02007B6D

	.thumb
	.align 1, 0
	.global sub_0800D3A0
	.thumb_func
sub_0800D3A0:
	push {lr}
	movs r2, #100
	muls r0, r2
	ldr r2, [pc, #24]
	adds r0, r0, r2
	ldr r2, [pc, #24]
	lsls r1, r1, #4
	adds r1, r1, r2
	ldr r1, [r1, #0]
	movs r2, #0
	movs r3, #0
	bl sub_08005710
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x03002324
	.4byte 0x02011F1C

	.thumb
	.align 1, 0
	.global sub_0800D3C8
	.thumb_func
sub_0800D3C8:
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	movs r0, #208
	adds r3, r5, #0
	muls r3, r0
	ldr r0, [pc, #56]
	adds r3, r3, r0
	adds r0, r3, #0
	adds r0, #79
	strb r4, [r0, #0]
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #4
	lsls r1, r4, #1
	adds r1, r1, r4
	lsls r1, r1, #3
	ldr r2, [pc, #40]
	adds r1, r1, r2
	adds r0, r0, r1
	str r0, [r3, #80]
	bl sub_0800F0E4
	movs r0, #100
	muls r0, r5
	ldr r1, [pc, #28]
	adds r0, r0, r1
	ldr r1, [pc, #28]
	lsls r4, r4, #4
	adds r4, r4, r1
	ldr r1, [r4, #0]
	bl sub_08005828
	pop {r4, r5}
	pop {r0}
	bx r0
	.4byte 0x03001F14
	.4byte 0x03002264
	.4byte 0x03002324
	.4byte 0x02011F1C

	.thumb
	.align 1, 0
	.global sub_0800D420
	.thumb_func
sub_0800D420:
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [pc, #72]
	adds r2, r4, #0
	adds r2, #79
	ldrb r3, [r4, #0]
	lsls r1, r3, #1
	ldrb r2, [r2, #0]
	adds r1, r2, r1
	adds r1, r1, r0
	ldrb r0, [r1, #0]
	cmp r0, #0
	beq .L0800D478
	ldr r0, [r4, #80]
	bl sub_0800D2F0
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0800D450
	ldrb r0, [r4, #4]
	cmp r0, #3
	beq .L0800D478
	cmp r0, #5
	beq .L0800D478
.L0800D450:
	ldr r0, [r4, #80]
	bl sub_0800F118
	lsls r0, r0, #24
	cmp r0, #0
	beq .L0800D478
	movs r0, #100
	ldrb r4, [r4, #0]
	muls r0, r4
	ldr r1, [pc, #16]
	adds r0, r0, r1
	bl sub_08005AC0
	movs r0, #1
	b .L0800D47A
	movs r0, r0
	movs r2, #84
	lsls r0, r0, #12
	movs r3, #36
	lsls r0, r0, #12
.L0800D478:
	movs r0, #0
.L0800D47A:
	pop {r4}
	pop {r1}
	bx r1

	.thumb
	.align 1, 0
	.global sub_0800D480
	.thumb_func
sub_0800D480:
	push {lr}
	adds r3, r0, #0
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #4
	lsls r3, r1, #1
	adds r3, r3, r1
	lsls r3, r3, #3
	ldr r1, [pc, #12]
	adds r3, r3, r1
	adds r0, r0, r3
	adds r1, r2, #0
	bl sub_0800F1C8
	pop {r0}
	bx r0
	.4byte 0x03002264

	.thumb
	.align 1, 0
	.global sub_0800D4A4
	.thumb_func
sub_0800D4A4:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	movs r0, #208
	mov r1, r8
	muls r1, r0
	ldr r0, [pc, #68]
	adds r6, r1, r0
	movs r0, #100
	mov r1, r8
	muls r1, r0
	ldr r0, [pc, #60]
	adds r5, r1, r0
	adds r7, r6, #0
	adds r7, #84
	adds r0, r7, #0
	bl sub_08005BA0
	adds r1, r0, #0
	adds r0, r5, #0
	bl sub_08005A94
	ldr r0, [r6, #80]
	bl sub_0800F1B8
	lsls r0, r0, #24
	cmp r0, #0
	beq .L0800D50C
	ldr r0, [pc, #32]
	adds r1, r6, #0
	adds r1, #79
	ldrb r1, [r1, #0]
	lsls r1, r1, #4
	adds r1, r1, r0
	ldrb r0, [r1, #4]
	cmp r0, #0
	bne .L0800D504
	adds r0, r5, #0
	bl sub_08005B18
	b .L0800D53A
	subs r4, r2, #4
	lsls r0, r0, #12
	movs r3, #36
	lsls r0, r0, #12
	subs r4, r3, #4
	lsls r1, r0, #8
.L0800D504:
	adds r0, r5, #0
	bl sub_08005AD8
	b .L0800D53A
.L0800D50C:
	adds r0, r6, #0
	adds r0, #94
	ldrh r4, [r0, #0]
	adds r0, r5, #0
	bl sub_08005B38
	cmp r4, r0
	bhi .L0800D52C
	adds r0, r7, #0
	bl sub_08005BA4
	adds r1, r0, #0
	adds r0, r5, #0
	bl sub_08005A70
	b .L0800D53A
.L0800D52C:
	adds r0, r5, #0
	bl sub_08005B38
	adds r1, r0, #0
	adds r0, r5, #0
	bl sub_08005A70
.L0800D53A:
	ldrb r0, [r6, #3]
	cmp r0, #0
	beq .L0800D594
	adds r0, r6, #0
	adds r0, #84
	ldr r1, [r6, #44]
	asrs r1, r1, #8
	ldr r2, [r6, #48]
	asrs r2, r2, #8
	bl sub_08006234
	lsls r0, r0, #24
	cmp r0, #0
	beq .L0800D594
	ldr r0, [pc, #52]
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq .L0800D594
	movs r0, #100
	mov r4, r8
	muls r4, r0
	ldr r0, [pc, #40]
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_08005A18
	adds r0, r6, #0
	adds r0, #86
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r0, #2
	movs r3, #0
	ldrsh r2, [r0, r3]
	adds r0, #2
	ldrb r3, [r0, #0]
	adds r3, #1
	adds r0, r4, #0
	bl sub_08005A98
	b .L0800D5A4
	movs r0, r0
	movs r2, #84
	lsls r0, r0, #12
	movs r3, #36
	lsls r0, r0, #12
.L0800D594:
	movs r0, #100
	mov r1, r8
	muls r1, r0
	adds r0, r1, #0
	ldr r1, [pc, #32]
	adds r0, r0, r1
	bl sub_08005A20
.L0800D5A4:
	movs r0, #100
	mov r2, r8
	muls r2, r0
	adds r0, r2, #0
	ldr r1, [pc, #16]
	adds r0, r0, r1
	bl sub_08005834
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x03002324

	.thumb
	.align 1, 0
	.global sub_0800D5C4
	.thumb_func
sub_0800D5C4:
	movs r1, #0
	ldr r0, [pc, #16]
	movs r2, #0
	adds r0, #2
.L0800D5CC:
	strb r2, [r0, #0]
	adds r0, #124
	adds r1, #1
	cmp r1, #8
	bne .L0800D5CC
	bx lr
	.4byte 0x030024B4

	.thumb
	.align 1, 0
	.global sub_0800D5DC
	.thumb_func
sub_0800D5DC:
	adds r3, r0, #0
	movs r2, #0
	ldr r1, [pc, #12]
.L0800D5E2:
	ldrb r0, [r1, #2]
	cmp r0, #0
	bne .L0800D5F4
	str r1, [r3, #0]
	movs r0, #1
	b .L0800D5FE
	movs r0, r0
	movs r4, #180
	lsls r0, r0, #12
.L0800D5F4:
	adds r1, #124
	adds r2, #1
	cmp r2, #8
	bne .L0800D5E2
	movs r0, #0
.L0800D5FE:
	bx lr

	.thumb
	.align 1, 0
	.global sub_0800D600
	.thumb_func
sub_0800D600:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r6, r0, #0
	mov r8, r1
	adds r5, r2, #0
	ldr r0, [sp, #32]
	ldr r1, [sp, #36]
	lsls r3, r3, #24
	lsrs r3, r3, #24
	mov r9, r3
	lsls r0, r0, #16
	lsrs r4, r0, #16
	lsls r1, r1, #16
	lsrs r7, r1, #16
	mov r0, sp
	bl sub_0800D5DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0800D632
	movs r0, #0
	b .L0800D67E
.L0800D632:
	ldr r0, [sp, #0]
	movs r3, #0
	movs r2, #1
	strb r2, [r0, #2]
	ldr r0, [sp, #0]
	strb r5, [r0, #0]
	ldr r1, [sp, #0]
	lsls r0, r6, #8
	str r0, [r1, #12]
	ldr r1, [sp, #0]
	mov r5, r8
	lsls r0, r5, #8
	str r0, [r1, #16]
	ldr r1, [sp, #0]
	movs r0, #39
	strb r0, [r1, #20]
	ldr r0, [sp, #0]
	strb r2, [r0, #3]
	ldr r0, [sp, #0]
	strb r7, [r0, #1]
	ldr r0, [sp, #0]
	mov r1, r9
	strb r1, [r0, #4]
	ldr r1, [sp, #0]
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	strh r0, [r1, #10]
	ldr r0, [sp, #0]
	strh r3, [r0, #6]
	ldr r2, [sp, #0]
	adds r0, r2, #0
	adds r0, #24
	ldr r1, [pc, #20]
	ldrb r2, [r2, #0]
	bl sub_08005710
	movs r0, #1
.L0800D67E:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.4byte 0x02025190

	.thumb
	.align 1, 0
	.global sub_0800D690
	.thumb_func
sub_0800D690:
	push {lr}
	movs r1, #0
	strb r1, [r0, #2]
	adds r0, #24
	bl sub_080059E8
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_0800D6A0
	.thumb_func
sub_0800D6A0:
	push {r4, lr}
	adds r4, r1, #0
	cmp r0, #1
	beq .L0800D6C0
	cmp r0, #1
	bgt .L0800D6B2
	cmp r0, #0
	beq .L0800D6B8
	b .L0800D724
.L0800D6B2:
	cmp r0, #2
	beq .L0800D6F8
	b .L0800D724
.L0800D6B8:
	adds r1, r4, #0
	adds r1, #76
	movs r0, #255
	b .L0800D6DC
.L0800D6C0:
	ldr r2, [pc, #48]
	ldrb r1, [r4, #0]
	lsls r0, r1, #1
	adds r0, r0, r2
	ldrh r1, [r0, #0]
	adds r1, #5
	strh r1, [r0, #0]
	ldrb r1, [r4, #0]
	lsls r0, r1, #1
	adds r1, r0, r2
	ldrh r2, [r1, #0]
	cmp r2, #99
	bls .L0800D6DE
	movs r0, #99
.L0800D6DC:
	strh r0, [r1, #0]
.L0800D6DE:
	bl sub_08008A2C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	ldrb r4, [r4, #0]
	cmp r4, r0
	bne .L0800D724
	movs r0, #3
	bl orphan_GAX_fx
	b .L0800D724
	movs r2, #92
	lsls r0, r0, #12
.L0800D6F8:
	ldr r0, [pc, #48]
	ldrb r2, [r4, #0]
	lsls r1, r2, #1
	adds r0, #1
	adds r1, r1, r0
	movs r0, #1
	strb r0, [r1, #0]
	ldrb r0, [r4, #0]
	movs r1, #1
	movs r2, #75
	bl sub_0800D480
	bl sub_08008A2C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	ldrb r4, [r4, #0]
	cmp r4, r0
	bne .L0800D724
	movs r0, #3
	bl orphan_GAX_fx
.L0800D724:
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x03002254

	.thumb
	.align 1, 0
	.global sub_0800D730
	.thumb_func
sub_0800D730:
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrh r1, [r5, #6]
	movs r2, #6
	ldrsh r0, [r5, r2]
	cmp r0, #0
	bgt .L0800D778
	movs r6, #0
.L0800D740:
	movs r0, #208
	adds r1, r6, #0
	muls r1, r0
	ldr r0, [pc, #44]
	adds r4, r1, r0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq .L0800D76A
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08006750
	lsls r0, r0, #24
	cmp r0, #0
	beq .L0800D76A
	ldrb r0, [r5, #0]
	adds r1, r4, #0
	bl sub_0800D6A0
	ldrh r0, [r5, #10]
	strh r0, [r5, #6]
.L0800D76A:
	adds r6, #1
	cmp r6, #4
	bne .L0800D740
	b .L0800D77C
	movs r0, r0
	subs r4, r2, #4
	lsls r0, r0, #12
.L0800D778:
	subs r0, r1, #1
	strh r0, [r5, #6]
.L0800D77C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_0800D784
	.thumb_func
sub_0800D784:
	push {r4, r5, lr}
	movs r5, #0
	movs r4, #0
.L0800D78A:
	ldr r0, [pc, #28]
	adds r1, r4, r0
	ldrb r0, [r1, #2]
	cmp r0, #0
	beq .L0800D79A
	adds r0, r1, #0
	bl sub_0800D730
.L0800D79A:
	adds r4, #124
	adds r5, #1
	cmp r5, #8
	bne .L0800D78A
	pop {r4, r5}
	pop {r0}
	bx r0
	.4byte 0x030024B4

	.thumb
	.align 1, 0
	.global sub_0800D7AC
	.thumb_func
sub_0800D7AC:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r7, #0
	movs r6, #0
	ldr r0, [pc, #92]
	mov r8, r0
.L0800D7BA:
	ldr r0, [pc, #92]
	adds r5, r6, r0
	ldrb r0, [r5, #2]
	cmp r0, #0
	beq .L0800D828
	adds r4, r5, #0
	adds r4, #24
	ldr r1, [r5, #12]
	asrs r1, r1, #8
	ldr r2, [r5, #16]
	asrs r2, r2, #8
	adds r0, r4, #0
	bl sub_08006234
	lsls r0, r0, #24
	cmp r0, #0
	beq .L0800D81C
	ldrb r0, [r5, #4]
	cmp r0, #0
	beq .L0800D7EA
	movs r1, #6
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bgt .L0800D81C
.L0800D7EA:
	adds r0, r4, #0
	bl sub_08005A18
	adds r0, r4, #0
	bl sub_08005B18
	ldr r1, [r5, #12]
	asrs r1, r1, #8
	mov r2, r8
	ldr r0, [r2, #8]
	subs r1, r1, r0
	ldr r2, [r5, #16]
	asrs r2, r2, #8
	mov r3, r8
	ldr r0, [r3, #12]
	subs r2, r2, r0
	ldrb r3, [r5, #20]
	adds r0, r4, #0
	bl sub_08005A98
	b .L0800D822
	asrs r0, r6, #7
	lsls r0, r0, #12
	movs r4, #180
	lsls r0, r0, #12
.L0800D81C:
	adds r0, r4, #0
	bl sub_08005A20
.L0800D822:
	adds r0, r4, #0
	bl sub_08005834
.L0800D828:
	adds r6, #124
	adds r7, #1
	cmp r7, #8
	bne .L0800D7BA
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_0800D83C
	.thumb_func
sub_0800D83C:
	push {lr}
	ldr r1, [pc, #36]
	ldr r2, [pc, #36]
	adds r0, r2, #0
	strh r0, [r1, #0]
	bl sub_08007D48
	ldr r1, [pc, #32]
	ldr r2, [pc, #32]
	adds r0, r2, #0
	strh r0, [r1, #0]
	ldr r1, [pc, #32]
	movs r0, #8
	strh r0, [r1, #0]
	ldr r1, [pc, #28]
	movs r0, #1
	strh r0, [r1, #0]
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x04000204
	.4byte 0x00004014
	.4byte 0x04000200
	.4byte 0x00002001
	.4byte 0x04000004
	.4byte 0x04000208

	.thumb
	.align 1, 0
	.global sub_0800D87C
	.thumb_func
sub_0800D87C:
	push {r4, r5, r6, lr}
	bl sub_08012308
	bl sub_0800EA0C
	bl sub_0800739C
	ldr r0, [pc, #224]
	movs r1, #31
	bl sub_0800E634
	bl sub_080077AC
	movs r0, #14
	bl sub_0800E66C
	ldr r6, [pc, #208]
	movs r1, #248
	lsls r1, r1, #5
	adds r0, r1, #0
	strh r0, [r6, #0]
	movs r5, #128
	lsls r5, r5, #19
	movs r2, #128
	lsls r2, r2, #1
	adds r4, r2, #0
	strh r4, [r5, #0]
	movs r1, #160
	lsls r1, r1, #19
	movs r2, #213
	lsls r2, r2, #7
	adds r0, r2, #0
	strh r0, [r1, #0]
	ldr r2, [pc, #180]
	movs r0, #11
	movs r1, #7
	bl sub_0800E6FC
	ldr r2, [pc, #172]
	movs r0, #9
	movs r1, #8
	bl sub_0800E6FC
	bl sub_08007F2C
	ldr r1, [pc, #164]
	movs r0, #0
	bl sub_08007DC0
	bl sub_0800F234
	bl sub_0800F234
	bl sub_0800F234
	bl sub_0800F234
	bl sub_0800F234
	ldr r1, [pc, #140]
	adds r0, r1, #0
	strh r0, [r6, #0]
	strh r4, [r5, #0]
	bl sub_0800D83C
	ldr r0, [pc, #132]
	movs r4, #0
	strh r4, [r0, #0]
	bl sub_0800828C
	ldr r1, [pc, #124]
	movs r0, #1
	strh r0, [r1, #0]
	ldr r0, [pc, #124]
	strh r4, [r0, #0]
	ldr r4, [pc, #124]
	movs r2, #128
	lsls r2, r2, #6
	adds r0, r2, #0
	strh r0, [r4, #0]
	ldrh r0, [r4, #0]
	ldr r2, [pc, #116]
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4, #0]
	ldr r1, [pc, #112]
	movs r0, #7
	bl sub_08007DC0
	movs r0, #7
	bl sub_08007D98
	bl sub_0800F234
	bl sub_0800F234
	ldr r1, [pc, #92]
	ldrh r0, [r4, #0]
	lsrs r0, r0, #4
	movs r2, #3
	ands r0, r2
	strb r0, [r1, #5]
	movs r0, #1
	negs r0, r0
	str r0, [r1, #0]
	ldrh r0, [r4, #0]
	lsrs r0, r0, #4
	ands r0, r2
	adds r0, #1
	strb r0, [r1, #4]
	movs r6, #1
	bl sub_08007E50
	bl sub_0800E184
	bl sub_0800E7E0
	movs r4, #0
	b .L0800DA8C
	movs r0, r0
	.2byte 0xffe8 @ .raw
	lsls r0, r0, #8
	movs r0, r1
	lsls r0, r0, #16
	subs r4, r7, #4
	lsls r1, r0, #8
	subs r4, r0, #5
	lsls r1, r0, #8
	cmp r2, #73
	lsls r0, r0, #8
	subs r1, r0, #4
	movs r0, r0
	lsls r2, r5, #4
	lsls r0, r0, #16
	lsls r0, r1, #8
	lsls r0, r0, #16
	lsls r4, r6, #4
	lsls r0, r0, #16
	lsls r0, r5, #4
	lsls r0, r0, #16
	ands r3, r0
	movs r0, r0
	adds r5, #1
	lsls r0, r0, #8
	asrs r4, r3, #23
	lsls r0, r0, #12
.L0800D9A0:
	bl sub_0800F234
	ldr r0, [pc, #40]
	ldr r1, [pc, #44]
	bl sub_08008574
	adds r4, #1
	movs r0, #31
	ands r0, r4
	cmp r0, #16
	bls .L0800D9D8
	movs r0, #2
	movs r1, #10
	movs r2, #27
	movs r3, #0
	bl sub_0800E798
	movs r0, #5
	movs r1, #11
	movs r2, #27
	movs r3, #0
	bl sub_0800E798
	b .L0800D9EC
	cmp r0, #148
	lsls r0, r0, #12
	strb r0, [r4, #1]
	lsls r0, r0, #12
.L0800D9D8:
	movs r0, #2
	movs r1, #10
	ldr r2, [pc, #36]
	bl sub_0800E6FC
	movs r0, #5
	movs r1, #11
	ldr r2, [pc, #32]
	bl sub_0800E6FC
.L0800D9EC:
	ldr r1, [pc, #28]
	ldr r0, [r1, #0]
	adds r0, #1
	str r0, [r1, #0]
	cmp r0, #120
	bls .L0800DA8C
	movs r0, #1
	movs r1, #192
	movs r2, #10
	bl sub_0800E0EC
	b .L0800DA14
	subs r0, r2, #5
	lsls r1, r0, #8
	subs r4, r5, #5
	lsls r1, r0, #8
	strb r4, [r0, #0]
	lsls r0, r0, #12
.L0800DA10:
	bl sub_0800F234
.L0800DA14:
	bl sub_0800E12C
	adds r4, r0, #0
	cmp r4, #0
	bne .L0800DA10
	bl sub_0800EA0C
	bl sub_0800739C
	ldr r0, [pc, #76]
	strh r4, [r0, #0]
	ldr r1, [pc, #76]
	ldr r2, [pc, #76]
	adds r0, r2, #0
	strh r0, [r1, #0]
	subs r1, #8
	movs r2, #138
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1, #0]
	bl sub_0800E7E0
	movs r1, #160
	lsls r1, r1, #19
	movs r2, #213
	lsls r2, r2, #7
	adds r0, r2, #0
	strh r0, [r1, #0]
	bl sub_0800E184
	bl sub_0800F234
	movs r0, #9
	movs r1, #6
	ldr r2, [pc, #36]
	bl sub_0800E6FC
	movs r0, #1
	movs r1, #13
	ldr r2, [pc, #32]
	bl sub_0800E6FC
	movs r0, #7
	movs r1, #14
	ldr r2, [pc, #24]
	bl sub_0800E6FC
.L0800DA72:
	b .L0800DA72
	lsls r0, r2, #1
	lsls r0, r0, #16
	movs r0, r1
	lsls r0, r0, #16
	subs r1, r0, #4
	movs r0, r0
	subs r4, r0, #6
	lsls r1, r0, #8
	subs r0, r2, #6
	lsls r1, r0, #8
	subs r4, r5, #6
	lsls r1, r0, #8
.L0800DA8C:
	ldr r0, [pc, #48]
	ldrh r0, [r0, #0]
	cmp r0, #222
	beq .L0800DA96
	b .L0800D9A0
.L0800DA96:
	ldr r1, [pc, #44]
	ldr r2, [pc, #36]
	ldrh r0, [r2, #6]
	strb r0, [r1, #4]
	cmp r6, #0
	bne .L0800DAA4
	b .L0800DBE6
.L0800DAA4:
	adds r5, r2, #0
.L0800DAA6:
	ldr r1, [pc, #32]
	ldrh r0, [r5, #4]
	strh r0, [r1, #0]
	ldr r1, [pc, #28]
	ldrh r0, [r5, #8]
	strb r0, [r1, #0]
	movs r0, #1
	movs r1, #192
	movs r2, #3
	bl sub_0800E0EC
	b .L0800DAD4
	movs r0, r0
	strb r0, [r4, #1]
	lsls r0, r0, #12
	asrs r4, r3, #23
	lsls r0, r0, #12
	strb r0, [r4, #2]
	lsls r0, r0, #12
	strb r2, [r4, #2]
	lsls r0, r0, #12
.L0800DAD0:
	bl sub_0800F234
.L0800DAD4:
	bl sub_0800E12C
	cmp r0, #0
	bne .L0800DAD0
	ldrh r0, [r5, #2]
	ldr r1, [pc, #56]
	ldrh r1, [r1, #0]
	bl sub_0800971C
.L0800DAE6:
	bl sub_0800F234
	ldr r0, [pc, #48]
	ldr r1, [pc, #48]
	bl sub_08008574
	adds r4, #1
	movs r0, #31
	ands r0, r4
	cmp r0, #16
	bls .L0800DB24
	movs r0, #0
	movs r1, #14
	movs r2, #27
	movs r3, #0
	bl sub_0800E798
	movs r0, #0
	movs r1, #15
	movs r2, #27
	movs r3, #0
	bl sub_0800E798
	b .L0800DB38
	movs r0, r0
	strb r0, [r4, #2]
	lsls r0, r0, #12
	cmp r0, #148
	lsls r0, r0, #12
	strb r0, [r4, #1]
	lsls r0, r0, #12
.L0800DB24:
	movs r0, #0
	movs r1, #14
	ldr r2, [pc, #36]
	bl sub_0800E6FC
	movs r0, #0
	movs r1, #15
	ldr r2, [pc, #32]
	bl sub_0800E6FC
.L0800DB38:
	ldr r1, [pc, #28]
	ldr r0, [r1, #0]
	adds r0, #1
	str r0, [r1, #0]
	cmp r0, #120
	bls .L0800DBD8
	movs r0, #1
	movs r1, #192
	movs r2, #10
	bl sub_0800E0EC
	b .L0800DB60
	subs r4, r7, #6
	lsls r1, r0, #8
	subs r4, r3, #7
	lsls r1, r0, #8
	strb r4, [r0, #0]
	lsls r0, r0, #12
.L0800DB5C:
	bl sub_0800F234
.L0800DB60:
	bl sub_0800E12C
	adds r4, r0, #0
	cmp r4, #0
	bne .L0800DB5C
	bl sub_0800EA0C
	bl sub_0800739C
	ldr r0, [pc, #76]
	strh r4, [r0, #0]
	ldr r1, [pc, #76]
	ldr r2, [pc, #76]
	adds r0, r2, #0
	strh r0, [r1, #0]
	subs r1, #8
	movs r2, #138
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1, #0]
	bl sub_0800E7E0
	movs r1, #160
	lsls r1, r1, #19
	movs r2, #213
	lsls r2, r2, #7
	adds r0, r2, #0
	strh r0, [r1, #0]
	bl sub_0800E184
	bl sub_0800F234
	movs r0, #9
	movs r1, #6
	ldr r2, [pc, #36]
	bl sub_0800E6FC
	movs r0, #1
	movs r1, #13
	ldr r2, [pc, #32]
	bl sub_0800E6FC
	movs r0, #7
	movs r1, #14
	ldr r2, [pc, #24]
	bl sub_0800E6FC
.L0800DBBE:
	b .L0800DBBE
	lsls r0, r2, #1
	lsls r0, r0, #16
	movs r0, r1
	lsls r0, r0, #16
	subs r1, r0, #4
	movs r0, r0
	subs r4, r0, #6
	lsls r1, r0, #8
	subs r0, r2, #6
	lsls r1, r0, #8
	subs r4, r5, #6
	lsls r1, r0, #8
.L0800DBD8:
	ldrh r0, [r5, #0]
	cmp r0, #222
	beq .L0800DBE0
	b .L0800DAE6
.L0800DBE0:
	cmp r6, #0
	beq .L0800DBE6
	b .L0800DAA6
.L0800DBE6:
	movs r0, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_0800DBF0
	.thumb_func
sub_0800DBF0:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	mov r8, r0
	adds r7, r1, #0
	movs r5, #0
	ldr r3, [pc, #108]
	strh r5, [r3, #0]
	ldr r2, [pc, #108]
	ldrh r1, [r2, #0]
	ldr r0, [pc, #108]
	ands r0, r1
	strh r0, [r2, #0]
	movs r4, #1
	strh r4, [r3, #0]
	str r5, [sp, #0]
	ldr r6, [pc, #100]
	ldr r2, [pc, #100]
	mov r0, sp
	adds r1, r6, #0
	bl sub_0800F220
	ldr r1, [pc, #96]
	ldr r0, [pc, #96]
	str r0, [r1, #0]
	str r7, [r6, #4]
	movs r0, #1
	negs r0, r0
	str r0, [r6, #8]
	mov r0, r8
	cmp r0, #0
	beq .L0800DC5E
	ldr r0, [pc, #84]
	str r5, [r0, #0]
	strb r4, [r6, #0]
	adds r1, r7, #0
	movs r2, #128
	lsls r2, r2, #5
.L0800DC3E:
	ldmia r1!, {r0}
	adds r5, r5, r0
	subs r2, #1
	cmp r2, #0
	bne .L0800DC3E
	ldr r1, [pc, #44]
	mvns r0, r5
	str r0, [r1, #12]
	ldr r1, [pc, #48]
	movs r2, #128
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1, #0]
	adds r2, #1
	adds r0, r2, #0
	strh r0, [r1, #0]
.L0800DC5E:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x04000208
	.4byte 0x04000200
	.4byte 0x0000FF3F
	.4byte 0x03000640
	.4byte 0x05000006
	.4byte 0x04000128
	.4byte 0x00002003
	.4byte 0x0400010C

	.thumb
	.align 1, 0
	.global sub_0800DC8C
	.thumb_func
sub_0800DC8C:
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldr r0, [pc, #20]
	ldrb r1, [r0, #1]
	adds r3, r0, #0
	cmp r1, #4
	bls .L0800DC9C
	b .L0800DE7E
.L0800DC9C:
	lsls r0, r1, #2
	ldr r1, [pc, #12]
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	movs r0, r0
	lsls r0, r0, #25
	lsls r0, r0, #12
	movs r0, #20
	lsls r1, r0, #8
	ldr r2, [pc, #16]
	ldr r0, [r2, #0]
	ldr r1, [pc, #16]
	ands r0, r1
	cmp r0, #0
	bne .L0800DCBE
	b .L0800DE7E
.L0800DCBE:
	movs r0, #1
	strb r0, [r2, #1]
	b .L0800DE7E
	lsls r0, r0, #25
	lsls r0, r0, #12
	lsls r7, r7, #3
	lsls r7, r7, #3
	ldr r0, [pc, #16]
	ldrb r1, [r0, #0]
	cmp r1, #1
	bne .L0800DCE4
	ldrb r0, [r0, #2]
	cmp r0, #5
	bhi .L0800DCDC
	b .L0800DE7E
.L0800DCDC:
	b .L0800DCEE
	movs r0, r0
	lsls r0, r0, #25
	lsls r0, r0, #12
.L0800DCE4:
	ldr r1, [pc, #60]
	movs r2, #128
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1, #0]
.L0800DCEE:
	ldr r0, [pc, #56]
	movs r5, #0
	str r5, [r0, #0]
	ldr r1, [pc, #52]
	movs r0, #192
	strh r0, [r1, #0]
	ldr r0, [pc, #52]
	ldrb r4, [r0, #0]
	cmp r4, #1
	bne .L0800DD40
	ldr r2, [pc, #32]
	ldrh r0, [r2, #0]
	movs r1, #128
	orrs r0, r1
	strh r0, [r2, #0]
	ldr r1, [pc, #36]
	ldr r0, [pc, #40]
	str r0, [r1, #0]
	ldr r3, [pc, #40]
	strh r5, [r3, #0]
	adds r2, #216
	ldrh r0, [r2, #0]
	movs r1, #64
	orrs r0, r1
	strh r0, [r2, #0]
	strh r4, [r3, #0]
	b .L0800DD60
	lsls r0, r5, #4
	lsls r0, r0, #16
	lsls r0, r4, #4
	lsls r0, r0, #16
	lsls r2, r0, #8
	lsls r0, r0, #16
	lsls r0, r0, #25
	lsls r0, r0, #12
	lsls r4, r1, #4
	lsls r0, r0, #16
	.2byte 0xf318 @ .raw
	lsls r0, r0, #3
	lsls r0, r1, #8
	lsls r0, r0, #16
.L0800DD40:
	ldr r2, [pc, #40]
	ldrh r0, [r2, #0]
	movs r3, #129
	lsls r3, r3, #7
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2, #0]
	ldr r3, [pc, #32]
	strh r5, [r3, #0]
	adds r2, #216
	ldrh r0, [r2, #0]
	movs r1, #128
	orrs r0, r1
	strh r0, [r2, #0]
	movs r0, #1
	strh r0, [r3, #0]
.L0800DD60:
	ldr r0, [pc, #16]
	movs r1, #0
	strb r1, [r0, #2]
	movs r1, #2
	strb r1, [r0, #1]
	b .L0800DE7E
	lsls r0, r5, #4
	lsls r0, r0, #16
	lsls r0, r1, #8
	lsls r0, r0, #16
	lsls r0, r0, #25
	lsls r0, r0, #12
	ldr r0, [pc, #16]
	ldr r6, [r0, #8]
	adds r4, r6, #0
	movs r0, #128
	lsls r0, r0, #5
	cmp r6, r0
	ble .L0800DD90
	adds r4, r0, #0
	b .L0800DD96
	movs r0, r0
	lsls r0, r0, #25
	lsls r0, r0, #12
.L0800DD90:
	cmp r6, #0
	bge .L0800DD96
	movs r4, #0
.L0800DD96:
	cmp r2, #0
	beq .L0800DD9C
	str r4, [r2, #0]
.L0800DD9C:
	ldr r1, [pc, #92]
	ldrb r0, [r1, #0]
	cmp r0, #1
	beq .L0800DDE2
	ldr r0, [r1, #20]
	cmp r0, r4
	bge .L0800DDC4
	adds r3, r1, #0
	ldr r5, [r3, #4]
.L0800DDAE:
	ldr r2, [r3, #20]
	lsls r0, r2, #2
	adds r0, r0, r5
	ldr r1, [r3, #16]
	ldr r0, [r0, #0]
	adds r1, r1, r0
	str r1, [r3, #16]
	adds r2, #1
	str r2, [r3, #20]
	cmp r2, r4
	blt .L0800DDAE
.L0800DDC4:
	movs r0, #128
	lsls r0, r0, #5
	cmp r6, r0
	ble .L0800DDEA
	ldr r2, [pc, #44]
	ldr r0, [r2, #12]
	ldr r1, [r2, #16]
	adds r0, r0, r1
	str r0, [r2, #12]
	movs r1, #1
	negs r1, r1
	cmp r0, r1
	bne .L0800DDE2
	movs r0, #1
	strb r0, [r2, #3]
.L0800DDE2:
	movs r0, #128
	lsls r0, r0, #5
	cmp r6, r0
	bgt .L0800DDF2
.L0800DDEA:
	ldr r0, [pc, #16]
	ldrb r0, [r0, #2]
	cmp r0, #74
	bne .L0800DE7E
.L0800DDF2:
	ldr r1, [pc, #8]
	movs r0, #3
	strb r0, [r1, #1]
	b .L0800DE7E
	movs r0, r0
	lsls r0, r0, #25
	lsls r0, r0, #12
	ldr r3, [pc, #80]
	movs r4, #0
	strh r4, [r3, #0]
	ldr r2, [pc, #80]
	ldrh r1, [r2, #0]
	ldr r0, [pc, #80]
	ands r0, r1
	strh r0, [r2, #0]
	movs r0, #1
	strh r0, [r3, #0]
	ldr r1, [pc, #72]
	movs r2, #128
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1, #0]
	movs r0, #128
	lsls r0, r0, #6
	str r0, [r1, #0]
	adds r0, #3
	str r0, [r1, #0]
	ldr r2, [pc, #56]
	movs r0, #0
	movs r1, #0
	str r0, [r2, #0]
	str r1, [r2, #4]
	ldr r2, [pc, #52]
	ldrb r0, [r2, #0]
	cmp r0, #0
	beq .L0800DE40
	ldr r1, [pc, #48]
	movs r0, #0
	str r0, [r1, #0]
.L0800DE40:
	ldr r0, [pc, #44]
	movs r1, #192
	strh r1, [r0, #0]
	ldrb r0, [r2, #0]
	cmp r0, #0
	beq .L0800DE7A
	strb r4, [r2, #2]
	movs r0, #4
	strb r0, [r2, #1]
	b .L0800DE7E
	lsls r0, r1, #8
	lsls r0, r0, #16
	lsls r0, r0, #8
	lsls r0, r0, #16
	.2byte 0xff3f @ .raw
	movs r0, r0
	lsls r0, r5, #4
	lsls r0, r0, #16
	lsls r0, r4, #4
	lsls r0, r0, #16
	lsls r0, r0, #25
	lsls r0, r0, #12
	lsls r4, r1, #4
	lsls r0, r0, #16
	lsls r2, r0, #8
	lsls r0, r0, #16
	ldrb r3, [r3, #2]
	cmp r3, #2
	bls .L0800DE7E
.L0800DE7A:
	movs r0, #1
	b .L0800DE88
.L0800DE7E:
	ldr r1, [pc, #16]
	ldrb r0, [r1, #2]
	adds r0, #1
	strb r0, [r1, #2]
	movs r0, #0
.L0800DE88:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.2byte 0x0000
	.4byte 0x03000640

	.thumb
	.align 1, 0
	.global sub_0800DE94
	.thumb_func
sub_0800DE94:
	push {r4, lr}
	ldr r2, [pc, #24]
	ldr r4, [r2, #0]
	ldr r3, [pc, #24]
	ldrb r0, [r3, #0]
	cmp r0, #1
	beq .L0800DEBC
	ldr r0, [pc, #20]
	ldrh r1, [r0, #0]
	movs r2, #128
	orrs r1, r2
	strh r1, [r0, #0]
	b .L0800DEF6
	movs r0, r0
	lsls r0, r4, #4
	lsls r0, r0, #16
	lsls r0, r0, #25
	lsls r0, r0, #12
	lsls r0, r5, #4
	lsls r0, r0, #16
.L0800DEBC:
	ldr r1, [pc, #16]
	movs r0, #0
	strh r0, [r1, #0]
	ldr r1, [r3, #8]
	cmp r1, #0
	bge .L0800DED8
	ldr r0, [pc, #8]
	str r0, [r2, #0]
	b .L0800DF22
	movs r0, r0
	lsls r6, r1, #4
	lsls r0, r0, #16
	.2byte 0xfefe @ .raw
	.2byte 0xfefe @ .raw
.L0800DED8:
	ldr r0, [pc, #16]
	cmp r1, r0
	bgt .L0800DEF0
	ldr r0, [r3, #4]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1, #0]
	str r0, [r2, #0]
	b .L0800DF22
	movs r0, r0
	lsrs r7, r7, #31
	movs r0, r0
.L0800DEF0:
	ldr r0, [r3, #12]
	str r0, [r2, #0]
	b .L0800DF22
.L0800DEF6:
	ldr r2, [r3, #8]
	cmp r2, #0
	bge .L0800DF0C
	ldr r0, [pc, #8]
	cmp r4, r0
	beq .L0800DF22
	subs r0, r2, #1
	str r0, [r3, #8]
	b .L0800DF22
	.2byte 0xfefe @ .raw
	.2byte 0xfefe @ .raw
.L0800DF0C:
	ldr r0, [pc, #12]
	cmp r2, r0
	bgt .L0800DF20
	ldr r1, [r3, #4]
	lsls r0, r2, #2
	adds r0, r0, r1
	str r4, [r0, #0]
	b .L0800DF22
	lsrs r7, r7, #31
	movs r0, r0
.L0800DF20:
	str r4, [r3, #12]
.L0800DF22:
	ldr r2, [pc, #40]
	ldr r1, [r2, #8]
	ldr r0, [pc, #40]
	cmp r1, r0
	bgt .L0800DF46
	adds r0, r1, #1
	str r0, [r2, #8]
	ldrb r2, [r2, #0]
	cmp r2, #1
	bne .L0800DF46
	ldr r2, [pc, #28]
	ldrh r0, [r2, #0]
	movs r1, #128
	orrs r0, r1
	strh r0, [r2, #0]
	ldr r1, [pc, #20]
	movs r0, #192
	strh r0, [r1, #0]
.L0800DF46:
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x03000640
	.4byte 0x00001002
	.4byte 0x04000128
	.4byte 0x0400010E

	.thumb
	.align 1, 0
	.global sub_0800DF5C
	.thumb_func
sub_0800DF5C:
	push {lr}
	bl orphan_GAX_irq
	bl orphan_GAX_play
	ldr r1, [pc, #8]
	movs r0, #1
	strh r0, [r1, #0]
	pop {r0}
	bx r0
	.4byte 0x03007FF8

	.thumb
	.align 1, 0
	.global sub_0800DF74
	.thumb_func
sub_0800DF74:
	push {lr}
	ldr r1, [pc, #16]
	movs r0, #0
	bl sub_08007DC0
	bl orphan_GAX_stop
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x02002A49

	.thumb
	.align 1, 0
	.global sub_0800DF8C
	.thumb_func
sub_0800DF8C:
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	bl orphan_GAX_fx_status
	cmp r0, r4
	beq .L0800DFA8
	movs r0, #1
	bl orphan_GAX_fx_status
	cmp r0, r4
	beq .L0800DFA8
	movs r0, #0
	b .L0800DFAA
.L0800DFA8:
	movs r0, #1
.L0800DFAA:
	pop {r4}
	pop {r1}
	bx r1

	.thumb
	.align 1, 0
	.global sub_0800DFB0
	.thumb_func
sub_0800DFB0:
	push {r4, lr}
	bl sub_08007490
	lsls r0, r0, #16
	lsrs r0, r0, #16
	movs r2, #0
	movs r4, #1
	movs r3, #0
	ldr r1, [pc, #8]
.L0800DFC2:
	cmp r2, r0
	bcs .L0800DFD0
	strb r4, [r1, #0]
	b .L0800DFD2
	movs r0, r0
	subs r0, #228
	lsls r0, r0, #12
.L0800DFD0:
	strb r3, [r1, #0]
.L0800DFD2:
	adds r1, #1
	adds r2, #1
	cmp r2, #15
	bls .L0800DFC2
	movs r0, #0
	movs r1, #0
	ldr r2, [pc, #16]
.L0800DFE0:
	stmia r2!, {r1}
	adds r0, #1
	cmp r0, #6
	bls .L0800DFE0
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x030038F4
	.4byte 0x00804A02
	.4byte 0x60011880
	.4byte 0x00004770
	.4byte 0x030038F4

	.thumb
	.align 1, 0
	.global sub_0800E004
	.thumb_func
sub_0800E004:
	ldr r1, [pc, #8]
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0, #0]
	bx lr
	.2byte 0x0000
	.4byte 0x030038E4
	.4byte 0x18404902
	.4byte 0x70012101
	.4byte 0x00004770
	.4byte 0x030038E4

	.thumb
	.align 1, 0
	.global sub_0800E024
	.thumb_func
sub_0800E024:
	push {r4, lr}
	sub sp, #8
	adds r4, r1, #0
	bl sub_08007470
	adds r3, r0, #0
	ldrh r0, [r3, #4]
	cmp r0, #0
	beq .L0800E05C
	cmp r0, #5
	bne .L0800E05C
	ldrh r0, [r3, #6]
	cmp r0, #2
	bhi .L0800E056
	ldrh r0, [r3, #0]
	ldrh r1, [r3, #2]
	ldrh r2, [r3, #6]
	ldrb r3, [r3, #9]
	str r3, [sp, #0]
	lsls r3, r4, #16
	lsrs r3, r3, #16
	str r3, [sp, #4]
	movs r3, #1
	bl sub_0800D600
.L0800E056:
	adds r0, r4, #0
	bl sub_0800E004
.L0800E05C:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_0800E064
	.thumb_func
sub_0800E064:
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	bl sub_08007490
	lsls r0, r0, #16
	lsrs r5, r0, #16
	movs r4, #0
	cmp r4, r5
	bcs .L0800E08E
.L0800E076:
	ldr r0, [pc, #28]
	adds r0, r4, r0
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne .L0800E088
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_0800E024
.L0800E088:
	adds r4, #1
	cmp r4, r5
	bcc .L0800E076
.L0800E08E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.4byte 0x030038E4

	.thumb
	.align 1, 0
	.global sub_0800E098
	.thumb_func
sub_0800E098:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	mov r8, r0
	mov r9, r1
	bl sub_08007490
	lsls r0, r0, #16
	lsrs r6, r0, #16
	movs r7, #0
	movs r5, #0
	cmp r5, r6
	bcs .L0800E0DE
.L0800E0B4:
	mov r0, r8
	adds r1, r5, #0
	bl sub_08007470
	adds r4, r0, #0
	ldr r1, [r4, #4]
	movs r0, #128
	lsls r0, r0, #9
	cmp r1, r0
	bne .L0800E0D8
	cmp r7, r9
	bne .L0800E0D6
	adds r0, r5, #0
	bl sub_0800E004
	adds r0, r4, #0
	b .L0800E0E0
.L0800E0D6:
	adds r7, #1
.L0800E0D8:
	adds r5, #1
	cmp r5, r6
	bcc .L0800E0B4
.L0800E0DE:
	movs r0, #0
.L0800E0E0:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	.thumb
	.align 1, 0
	.global sub_0800E0EC
	.thumb_func
sub_0800E0EC:
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r5, r1, #0
	cmp r2, #0
	beq .L0800E116
	ldr r0, [pc, #36]
	strb r3, [r0, #0]
	ldr r1, [pc, #36]
	movs r0, #0
	str r0, [r1, #0]
	ldr r4, [pc, #32]
	movs r0, #136
	lsls r0, r0, #13
	adds r1, r2, #0
	bl sub_080127CC
	str r0, [r4, #0]
	ldr r1, [pc, #24]
	movs r0, #63
	orrs r5, r0
	strh r5, [r1, #0]
.L0800E116:
	pop {r4, r5}
	pop {r0}
	bx r0
	.4byte 0x03003914
	.4byte 0x030070A4
	.4byte 0x03003910
	.4byte 0x04000050

	.thumb
	.align 1, 0
	.global sub_0800E12C
	.thumb_func
sub_0800E12C:
	ldr r0, [pc, #12]
	ldr r3, [r0, #0]
	ldr r0, [pc, #12]
	cmp r3, r0
	bls .L0800E144
	movs r0, #0
	b .L0800E174
	movs r0, r0
	strb r4, [r4, #2]
	lsls r0, r0, #12
	.2byte 0xffff @ .raw
	movs r0, r2
.L0800E144:
	ldr r0, [pc, #16]
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L0800E160
	ldr r2, [pc, #12]
	lsrs r1, r3, #16
	movs r0, #16
	subs r0, r0, r1
	strh r0, [r2, #0]
	b .L0800E166
	subs r1, #20
	lsls r0, r0, #12
	lsls r4, r2, #1
	lsls r0, r0, #16
.L0800E160:
	ldr r1, [pc, #20]
	lsrs r0, r3, #16
	strh r0, [r1, #0]
.L0800E166:
	ldr r2, [pc, #20]
	ldr r1, [pc, #20]
	ldr r0, [r2, #0]
	ldr r1, [r1, #0]
	adds r0, r0, r1
	str r0, [r2, #0]
	movs r0, #1
.L0800E174:
	bx lr
	.2byte 0x0000
	.4byte 0x04000054
	.4byte 0x030070A4
	.4byte 0x03003910

	.thumb
	.align 1, 0
	.global sub_0800E184
	.thumb_func
sub_0800E184:
	.2byte 0xb510 @ push {r4, lr}
	.2byte 0x2000 @ movs r0, #0
	.2byte 0x4b03 @ ldr r3, [pc, #12]
	.2byte 0x24ff @ movs r4, #255
	.2byte 0x1c42 @ adds r2, r0, #1
	.2byte 0x2a80 @ cmp r2, #128
	.2byte 0xd004 @ beq.n 0x800e19c
	.2byte 0x18c0 @ adds r0, r0, r3
	.2byte 0x7002 @ strb r2, [r0, #0]
	.2byte 0xe005 @ b.n 0x800e1a4
	.2byte 0x4518 @ cmp r0, r3
	.2byte 0x0300 @ lsls r0, r0, #12
	.2byte 0x18c1 @ adds r1, r0, r3
	.2byte 0x7808 @ ldrb r0, [r1, #0]
	.2byte 0x4320 @ orrs r0, r4
	.2byte 0x7008 @ strb r0, [r1, #0]
	.2byte 0x1c10 @ adds r0, r2, #0
	.2byte 0x287f @ cmp r0, #127
	.2byte 0xd9f0 @ bls.n 0x800e18c
	.2byte 0x4906 @ ldr r1, [pc, #24]
	.2byte 0x2000 @ movs r0, #0
	.2byte 0x6008 @ str r0, [r1, #0]
	.2byte 0x4905 @ ldr r1, [pc, #20]
	.2byte 0x20ff @ movs r0, #255
	.2byte 0x6008 @ str r0, [r1, #0]
	.2byte 0xf7fc, 0xf81d @ bl 0x800a1f4
	.2byte 0xf7fc, 0xf96b @ bl 0x800a494
	.2byte 0xbc10 @ pop {r4}
	.2byte 0xbc01 @ pop {r0}
	.2byte 0x4700 @ bx r0
	.4byte 0x03004598
	.4byte 0x0300459C

	.thumb
	.align 1, 0
	.global sub_0800E1CC
	.thumb_func
sub_0800E1CC:
	push {r4, r5, lr}
	ldr r0, [pc, #68]
	ldr r4, [r0, #0]
	cmp r4, #255
	beq .L0800E20A
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #3
	ldr r1, [pc, #56]
	adds r0, r0, r1
	bl sub_0800E4F4
	ldr r1, [pc, #52]
	adds r0, r4, r1
	ldrb r0, [r0, #0]
	cmp r0, #255
	beq .L0800E20A
	adds r5, r1, #0
.L0800E1F0:
	adds r0, r4, r5
	ldrb r4, [r0, #0]
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #3
	ldr r1, [pc, #28]
	adds r0, r0, r1
	bl sub_0800E4F4
	adds r0, r4, r5
	ldrb r0, [r0, #0]
	cmp r0, #255
	bne .L0800E1F0
.L0800E20A:
	bl sub_0800A254
	pop {r4, r5}
	pop {r0}
	bx r0
	.4byte 0x0300459C
	.4byte 0x03003918
	.4byte 0x03004518

	.thumb
	.align 1, 0
	.global sub_0800E220
	.thumb_func
sub_0800E220:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	mov r8, r3
	bl sub_0800E3EC
	lsls r0, r0, #24
	lsrs r5, r0, #24
	cmp r5, #255
	bne .L0800E242
	movs r0, #0
	str r0, [r4, #0]
	b .L0800E30E
.L0800E242:
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #3
	ldr r1, [pc, #64]
	adds r0, r0, r1
	str r0, [r4, #0]
	bl sub_0800E60C
	ldr r0, [r4, #0]
	movs r1, #0
	mov r9, r1
	strb r5, [r0, #0]
	ldr r0, [r4, #0]
	ldr r2, [sp, #28]
	str r2, [r0, #20]
	ldr r0, [r4, #0]
	strb r6, [r0, #9]
	ldr r0, [r4, #0]
	strb r7, [r0, #10]
	ldr r0, [r4, #0]
	mov r1, r8
	strb r1, [r0, #13]
	bl sub_0800A2C0
	ldr r1, [r4, #0]
	strb r0, [r1, #1]
	ldr r1, [r4, #0]
	ldrb r0, [r1, #1]
	cmp r0, #255
	bne .L0800E290
	ldrb r0, [r1, #0]
	bl sub_0800E414
	mov r2, r9
	str r2, [r4, #0]
	movs r0, #0
	b .L0800E30E
	subs r1, #24
	lsls r0, r0, #12
.L0800E290:
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_0800E46C
	ldr r1, [r4, #0]
	ldrb r1, [r1, #1]
	lsls r3, r1, #3
	ldr r5, [pc, #64]
	adds r3, r3, r5
	mov r2, r8
	lsls r1, r2, #13
	movs r2, #128
	lsls r2, r2, #2
	orrs r1, r2
	orrs r1, r0
	str r1, [r3, #0]
	adds r0, r6, #0
	adds r1, r7, #0
	ldr r2, [sp, #28]
	mov r3, r8
	bl sub_0800A4BC
	ldr r1, [r4, #0]
	strh r0, [r1, #2]
	ldr r1, [r4, #0]
	ldr r0, [pc, #32]
	ldrh r2, [r1, #2]
	cmp r2, r0
	bne .L0800E2E8
	ldrb r0, [r1, #1]
	bl sub_0800A400
	ldr r0, [r4, #0]
	ldrb r0, [r0, #0]
	bl sub_0800E414
	mov r0, r9
	str r0, [r4, #0]
	movs r0, #0
	b .L0800E30E
	asrs r4, r0, #28
	lsls r0, r0, #12
	.2byte 0xffff @ .raw
	movs r0, r0
.L0800E2E8:
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	adds r1, r1, r5
	movs r0, #252
	lsls r0, r0, #8
	ldrh r2, [r1, #4]
	ands r0, r2
	strh r0, [r1, #4]
	ldr r2, [r4, #0]
	ldrb r0, [r2, #1]
	lsls r1, r0, #3
	adds r1, r1, r5
	ldr r0, [pc, #24]
	ldrh r2, [r2, #2]
	ands r0, r2
	ldrh r2, [r1, #4]
	orrs r0, r2
	strh r0, [r1, #4]
	movs r0, #1
.L0800E30E:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000
	.4byte 0x000003FF

	.thumb
	.align 1, 0
	.global sub_0800E320
	.thumb_func
sub_0800E320:
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq .L0800E344
	ldrb r0, [r0, #1]
	bl sub_0800A400
	ldr r0, [r4, #0]
	ldrh r0, [r0, #2]
	bl sub_0800A570
	ldr r0, [r4, #0]
	ldrb r0, [r0, #0]
	bl sub_0800E414
	movs r0, #0
	str r0, [r4, #0]
.L0800E344:
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_0800E34C
	.thumb_func
sub_0800E34C:
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [sp, #12]
	ldrb r0, [r4, #9]
	cmp r1, r0
	bne .L0800E364
	ldrb r0, [r4, #10]
	cmp r2, r0
	bne .L0800E364
	ldrb r0, [r4, #13]
	cmp r3, r0
	beq .L0800E370
.L0800E364:
	movs r0, #1
	strb r0, [r4, #14]
	strb r1, [r4, #9]
	strb r2, [r4, #10]
	strb r3, [r4, #13]
	b .L0800E37A
.L0800E370:
	ldr r0, [r4, #20]
	cmp r0, r5
	beq .L0800E37A
	movs r0, #1
	strb r0, [r4, #15]
.L0800E37A:
	str r5, [r4, #20]
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_0800E384
	.thumb_func
sub_0800E384:
	movs r2, #15
	ands r1, r2
	strb r1, [r0, #12]
	movs r1, #1
	strb r1, [r0, #16]
	bx lr

	.thumb
	.align 1, 0
	.global sub_0800E390
	.thumb_func
sub_0800E390:
	movs r3, #1
	ands r2, r3
	strb r2, [r0, #18]
	ands r1, r3
	strb r1, [r0, #17]
	bx lr

	.thumb
	.align 1, 0
	.global sub_0800E39C
	.thumb_func
sub_0800E39C:
	push {r4, lr}
	strh r1, [r0, #4]
	strh r2, [r0, #6]
	strb r3, [r0, #8]
	ldrb r4, [r0, #1]
	movs r2, #4
	ldrsh r1, [r0, r2]
	movs r3, #6
	ldrsh r2, [r0, r3]
	ldrb r3, [r0, #8]
	adds r0, r4, #0
	bl sub_0800A2EC
	pop {r4}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_0800E3BC
	.thumb_func
sub_0800E3BC:
	push {r4, lr}
	lsls r3, r3, #24
	lsrs r3, r3, #24
	ldrh r4, [r0, #4]
	adds r1, r4, r1
	strh r1, [r0, #4]
	ldrh r1, [r0, #6]
	adds r2, r1, r2
	strh r2, [r0, #6]
	ldrb r4, [r0, #8]
	adds r3, r4, r3
	strb r3, [r0, #8]
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_0800E3DC
	.thumb_func
sub_0800E3DC:
	movs r1, #1
	strb r1, [r0, #11]
	bx lr
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_0800E3E4
	.thumb_func
sub_0800E3E4:
	movs r1, #0
	strb r1, [r0, #11]
	bx lr
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_0800E3EC
	.thumb_func
sub_0800E3EC:
	ldr r2, [pc, #24]
	ldrb r3, [r2, #0]
	cmp r3, #255
	beq .L0800E404
	ldr r1, [pc, #20]
	adds r1, r3, r1
	ldrb r0, [r1, #0]
	str r0, [r2, #0]
	ldr r2, [pc, #16]
	ldr r0, [r2, #0]
	strb r0, [r1, #0]
	str r3, [r2, #0]
.L0800E404:
	adds r0, r3, #0
	bx lr
	.4byte 0x03004598
	.4byte 0x03004518
	.4byte 0x0300459C

	.thumb
	.align 1, 0
	.global sub_0800E414
	.thumb_func
sub_0800E414:
	.2byte 0x0600 @ lsls r0, r0, #24
	.2byte 0x0e03 @ lsrs r3, r0, #24
	.2byte 0x4905 @ ldr r1, [pc, #20]
	.2byte 0x680a @ ldr r2, [r1, #0]
	.2byte 0x7808 @ ldrb r0, [r1, #0]
	.2byte 0x2bff @ cmp r3, #255
	.2byte 0xd01e @ beq.n 0x800e460
	.2byte 0x429a @ cmp r2, r3
	.2byte 0xd108 @ bne.n 0x800e438
	.2byte 0x4803 @ ldr r0, [pc, #12]
	.2byte 0x1818 @ adds r0, r3, r0
	.2byte 0x7800 @ ldrb r0, [r0, #0]
	.2byte 0x6008 @ str r0, [r1, #0]
	.2byte 0xe011 @ b.n 0x800e454
	.2byte 0x459c @ cmp ip, r3
	.2byte 0x0300 @ lsls r0, r0, #12
	.2byte 0x4518 @ cmp r0, r3
	.2byte 0x0300 @ lsls r0, r0, #12
	.2byte 0x4a00 @ ldr r2, [pc, #0]
	.2byte 0xe002 @ b.n 0x800e442
	.2byte 0x4518 @ cmp r0, r3
	.2byte 0x0300 @ lsls r0, r0, #12
	.2byte 0x7808 @ ldrb r0, [r1, #0]
	.2byte 0x28ff @ cmp r0, #255
	.2byte 0xd006 @ beq.n 0x800e454
	.2byte 0x1881 @ adds r1, r0, r2
	.2byte 0x7808 @ ldrb r0, [r1, #0]
	.2byte 0x4298 @ cmp r0, r3
	.2byte 0xd1f8 @ bne.n 0x800e440
	.2byte 0x1898 @ adds r0, r3, r2
	.2byte 0x7800 @ ldrb r0, [r0, #0]
	.2byte 0x7008 @ strb r0, [r1, #0]
	.2byte 0x4803 @ ldr r0, [pc, #12]
	.2byte 0x1818 @ adds r0, r3, r0
	.2byte 0x4a03 @ ldr r2, [pc, #12]
	.2byte 0x6811 @ ldr r1, [r2, #0]
	.2byte 0x7001 @ strb r1, [r0, #0]
	.2byte 0x6013 @ str r3, [r2, #0]
	.2byte 0x4770 @ bx lr
	.2byte 0x0000
	.4byte 0x03004518
	.4byte 0x03004598

	.thumb
	.align 1, 0
	.global sub_0800E46C
	.thumb_func
sub_0800E46C:
	cmp r0, #2
	beq .L0800E492
	cmp r0, #2
	bhi .L0800E47A
	cmp r0, #1
	beq .L0800E484
	b .L0800E4EE
.L0800E47A:
	cmp r0, #4
	beq .L0800E4B4
	cmp r0, #8
	beq .L0800E4D8
	b .L0800E4EE
.L0800E484:
	cmp r1, #1
	beq .L0800E4EE
	cmp r1, #2
	bne .L0800E4EE
	movs r0, #128
	lsls r0, r0, #8
	b .L0800E4F0
.L0800E492:
	cmp r1, #1
	bne .L0800E49C
	movs r0, #128
	lsls r0, r0, #7
	b .L0800E4F0
.L0800E49C:
	cmp r1, #2
	bne .L0800E4A6
	movs r0, #128
	lsls r0, r0, #23
	b .L0800E4F0
.L0800E4A6:
	cmp r1, #4
	bne .L0800E4EE
	ldr r0, [pc, #4]
	b .L0800E4F0
	movs r0, r0
	strh r0, [r0, #0]
	strh r0, [r0, #0]
.L0800E4B4:
	cmp r1, #2
	bne .L0800E4C0
	ldr r0, [pc, #0]
	b .L0800E4F0
	ands r0, r0
	strh r0, [r0, #0]
.L0800E4C0:
	cmp r1, #4
	bne .L0800E4CA
	movs r0, #128
	lsls r0, r0, #24
	b .L0800E4F0
.L0800E4CA:
	cmp r1, #8
	bne .L0800E4EE
	ldr r0, [pc, #4]
	b .L0800E4F0
	movs r0, r0
	strh r0, [r0, #0]
	.2byte 0xc000 @ .raw stmia r0!, {}
.L0800E4D8:
	cmp r1, #4
	bne .L0800E4E4
	ldr r0, [pc, #0]
	b .L0800E4F0
	ands r0, r0
	.2byte 0xc000 @ .raw stmia r0!, {}
.L0800E4E4:
	cmp r1, #8
	bne .L0800E4EE
	movs r0, #192
	lsls r0, r0, #24
	b .L0800E4F0
.L0800E4EE:
	movs r0, #0
.L0800E4F0:
	bx lr
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_0800E4F4
	.thumb_func
sub_0800E4F4:
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	ldrb r0, [r5, #11]
	cmp r0, #0
	bne .L0800E52C
	ldrb r0, [r5, #1]
	lsls r1, r0, #3
	ldr r2, [pc, #28]
	adds r1, r1, r2
	ldr r0, [pc, #28]
	ldrh r3, [r1, #0]
	ands r0, r3
	strh r0, [r1, #0]
	ldrb r5, [r5, #1]
	lsls r0, r5, #3
	adds r0, r0, r2
	movs r2, #128
	lsls r2, r2, #2
	adds r1, r2, #0
	ldrh r3, [r0, #0]
	orrs r1, r3
	strh r1, [r0, #0]
	b .L0800E5FA
	asrs r4, r0, #28
	lsls r0, r0, #12
	.2byte 0xfcff @ .raw
	movs r0, r0
.L0800E52C:
	ldrb r0, [r5, #1]
	lsls r2, r0, #3
	ldr r4, [pc, #100]
	adds r2, r2, r4
	ldr r0, [r2, #0]
	ldr r1, [pc, #100]
	ands r0, r1
	str r0, [r2, #0]
	ldrb r0, [r5, #9]
	ldrb r1, [r5, #10]
	bl sub_0800E46C
	ldrb r1, [r5, #1]
	lsls r2, r1, #3
	adds r2, r2, r4
	ldrb r3, [r5, #13]
	lsls r1, r3, #13
	orrs r1, r0
	ldr r0, [r2, #0]
	orrs r0, r1
	str r0, [r2, #0]
	ldrb r6, [r5, #14]
	cmp r6, #0
	beq .L0800E5A0
	ldrh r0, [r5, #2]
	bl sub_0800A570
	ldrb r0, [r5, #9]
	ldrb r1, [r5, #10]
	ldr r2, [r5, #20]
	ldrb r3, [r5, #13]
	bl sub_0800A4BC
	movs r2, #0
	strh r0, [r5, #2]
	ldrb r0, [r5, #1]
	lsls r1, r0, #3
	adds r1, r1, r4
	movs r0, #252
	lsls r0, r0, #8
	ldrh r3, [r1, #4]
	ands r0, r3
	strh r0, [r1, #4]
	ldrb r1, [r5, #1]
	lsls r0, r1, #3
	adds r0, r0, r4
	ldrh r1, [r0, #4]
	ldrh r3, [r5, #2]
	orrs r1, r3
	strh r1, [r0, #4]
	strb r2, [r5, #14]
	strb r2, [r5, #15]
	b .L0800E5B8
	movs r0, r0
	asrs r4, r0, #28
	lsls r0, r0, #12
	lsls r7, r7, #3
	lsls r7, r7, #7
.L0800E5A0:
	ldrb r0, [r5, #15]
	cmp r0, #0
	beq .L0800E5B8
	ldrh r0, [r5, #2]
	ldrb r1, [r5, #9]
	ldrb r2, [r5, #10]
	ldr r3, [r5, #20]
	ldrb r4, [r5, #13]
	str r4, [sp, #0]
	bl sub_0800A53C
	strb r6, [r5, #15]
.L0800E5B8:
	ldrb r0, [r5, #16]
	cmp r0, #0
	beq .L0800E5E2
	ldrb r0, [r5, #1]
	lsls r1, r0, #3
	ldr r2, [pc, #64]
	adds r1, r1, r2
	ldr r0, [pc, #64]
	ldrh r3, [r1, #4]
	ands r0, r3
	movs r3, #0
	strh r0, [r1, #4]
	ldrb r0, [r5, #1]
	lsls r1, r0, #3
	adds r1, r1, r2
	ldrb r2, [r5, #12]
	lsls r0, r2, #12
	ldrh r2, [r1, #4]
	orrs r0, r2
	strh r0, [r1, #4]
	strb r3, [r5, #16]
.L0800E5E2:
	ldr r3, [pc, #32]
	ldrb r0, [r5, #1]
	lsls r2, r0, #3
	adds r2, r2, r3
	ldrb r1, [r5, #17]
	lsls r0, r1, #12
	ldrb r5, [r5, #18]
	lsls r1, r5, #13
	orrs r0, r1
	ldrh r3, [r2, #2]
	orrs r0, r3
	strh r0, [r2, #2]
.L0800E5FA:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x03001704
	.4byte 0x00000FFF

	.thumb
	.align 1, 0
	.global sub_0800E60C
	.thumb_func
sub_0800E60C:
	movs r1, #255
	strb r1, [r0, #1]
	ldr r1, [pc, #28]
	strh r1, [r0, #2]
	movs r2, #0
	strb r2, [r0, #11]
	movs r1, #0
	strh r2, [r0, #4]
	strh r2, [r0, #6]
	strb r1, [r0, #8]
	strb r1, [r0, #16]
	strb r1, [r0, #15]
	str r2, [r0, #20]
	strb r1, [r0, #9]
	strb r1, [r0, #10]
	strb r1, [r0, #13]
	strb r1, [r0, #12]
	bx lr
	.4byte 0x0000FFFF

	.thumb
	.align 1, 0
	.global sub_0800E634
	.thumb_func
sub_0800E634:
	ldr r2, [pc, #20]
	str r0, [r2, #8]
	strb r1, [r2, #12]
	ldr r0, [pc, #20]
	str r0, [r2, #0]
	movs r1, #0
	movs r0, #128
	lsls r0, r0, #2
	strh r0, [r2, #4]
	strb r1, [r2, #13]
	bx lr
	.2byte 0x0000
	.4byte 0x030047A0
	.4byte 0x030045A0
	.4byte 0x60884901
	.4byte 0x00004770
	.4byte 0x030047A0
	.4byte 0x73084901
	.4byte 0x00004770
	.4byte 0x030047A0

	.thumb
	.align 1, 0
	.global sub_0800E66C
	.thumb_func
sub_0800E66C:
	ldr r1, [pc, #4]
	strb r0, [r1, #13]
	bx lr
	.2byte 0x0000
	.4byte 0x030047A0

	.thumb
	.align 1, 0
	.global sub_0800E678
	.thumb_func
sub_0800E678:
	push {r4, r5, r6, lr}
	lsls r2, r2, #24
	lsrs r6, r2, #24
	ldr r2, [pc, #40]
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
	beq .L0800E6B2
	ldrh r0, [r4, #0]
	bl sub_0800E840
	cmp r0, #0
	beq .L0800E6AC
	ldrh r0, [r4, #0]
	bl sub_0800E93C
	b .L0800E6B2
	.2byte 0x47a0 @ .raw blx r4
	lsls r0, r0, #12
.L0800E6AC:
	ldrh r0, [r4, #0]
	bl sub_08012914
.L0800E6B2:
	ldr r5, [pc, #40]
	ldr r1, [r5, #8]
	ldrb r0, [r1, #1]
	cmp r0, #0
	bne .L0800E6E0
	ldr r1, [r1, #12]
	adds r0, r6, #0
	bl sub_08012328
	ldr r2, [r5, #8]
	ldr r1, [r2, #4]
	ldrh r2, [r2, #2]
	bl sub_0800E86C
	lsls r0, r0, #16
	lsrs r0, r0, #16
	ldrb r5, [r5, #13]
	lsls r1, r5, #12
	orrs r0, r1
	b .L0800E6F2
	movs r0, r0
	.2byte 0x47a0 @ .raw blx r4
	lsls r0, r0, #12
.L0800E6E0:
	ldr r1, [r1, #12]
	adds r0, r6, #0
	bl sub_08012328
	ldr r2, [r5, #8]
	ldr r1, [r2, #4]
	ldrh r2, [r2, #2]
	bl sub_08012904
.L0800E6F2:
	strh r0, [r4, #0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_0800E6FC
	.thumb_func
sub_0800E6FC:
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r5, r2, #0
.L0800E704:
	cmp r4, #0
	blt .L0800E71E
	cmp r6, #0
	blt .L0800E71E
	cmp r4, #29
	bgt .L0800E71E
	cmp r6, #29
	bgt .L0800E71E
	ldrb r2, [r5, #0]
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_0800E678
.L0800E71E:
	adds r4, #1
	adds r5, #1
	ldrb r0, [r5, #0]
	cmp r0, #0
	bne .L0800E704
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_0800E730
	.thumb_func
sub_0800E730:
	push {r2, r3}
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r1, [sp, #16]
	add r2, sp, #20
	ldr r4, [pc, #24]
	ldr r0, [r4, #0]
	bl sub_0800EE28
	ldr r2, [r4, #0]
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_0800E6FC
	pop {r4, r5, r6}
	pop {r3}
	add sp, #8
	bx r3
	.2byte 0x0000
	.4byte 0x030047A0

	.thumb
	.align 1, 0
	.global sub_0800E75C
	.thumb_func
sub_0800E75C:
	push {r4, lr}
	ldr r2, [pc, #36]
	ldrb r2, [r2, #12]
	lsls r3, r2, #11
	movs r2, #192
	lsls r2, r2, #19
	adds r4, r3, r2
	lsls r1, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r4, r4, r0
	ldrh r0, [r4, #0]
	bl sub_0800E840
	cmp r0, #0
	beq .L0800E788
	ldrh r0, [r4, #0]
	bl sub_0800E93C
	b .L0800E78E
	.2byte 0x47a0 @ .raw blx r4
	lsls r0, r0, #12
.L0800E788:
	ldrh r0, [r4, #0]
	bl sub_08012914
.L0800E78E:
	movs r0, #0
	strh r0, [r4, #0]
	pop {r4}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_0800E798
	.thumb_func
sub_0800E798:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	mov sl, r0
	mov r9, r2
	adds r5, r1, #0
	adds r0, r5, r3
	cmp r5, r0
	bhi .L0800E7D2
	mov r8, r0
.L0800E7B0:
	mov r4, sl
	mov r1, r9
	adds r0, r4, r1
	adds r7, r5, #1
	cmp r4, r0
	bhi .L0800E7CC
	adds r6, r0, #0
.L0800E7BE:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0800E75C
	adds r4, #1
	cmp r4, r6
	bls .L0800E7BE
.L0800E7CC:
	adds r5, r7, #0
	cmp r5, r8
	bls .L0800E7B0
.L0800E7D2:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_0800E7E0
	.thumb_func
sub_0800E7E0:
	push {r4, r5, r6, lr}
	movs r5, #0
.L0800E7E4:
	movs r4, #0
	adds r6, r5, #1
.L0800E7E8:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0800E75C
	adds r4, #1
	cmp r4, #32
	bne .L0800E7E8
	adds r5, r6, #0
	cmp r5, #32
	bne .L0800E7E4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x0E010600
	.4byte 0x3A301C0A
	.4byte 0x0E000610
	.4byte 0xD8012809
	.4byte 0xE0121C10
	.4byte 0x38611C08
	.4byte 0x0E000600
	.4byte 0xD8022805
	.4byte 0x38571C08
	.4byte 0x1C08E009
	.4byte 0x06003841
	.4byte 0x28050E00
	.4byte 0x2000D901
	.4byte 0x1C08E001
	.4byte 0x47703837

	.thumb
	.align 1, 0
	.global sub_0800E840
	.thumb_func
sub_0800E840:
	ldr r1, [pc, #24]
	ands r0, r1
	ldr r3, [pc, #24]
	ldr r2, [pc, #28]
	lsls r1, r0, #1
	adds r1, r1, r2
	ldrh r1, [r1, #0]
	lsls r1, r1, #1
	adds r1, r1, r3
	ldrh r1, [r1, #0]
	cmp r1, r0
	beq .L0800E868
	movs r0, #0
	b .L0800E86A
	lsls r7, r7, #15
	movs r0, r0
	ldr r7, [pc, #704]
	lsls r0, r0, #12
	str r6, [r6, #24]
	lsls r0, r0, #12
.L0800E868:
	movs r0, #1
.L0800E86A:
	bx lr

	.thumb
	.align 1, 0
	.global sub_0800E86C
	.thumb_func
sub_0800E86C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	mov r9, r1
	lsls r0, r5, #16
	lsrs r0, r0, #16
	mov r8, r0
	adds r5, r5, r2
	cmp r5, #0
	beq .L0800E8D8
	ldr r0, [pc, #28]
	lsls r1, r5, #1
	adds r2, r1, r0
	ldrh r3, [r2, #0]
	ldr r0, [pc, #24]
	mov ip, r1
	cmp r3, r0
	beq .L0800E8B0
	adds r4, r3, #0
	ldr r0, [pc, #20]
	lsls r1, r4, #1
	adds r1, r1, r0
	ldrh r0, [r1, #0]
	adds r0, #1
	strh r0, [r1, #0]
	b .L0800E920
	ldr r7, [pc, #704]
	lsls r0, r0, #12
	.2byte 0xffff @ .raw
	movs r0, r0
	strh r0, [r6, r6]
	lsls r0, r0, #12
.L0800E8B0:
	ldr r6, [pc, #20]
	ldrh r7, [r6, #0]
	adds r0, r7, #0
	cmp r0, r3
	beq .L0800E8D0
	ldrh r4, [r6, #0]
	ldr r0, [pc, #12]
	lsls r1, r4, #1
	adds r1, r1, r0
	ldrh r0, [r1, #0]
	strh r0, [r6, #0]
	b .L0800E8F6
	str r4, [r6, #24]
	lsls r0, r0, #12
	strh r0, [r6, r6]
	lsls r0, r0, #12
.L0800E8D0:
	ldr r1, [pc, #8]
	ldrh r2, [r1, #0]
	cmp r2, r0
	bne .L0800E8E0
.L0800E8D8:
	movs r0, #0
	b .L0800E922
	str r0, [r6, #24]
	lsls r0, r0, #12
.L0800E8E0:
	ldrh r4, [r1, #0]
	ldr r2, [pc, #76]
	lsls r0, r4, #1
	adds r0, r0, r2
	ldrh r0, [r0, #0]
	strh r0, [r1, #0]
	adds r1, r4, #1
	lsls r0, r1, #1
	adds r0, r0, r2
	strh r7, [r0, #0]
	strh r1, [r6, #0]
.L0800E8F6:
	ldr r0, [pc, #56]
	lsls r2, r4, #1
	adds r0, r2, r0
	movs r1, #1
	strh r1, [r0, #0]
	ldr r0, [pc, #48]
	add r0, ip
	strh r4, [r0, #0]
	ldr r0, [pc, #48]
	adds r2, r2, r0
	strh r5, [r2, #0]
	mov r1, r8
	lsls r0, r1, #5
	add r0, r9
	lsls r1, r4, #5
	movs r2, #192
	lsls r2, r2, #19
	adds r1, r1, r2
	movs r2, #8
	bl sub_0800F21C
.L0800E920:
	adds r0, r4, #0
.L0800E922:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000
	.4byte 0x030053B0
	.4byte 0x03004FB0
	.4byte 0x030061B6

	.thumb
	.align 1, 0
	.global sub_0800E93C
	.thumb_func
sub_0800E93C:
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [pc, #108]
	ands r5, r0
	cmp r5, #0
	beq .L0800EA00
	ldr r7, [pc, #104]
	lsls r2, r5, #1
	adds r6, r2, r7
	ldrh r0, [r6, #0]
	subs r0, #1
	strh r0, [r6, #0]
	lsls r0, r0, #16
	cmp r0, #0
	bne .L0800EA00
	ldr r1, [pc, #92]
	ldr r4, [pc, #92]
	adds r2, r2, r4
	ldrh r3, [r2, #0]
	lsls r0, r3, #1
	adds r0, r0, r1
	ldr r1, [pc, #88]
	adds r3, r1, #0
	ldrh r1, [r0, #0]
	orrs r1, r3
	strh r1, [r0, #0]
	ldrh r0, [r2, #0]
	orrs r0, r3
	strh r0, [r2, #0]
	movs r2, #1
	eors r2, r5
	lsls r0, r2, #1
	adds r0, r0, r4
	ldrh r0, [r0, #0]
	cmp r0, r3
	bne .L0800E9F8
	adds r1, r0, #0
	ldr r0, [pc, #60]
	ldrh r3, [r0, #0]
	adds r6, r0, #0
	cmp r3, r2
	beq .L0800E99E
	adds r4, r7, #0
.L0800E992:
	adds r1, r3, #0
	lsls r0, r1, #1
	adds r0, r0, r4
	ldrh r3, [r0, #0]
	cmp r3, r2
	bne .L0800E992
.L0800E99E:
	ldr r0, [pc, #32]
	cmp r1, r0
	bne .L0800E9C8
	ldr r0, [pc, #12]
	lsls r1, r3, #1
	adds r1, r1, r0
	ldrh r0, [r1, #0]
	strh r0, [r6, #0]
	b .L0800E9D6
	lsls r7, r7, #15
	movs r0, r0
	strh r0, [r6, r6]
	lsls r0, r0, #12
	ldr r7, [pc, #704]
	lsls r0, r0, #12
	str r6, [r6, #24]
	lsls r0, r0, #12
	.2byte 0xffff @ .raw
	movs r0, r0
	str r4, [r6, #24]
	lsls r0, r0, #12
.L0800E9C8:
	ldr r2, [pc, #32]
	lsls r1, r1, #1
	adds r1, r1, r2
	lsls r0, r3, #1
	adds r0, r0, r2
	ldrh r0, [r0, #0]
	strh r0, [r1, #0]
.L0800E9D6:
	ldr r1, [pc, #20]
	ldr r2, [pc, #20]
	ands r2, r5
	lsls r0, r2, #1
	adds r0, r0, r1
	ldr r3, [pc, #16]
	ldrh r1, [r3, #0]
	strh r1, [r0, #0]
	strh r2, [r3, #0]
	b .L0800EA00
	movs r0, r0
	strh r0, [r6, r6]
	lsls r0, r0, #12
	.2byte 0xfffe @ .raw
	movs r0, r0
	str r0, [r6, #24]
	lsls r0, r0, #12
.L0800E9F8:
	ldr r1, [pc, #12]
	ldrh r0, [r1, #0]
	strh r0, [r6, #0]
	strh r5, [r1, #0]
.L0800EA00:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x030061B4

	.thumb
	.align 1, 0
	.global sub_0800EA0C
	.thumb_func
sub_0800EA0C:
	push {r4, lr}
	movs r1, #0
	ldr r4, [pc, #156]
	ldr r0, [pc, #160]
	adds r3, r0, #0
	ldr r2, [pc, #160]
.L0800EA18:
	ldrh r0, [r2, #0]
	orrs r0, r3
	strh r0, [r2, #0]
	adds r2, #2
	adds r1, #1
	cmp r1, r4
	bls .L0800EA18
	movs r1, #0
	ldr r4, [pc, #144]
	ldr r2, [pc, #136]
	adds r3, r2, #0
	ldr r2, [pc, #144]
.L0800EA30:
	ldrh r0, [r2, #0]
	orrs r0, r3
	strh r0, [r2, #0]
	adds r2, #2
	adds r1, #1
	cmp r1, r4
	bls .L0800EA30
	movs r1, #0
	ldr r4, [pc, #128]
	ldr r0, [pc, #112]
	adds r3, r0, #0
	ldr r2, [pc, #128]
.L0800EA48:
	ldrh r0, [r2, #0]
	orrs r0, r3
	strh r0, [r2, #0]
	adds r2, #2
	adds r1, #1
	cmp r1, r4
	bls .L0800EA48
	movs r1, #0
	ldr r3, [pc, #104]
	ldr r2, [pc, #112]
.L0800EA5C:
	adds r0, r1, #2
	strh r0, [r2, #0]
	adds r2, #4
	adds r1, r0, #0
	cmp r1, r3
	bls .L0800EA5C
	ldr r1, [pc, #96]
	ldr r0, [pc, #100]
	adds r2, r1, r0
	ldr r0, [pc, #68]
	adds r3, r0, #0
	ldrh r0, [r2, #0]
	orrs r0, r3
	strh r0, [r2, #0]
	ldr r2, [pc, #88]
	adds r1, r1, r2
	ldrh r0, [r1, #0]
	orrs r0, r3
	strh r0, [r1, #0]
	ldr r1, [pc, #84]
	movs r0, #2
	strh r0, [r1, #0]
	ldr r1, [pc, #80]
	movs r2, #128
	lsls r2, r2, #3
	adds r0, r2, #0
	strh r0, [r1, #0]
	ldr r0, [pc, #76]
	strh r3, [r0, #0]
	movs r1, #0
	movs r2, #0
	movs r0, #192
	lsls r0, r0, #19
.L0800EA9E:
	strh r2, [r0, #0]
	adds r0, #2
	adds r1, #1
	cmp r1, #31
	bls .L0800EA9E
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x000003FF
	.4byte 0x0000FFFF
	.4byte 0x030047B0
	.4byte 0x000001FF
	.4byte 0x03004FB0
	.4byte 0x000006FF
	.4byte 0x030061B6
	.4byte 0x030053B0
	.4byte 0x000007FC
	.4byte 0x00000DFC
	.4byte 0x030061B0
	.4byte 0x030061B2
	.4byte 0x030061B4

	.thumb
	.align 1, 0
	.global sub_0800EAE4
	.thumb_func
sub_0800EAE4:
	cmp r0, #0
	blt .L0800EAEC
	movs r0, #1
	b .L0800EAF0
.L0800EAEC:
	movs r0, #1
	negs r0, r0
.L0800EAF0:
	bx lr
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_0800EAF4
	.thumb_func
sub_0800EAF4:
	push {r4, r5, lr}
	adds r4, r1, #0
	adds r5, r2, #0
	bl sub_0800EAE4
	muls r0, r5
	adds r4, r4, r0
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_0800EB0C
	.thumb_func
sub_0800EB0C:
	push {r4, lr}
	adds r4, r3, #0
	bl sub_0800EAF4
	adds r1, r0, #0
	adds r2, r1, #0
	cmp r1, #0
	bge .L0800EB1E
	negs r2, r1
.L0800EB1E:
	adds r0, r4, #0
	cmp r4, #0
	bge .L0800EB26
	negs r0, r4
.L0800EB26:
	cmp r2, r0
	ble .L0800EB34
	adds r0, r1, #0
	bl sub_0800EAE4
	adds r1, r0, #0
	muls r1, r4
.L0800EB34:
	adds r0, r1, #0
	pop {r4}
	pop {r1}
	bx r1

	.thumb
	.align 1, 0
	.global sub_0800EB3C
	.thumb_func
sub_0800EB3C:
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_0800EAE4
	adds r6, r0, #0
	cmp r4, #0
	beq .L0800EB66
	cmp r5, #0
	ble .L0800EB66
	negs r2, r5
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_0800EAF4
	adds r4, r0, #0
	bl sub_0800EAE4
	cmp r6, r0
	beq .L0800EB66
	movs r4, #0
.L0800EB66:
	adds r0, r4, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_0800EB70
	.thumb_func
sub_0800EB70:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r7, r1, #0
	movs r6, #0
	ldr r0, [pc, #44]
	mov ip, r0
	cmp r2, #0
	bne .L0800EBD8
	movs r2, #10
	ldrb r0, [r4, #0]
	cmp r0, #48
	bne .L0800EBD8
	movs r2, #8
	adds r4, #1
	ldrb r0, [r4, #0]
	cmp r0, #120
	bne .L0800EBD8
	ldrb r1, [r4, #1]
	add r1, ip
	movs r0, #68
	ldrb r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L0800EBD8
	adds r4, #1
	movs r2, #16
	b .L0800EBD8
	movs r0, r0
	cmp r4, #237
	lsls r1, r0, #8
.L0800EBAC:
	adds r0, r3, r5
	ldrb r1, [r0, #0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq .L0800EBBE
	adds r1, r3, #0
	subs r1, #48
	b .L0800EBCC
.L0800EBBE:
	movs r0, #2
	ands r0, r1
	adds r1, r3, #0
	subs r1, #55
	cmp r0, #0
	beq .L0800EBCC
	subs r1, #32
.L0800EBCC:
	cmp r1, r2
	bcs .L0800EBE8
	adds r0, r6, #0
	muls r0, r2
	adds r6, r0, r1
	adds r4, #1
.L0800EBD8:
	ldrb r3, [r4, #0]
	mov r5, ip
	adds r1, r3, r5
	movs r0, #68
	ldrb r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	bne .L0800EBAC
.L0800EBE8:
	cmp r7, #0
	beq .L0800EBEE
	str r4, [r7, #0]
.L0800EBEE:
	adds r0, r6, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_0800EBF8
	.thumb_func
sub_0800EBF8:
	push {lr}
	ldrb r3, [r0, #0]
	cmp r3, #45
	beq .L0800EC06
	bl sub_0800EB70
	b .L0800EC0E
.L0800EC06:
	adds r0, #1
	bl sub_0800EB70
	negs r0, r0
.L0800EC0E:
	pop {r1}
	bx r1
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_0800EC14
	.thumb_func
sub_0800EC14:
	adds r3, r0, #0
	movs r2, #0
	ldr r1, [r3, #0]
	b .L0800EC30
.L0800EC1C:
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #1
	ldrb r2, [r1, #0]
	adds r0, r2, r0
	adds r2, r0, #0
	subs r2, #48
	adds r0, r1, #1
	str r0, [r3, #0]
	adds r1, r0, #0
.L0800EC30:
	ldrb r0, [r1, #0]
	subs r0, #48
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #9
	bls .L0800EC1C
	adds r0, r2, #0
	bx lr

	.thumb
	.align 1, 0
	.global sub_0800EC40
	.thumb_func
sub_0800EC40:
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl sub_08012248
	cmp r0, r4
	bcc .L0800EC52
	adds r0, r4, #0
	b .L0800EC58
.L0800EC52:
	adds r0, r5, #0
	bl sub_08012248
.L0800EC58:
	pop {r4, r5}
	pop {r1}
	bx r1
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_0800EC60
	.thumb_func
sub_0800EC60:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #88
	adds r5, r0, #0
	mov r8, r1
	mov r9, r2
	adds r6, r3, #0
	ldr r0, [sp, #120]
	mov sl, r0
	ldr r3, [sp, #124]
	ldr r1, [pc, #40]
	str r1, [sp, #72]
	movs r0, #64
	ands r0, r3
	cmp r0, #0
	beq .L0800EC8A
	ldr r4, [pc, #32]
	str r4, [sp, #72]
.L0800EC8A:
	movs r0, #16
	ands r0, r3
	cmp r0, #0
	beq .L0800EC98
	movs r0, #2
	negs r0, r0
	ands r3, r0
.L0800EC98:
	mov r0, r9
	subs r0, #2
	cmp r0, #34
	bls .L0800ECAC
	movs r0, #0
	b .L0800EE18
	movs r0, #40
	lsls r1, r0, #8
	movs r0, #80
	lsls r1, r0, #8
.L0800ECAC:
	movs r0, #1
	ands r0, r3
	movs r1, #32
	str r1, [sp, #76]
	cmp r0, #0
	beq .L0800ECBC
	movs r4, #48
	str r4, [sp, #76]
.L0800ECBC:
	movs r0, #0
	str r0, [sp, #68]
	movs r0, #2
	ands r0, r3
	cmp r0, #0
	beq .L0800ECF4
	mov r1, r8
	cmp r1, #0
	bge .L0800ECD8
	movs r4, #45
	str r4, [sp, #68]
	negs r1, r1
	mov r8, r1
	b .L0800ECF2
.L0800ECD8:
	movs r0, #4
	ands r0, r3
	cmp r0, #0
	beq .L0800ECE6
	movs r0, #43
	str r0, [sp, #68]
	b .L0800ECF2
.L0800ECE6:
	movs r0, #8
	ands r0, r3
	cmp r0, #0
	beq .L0800ECF4
	movs r1, #32
	str r1, [sp, #68]
.L0800ECF2:
	subs r6, #1
.L0800ECF4:
	movs r0, #32
	ands r0, r3
	cmp r0, #0
	beq .L0800ED0E
	mov r4, r9
	cmp r4, #16
	bne .L0800ED06
	subs r6, #2
	b .L0800ED0E
.L0800ED06:
	mov r0, r9
	cmp r0, #8
	bne .L0800ED0E
	subs r6, #1
.L0800ED0E:
	movs r2, #0
	mov r1, r8
	cmp r1, #0
	bne .L0800ED20
	mov r1, sp
	movs r0, #48
	strb r0, [r1, #0]
	movs r2, #1
	b .L0800ED50
.L0800ED20:
	mov r7, sp
.L0800ED22:
	mov r0, r8
	mov r1, r9
	str r2, [sp, #80]
	str r3, [sp, #84]
	bl sub_08012844
	adds r4, r0, #0
	mov r0, r8
	mov r1, r9
	bl sub_080127CC
	mov r8, r0
	ldr r0, [sp, #72]
	adds r4, r0, r4
	ldrb r0, [r4, #0]
	strb r0, [r7, #0]
	adds r7, #1
	ldr r2, [sp, #80]
	adds r2, #1
	ldr r3, [sp, #84]
	mov r1, r8
	cmp r1, #0
	bne .L0800ED22
.L0800ED50:
	cmp r2, sl
	ble .L0800ED56
	mov sl, r2
.L0800ED56:
	mov r4, sl
	subs r6, r6, r4
	movs r0, #17
	ands r0, r3
	subs r4, #1
	subs r7, r2, #1
	cmp r0, #0
	bne .L0800ED7C
	adds r0, r6, #0
	subs r6, #1
	cmp r0, #0
	ble .L0800ED7C
	movs r1, #32
.L0800ED70:
	strb r1, [r5, #0]
	adds r5, #1
	adds r0, r6, #0
	subs r6, #1
	cmp r0, #0
	bgt .L0800ED70
.L0800ED7C:
	ldr r0, [sp, #68]
	cmp r0, #0
	beq .L0800ED86
	strb r0, [r5, #0]
	adds r5, #1
.L0800ED86:
	movs r0, #32
	ands r0, r3
	cmp r0, #0
	beq .L0800EDAE
	mov r0, r9
	cmp r0, #8
	bne .L0800ED98
	movs r0, #48
	b .L0800EDAA
.L0800ED98:
	mov r1, r9
	cmp r1, #16
	bne .L0800EDAE
	movs r0, #48
	strb r0, [r5, #0]
	adds r5, #1
	ldr r0, [sp, #72]
	adds r0, #33
	ldrb r0, [r0, #0]
.L0800EDAA:
	strb r0, [r5, #0]
	adds r5, #1
.L0800EDAE:
	movs r0, #16
	ands r3, r0
	cmp r3, #0
	bne .L0800EDC8
	b .L0800EDC0
.L0800EDB8:
	add r0, sp, #76
	ldrb r0, [r0, #0]
	strb r0, [r5, #0]
	adds r5, #1
.L0800EDC0:
	adds r0, r6, #0
	subs r6, #1
	cmp r0, #0
	bgt .L0800EDB8
.L0800EDC8:
	mov r0, sl
	mov sl, r4
	subs r3, r6, #1
	cmp r2, r0
	bge .L0800EDE4
	movs r1, #48
.L0800EDD4:
	strb r1, [r5, #0]
	adds r5, #1
	mov r0, sl
	movs r4, #1
	negs r4, r4
	add sl, r4
	cmp r2, r0
	blt .L0800EDD4
.L0800EDE4:
	adds r0, r2, #0
	adds r2, r7, #0
	cmp r0, #0
	ble .L0800EE00
	mov r0, sp
	adds r1, r2, r0
.L0800EDF0:
	ldrb r0, [r1, #0]
	subs r1, #1
	strb r0, [r5, #0]
	adds r5, #1
	adds r0, r2, #0
	subs r2, #1
	cmp r0, #0
	bgt .L0800EDF0
.L0800EE00:
	adds r0, r6, #0
	adds r6, r3, #0
	cmp r0, #0
	ble .L0800EE16
	movs r1, #32
.L0800EE0A:
	strb r1, [r5, #0]
	adds r5, #1
	adds r0, r6, #0
	subs r6, #1
	cmp r0, #0
	bgt .L0800EE0A
.L0800EE16:
	adds r0, r5, #0
.L0800EE18:
	add sp, #88
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	.thumb
	.align 1, 0
	.global sub_0800EE28
	.thumb_func
sub_0800EE28:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #16
	mov r8, r0
	str r1, [sp, #8]
	adds r6, r2, #0
	mov r5, r8
	adds r2, r1, #0
	ldrb r0, [r2, #0]
	cmp r0, #0
	bne .L0800EE42
	b .L0800F096
.L0800EE42:
	ldrb r0, [r2, #0]
	cmp r0, #37
	beq .L0800EE4A
	b .L0800F020
.L0800EE4A:
	movs r3, #0
.L0800EE4C:
	ldr r1, [sp, #8]
	adds r0, r1, #1
	str r0, [sp, #8]
	ldrb r0, [r1, #1]
	subs r0, #32
	cmp r0, #16
	bhi .L0800EE86
	lsls r0, r0, #2
	ldr r1, [pc, #4]
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	movs r0, #128
	lsls r1, r0, #8
	movs r0, #16
	orrs r3, r0
	b .L0800EE4C
	movs r0, #4
	orrs r3, r0
	b .L0800EE4C
	movs r0, #8
	orrs r3, r0
	b .L0800EE4C
	movs r0, #32
	orrs r3, r0
	b .L0800EE4C
	movs r0, #1
	orrs r3, r0
	b .L0800EE4C
.L0800EE86:
	movs r7, #1
	negs r7, r7
	ldr r2, [sp, #8]
	ldrb r1, [r2, #0]
	adds r0, r1, #0
	subs r0, #48
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #9
	bhi .L0800EEA8
	add r0, sp, #8
	str r3, [sp, #12]
	bl sub_0800EC14
	adds r7, r0, #0
	ldr r3, [sp, #12]
	b .L0800EEC4
.L0800EEA8:
	lsls r0, r1, #24
	lsrs r0, r0, #24
	cmp r0, #42
	bne .L0800EEC4
	adds r0, r2, #1
	str r0, [sp, #8]
	adds r6, #4
	subs r0, r6, #4
	ldr r7, [r0, #0]
	cmp r7, #0
	bge .L0800EEC4
	negs r7, r7
	movs r0, #16
	orrs r3, r0
.L0800EEC4:
	movs r0, #1
	negs r0, r0
	mov ip, r0
	ldr r0, [sp, #8]
	ldrb r1, [r0, #0]
	cmp r1, #46
	bne .L0800EF12
	adds r2, r0, #1
	str r2, [sp, #8]
	ldrb r1, [r0, #1]
	adds r0, r1, #0
	subs r0, #48
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #9
	bhi .L0800EEF2
	add r0, sp, #8
	str r3, [sp, #12]
	bl sub_0800EC14
	mov ip, r0
	ldr r3, [sp, #12]
	b .L0800EF06
.L0800EEF2:
	lsls r0, r1, #24
	lsrs r0, r0, #24
	cmp r0, #42
	bne .L0800EF06
	adds r0, r2, #1
	str r0, [sp, #8]
	adds r6, #4
	subs r0, r6, #4
	ldr r0, [r0, #0]
	mov ip, r0
.L0800EF06:
	ldr r0, [sp, #8]
	mov r2, ip
	cmp r2, #0
	bge .L0800EF12
	movs r1, #0
	mov ip, r1
.L0800EF12:
	movs r4, #1
	negs r4, r4
	ldrb r0, [r0, #0]
	cmp r0, #104
	beq .L0800EF24
	cmp r0, #108
	beq .L0800EF24
	cmp r0, #76
	bne .L0800EF2C
.L0800EF24:
	ldr r0, [sp, #8]
	ldrb r4, [r0, #0]
	adds r0, #1
	str r0, [sp, #8]
.L0800EF2C:
	movs r2, #10
	ldr r0, [sp, #8]
	ldrb r0, [r0, #0]
	subs r0, #37
	cmp r0, #83
	bls .L0800EF3A
	b .L0800F038
.L0800EF3A:
	lsls r0, r0, #2
	ldr r1, [pc, #4]
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	movs r0, #196
	lsls r1, r0, #8
	movs r0, #16
	ands r3, r0
	adds r2, r6, #4
	cmp r3, #0
	bne .L0800EF64
	subs r7, #1
	cmp r7, #0
	ble .L0800EF64
	movs r3, #32
.L0800EF5A:
	strb r3, [r5, #0]
	adds r5, #1
	subs r7, #1
	cmp r7, #0
	bgt .L0800EF5A
.L0800EF64:
	adds r6, r2, #0
	adds r0, r5, #0
	adds r5, #1
	subs r1, r6, #4
	ldr r1, [r1, #0]
	strb r1, [r0, #0]
	subs r7, #1
	cmp r7, #0
	bgt .L0800EF78
	b .L0800F086
.L0800EF78:
	movs r0, #32
.L0800EF7A:
	strb r0, [r5, #0]
	adds r5, #1
	subs r7, #1
	cmp r7, #0
	bgt .L0800EF7A
	b .L0800F086
	adds r6, #4
	subs r0, r6, #4
	ldr r4, [r0, #0]
	cmp r4, #0
	bne .L0800EF92
	ldr r4, [pc, #88]
.L0800EF92:
	adds r0, r4, #0
	mov r1, ip
	str r3, [sp, #12]
	bl sub_0800EC40
	adds r2, r0, #0
	movs r0, #16
	ldr r3, [sp, #12]
	ands r3, r0
	cmp r3, #0
	bne .L0800EFBE
	adds r0, r7, #0
	subs r7, #1
	cmp r2, r0
	bge .L0800EFBE
	movs r1, #32
.L0800EFB2:
	strb r1, [r5, #0]
	adds r5, #1
	adds r0, r7, #0
	subs r7, #1
	cmp r2, r0
	blt .L0800EFB2
.L0800EFBE:
	subs r3, r7, #1
	cmp r2, #0
	ble .L0800EFD4
	adds r1, r2, #0
.L0800EFC6:
	ldrb r0, [r4, #0]
	strb r0, [r5, #0]
	adds r4, #1
	adds r5, #1
	subs r1, #1
	cmp r1, #0
	bne .L0800EFC6
.L0800EFD4:
	adds r0, r7, #0
	adds r7, r3, #0
	cmp r2, r0
	bge .L0800F086
	movs r1, #32
.L0800EFDE:
	strb r1, [r5, #0]
	adds r5, #1
	adds r0, r7, #0
	subs r7, #1
	cmp r2, r0
	blt .L0800EFDE
	b .L0800F086
	movs r0, #120
	lsls r1, r0, #8
	movs r0, #1
	negs r0, r0
	cmp r7, r0
	bne .L0800EFFE
	movs r7, #8
	movs r0, #1
	orrs r3, r0
.L0800EFFE:
	adds r6, #4
	subs r0, r6, #4
	ldr r1, [r0, #0]
	mov r2, ip
	str r2, [sp, #0]
	str r3, [sp, #4]
	adds r0, r5, #0
	movs r2, #16
	b .L0800F07E
	adds r6, #4
	subs r0, r6, #4
	ldr r1, [r0, #0]
	mov r2, r8
	subs r0, r5, r2
	str r0, [r1, #0]
	b .L0800F086
	movs r0, #37
.L0800F020:
	strb r0, [r5, #0]
	adds r5, #1
	b .L0800F086
	movs r2, #8
	b .L0800F052
	movs r0, #64
	orrs r3, r0
	movs r2, #16
	b .L0800F052
	movs r0, #2
	orrs r3, r0
	b .L0800F052
.L0800F038:
	movs r0, #37
	strb r0, [r5, #0]
	adds r5, #1
	ldr r0, [sp, #8]
	ldrb r1, [r0, #0]
	cmp r1, #0
	beq .L0800F04C
	strb r1, [r5, #0]
	adds r5, #1
	b .L0800F086
.L0800F04C:
	subs r0, #1
	str r0, [sp, #8]
	b .L0800F086
.L0800F052:
	cmp r4, #108
	beq .L0800F070
	cmp r4, #104
	bne .L0800F06E
	adds r6, #4
	subs r0, r6, #4
	ldrh r1, [r0, #0]
	movs r0, #2
	ands r0, r3
	cmp r0, #0
	beq .L0800F076
	lsls r0, r1, #16
	asrs r1, r0, #16
	b .L0800F076
.L0800F06E:
	movs r0, #2
.L0800F070:
	adds r6, #4
	subs r0, r6, #4
	ldr r1, [r0, #0]
.L0800F076:
	mov r0, ip
	str r0, [sp, #0]
	str r3, [sp, #4]
	adds r0, r5, #0
.L0800F07E:
	adds r3, r7, #0
	bl sub_0800EC60
	adds r5, r0, #0
.L0800F086:
	ldr r1, [sp, #8]
	adds r0, r1, #1
	str r0, [sp, #8]
	adds r2, r0, #0
	ldrb r0, [r1, #1]
	cmp r0, #0
	beq .L0800F096
	b .L0800EE42
.L0800F096:
	movs r0, #0
	strb r0, [r5, #0]
	mov r1, r8
	subs r0, r5, r1
	add sp, #16
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000
	.2byte 0xB40E

	.thumb
	.align 1, 0
	.global sub_0800F0AE
	.thumb_func
sub_0800F0AE:
	push {lr}
	ldr r1, [sp, #4]
	add r2, sp, #8
	bl sub_0800EE28
	pop {r3}
	add sp, #12
	bx r3
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_0800F0C0
	.thumb_func
sub_0800F0C0:
	str r2, [r1, #16]
	movs r2, #0
	strb r0, [r1, #1]
	strb r2, [r1, #0]
	strb r2, [r1, #2]
	movs r0, #0
	strh r2, [r1, #4]
	str r2, [r1, #20]
	strb r0, [r1, #8]
	strb r0, [r1, #11]
	strb r0, [r1, #9]
	strb r0, [r1, #10]
	strh r2, [r1, #6]
	strb r0, [r1, #13]
	strb r0, [r1, #12]
	strb r0, [r1, #14]
	bx lr
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_0800F0E4
	.thumb_func
sub_0800F0E4:
	movs r1, #0
	strb r1, [r0, #0]
	strb r1, [r0, #13]
	strb r1, [r0, #12]
	strb r1, [r0, #14]
	bx lr

	.thumb
	.align 1, 0
	.global sub_0800F0F0
	.thumb_func
sub_0800F0F0:
	push {r4, lr}
	ldr r4, [sp, #8]
	strb r1, [r0, #2]
	strh r2, [r0, #6]
	strh r3, [r0, #4]
	str r4, [r0, #20]
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_0800F104
	.thumb_func
sub_0800F104:
	push {r4, lr}
	ldr r4, [sp, #8]
	strb r1, [r0, #8]
	strb r2, [r0, #10]
	strb r3, [r0, #9]
	strb r4, [r0, #11]
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_0800F118
	.thumb_func
sub_0800F118:
	adds r1, r0, #0
	ldrb r2, [r1, #0]
	subs r0, r2, #1
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bls .L0800F12C
	ldrh r0, [r1, #6]
	cmp r0, #0
	bne .L0800F130
.L0800F12C:
	movs r0, #0
	b .L0800F142
.L0800F130:
	cmp r2, #0
	bne .L0800F140
	ldrb r0, [r1, #8]
	strb r0, [r1, #12]
	ldrb r0, [r1, #10]
	strb r0, [r1, #13]
	movs r0, #1
	strb r0, [r1, #0]
.L0800F140:
	movs r0, #1
.L0800F142:
	bx lr

	.thumb
	.align 1, 0
	.global sub_0800F144
	.thumb_func
sub_0800F144:
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0]
	cmp r0, #2
	bne .L0800F15E
	ldrb r0, [r4, #14]
	adds r1, r0, #0
	cmp r1, #0
	beq .L0800F15C
	subs r0, #1
	strb r0, [r4, #14]
	b .L0800F15E
.L0800F15C:
	strb r1, [r4, #0]
.L0800F15E:
	ldrb r0, [r4, #0]
	cmp r0, #1
	bne .L0800F1B0
	ldrb r0, [r4, #12]
	cmp r0, #0
	bne .L0800F1AC
	ldrb r0, [r4, #13]
	cmp r0, #0
	bne .L0800F184
	ldrb r1, [r4, #11]
	adds r0, r1, #0
	cmp r0, #0
	bne .L0800F17C
	strb r0, [r4, #0]
	b .L0800F1B0
.L0800F17C:
	movs r0, #2
	strb r0, [r4, #0]
	strb r1, [r4, #14]
	b .L0800F1B0
.L0800F184:
	subs r0, #1
	strb r0, [r4, #13]
	ldrb r0, [r4, #9]
	strb r0, [r4, #12]
	ldr r1, [r4, #20]
	adds r0, r4, #0
	bl sub_08012328
	ldrh r2, [r4, #6]
	adds r1, r2, #0
	ldr r0, [pc, #12]
	cmp r1, r0
	beq .L0800F1B0
	cmp r1, #0
	beq .L0800F1B0
	subs r0, r2, #1
	strh r0, [r4, #6]
	b .L0800F1B0
	.2byte 0xffff @ .raw
	movs r0, r0
.L0800F1AC:
	subs r0, #1
	strb r0, [r4, #12]
.L0800F1B0:
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_0800F1B8
	.thumb_func
sub_0800F1B8:
	movs r1, #0
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne .L0800F1C2
	movs r1, #1
.L0800F1C2:
	adds r0, r1, #0
	bx lr
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_0800F1C8
	.thumb_func
sub_0800F1C8:
	ldrh r2, [r0, #6]
	adds r1, r2, r1
	strh r1, [r0, #6]
	ldrh r2, [r0, #4]
	lsls r1, r1, #16
	lsrs r1, r1, #16
	cmp r1, r2
	bls .L0800F1DA
	strh r2, [r0, #6]
.L0800F1DA:
	bx lr
	.4byte 0xE92D0F00
	.4byte 0xE3A0C301
	.4byte 0xE59FB02C
	.4byte 0xE28BA028
	.4byte 0xE3A09001
	.4byte 0xE3A08000
	.4byte 0xE5CC8208
	.4byte 0xE89A0003
	.4byte 0xE8AA0002
	.4byte 0xE8AA0001
	.4byte 0xE5DB0005
	.4byte 0xE5CB8005
	.4byte 0xE5CC9208
	.4byte 0xE8BD0F00
	.4byte 0xE12FFF1E
	.4byte 0x030004C0

	.thumb
	.align 1, 0
	.global sub_0800F21C
	.thumb_func
sub_0800F21C:
	svc 12
	bx lr

	.thumb
	.align 1, 0
	.global sub_0800F220
	.thumb_func
sub_0800F220:
	svc 11
	bx lr

	.thumb
	.align 1, 0
	.global sub_0800F224
	.thumb_func
sub_0800F224:
	svc 6
	bx lr

	.thumb
	.align 1, 0
	.global sub_0800F228
	.thumb_func
sub_0800F228:
	movs r2, #0
	svc 4
	bx lr
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_0800F230
	.thumb_func
sub_0800F230:
	svc 8
	bx lr

	.thumb
	.align 1, 0
	.global sub_0800F234
	.thumb_func
sub_0800F234:
	movs r2, #0
	svc 5
	bx lr
	.2byte 0x0000

@ orphan_GAX_code2ram: same code as GAX_code2ram
	.thumb
	.align 1, 0
	.global sub_0800F23C
	.thumb_func
sub_0800F23C:
	.global orphan_GAX_code2ram
	.thumb_set orphan_GAX_code2ram, sub_0800F23C
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	subs r5, r1, r7
	ldr r6, [pc, #124]
	ldr r4, [r6, #0]
	adds r3, r4, #0
	adds r3, #128
	ldr r2, [r3, #0]
	movs r0, #3
	ands r0, r2
	cmp r0, #0
	beq .L0800F26A
	adds r0, r2, #4
	movs r1, #4
	negs r1, r1
	ands r0, r1
	subs r2, r0, r2
	str r0, [r3, #0]
	adds r1, r4, #0
	adds r1, #132
	ldr r0, [r1, #0]
	subs r0, r0, r2
	str r0, [r1, #0]
.L0800F26A:
	ldr r1, [r6, #0]
	ldr r0, [r1, #4]
	adds r0, #56
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq .L0800F288
	adds r0, r1, #0
	adds r0, #132
	ldr r0, [r0, #0]
	cmp r5, r0
	bls .L0800F288
	ldr r0, [pc, #64]
	ldr r1, [pc, #68]
	bl orphan_GAX_ASSERT
.L0800F288:
	ldr r0, [pc, #52]
	ldr r1, [r0, #0]
	adds r2, r1, #0
	adds r2, #132
	ldr r0, [r2, #0]
	subs r0, r0, r5
	str r0, [r2, #0]
	adds r1, #128
	ldr r4, [r1, #0]
	adds r0, r4, r5
	str r0, [r1, #0]
	adds r1, r5, #0
	cmp r1, #0
	bge .L0800F2A6
	adds r1, #3
.L0800F2A6:
	lsls r2, r1, #9
	lsrs r2, r2, #11
	movs r0, #128
	lsls r0, r0, #19
	orrs r2, r0
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_0800F220
	adds r0, r4, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.4byte 0x03000658
	.4byte 0x0201235C
	.4byte 0x02012368

@ orphan_GAX2_estimate: same code as GAX2_estimate
	.thumb
	.align 1, 0
	.global sub_0800F2CC
	.thumb_func
sub_0800F2CC:
	.global orphan_GAX2_estimate
	.thumb_set orphan_GAX2_estimate, sub_0800F2CC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	movs r4, #0
	movs r0, #0
	str r0, [sp, #0]
	ldr r0, [r7, #48]
	cmp r0, #0
	bne .L0800F2EA
	ldr r1, [pc, #20]
	str r1, [r7, #48]
.L0800F2EA:
	ldrh r1, [r7, #8]
	ldr r0, [pc, #16]
	cmp r1, r0
	bne .L0800F308
	ldr r0, [r7, #48]
	ldrh r6, [r0, #24]
	mov r8, r0
	b .L0800F30E
	movs r0, r0
	movs r2, #148
	lsls r1, r0, #8
	.2byte 0xffff @ .raw
	movs r0, r0
.L0800F304:
	adds r0, r2, #0
	b .L0800F334
.L0800F308:
	ldrh r6, [r7, #8]
	ldr r2, [r7, #48]
	mov r8, r2
.L0800F30E:
	ldr r5, [pc, #64]
	movs r2, #0
	mov r9, r5
	ldrh r3, [r7, #10]
	ldrh r0, [r7, #16]
	mov ip, r0
	ldr r1, [r7, #44]
	str r1, [sp, #4]
	ldrh r0, [r7, #14]
	mov sl, r0
	mov r1, r9
.L0800F324:
	ldrh r0, [r1, #0]
	cmp r0, r6
	bcs .L0800F304
	adds r1, #4
	adds r2, #1
	cmp r2, #12
	bls .L0800F324
	movs r0, #12
.L0800F334:
	lsls r0, r0, #2
	adds r0, r5, r0
	ldrh r6, [r0, #0]
	ldr r0, [pc, #24]
	cmp r3, r0
	bne .L0800F35C
	mov r1, r8
	ldrh r0, [r1, #26]
	adds r5, r6, #0
	cmp r0, #0
	beq .L0800F35E
	adds r5, r0, #0
	b .L0800F35E
	movs r0, r0
	movs r2, #96
	lsls r1, r0, #8
	.2byte 0xffff @ .raw
	movs r0, r0
.L0800F358:
	adds r0, r1, #0
	b .L0800F374
.L0800F35C:
	ldrh r5, [r7, #10]
.L0800F35E:
	mov r3, r9
	movs r1, #0
	adds r2, r3, #0
.L0800F364:
	ldrh r0, [r2, #0]
	cmp r0, r5
	bcs .L0800F358
	adds r2, #4
	adds r1, #1
	cmp r1, #12
	bls .L0800F364
	movs r0, #12
.L0800F374:
	lsls r0, r0, #2
	adds r0, r3, r0
	ldrh r5, [r0, #0]
	ldr r2, [pc, #28]
	cmp r8, r2
	bne .L0800F382
	adds r6, r5, #0
.L0800F382:
	cmp r5, r6
	beq .L0800F38A
	movs r0, #1
	str r0, [sp, #0]
.L0800F38A:
	ldr r0, [pc, #16]
	cmp ip, r0
	bne .L0800F3A0
	mov r1, r8
	ldrb r3, [r1, #28]
	b .L0800F3A2
	movs r0, r0
	movs r2, #148
	lsls r1, r0, #8
	.2byte 0xffff @ .raw
	movs r0, r0
.L0800F3A0:
	ldrh r3, [r7, #16]
.L0800F3A2:
	ldr r2, [sp, #4]
	cmp r2, #0
	bne .L0800F3AC
	movs r3, #0
	strh r3, [r7, #16]
.L0800F3AC:
	adds r2, r4, #0
	adds r2, #140
	adds r0, r3, #4
	movs r1, #4
	negs r1, r1
	ands r0, r1
	adds r4, r2, r0
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #4
	adds r4, r4, r0
	movs r0, #64
	mov r1, sl
	ands r0, r1
	cmp r0, #0
	beq .L0800F3D0
	ldr r2, [pc, #124]
	adds r4, r4, r2
.L0800F3D0:
	adds r4, #8
	ldr r0, [sp, #0]
	cmp r0, #0
	beq .L0800F3DA
	adds r4, #8
.L0800F3DA:
	adds r1, r5, #0
	cmp r5, r6
	bcs .L0800F3E2
	adds r1, r6, #0
.L0800F3E2:
	lsls r0, r1, #5
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r1, [pc, #96]
	mov r9, r1
	bl sub_080127CC
	adds r0, #4
	lsls r0, r0, #1
	adds r4, r4, r0
	lsls r0, r6, #5
	subs r0, r0, r6
	lsls r0, r0, #2
	adds r0, r0, r6
	lsls r0, r0, #3
	mov r1, r9
	bl sub_080127CC
	lsls r0, r0, #1
	adds r4, r4, r0
	ldr r2, [sp, #0]
	cmp r2, #0
	beq .L0800F428
	lsls r0, r5, #5
	subs r0, r0, r5
	lsls r0, r0, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	mov r1, r9
	bl sub_080127CC
	lsls r0, r0, #1
	adds r4, r4, r0
.L0800F428:
	movs r0, #16
	mov r1, sl
	ands r0, r1
	cmp r0, #0
	bne .L0800F454
	mov r0, r8
	adds r0, #196
	ldr r1, [r0, #0]
	cmp r1, #0
	beq .L0800F454
	subs r0, #8
	ldr r2, [r0, #0]
	adds r4, #76
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r4, r4, r0
	b .L0800F45A
	lsls r4, r4, #30
	movs r0, r0
	.2byte 0xe94f @ .raw
	movs r0, r0
.L0800F454:
	mov r0, r8
	adds r0, #192
	ldr r2, [r0, #0]
.L0800F45A:
	cmp r2, #0
	beq .L0800F47E
	adds r0, r2, #0
	muls r0, r6
	movs r1, #250
	lsls r1, r1, #2
	bl sub_080127CC
	lsls r0, r0, #1
	adds r4, r4, r0
	adds r4, #4
	movs r0, #4
	negs r0, r0
	ands r4, r0
	ldr r0, [pc, #80]
	ldr r1, [pc, #80]
	subs r0, r0, r1
	adds r4, r4, r0
.L0800F47E:
	movs r0, #4
	mov r2, sl
	ands r0, r2
	cmp r0, #0
	beq .L0800F490
	ldr r0, [pc, #68]
	ldr r1, [pc, #72]
	subs r0, r0, r1
	adds r4, r4, r0
.L0800F490:
	ldr r1, [pc, #68]
	ldr r2, [pc, #72]
	subs r0, r1, r2
	adds r4, r4, r0
	ldr r1, [pc, #68]
	ldr r2, [pc, #72]
	subs r0, r1, r2
	adds r4, r4, r0
	ldr r1, [pc, #68]
	ldr r2, [pc, #72]
	subs r0, r1, r2
	adds r4, r4, r0
	adds r4, #76
	mov r0, r8
	ldrb r1, [r0, #0]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r4, r4, r0
	str r4, [r7, #4]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.4byte 0x0200CD68
	.4byte 0x0200CC6C
	.4byte 0x0200CC6C
	.4byte 0x0200CBA0
	.4byte 0x0200CBA0
	.4byte 0x0200CA80
	.4byte 0x0200CDF0
	.4byte 0x0200CD7C
	.4byte 0x0200CEA8
	.4byte 0x0200CDF0

@ orphan_GAX2_new: same code as GAX2_new
	.thumb
	.align 1, 0
	.global sub_0800F4F0
	.thumb_func
sub_0800F4F0:
	.global orphan_GAX2_new
	.thumb_set orphan_GAX2_new, sub_0800F4F0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r6, r0, #0
	cmp r6, #0
	bne .L0800F510
	ldr r0, [pc, #8]
	ldr r1, [pc, #8]
	bl orphan_GAX_ASSERT
	b .L0800F588
	movs r3, #120
	lsls r1, r0, #8
	movs r3, #132
	lsls r1, r0, #8
.L0800F510:
	adds r4, r6, #0
	movs r7, #60
	movs r0, #3
	ands r0, r6
	movs r1, #56
	adds r1, r1, r6
	mov r8, r1
	cmp r0, #0
	beq .L0800F534
	movs r2, #0
	movs r1, #3
.L0800F526:
	strb r2, [r4, #0]
	adds r4, #1
	subs r7, #1
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	bne .L0800F526
.L0800F534:
	movs r0, #0
	str r0, [sp, #0]
	movs r5, #32
	negs r5, r5
	ands r5, r7
	adds r2, r5, #0
	cmp r5, #0
	bge .L0800F546
	adds r2, r5, #3
.L0800F546:
	lsls r2, r2, #9
	lsrs r2, r2, #11
	movs r0, #128
	lsls r0, r0, #17
	orrs r2, r0
	mov r0, sp
	adds r1, r4, #0
	bl sub_0800F21C
	adds r0, r4, r5
	subs r1, r7, r5
	cmp r1, #0
	ble .L0800F56E
	movs r3, #0
	adds r2, r1, #0
.L0800F564:
	strb r3, [r0, #0]
	adds r0, #1
	subs r2, #1
	cmp r2, #0
	bne .L0800F564
.L0800F56E:
	ldr r0, [pc, #36]
	strh r0, [r6, #8]
	movs r0, #1
	negs r0, r0
	strh r0, [r6, #10]
	movs r0, #0
	strh r0, [r6, #12]
	subs r0, #1
	strh r0, [r6, #16]
	strh r0, [r6, #18]
	movs r0, #1
	mov r1, r8
	strb r0, [r1, #0]
.L0800F588:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.4byte 0x0000FFFF

@ orphan_GAX2_init_volboost: same code as GAX2_init_volboost
	.thumb
	.align 1, 0
	.global sub_0800F598
	.thumb_func
sub_0800F598:
	.global orphan_GAX2_init_volboost
	.thumb_set orphan_GAX2_init_volboost, sub_0800F598
	push {r4, r5, r6, lr}
	ldr r5, [pc, #72]
	ldr r2, [r5, #0]
	ldr r1, [r2, #32]
	lsls r1, r1, #2
	adds r0, r2, #0
	adds r0, #24
	adds r0, r0, r1
	ldr r0, [r0, #0]
	ldr r0, [r0, #36]
	ldrh r1, [r0, #8]
	movs r0, #128
	lsls r0, r0, #2
	cmp r1, r0
	bls .L0800F5FC
	adds r1, r2, #0
	adds r1, #88
	movs r0, #2
	strb r0, [r1, #0]
	ldr r0, [r5, #0]
	ldr r3, [pc, #36]
	ldr r2, [pc, #40]
	subs r2, r3, r2
	ldr r1, [r0, #96]
	subs r4, r1, r2
	ldr r0, [pc, #36]
	subs r3, r3, r0
	subs r1, r1, r3
	ldr r6, [pc, #32]
	adds r0, r6, #0
	strh r0, [r1, #0]
	strh r0, [r4, #0]
	ldr r0, [r5, #0]
	ldr r0, [r0, #96]
	subs r2, r0, r2
	subs r0, r0, r3
	ldr r3, [pc, #20]
	b .L0800F674
	lsls r0, r3, #25
	lsls r0, r0, #12
	ldmia r5, {r2, r3, r4, r5, r6}
	lsls r0, r0, #8
	ldmia r5!, {r4, r6, r7}
	lsls r0, r0, #8
	ldmia r6, {r2, r3, r6}
	lsls r0, r0, #8
	str r0, [sp, #684]
	movs r0, r0
	add r0, pc, #672
	movs r0, r0
.L0800F5FC:
	movs r0, #128
	lsls r0, r0, #1
	cmp r1, r0
	bls .L0800F648
	adds r1, r2, #0
	adds r1, #88
	movs r0, #1
	strb r0, [r1, #0]
	ldr r0, [r5, #0]
	ldr r3, [pc, #36]
	ldr r2, [pc, #36]
	subs r2, r3, r2
	ldr r1, [r0, #96]
	subs r4, r1, r2
	ldr r0, [pc, #32]
	subs r3, r3, r0
	subs r1, r1, r3
	ldr r6, [pc, #32]
	adds r0, r6, #0
	strh r0, [r1, #0]
	strh r0, [r4, #0]
	ldr r0, [r5, #0]
	ldr r0, [r0, #96]
	subs r2, r0, r2
	subs r0, r0, r3
	ldr r3, [pc, #20]
	b .L0800F674
	movs r0, r0
	ldmia r5, {r2, r3, r4, r5, r6}
	lsls r0, r0, #8
	ldmia r5!, {r4, r6, r7}
	lsls r0, r0, #8
	ldmia r6, {r2, r3, r6}
	lsls r0, r0, #8
	str r1, [sp, #172]
	movs r0, r0
	add r1, pc, #160
	movs r0, r0
.L0800F648:
	adds r1, r2, #0
	adds r1, #88
	movs r0, #0
	strb r0, [r1, #0]
	ldr r0, [r5, #0]
	ldr r3, [pc, #44]
	ldr r2, [pc, #44]
	subs r2, r3, r2
	ldr r1, [r0, #96]
	subs r4, r1, r2
	ldr r0, [pc, #40]
	subs r3, r3, r0
	subs r1, r1, r3
	ldr r6, [pc, #40]
	adds r0, r6, #0
	strh r0, [r1, #0]
	strh r0, [r4, #0]
	ldr r0, [r5, #0]
	ldr r0, [r0, #96]
	subs r2, r0, r2
	subs r0, r0, r3
	ldr r3, [pc, #28]
.L0800F674:
	adds r1, r3, #0
	strh r1, [r0, #4]
	strh r1, [r2, #4]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.4byte 0x0200CD7C
	.4byte 0x0200CDD0
	.4byte 0x0200CE4C
	.4byte 0x000091AB
	.4byte 0x0000A1A8

@ orphan_GAX2_init_song: same code as GAX2_init_song
	.thumb
	.align 1, 0
	.global sub_0800F694
	.thumb_func
sub_0800F694:
	.global orphan_GAX2_init_song
	.thumb_set orphan_GAX2_init_song, sub_0800F694
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #12
	mov r9, r0
	ldrb r0, [r0, #0]
	mov r8, r0
	ldr r5, [pc, #432]
	ldr r4, [r5, #0]
	adds r3, r4, #0
	adds r3, #128
	ldr r2, [r3, #0]
	movs r0, #3
	ands r0, r2
	cmp r0, #0
	beq .L0800F6CE
	adds r0, r2, #4
	movs r1, #4
	negs r1, r1
	ands r0, r1
	subs r2, r0, r2
	str r0, [r3, #0]
	adds r1, r4, #0
	adds r1, #132
	ldr r0, [r1, #0]
	subs r0, r0, r2
	str r0, [r1, #0]
.L0800F6CE:
	ldr r1, [r5, #0]
	ldr r0, [r1, #4]
	adds r0, #56
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq .L0800F6EE
	adds r0, r1, #0
	adds r0, #132
	ldr r1, [r0, #0]
	movs r0, #76
	cmp r0, r1
	bls .L0800F6EE
	ldr r0, [pc, #372]
	ldr r1, [pc, #372]
	bl orphan_GAX_ASSERT
.L0800F6EE:
	ldr r1, [pc, #360]
	mov sl, r1
	ldr r2, [r1, #0]
	adds r6, r2, #0
	adds r6, #132
	ldr r0, [r6, #0]
	subs r0, #76
	mov ip, r0
	str r0, [r6, #0]
	adds r5, r2, #0
	adds r5, #128
	ldr r3, [r5, #0]
	adds r4, r3, #0
	adds r4, #76
	str r4, [r5, #0]
	ldr r1, [r2, #32]
	lsls r1, r1, #2
	adds r0, r2, #0
	adds r0, #24
	adds r0, r0, r1
	str r3, [r0, #0]
	mov r1, r8
	lsls r0, r1, #3
	add r0, r8
	lsls r7, r0, #3
	movs r0, #3
	ands r0, r4
	cmp r0, #0
	beq .L0800F73C
	adds r0, r3, #0
	adds r0, #80
	movs r1, #4
	negs r1, r1
	ands r0, r1
	subs r1, r0, r4
	str r0, [r5, #0]
	mov r4, ip
	subs r1, r4, r1
	str r1, [r6, #0]
.L0800F73C:
	mov r0, sl
	ldr r1, [r0, #0]
	ldr r0, [r1, #4]
	adds r0, #56
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq .L0800F75C
	adds r0, r1, #0
	adds r0, #132
	ldr r0, [r0, #0]
	cmp r7, r0
	bls .L0800F75C
	ldr r0, [pc, #260]
	ldr r1, [pc, #264]
	bl orphan_GAX_ASSERT
.L0800F75C:
	ldr r3, [pc, #248]
	ldr r4, [r3, #0]
	adds r1, r4, #0
	adds r1, #132
	ldr r0, [r1, #0]
	subs r0, r0, r7
	str r0, [r1, #0]
	subs r1, #4
	ldr r2, [r1, #0]
	adds r0, r2, r7
	str r0, [r1, #0]
	ldr r1, [r4, #32]
	lsls r1, r1, #2
	adds r0, r4, #0
	adds r0, #24
	adds r0, r0, r1
	ldr r0, [r0, #0]
	str r2, [r0, #32]
	mov r1, r9
	str r1, [r0, #36]
	movs r7, #0
	mov sl, r3
	cmp r7, r8
	bge .L0800F7A8
	movs r2, #0
.L0800F78E:
	ldr r0, [r3, #0]
	ldr r1, [r0, #32]
	lsls r1, r1, #2
	adds r0, #24
	adds r0, r0, r1
	ldr r0, [r0, #0]
	ldr r0, [r0, #32]
	adds r0, r2, r0
	strb r7, [r0, #13]
	adds r2, #72
	adds r7, #1
	cmp r7, r8
	blt .L0800F78E
.L0800F7A8:
	mov r4, sl
	ldr r2, [r4, #0]
	adds r0, r2, #0
	adds r0, #92
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq .L0800F842
	movs r0, #0
	mov r8, r0
	ldr r1, [r2, #32]
	lsls r1, r1, #2
	adds r0, r2, #0
	adds r0, #24
	adds r0, r0, r1
	ldr r1, [r0, #0]
	mov r0, r9
	adds r0, #160
	ldr r0, [r0, #0]
	str r0, [r1, #40]
	movs r7, #0
	mov r3, r9
	adds r3, #176
	movs r1, #164
	add r9, r1
.L0800F7D8:
	mov r4, sl
	ldr r5, [r4, #0]
	ldr r0, [r5, #32]
	lsls r0, r0, #2
	adds r6, r5, #0
	adds r6, #24
	adds r0, r6, r0
	ldr r4, [r0, #0]
	lsls r2, r7, #2
	adds r4, #44
	adds r4, r4, r2
	str r4, [sp, #8]
	ldr r0, [r5, #36]
	ldrh r1, [r0, #2]
	mov r4, r9
	adds r4, #4
	mov r9, r4
	subs r4, #4
	ldmia r4!, {r0}
	muls r0, r1
	movs r1, #250
	lsls r1, r1, #2
	str r2, [sp, #0]
	str r3, [sp, #4]
	bl sub_080127CC
	lsls r0, r0, #1
	ldr r1, [sp, #8]
	str r0, [r1, #0]
	ldr r0, [r5, #32]
	lsls r0, r0, #2
	adds r6, r6, r0
	ldr r0, [r6, #0]
	adds r0, #56
	ldr r2, [sp, #0]
	adds r0, r0, r2
	ldr r3, [sp, #4]
	ldr r1, [r3, #0]
	str r1, [r0, #0]
	ldmia r3!, {r0}
	add r8, r0
	adds r7, #1
	cmp r7, #2
	ble .L0800F7D8
	mov r4, sl
	ldr r0, [r4, #0]
	ldr r1, [r0, #32]
	lsls r1, r1, #2
	adds r0, #24
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov r1, r8
	str r1, [r0, #68]
.L0800F842:
	bl orphan_GAX2_init_volboost
	add sp, #12
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x03000658
	.4byte 0x0201235C
	.4byte 0x02012368

@ orphan_GAX2_init_soundhw: same code as GAX2_init_soundhw
	.thumb
	.align 1, 0
	.global sub_0800F864
	.thumb_func
sub_0800F864:
	.global orphan_GAX2_init_soundhw
	.thumb_set orphan_GAX2_init_soundhw, sub_0800F864
	push {r4, lr}
	ldr r1, [pc, #108]
	ldr r0, [r1, #0]
	ldr r2, [r0, #40]
	adds r4, r1, #0
	cmp r2, #0
	beq .L0800F8F4
	ldr r0, [pc, #100]
	ldr r1, [pc, #100]
	adds r2, r1, #0
	strh r2, [r0, #0]
	.2byte 0x1c1b @ .raw adds r3, r3, #0
	.2byte 0x46c0 @ .raw nop
	.2byte 0x46c0 @ .raw nop
	.2byte 0x46c0 @ .raw nop
	movs r3, #200
	lsls r3, r3, #3
	adds r1, r3, #0
	strh r1, [r0, #0]
	adds r0, #12
	strh r2, [r0, #0]
	.2byte 0x1c1b @ .raw adds r3, r3, #0
	.2byte 0x46c0 @ .raw nop
	.2byte 0x46c0 @ .raw nop
	.2byte 0x46c0 @ .raw nop
	strh r1, [r0, #0]
	subs r0, #14
	movs r1, #4
	str r1, [r0, #0]
	adds r0, #12
	str r1, [r0, #0]
	ldr r1, [pc, #60]
	movs r0, #0
	strh r0, [r1, #0]
	subs r1, #2
	ldr r2, [pc, #56]
	adds r0, r2, #0
	strh r0, [r1, #0]
	ldr r3, [pc, #52]
	movs r1, #0
	ldr r2, [pc, #52]
	movs r0, #7
.L0800F8B8:
	strh r1, [r3, #0]
	strh r1, [r2, #0]
	subs r0, #1
	cmp r0, #0
	bge .L0800F8B8
	ldr r1, [pc, #44]
	ldr r0, [pc, #36]
	str r0, [r1, #0]
	subs r1, #4
	ldr r0, [r4, #0]
	ldr r0, [r0, #52]
	str r0, [r1, #0]
	b .L0800F92C
	movs r0, r0
	lsls r0, r3, #25
	lsls r0, r0, #12
	lsls r6, r0, #3
	lsls r0, r0, #16
	strh r0, [r0, #50]
	movs r0, r0
	lsls r4, r0, #2
	lsls r0, r0, #16
	.2byte 0xfb0c @ .raw
	movs r0, r0
	lsls r0, r4, #2
	lsls r0, r0, #16
	lsls r4, r4, #2
	lsls r0, r0, #16
	lsls r4, r1, #3
	lsls r0, r0, #16
.L0800F8F4:
	ldr r1, [pc, #80]
	ldr r3, [pc, #84]
	adds r0, r3, #0
	strh r0, [r1, #0]
	.2byte 0x1c1b @ .raw adds r3, r3, #0
	.2byte 0x46c0 @ .raw nop
	.2byte 0x46c0 @ .raw nop
	.2byte 0x46c0 @ .raw nop
	movs r3, #200
	lsls r3, r3, #3
	adds r0, r3, #0
	strh r0, [r1, #0]
	subs r1, #2
	movs r0, #4
	str r0, [r1, #0]
	ldr r0, [pc, #60]
	strh r2, [r0, #0]
	subs r1, #66
	ldr r2, [pc, #56]
	adds r0, r2, #0
	strh r0, [r1, #0]
	ldr r2, [pc, #56]
	movs r1, #0
	movs r0, #7
.L0800F924:
	strh r1, [r2, #0]
	subs r0, #1
	cmp r0, #0
	bge .L0800F924
.L0800F92C:
	ldr r1, [pc, #44]
	movs r0, #66
	strb r0, [r1, #0]
	adds r1, #55
	ldr r0, [pc, #32]
	str r0, [r1, #0]
	subs r1, #4
	ldr r0, [r4, #0]
	ldr r0, [r0, #48]
	str r0, [r1, #0]
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x040000C6
	.4byte 0x00008640
	.4byte 0x04000084
	.4byte 0x00000B04
	.4byte 0x040000A0
	.4byte 0x04000089

@ orphan_GAX_open: same code as GAX_open
	.thumb
	.align 1, 0
	.global sub_0800F960
	.thumb_func
sub_0800F960:
	.global orphan_GAX_open
	.thumb_set orphan_GAX_open, sub_0800F960
	push {r4, r5, r6, lr}
	ldr r4, [pc, #148]
	ldr r0, [r4, #0]
	ldr r1, [r0, #32]
	lsls r1, r1, #2
	adds r0, #24
	adds r0, r0, r1
	ldr r0, [r0, #0]
	bl orphan_GAXOutput_open
	ldr r0, [r4, #0]
	ldr r1, [r0, #36]
	str r1, [r0, #44]
	movs r5, #0
	ldr r1, [r0, #32]
	lsls r1, r1, #2
	adds r0, #24
	adds r0, r0, r1
	ldr r0, [r0, #0]
	ldr r0, [r0, #36]
	ldrb r0, [r0, #0]
	cmp r5, r0
	bge .L0800F9CE
	adds r6, r4, #0
	movs r4, #0
.L0800F992:
	ldr r0, [r6, #0]
	ldr r1, [r0, #32]
	lsls r1, r1, #2
	adds r0, #24
	adds r0, r0, r1
	ldr r0, [r0, #0]
	ldr r0, [r0, #32]
	adds r0, r0, r4
	bl orphan_GAXTracker_open
	ldr r0, [r6, #0]
	ldr r1, [r0, #32]
	lsls r1, r1, #2
	adds r0, #24
	adds r0, r0, r1
	ldr r0, [r0, #0]
	ldr r2, [r0, #32]
	adds r2, r4, r2
	ldr r3, [r0, #36]
	lsls r1, r5, #2
	adds r0, r3, #0
	adds r0, #32
	adds r0, r0, r1
	ldr r0, [r0, #0]
	str r0, [r2, #52]
	adds r4, #72
	adds r5, #1
	ldrb r3, [r3, #0]
	cmp r5, r3
	blt .L0800F992
.L0800F9CE:
	ldr r4, [pc, #40]
	ldr r0, [r4, #0]
	ldr r1, [r0, #32]
	lsls r1, r1, #2
	adds r0, #24
	adds r0, r0, r1
	ldr r0, [r0, #0]
	bl orphan_GAXSync_open
	ldr r0, [r4, #0]
	ldr r1, [r0, #32]
	lsls r1, r1, #2
	adds r0, #24
	adds r0, r0, r1
	ldr r1, [r0, #0]
	ldr r0, [r1, #36]
	str r0, [r1, #0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x03000658

@ orphan_GAX2_init: same code as GAX2_init
	.thumb
	.align 1, 0
	.global sub_0800F9FC
	.thumb_func
sub_0800F9FC:
	.global orphan_GAX2_init
	.thumb_set orphan_GAX2_init, sub_0800F9FC
	.2byte 0xb5f0 @ push {r4, r5, r6, r7, lr}
	.2byte 0x4657 @ mov r7, sl
	.2byte 0x464e @ mov r6, r9
	.2byte 0x4645 @ mov r5, r8
	.2byte 0xb4e0 @ push {r5, r6, r7}
	.2byte 0xb081 @ sub sp, #4
	.2byte 0x1c07 @ adds r7, r0, #0
	.2byte 0x2600 @ movs r6, #0
	.2byte 0x480e @ ldr r0, [pc, #56]
	.2byte 0x6839 @ ldr r1, [r7, #0]
	.2byte 0x6001 @ str r1, [r0, #0]
	.2byte 0x6b39 @ ldr r1, [r7, #48]
	.2byte 0x4681 @ mov r9, r0
	.2byte 0x480d @ ldr r0, [pc, #52]
	.2byte 0x4684 @ mov ip, r0
	.2byte 0x2900 @ cmp r1, #0
	.2byte 0xd100 @ bne.n 0x800fa20
	.2byte 0x6338 @ str r0, [r7, #48]
	.2byte 0x6afd @ ldr r5, [r7, #44]
	.2byte 0x2d00 @ cmp r5, #0
	.2byte 0xd100 @ bne.n 0x800fa28
	.2byte 0x823e @ strh r6, [r7, #16]
	.2byte 0x8938 @ ldrh r0, [r7, #8]
	.2byte 0x4909 @ ldr r1, [pc, #36]
	.2byte 0x6b3b @ ldr r3, [r7, #48]
	.2byte 0x4288 @ cmp r0, r1
	.2byte 0xd101 @ bne.n 0x800fa36
	.2byte 0x8b18 @ ldrh r0, [r3, #24]
	.2byte 0x8138 @ strh r0, [r7, #8]
	.2byte 0x8978 @ ldrh r0, [r7, #10]
	.2byte 0x4288 @ cmp r0, r1
	.2byte 0xd111 @ bne.n 0x800fa60
	.2byte 0x2d00 @ cmp r5, #0
	.2byte 0xd00f @ beq.n 0x800fa60
	.2byte 0x8b58 @ ldrh r0, [r3, #26]
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd00a @ beq.n 0x800fa5c
	.2byte 0xe00a @ b.n 0x800fa5e
	.2byte 0x0658 @ lsls r0, r3, #25
	.2byte 0x0300 @ lsls r0, r0, #12
	.2byte 0x2294 @ movs r2, #148
	.2byte 0x0201 @ lsls r1, r0, #8
	.2byte 0xffff @ .raw
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x1c08 @ adds r0, r1, #0
	.2byte 0xe01a @ b.n 0x800fa8e
	.2byte 0x1c08 @ adds r0, r1, #0
	.2byte 0xe029 @ b.n 0x800fab0
	.2byte 0x8938 @ ldrh r0, [r7, #8]
	.2byte 0x8178 @ strh r0, [r7, #10]
	.2byte 0x8a38 @ ldrh r0, [r7, #16]
	.2byte 0x4922 @ ldr r1, [pc, #136]
	.2byte 0x4288 @ cmp r0, r1
	.2byte 0xd101 @ bne.n 0x800fa6c
	.2byte 0x7f18 @ ldrb r0, [r3, #28]
	.2byte 0x8238 @ strh r0, [r7, #16]
	.2byte 0x8a78 @ ldrh r0, [r7, #18]
	.2byte 0x4288 @ cmp r0, r1
	.2byte 0xd101 @ bne.n 0x800fa76
	.2byte 0x20ff @ movs r0, #255
	.2byte 0x8278 @ strh r0, [r7, #18]
	.2byte 0x893c @ ldrh r4, [r7, #8]
	.2byte 0x2100 @ movs r1, #0
	.2byte 0x4a1d @ ldr r2, [pc, #116]
	.2byte 0x4690 @ mov r8, r2
	.2byte 0x8810 @ ldrh r0, [r2, #0]
	.2byte 0x42a0 @ cmp r0, r4
	.2byte 0xd2e7 @ bcs.n 0x800fa54
	.2byte 0x3204 @ adds r2, #4
	.2byte 0x3101 @ adds r1, #1
	.2byte 0x290c @ cmp r1, #12
	.2byte 0xd9f8 @ bls.n 0x800fa7e
	.2byte 0x200c @ movs r0, #12
	.2byte 0x0080 @ lsls r0, r0, #2
	.2byte 0x4440 @ add r0, r8
	.2byte 0x8800 @ ldrh r0, [r0, #0]
	.2byte 0x8138 @ strh r0, [r7, #8]
	.2byte 0x2d00 @ cmp r5, #0
	.2byte 0xd00d @ beq.n 0x800fab6
	.2byte 0x897c @ ldrh r4, [r7, #10]
	.2byte 0x2100 @ movs r1, #0
	.2byte 0x4642 @ mov r2, r8
	.2byte 0x8810 @ ldrh r0, [r2, #0]
	.2byte 0x42a0 @ cmp r0, r4
	.2byte 0xd2d8 @ bcs.n 0x800fa58
	.2byte 0x3204 @ adds r2, #4
	.2byte 0x3101 @ adds r1, #1
	.2byte 0x290c @ cmp r1, #12
	.2byte 0xd9f8 @ bls.n 0x800faa0
	.2byte 0x200c @ movs r0, #12
	.2byte 0x0080 @ lsls r0, r0, #2
	.2byte 0x4440 @ add r0, r8
	.2byte 0x8800 @ ldrh r0, [r0, #0]
	.2byte 0x8178 @ strh r0, [r7, #10]
	.2byte 0x8978 @ ldrh r0, [r7, #10]
	.2byte 0x4563 @ cmp r3, ip
	.2byte 0xd100 @ bne.n 0x800fac0
	.2byte 0x8138 @ strh r0, [r7, #8]
	.2byte 0x0400 @ lsls r0, r0, #16
	.2byte 0x0c00 @ lsrs r0, r0, #16
	.2byte 0x893b @ ldrh r3, [r7, #8]
	.2byte 0x4298 @ cmp r0, r3
	.2byte 0xd018 @ beq.n 0x800fafc
	.2byte 0x89f9 @ ldrh r1, [r7, #14]
	.2byte 0x2022 @ movs r0, #34
	.2byte 0x4008 @ ands r0, r1
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd013 @ beq.n 0x800fafc
	.2byte 0x1c38 @ adds r0, r7, #0
	.2byte 0x3038 @ adds r0, #56
	.2byte 0x7800 @ ldrb r0, [r0, #0]
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd003 @ beq.n 0x800fae6
	.2byte 0x4805 @ ldr r0, [pc, #20]
	.2byte 0x4905 @ ldr r1, [pc, #20]
	.2byte 0xf001, 0xf813 @ bl 0x8010b0c
	.2byte 0x2000 @ movs r0, #0
	.2byte 0xf000, 0xfbfa @ bl 0x80102e0
	.2byte 0xffff @ .raw
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x2260 @ movs r2, #96
	.2byte 0x0201 @ lsls r1, r0, #8
	.2byte 0x235c @ movs r3, #92
	.2byte 0x0201 @ lsls r1, r0, #8
	.2byte 0x23bc @ movs r3, #188
	.2byte 0x0201 @ lsls r1, r0, #8
	.2byte 0x4648 @ mov r0, r9
	.2byte 0x6804 @ ldr r4, [r0, #0]
	.2byte 0x1c22 @ adds r2, r4, #0
	.2byte 0x3280 @ adds r2, #128
	.2byte 0x8a38 @ ldrh r0, [r7, #16]
	.2byte 0x3004 @ adds r0, #4
	.2byte 0x2304 @ movs r3, #4
	.2byte 0x425b @ negs r3, r3
	.2byte 0x4018 @ ands r0, r3
	.2byte 0x308c @ adds r0, #140
	.2byte 0x6839 @ ldr r1, [r7, #0]
	.2byte 0x1809 @ adds r1, r1, r0
	.2byte 0x6011 @ str r1, [r2, #0]
	.2byte 0x3204 @ adds r2, #4
	.2byte 0x6879 @ ldr r1, [r7, #4]
	.2byte 0x398c @ subs r1, #140
	.2byte 0x8a38 @ ldrh r0, [r7, #16]
	.2byte 0x3004 @ adds r0, #4
	.2byte 0x4018 @ ands r0, r3
	.2byte 0x1a09 @ subs r1, r1, r0
	.2byte 0x6011 @ str r1, [r2, #0]
	.2byte 0x4832 @ ldr r0, [pc, #200]
	.2byte 0x6020 @ str r0, [r4, #0]
	.2byte 0x6067 @ str r7, [r4, #4]
	.2byte 0x2200 @ movs r2, #0
	.2byte 0x6562 @ str r2, [r4, #84]
	.2byte 0x6222 @ str r2, [r4, #32]
	.2byte 0x1c20 @ adds r0, r4, #0
	.2byte 0x305c @ adds r0, #92
	.2byte 0x7002 @ strb r2, [r0, #0]
	.2byte 0x4649 @ mov r1, r9
	.2byte 0x6808 @ ldr r0, [r1, #0]
	.2byte 0x305a @ adds r0, #90
	.2byte 0x7002 @ strb r2, [r0, #0]
	.2byte 0x6808 @ ldr r0, [r1, #0]
	.2byte 0x305b @ adds r0, #91
	.2byte 0x7002 @ strb r2, [r0, #0]
	.2byte 0x6808 @ ldr r0, [r1, #0]
	.2byte 0x305d @ adds r0, #93
	.2byte 0x2101 @ movs r1, #1
	.2byte 0x7001 @ strb r1, [r0, #0]
	.2byte 0x464b @ mov r3, r9
	.2byte 0x6818 @ ldr r0, [r3, #0]
	.2byte 0x6442 @ str r2, [r0, #68]
	.2byte 0x6402 @ str r2, [r0, #64]
	.2byte 0x2400 @ movs r4, #0
	.2byte 0x203b @ movs r0, #59
	.2byte 0x19c0 @ adds r0, r0, r7
	.2byte 0x4682 @ mov sl, r0
	.2byte 0x8a39 @ ldrh r1, [r7, #16]
	.2byte 0x428c @ cmp r4, r1
	.2byte 0xd209 @ bcs.n 0x800fb78
	.2byte 0x464a @ mov r2, r9
	.2byte 0x2100 @ movs r1, #0
	.2byte 0x6810 @ ldr r0, [r2, #0]
	.2byte 0x3088 @ adds r0, #136
	.2byte 0x1900 @ adds r0, r0, r4
	.2byte 0x7001 @ strb r1, [r0, #0]
	.2byte 0x3401 @ adds r4, #1
	.2byte 0x8a3b @ ldrh r3, [r7, #16]
	.2byte 0x429c @ cmp r4, r3
	.2byte 0xd3f7 @ bcc.n 0x800fb68
	.2byte 0x6af9 @ ldr r1, [r7, #44]
	.2byte 0x2900 @ cmp r1, #0
	.2byte 0xd040 @ beq.n 0x800fc00
	.2byte 0x4d1d @ ldr r5, [pc, #116]
	.2byte 0x682b @ ldr r3, [r5, #0]
	.2byte 0x6099 @ str r1, [r3, #8]
	.2byte 0x8a38 @ ldrh r0, [r7, #16]
	.2byte 0x0081 @ lsls r1, r0, #2
	.2byte 0x1809 @ adds r1, r1, r0
	.2byte 0x010e @ lsls r6, r1, #4
	.2byte 0x1c1c @ adds r4, r3, #0
	.2byte 0x3480 @ adds r4, #128
	.2byte 0x6822 @ ldr r2, [r4, #0]
	.2byte 0x2003 @ movs r0, #3
	.2byte 0x4010 @ ands r0, r2
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd00a @ beq.n 0x800fbb0
	.2byte 0x1d10 @ adds r0, r2, #4
	.2byte 0x2104 @ movs r1, #4
	.2byte 0x4249 @ negs r1, r1
	.2byte 0x4008 @ ands r0, r1
	.2byte 0x1a82 @ subs r2, r0, r2
	.2byte 0x6020 @ str r0, [r4, #0]
	.2byte 0x1c19 @ adds r1, r3, #0
	.2byte 0x3184 @ adds r1, #132
	.2byte 0x6808 @ ldr r0, [r1, #0]
	.2byte 0x1a80 @ subs r0, r0, r2
	.2byte 0x6008 @ str r0, [r1, #0]
	.2byte 0x6829 @ ldr r1, [r5, #0]
	.2byte 0x6848 @ ldr r0, [r1, #4]
	.2byte 0x3038 @ adds r0, #56
	.2byte 0x7800 @ ldrb r0, [r0, #0]
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd008 @ beq.n 0x800fbce
	.2byte 0x1c08 @ adds r0, r1, #0
	.2byte 0x3084 @ adds r0, #132
	.2byte 0x6800 @ ldr r0, [r0, #0]
	.2byte 0x4286 @ cmp r6, r0
	.2byte 0xd903 @ bls.n 0x800fbce
	.2byte 0x480c @ ldr r0, [pc, #48]
	.2byte 0x490c @ ldr r1, [pc, #48]
	.2byte 0xf000, 0xff9f @ bl 0x8010b0c
	.2byte 0x4b09 @ ldr r3, [pc, #36]
	.2byte 0x681c @ ldr r4, [r3, #0]
	.2byte 0x1c21 @ adds r1, r4, #0
	.2byte 0x3184 @ adds r1, #132
	.2byte 0x6808 @ ldr r0, [r1, #0]
	.2byte 0x1b80 @ subs r0, r0, r6
	.2byte 0x6008 @ str r0, [r1, #0]
	.2byte 0x3904 @ subs r1, #4
	.2byte 0x680a @ ldr r2, [r1, #0]
	.2byte 0x1990 @ adds r0, r2, r6
	.2byte 0x6008 @ str r0, [r1, #0]
	.2byte 0x60e2 @ str r2, [r4, #12]
	.2byte 0x8a38 @ ldrh r0, [r7, #16]
	.2byte 0x6120 @ str r0, [r4, #16]
	.2byte 0x4699 @ mov r9, r3
	.2byte 0xe00d @ b.n 0x800fc0a
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x5833 @ ldr r3, [r6, r0]
	.2byte 0x4741 @ bx r8
	.2byte 0x0658 @ lsls r0, r3, #25
	.2byte 0x0300 @ lsls r0, r0, #12
	.2byte 0x235c @ movs r3, #92
	.2byte 0x0201 @ lsls r1, r0, #8
	.2byte 0x2368 @ movs r3, #104
	.2byte 0x0201 @ lsls r1, r0, #8
	.2byte 0x464c @ mov r4, r9
	.2byte 0x6820 @ ldr r0, [r4, #0]
	.2byte 0x6081 @ str r1, [r0, #8]
	.2byte 0x60c1 @ str r1, [r0, #12]
	.2byte 0x6101 @ str r1, [r0, #16]
	.2byte 0x4649 @ mov r1, r9
	.2byte 0x6808 @ ldr r0, [r1, #0]
	.2byte 0x3059 @ adds r0, #89
	.2byte 0x2100 @ movs r1, #0
	.2byte 0x7001 @ strb r1, [r0, #0]
	.2byte 0x89f9 @ ldrh r1, [r7, #14]
	.2byte 0x2040 @ movs r0, #64
	.2byte 0x4008 @ ands r0, r1
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd035 @ beq.n 0x800fc8a
	.2byte 0x6af8 @ ldr r0, [r7, #44]
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd032 @ beq.n 0x800fc8a
	.2byte 0x464a @ mov r2, r9
	.2byte 0x6814 @ ldr r4, [r2, #0]
	.2byte 0x1c23 @ adds r3, r4, #0
	.2byte 0x3380 @ adds r3, #128
	.2byte 0x681a @ ldr r2, [r3, #0]
	.2byte 0x2003 @ movs r0, #3
	.2byte 0x4010 @ ands r0, r2
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd00a @ beq.n 0x800fc4c
	.2byte 0x1d10 @ adds r0, r2, #4
	.2byte 0x2104 @ movs r1, #4
	.2byte 0x4249 @ negs r1, r1
	.2byte 0x4008 @ ands r0, r1
	.2byte 0x1a82 @ subs r2, r0, r2
	.2byte 0x6018 @ str r0, [r3, #0]
	.2byte 0x1c21 @ adds r1, r4, #0
	.2byte 0x3184 @ adds r1, #132
	.2byte 0x6808 @ ldr r0, [r1, #0]
	.2byte 0x1a80 @ subs r0, r0, r2
	.2byte 0x6008 @ str r0, [r1, #0]
	.2byte 0x464b @ mov r3, r9
	.2byte 0x6819 @ ldr r1, [r3, #0]
	.2byte 0x6848 @ ldr r0, [r1, #4]
	.2byte 0x3038 @ adds r0, #56
	.2byte 0x7800 @ ldrb r0, [r0, #0]
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd009 @ beq.n 0x800fc6e
	.2byte 0x1c08 @ adds r0, r1, #0
	.2byte 0x3084 @ adds r0, #132
	.2byte 0x6801 @ ldr r1, [r0, #0]
	.2byte 0x483e @ ldr r0, [pc, #248]
	.2byte 0x4288 @ cmp r0, r1
	.2byte 0xd903 @ bls.n 0x800fc6e
	.2byte 0x483e @ ldr r0, [pc, #248]
	.2byte 0x493e @ ldr r1, [pc, #248]
	.2byte 0xf000, 0xff4f @ bl 0x8010b0c
	.2byte 0x483e @ ldr r0, [pc, #248]
	.2byte 0x6803 @ ldr r3, [r0, #0]
	.2byte 0x1c19 @ adds r1, r3, #0
	.2byte 0x3184 @ adds r1, #132
	.2byte 0x6808 @ ldr r0, [r1, #0]
	.2byte 0x4c3c @ ldr r4, [pc, #240]
	.2byte 0x1900 @ adds r0, r0, r4
	.2byte 0x6008 @ str r0, [r1, #0]
	.2byte 0x3904 @ subs r1, #4
	.2byte 0x680a @ ldr r2, [r1, #0]
	.2byte 0x4c36 @ ldr r4, [pc, #216]
	.2byte 0x1910 @ adds r0, r2, r4
	.2byte 0x6008 @ str r0, [r1, #0]
	.2byte 0x615a @ str r2, [r3, #20]
	.2byte 0x4d37 @ ldr r5, [pc, #220]
	.2byte 0x682c @ ldr r4, [r5, #0]
	.2byte 0x1c23 @ adds r3, r4, #0
	.2byte 0x3380 @ adds r3, #128
	.2byte 0x681a @ ldr r2, [r3, #0]
	.2byte 0x2003 @ movs r0, #3
	.2byte 0x4010 @ ands r0, r2
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd00a @ beq.n 0x800fcb2
	.2byte 0x1d10 @ adds r0, r2, #4
	.2byte 0x2104 @ movs r1, #4
	.2byte 0x4249 @ negs r1, r1
	.2byte 0x4008 @ ands r0, r1
	.2byte 0x1a82 @ subs r2, r0, r2
	.2byte 0x6018 @ str r0, [r3, #0]
	.2byte 0x1c21 @ adds r1, r4, #0
	.2byte 0x3184 @ adds r1, #132
	.2byte 0x6808 @ ldr r0, [r1, #0]
	.2byte 0x1a80 @ subs r0, r0, r2
	.2byte 0x6008 @ str r0, [r1, #0]
	.2byte 0x6829 @ ldr r1, [r5, #0]
	.2byte 0x6848 @ ldr r0, [r1, #4]
	.2byte 0x3038 @ adds r0, #56
	.2byte 0x7800 @ ldrb r0, [r0, #0]
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd009 @ beq.n 0x800fcd2
	.2byte 0x1c08 @ adds r0, r1, #0
	.2byte 0x3084 @ adds r0, #132
	.2byte 0x6801 @ ldr r1, [r0, #0]
	.2byte 0x2008 @ movs r0, #8
	.2byte 0x4288 @ cmp r0, r1
	.2byte 0xd903 @ bls.n 0x800fcd2
	.2byte 0x4825 @ ldr r0, [pc, #148]
	.2byte 0x4925 @ ldr r1, [pc, #148]
	.2byte 0xf000, 0xff1d @ bl 0x8010b0c
	.2byte 0x4825 @ ldr r0, [pc, #148]
	.2byte 0x6802 @ ldr r2, [r0, #0]
	.2byte 0x1c15 @ adds r5, r2, #0
	.2byte 0x3584 @ adds r5, #132
	.2byte 0x6829 @ ldr r1, [r5, #0]
	.2byte 0x3908 @ subs r1, #8
	.2byte 0x4688 @ mov r8, r1
	.2byte 0x6029 @ str r1, [r5, #0]
	.2byte 0x1c13 @ adds r3, r2, #0
	.2byte 0x3380 @ adds r3, #128
	.2byte 0x681c @ ldr r4, [r3, #0]
	.2byte 0x1c26 @ adds r6, r4, #0
	.2byte 0x3608 @ adds r6, #8
	.2byte 0x601e @ str r6, [r3, #0]
	.2byte 0x6254 @ str r4, [r2, #36]
	.2byte 0x6891 @ ldr r1, [r2, #8]
	.2byte 0x4681 @ mov r9, r0
	.2byte 0x2900 @ cmp r1, #0
	.2byte 0xd03b @ beq.n 0x800fd70
	.2byte 0x8978 @ ldrh r0, [r7, #10]
	.2byte 0x8939 @ ldrh r1, [r7, #8]
	.2byte 0x4288 @ cmp r0, r1
	.2byte 0xd037 @ beq.n 0x800fd70
	.2byte 0x2003 @ movs r0, #3
	.2byte 0x4030 @ ands r0, r6
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd009 @ beq.n 0x800fd1c
	.2byte 0x1c20 @ adds r0, r4, #0
	.2byte 0x300c @ adds r0, #12
	.2byte 0x2104 @ movs r1, #4
	.2byte 0x4249 @ negs r1, r1
	.2byte 0x4008 @ ands r0, r1
	.2byte 0x1b81 @ subs r1, r0, r6
	.2byte 0x6018 @ str r0, [r3, #0]
	.2byte 0x4642 @ mov r2, r8
	.2byte 0x1a51 @ subs r1, r2, r1
	.2byte 0x6029 @ str r1, [r5, #0]
	.2byte 0x464b @ mov r3, r9
	.2byte 0x6819 @ ldr r1, [r3, #0]
	.2byte 0x6848 @ ldr r0, [r1, #4]
	.2byte 0x3038 @ adds r0, #56
	.2byte 0x7800 @ ldrb r0, [r0, #0]
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd009 @ beq.n 0x800fd3e
	.2byte 0x1c08 @ adds r0, r1, #0
	.2byte 0x3084 @ adds r0, #132
	.2byte 0x6801 @ ldr r1, [r0, #0]
	.2byte 0x2008 @ movs r0, #8
	.2byte 0x4288 @ cmp r0, r1
	.2byte 0xd903 @ bls.n 0x800fd3e
	.2byte 0x480a @ ldr r0, [pc, #40]
	.2byte 0x490a @ ldr r1, [pc, #40]
	.2byte 0xf000, 0xfee7 @ bl 0x8010b0c
	.2byte 0x4b0a @ ldr r3, [pc, #40]
	.2byte 0x681c @ ldr r4, [r3, #0]
	.2byte 0x1c21 @ adds r1, r4, #0
	.2byte 0x3184 @ adds r1, #132
	.2byte 0x6808 @ ldr r0, [r1, #0]
	.2byte 0x3808 @ subs r0, #8
	.2byte 0x6008 @ str r0, [r1, #0]
	.2byte 0x3904 @ subs r1, #4
	.2byte 0x680a @ ldr r2, [r1, #0]
	.2byte 0x1c10 @ adds r0, r2, #0
	.2byte 0x3008 @ adds r0, #8
	.2byte 0x6008 @ str r0, [r1, #0]
	.2byte 0x62a2 @ str r2, [r4, #40]
	.2byte 0x4699 @ mov r9, r3
	.2byte 0xe00d @ b.n 0x800fd78
	.2byte 0x07a4 @ lsls r4, r4, #30
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x235c @ movs r3, #92
	.2byte 0x0201 @ lsls r1, r0, #8
	.2byte 0x2368 @ movs r3, #104
	.2byte 0x0201 @ lsls r1, r0, #8
	.2byte 0x0658 @ lsls r0, r3, #25
	.2byte 0x0300 @ lsls r0, r0, #12
	.2byte 0xf85c @ .raw
	.2byte 0xffff @ .raw
	.2byte 0x464c @ mov r4, r9
	.2byte 0x6821 @ ldr r1, [r4, #0]
	.2byte 0x2000 @ movs r0, #0
	.2byte 0x6288 @ str r0, [r1, #40]
	.2byte 0x4649 @ mov r1, r9
	.2byte 0x6808 @ ldr r0, [r1, #0]
	.2byte 0x6a81 @ ldr r1, [r0, #40]
	.2byte 0x4248 @ negs r0, r1
	.2byte 0x4308 @ orrs r0, r1
	.2byte 0x0fc0 @ lsrs r0, r0, #31
	.2byte 0x4652 @ mov r2, sl
	.2byte 0x7010 @ strb r0, [r2, #0]
	.2byte 0x893a @ ldrh r2, [r7, #8]
	.2byte 0x2400 @ movs r4, #0
	.2byte 0x4b43 @ ldr r3, [pc, #268]
	.2byte 0x4698 @ mov r8, r3
	.2byte 0x4843 @ ldr r0, [pc, #268]
	.2byte 0x4682 @ mov sl, r0
	.2byte 0x4641 @ mov r1, r8
	.2byte 0x8808 @ ldrh r0, [r1, #0]
	.2byte 0x4290 @ cmp r0, r2
	.2byte 0xd204 @ bcs.n 0x800fda6
	.2byte 0x3104 @ adds r1, #4
	.2byte 0x3401 @ adds r4, #1
	.2byte 0x2c0c @ cmp r4, #12
	.2byte 0xd9f8 @ bls.n 0x800fd96
	.2byte 0x240c @ movs r4, #12
	.2byte 0x4649 @ mov r1, r9
	.2byte 0x6808 @ ldr r0, [r1, #0]
	.2byte 0x6a41 @ ldr r1, [r0, #36]
	.2byte 0x2008 @ movs r0, #8
	.2byte 0x7008 @ strb r0, [r1, #0]
	.2byte 0x464a @ mov r2, r9
	.2byte 0x6810 @ ldr r0, [r2, #0]
	.2byte 0x6a41 @ ldr r1, [r0, #36]
	.2byte 0x2001 @ movs r0, #1
	.2byte 0x7048 @ strb r0, [r1, #1]
	.2byte 0x6815 @ ldr r5, [r2, #0]
	.2byte 0x6a69 @ ldr r1, [r5, #36]
	.2byte 0x00a4 @ lsls r4, r4, #2
	.2byte 0x4444 @ add r4, r8
	.2byte 0x8820 @ ldrh r0, [r4, #0]
	.2byte 0x8048 @ strh r0, [r1, #2]
	.2byte 0x6a6e @ ldr r6, [r5, #36]
	.2byte 0x8871 @ ldrh r1, [r6, #2]
	.2byte 0x0148 @ lsls r0, r1, #5
	.2byte 0x1a40 @ subs r0, r0, r1
	.2byte 0x0080 @ lsls r0, r0, #2
	.2byte 0x1840 @ adds r0, r0, r1
	.2byte 0x00c0 @ lsls r0, r0, #3
	.2byte 0x4933 @ ldr r1, [pc, #204]
	.2byte 0xf002, 0xfac3 @ bl 0x8012360
	.2byte 0x80b0 @ strh r0, [r6, #4]
	.2byte 0x8860 @ ldrh r0, [r4, #2]
	.2byte 0x87a8 @ strh r0, [r5, #60]
	.2byte 0x6aa8 @ ldr r0, [r5, #40]
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd026 @ beq.n 0x800fe34
	.2byte 0x897a @ ldrh r2, [r7, #10]
	.2byte 0x2400 @ movs r4, #0
	.2byte 0x4641 @ mov r1, r8
	.2byte 0x8808 @ ldrh r0, [r1, #0]
	.2byte 0x4290 @ cmp r0, r2
	.2byte 0xd204 @ bcs.n 0x800fdfc
	.2byte 0x3104 @ adds r1, #4
	.2byte 0x3401 @ adds r4, #1
	.2byte 0x2c0c @ cmp r4, #12
	.2byte 0xd9f8 @ bls.n 0x800fdec
	.2byte 0x240c @ movs r4, #12
	.2byte 0x464b @ mov r3, r9
	.2byte 0x6818 @ ldr r0, [r3, #0]
	.2byte 0x6a81 @ ldr r1, [r0, #40]
	.2byte 0x2008 @ movs r0, #8
	.2byte 0x7008 @ strb r0, [r1, #0]
	.2byte 0x6818 @ ldr r0, [r3, #0]
	.2byte 0x6a81 @ ldr r1, [r0, #40]
	.2byte 0x2001 @ movs r0, #1
	.2byte 0x7048 @ strb r0, [r1, #1]
	.2byte 0x681d @ ldr r5, [r3, #0]
	.2byte 0x6aa9 @ ldr r1, [r5, #40]
	.2byte 0x00a4 @ lsls r4, r4, #2
	.2byte 0x4444 @ add r4, r8
	.2byte 0x8820 @ ldrh r0, [r4, #0]
	.2byte 0x8048 @ strh r0, [r1, #2]
	.2byte 0x6aae @ ldr r6, [r5, #40]
	.2byte 0x8871 @ ldrh r1, [r6, #2]
	.2byte 0x0148 @ lsls r0, r1, #5
	.2byte 0x1a40 @ subs r0, r0, r1
	.2byte 0x0080 @ lsls r0, r0, #2
	.2byte 0x1840 @ adds r0, r0, r1
	.2byte 0x00c0 @ lsls r0, r0, #3
	.2byte 0x491e @ ldr r1, [pc, #120]
	.2byte 0xf002, 0xfa99 @ bl 0x8012360
	.2byte 0x80b0 @ strh r0, [r6, #4]
	.2byte 0x8860 @ ldrh r0, [r4, #2]
	.2byte 0x87e8 @ strh r0, [r5, #62]
	.2byte 0x4654 @ mov r4, sl
	.2byte 0x6821 @ ldr r1, [r4, #0]
	.2byte 0x7888 @ ldrb r0, [r1, #2]
	.2byte 0x2858 @ cmp r0, #88
	.2byte 0xd105 @ bne.n 0x800fe4a
	.2byte 0x7848 @ ldrb r0, [r1, #1]
	.2byte 0x2841 @ cmp r0, #65
	.2byte 0xd102 @ bne.n 0x800fe4a
	.2byte 0x7808 @ ldrb r0, [r1, #0]
	.2byte 0x2847 @ cmp r0, #71
	.2byte 0xd004 @ beq.n 0x800fe54
	.2byte 0x4648 @ mov r0, r9
	.2byte 0x6801 @ ldr r1, [r0, #0]
	.2byte 0x8f88 @ ldrh r0, [r1, #60]
	.2byte 0x0040 @ lsls r0, r0, #1
	.2byte 0x8788 @ strh r0, [r1, #60]
	.2byte 0x4649 @ mov r1, r9
	.2byte 0x680b @ ldr r3, [r1, #0]
	.2byte 0x6a9a @ ldr r2, [r3, #40]
	.2byte 0x2a00 @ cmp r2, #0
	.2byte 0xd026 @ beq.n 0x800feac
	.2byte 0x6a59 @ ldr r1, [r3, #36]
	.2byte 0x8888 @ ldrh r0, [r1, #4]
	.2byte 0x8893 @ ldrh r3, [r2, #4]
	.2byte 0x4298 @ cmp r0, r3
	.2byte 0xd800 @ bhi.n 0x800fe6a
	.2byte 0x8890 @ ldrh r0, [r2, #4]
	.2byte 0x3004 @ adds r0, #4
	.2byte 0x0040 @ lsls r0, r0, #1
	.2byte 0x1c05 @ adds r5, r0, #0
	.2byte 0x4e0d @ ldr r6, [pc, #52]
	.2byte 0x6834 @ ldr r4, [r6, #0]
	.2byte 0x1c23 @ adds r3, r4, #0
	.2byte 0x3380 @ adds r3, #128
	.2byte 0x681a @ ldr r2, [r3, #0]
	.2byte 0x2003 @ movs r0, #3
	.2byte 0x4010 @ ands r0, r2
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd00a @ beq.n 0x800fe98
	.2byte 0x1d10 @ adds r0, r2, #4
	.2byte 0x2104 @ movs r1, #4
	.2byte 0x4249 @ negs r1, r1
	.2byte 0x4008 @ ands r0, r1
	.2byte 0x1a82 @ subs r2, r0, r2
	.2byte 0x6018 @ str r0, [r3, #0]
	.2byte 0x1c21 @ adds r1, r4, #0
	.2byte 0x3184 @ adds r1, #132
	.2byte 0x6808 @ ldr r0, [r1, #0]
	.2byte 0x1a80 @ subs r0, r0, r2
	.2byte 0x6008 @ str r0, [r1, #0]
	.2byte 0x6831 @ ldr r1, [r6, #0]
	.2byte 0xe020 @ b.n 0x800fede
	.2byte 0x2260 @ movs r2, #96
	.2byte 0x0201 @ lsls r1, r0, #8
	.2byte 0x225c @ movs r2, #92
	.2byte 0x0201 @ lsls r1, r0, #8
	.2byte 0xe94f @ .raw
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x0658 @ lsls r0, r3, #25
	.2byte 0x0300 @ lsls r0, r0, #12
	.2byte 0x6a58 @ ldr r0, [r3, #36]
	.2byte 0x8880 @ ldrh r0, [r0, #4]
	.2byte 0x0040 @ lsls r0, r0, #1
	.2byte 0x1c05 @ adds r5, r0, #0
	.2byte 0x3508 @ adds r5, #8
	.2byte 0x1c1c @ adds r4, r3, #0
	.2byte 0x3480 @ adds r4, #128
	.2byte 0x6822 @ ldr r2, [r4, #0]
	.2byte 0x2003 @ movs r0, #3
	.2byte 0x4010 @ ands r0, r2
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd00a @ beq.n 0x800feda
	.2byte 0x1d10 @ adds r0, r2, #4
	.2byte 0x2104 @ movs r1, #4
	.2byte 0x4249 @ negs r1, r1
	.2byte 0x4008 @ ands r0, r1
	.2byte 0x1a82 @ subs r2, r0, r2
	.2byte 0x6020 @ str r0, [r4, #0]
	.2byte 0x1c19 @ adds r1, r3, #0
	.2byte 0x3184 @ adds r1, #132
	.2byte 0x6808 @ ldr r0, [r1, #0]
	.2byte 0x1a80 @ subs r0, r0, r2
	.2byte 0x6008 @ str r0, [r1, #0]
	.2byte 0x464c @ mov r4, r9
	.2byte 0x6821 @ ldr r1, [r4, #0]
	.2byte 0x6848 @ ldr r0, [r1, #4]
	.2byte 0x3038 @ adds r0, #56
	.2byte 0x7800 @ ldrb r0, [r0, #0]
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd008 @ beq.n 0x800fefa
	.2byte 0x1c08 @ adds r0, r1, #0
	.2byte 0x3084 @ adds r0, #132
	.2byte 0x6800 @ ldr r0, [r0, #0]
	.2byte 0x4285 @ cmp r5, r0
	.2byte 0xd903 @ bls.n 0x800fefa
	.2byte 0x4871 @ ldr r0, [pc, #452]
	.2byte 0x4971 @ ldr r1, [pc, #452]
	.2byte 0xf000, 0xfe09 @ bl 0x8010b0c
	.2byte 0x4871 @ ldr r0, [pc, #452]
	.2byte 0x6803 @ ldr r3, [r0, #0]
	.2byte 0x1c19 @ adds r1, r3, #0
	.2byte 0x3184 @ adds r1, #132
	.2byte 0x6808 @ ldr r0, [r1, #0]
	.2byte 0x1b40 @ subs r0, r0, r5
	.2byte 0x6008 @ str r0, [r1, #0]
	.2byte 0x3904 @ subs r1, #4
	.2byte 0x680a @ ldr r2, [r1, #0]
	.2byte 0x1950 @ adds r0, r2, r5
	.2byte 0x6008 @ str r0, [r1, #0]
	.2byte 0x639a @ str r2, [r3, #56]
	.2byte 0x4e6b @ ldr r6, [pc, #428]
	.2byte 0x6833 @ ldr r3, [r6, #0]
	.2byte 0x2000 @ movs r0, #0
	.2byte 0x6498 @ str r0, [r3, #72]
	.2byte 0x6a58 @ ldr r0, [r3, #36]
	.2byte 0x8880 @ ldrh r0, [r0, #4]
	.2byte 0x0045 @ lsls r5, r0, #1
	.2byte 0x1c1c @ adds r4, r3, #0
	.2byte 0x3480 @ adds r4, #128
	.2byte 0x6822 @ ldr r2, [r4, #0]
	.2byte 0x2003 @ movs r0, #3
	.2byte 0x4010 @ ands r0, r2
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd00a @ beq.n 0x800ff44
	.2byte 0x1d10 @ adds r0, r2, #4
	.2byte 0x2104 @ movs r1, #4
	.2byte 0x4249 @ negs r1, r1
	.2byte 0x4008 @ ands r0, r1
	.2byte 0x1a82 @ subs r2, r0, r2
	.2byte 0x6020 @ str r0, [r4, #0]
	.2byte 0x1c19 @ adds r1, r3, #0
	.2byte 0x3184 @ adds r1, #132
	.2byte 0x6808 @ ldr r0, [r1, #0]
	.2byte 0x1a80 @ subs r0, r0, r2
	.2byte 0x6008 @ str r0, [r1, #0]
	.2byte 0x6831 @ ldr r1, [r6, #0]
	.2byte 0x6848 @ ldr r0, [r1, #4]
	.2byte 0x3038 @ adds r0, #56
	.2byte 0x7800 @ ldrb r0, [r0, #0]
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd008 @ beq.n 0x800ff62
	.2byte 0x1c08 @ adds r0, r1, #0
	.2byte 0x3084 @ adds r0, #132
	.2byte 0x6800 @ ldr r0, [r0, #0]
	.2byte 0x4285 @ cmp r5, r0
	.2byte 0xd903 @ bls.n 0x800ff62
	.2byte 0x4857 @ ldr r0, [pc, #348]
	.2byte 0x4957 @ ldr r1, [pc, #348]
	.2byte 0xf000, 0xfdd5 @ bl 0x8010b0c
	.2byte 0x4857 @ ldr r0, [pc, #348]
	.2byte 0x6803 @ ldr r3, [r0, #0]
	.2byte 0x1c19 @ adds r1, r3, #0
	.2byte 0x3184 @ adds r1, #132
	.2byte 0x6808 @ ldr r0, [r1, #0]
	.2byte 0x1b40 @ subs r0, r0, r5
	.2byte 0x6008 @ str r0, [r1, #0]
	.2byte 0x1c1a @ adds r2, r3, #0
	.2byte 0x3280 @ adds r2, #128
	.2byte 0x6811 @ ldr r1, [r2, #0]
	.2byte 0x1948 @ adds r0, r1, r5
	.2byte 0x6010 @ str r0, [r2, #0]
	.2byte 0x6319 @ str r1, [r3, #48]
	.2byte 0x6a58 @ ldr r0, [r3, #36]
	.2byte 0x8880 @ ldrh r0, [r0, #4]
	.2byte 0x1c0c @ adds r4, r1, #0
	.2byte 0x0046 @ lsls r6, r0, #1
	.2byte 0x2003 @ movs r0, #3
	.2byte 0x4020 @ ands r0, r4
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd008 @ beq.n 0x800ff9e
	.2byte 0x2200 @ movs r2, #0
	.2byte 0x2103 @ movs r1, #3
	.2byte 0x7022 @ strb r2, [r4, #0]
	.2byte 0x3401 @ adds r4, #1
	.2byte 0x3e01 @ subs r6, #1
	.2byte 0x1c20 @ adds r0, r4, #0
	.2byte 0x4008 @ ands r0, r1
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd1f8 @ bne.n 0x800ff90
	.2byte 0x2000 @ movs r0, #0
	.2byte 0x9000 @ str r0, [sp, #0]
	.2byte 0x2520 @ movs r5, #32
	.2byte 0x426d @ negs r5, r5
	.2byte 0x4035 @ ands r5, r6
	.2byte 0x1c2a @ adds r2, r5, #0
	.2byte 0x2d00 @ cmp r5, #0
	.2byte 0xda00 @ bge.n 0x800ffb0
	.2byte 0x1cea @ adds r2, r5, #3
	.2byte 0x0252 @ lsls r2, r2, #9
	.2byte 0x0ad2 @ lsrs r2, r2, #11
	.2byte 0x2080 @ movs r0, #128
	.2byte 0x0440 @ lsls r0, r0, #17
	.2byte 0x4302 @ orrs r2, r0
	.2byte 0x4668 @ mov r0, sp
	.2byte 0x1c21 @ adds r1, r4, #0
	.2byte 0xf7ff, 0xf92d @ bl 0x800f21c
	.2byte 0x1961 @ adds r1, r4, r5
	.2byte 0x1b70 @ subs r0, r6, r5
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xdd05 @ ble.n 0x800ffd6
	.2byte 0x2200 @ movs r2, #0
	.2byte 0x700a @ strb r2, [r1, #0]
	.2byte 0x3101 @ adds r1, #1
	.2byte 0x3801 @ subs r0, #1
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd1fa @ bne.n 0x800ffcc
	.2byte 0x4e3a @ ldr r6, [pc, #232]
	.2byte 0x6833 @ ldr r3, [r6, #0]
	.2byte 0x6a98 @ ldr r0, [r3, #40]
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd05c @ beq.n 0x801009a
	.2byte 0x8880 @ ldrh r0, [r0, #4]
	.2byte 0x0045 @ lsls r5, r0, #1
	.2byte 0x1c1c @ adds r4, r3, #0
	.2byte 0x3480 @ adds r4, #128
	.2byte 0x6822 @ ldr r2, [r4, #0]
	.2byte 0x2003 @ movs r0, #3
	.2byte 0x4010 @ ands r0, r2
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd00a @ beq.n 0x8010008
	.2byte 0x1d10 @ adds r0, r2, #4
	.2byte 0x2104 @ movs r1, #4
	.2byte 0x4249 @ negs r1, r1
	.2byte 0x4008 @ ands r0, r1
	.2byte 0x1a82 @ subs r2, r0, r2
	.2byte 0x6020 @ str r0, [r4, #0]
	.2byte 0x1c19 @ adds r1, r3, #0
	.2byte 0x3184 @ adds r1, #132
	.2byte 0x6808 @ ldr r0, [r1, #0]
	.2byte 0x1a80 @ subs r0, r0, r2
	.2byte 0x6008 @ str r0, [r1, #0]
	.2byte 0x6831 @ ldr r1, [r6, #0]
	.2byte 0x6848 @ ldr r0, [r1, #4]
	.2byte 0x3038 @ adds r0, #56
	.2byte 0x7800 @ ldrb r0, [r0, #0]
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd008 @ beq.n 0x8010026
	.2byte 0x1c08 @ adds r0, r1, #0
	.2byte 0x3084 @ adds r0, #132
	.2byte 0x6800 @ ldr r0, [r0, #0]
	.2byte 0x4285 @ cmp r5, r0
	.2byte 0xd903 @ bls.n 0x8010026
	.2byte 0x4826 @ ldr r0, [pc, #152]
	.2byte 0x4926 @ ldr r1, [pc, #152]
	.2byte 0xf000, 0xfd73 @ bl 0x8010b0c
	.2byte 0x4826 @ ldr r0, [pc, #152]
	.2byte 0x6803 @ ldr r3, [r0, #0]
	.2byte 0x1c19 @ adds r1, r3, #0
	.2byte 0x3184 @ adds r1, #132
	.2byte 0x6808 @ ldr r0, [r1, #0]
	.2byte 0x1b40 @ subs r0, r0, r5
	.2byte 0x6008 @ str r0, [r1, #0]
	.2byte 0x1c1a @ adds r2, r3, #0
	.2byte 0x3280 @ adds r2, #128
	.2byte 0x6811 @ ldr r1, [r2, #0]
	.2byte 0x1948 @ adds r0, r1, r5
	.2byte 0x6010 @ str r0, [r2, #0]
	.2byte 0x6359 @ str r1, [r3, #52]
	.2byte 0x6a98 @ ldr r0, [r3, #40]
	.2byte 0x8880 @ ldrh r0, [r0, #4]
	.2byte 0x1c0c @ adds r4, r1, #0
	.2byte 0x0046 @ lsls r6, r0, #1
	.2byte 0x2003 @ movs r0, #3
	.2byte 0x4020 @ ands r0, r4
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd008 @ beq.n 0x8010062
	.2byte 0x2200 @ movs r2, #0
	.2byte 0x2103 @ movs r1, #3
	.2byte 0x7022 @ strb r2, [r4, #0]
	.2byte 0x3401 @ adds r4, #1
	.2byte 0x3e01 @ subs r6, #1
	.2byte 0x1c20 @ adds r0, r4, #0
	.2byte 0x4008 @ ands r0, r1
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd1f8 @ bne.n 0x8010054
	.2byte 0x2000 @ movs r0, #0
	.2byte 0x9000 @ str r0, [sp, #0]
	.2byte 0x2520 @ movs r5, #32
	.2byte 0x426d @ negs r5, r5
	.2byte 0x4035 @ ands r5, r6
	.2byte 0x1c2a @ adds r2, r5, #0
	.2byte 0x2d00 @ cmp r5, #0
	.2byte 0xda00 @ bge.n 0x8010074
	.2byte 0x1cea @ adds r2, r5, #3
	.2byte 0x0252 @ lsls r2, r2, #9
	.2byte 0x0ad2 @ lsrs r2, r2, #11
	.2byte 0x2080 @ movs r0, #128
	.2byte 0x0440 @ lsls r0, r0, #17
	.2byte 0x4302 @ orrs r2, r0
	.2byte 0x4668 @ mov r0, sp
	.2byte 0x1c21 @ adds r1, r4, #0
	.2byte 0xf7ff, 0xf8cb @ bl 0x800f21c
	.2byte 0x1961 @ adds r1, r4, r5
	.2byte 0x1b70 @ subs r0, r6, r5
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xdd05 @ ble.n 0x801009a
	.2byte 0x2200 @ movs r2, #0
	.2byte 0x700a @ strb r2, [r1, #0]
	.2byte 0x3101 @ adds r1, #1
	.2byte 0x3801 @ subs r0, #1
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd1fa @ bne.n 0x8010090
	.2byte 0x89f9 @ ldrh r1, [r7, #14]
	.2byte 0x2010 @ movs r0, #16
	.2byte 0x4008 @ ands r0, r1
	.2byte 0x6b3b @ ldr r3, [r7, #48]
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd10e @ bne.n 0x80100c4
	.2byte 0x1c18 @ adds r0, r3, #0
	.2byte 0x30c4 @ adds r0, #196
	.2byte 0x6800 @ ldr r0, [r0, #0]
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd009 @ beq.n 0x80100c4
	.2byte 0x1c18 @ adds r0, r3, #0
	.2byte 0x30bc @ adds r0, #188
	.2byte 0xe008 @ b.n 0x80100c8
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x235c @ movs r3, #92
	.2byte 0x0201 @ lsls r1, r0, #8
	.2byte 0x2368 @ movs r3, #104
	.2byte 0x0201 @ lsls r1, r0, #8
	.2byte 0x0658 @ lsls r0, r3, #25
	.2byte 0x0300 @ lsls r0, r0, #12
	.2byte 0x1c18 @ adds r0, r3, #0
	.2byte 0x30c0 @ adds r0, #192
	.2byte 0x6806 @ ldr r6, [r0, #0]
	.2byte 0x2e00 @ cmp r6, #0
	.2byte 0xd073 @ beq.n 0x80101b6
	.2byte 0x4841 @ ldr r0, [pc, #260]
	.2byte 0x4680 @ mov r8, r0
	.2byte 0x6800 @ ldr r0, [r0, #0]
	.2byte 0x305c @ adds r0, #92
	.2byte 0x2101 @ movs r1, #1
	.2byte 0x7001 @ strb r1, [r0, #0]
	.2byte 0x4641 @ mov r1, r8
	.2byte 0x680c @ ldr r4, [r1, #0]
	.2byte 0x6a60 @ ldr r0, [r4, #36]
	.2byte 0x8840 @ ldrh r0, [r0, #2]
	.2byte 0x4370 @ muls r0, r6
	.2byte 0x21fa @ movs r1, #250
	.2byte 0x0089 @ lsls r1, r1, #2
	.2byte 0xf002, 0xfb70 @ bl 0x80127cc
	.2byte 0x1c06 @ adds r6, r0, #0
	.2byte 0x0075 @ lsls r5, r6, #1
	.2byte 0x1c23 @ adds r3, r4, #0
	.2byte 0x3380 @ adds r3, #128
	.2byte 0x681a @ ldr r2, [r3, #0]
	.2byte 0x2003 @ movs r0, #3
	.2byte 0x4010 @ ands r0, r2
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd00a @ beq.n 0x8010114
	.2byte 0x1d10 @ adds r0, r2, #4
	.2byte 0x2104 @ movs r1, #4
	.2byte 0x4249 @ negs r1, r1
	.2byte 0x4008 @ ands r0, r1
	.2byte 0x1a82 @ subs r2, r0, r2
	.2byte 0x6018 @ str r0, [r3, #0]
	.2byte 0x1c21 @ adds r1, r4, #0
	.2byte 0x3184 @ adds r1, #132
	.2byte 0x6808 @ ldr r0, [r1, #0]
	.2byte 0x1a80 @ subs r0, r0, r2
	.2byte 0x6008 @ str r0, [r1, #0]
	.2byte 0x4642 @ mov r2, r8
	.2byte 0x6811 @ ldr r1, [r2, #0]
	.2byte 0x6848 @ ldr r0, [r1, #4]
	.2byte 0x3038 @ adds r0, #56
	.2byte 0x7800 @ ldrb r0, [r0, #0]
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd008 @ beq.n 0x8010134
	.2byte 0x1c08 @ adds r0, r1, #0
	.2byte 0x3084 @ adds r0, #132
	.2byte 0x6800 @ ldr r0, [r0, #0]
	.2byte 0x4285 @ cmp r5, r0
	.2byte 0xd903 @ bls.n 0x8010134
	.2byte 0x482a @ ldr r0, [pc, #168]
	.2byte 0x492b @ ldr r1, [pc, #172]
	.2byte 0xf000, 0xfcec @ bl 0x8010b0c
	.2byte 0x4827 @ ldr r0, [pc, #156]
	.2byte 0x6803 @ ldr r3, [r0, #0]
	.2byte 0x1c19 @ adds r1, r3, #0
	.2byte 0x3184 @ adds r1, #132
	.2byte 0x6808 @ ldr r0, [r1, #0]
	.2byte 0x1b40 @ subs r0, r0, r5
	.2byte 0x6008 @ str r0, [r1, #0]
	.2byte 0x1c1a @ adds r2, r3, #0
	.2byte 0x3280 @ adds r2, #128
	.2byte 0x6811 @ ldr r1, [r2, #0]
	.2byte 0x1948 @ adds r0, r1, r5
	.2byte 0x6010 @ str r0, [r2, #0]
	.2byte 0x64d9 @ str r1, [r3, #76]
	.2byte 0x0070 @ lsls r0, r6, #1
	.2byte 0x6518 @ str r0, [r3, #80]
	.2byte 0x1c0c @ adds r4, r1, #0
	.2byte 0x1c06 @ adds r6, r0, #0
	.2byte 0x2003 @ movs r0, #3
	.2byte 0x4020 @ ands r0, r4
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd008 @ beq.n 0x8010170
	.2byte 0x2200 @ movs r2, #0
	.2byte 0x2103 @ movs r1, #3
	.2byte 0x7022 @ strb r2, [r4, #0]
	.2byte 0x3401 @ adds r4, #1
	.2byte 0x3e01 @ subs r6, #1
	.2byte 0x1c20 @ adds r0, r4, #0
	.2byte 0x4008 @ ands r0, r1
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd1f8 @ bne.n 0x8010162
	.2byte 0x2000 @ movs r0, #0
	.2byte 0x9000 @ str r0, [sp, #0]
	.2byte 0x2520 @ movs r5, #32
	.2byte 0x426d @ negs r5, r5
	.2byte 0x4035 @ ands r5, r6
	.2byte 0x1c2a @ adds r2, r5, #0
	.2byte 0x2d00 @ cmp r5, #0
	.2byte 0xda00 @ bge.n 0x8010182
	.2byte 0x1cea @ adds r2, r5, #3
	.2byte 0x0252 @ lsls r2, r2, #9
	.2byte 0x0ad2 @ lsrs r2, r2, #11
	.2byte 0x2080 @ movs r0, #128
	.2byte 0x0440 @ lsls r0, r0, #17
	.2byte 0x4302 @ orrs r2, r0
	.2byte 0x4668 @ mov r0, sp
	.2byte 0x1c21 @ adds r1, r4, #0
	.2byte 0xf7ff, 0xf844 @ bl 0x800f21c
	.2byte 0x1961 @ adds r1, r4, r5
	.2byte 0x1b70 @ subs r0, r6, r5
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xdd05 @ ble.n 0x80101a8
	.2byte 0x2200 @ movs r2, #0
	.2byte 0x700a @ strb r2, [r1, #0]
	.2byte 0x3101 @ adds r1, #1
	.2byte 0x3801 @ subs r0, #1
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd1fa @ bne.n 0x801019e
	.2byte 0x480d @ ldr r0, [pc, #52]
	.2byte 0x490e @ ldr r1, [pc, #56]
	.2byte 0xf7ff, 0xf846 @ bl 0x800f23c
	.2byte 0x4908 @ ldr r1, [pc, #32]
	.2byte 0x6809 @ ldr r1, [r1, #0]
	.2byte 0x66c8 @ str r0, [r1, #108]
	.2byte 0x89f9 @ ldrh r1, [r7, #14]
	.2byte 0x2004 @ movs r0, #4
	.2byte 0x4008 @ ands r0, r1
	.2byte 0x0400 @ lsls r0, r0, #16
	.2byte 0x0c01 @ lsrs r1, r0, #16
	.2byte 0x2900 @ cmp r1, #0
	.2byte 0xd015 @ beq.n 0x80101f0
	.2byte 0x4808 @ ldr r0, [pc, #32]
	.2byte 0x4909 @ ldr r1, [pc, #36]
	.2byte 0xf7ff, 0xf838 @ bl 0x800f23c
	.2byte 0x4901 @ ldr r1, [pc, #4]
	.2byte 0x6809 @ ldr r1, [r1, #0]
	.2byte 0x6708 @ str r0, [r1, #112]
	.2byte 0xe010 @ b.n 0x80101f6
	.2byte 0x0658 @ lsls r0, r3, #25
	.2byte 0x0300 @ lsls r0, r0, #12
	.2byte 0x235c @ movs r3, #92
	.2byte 0x0201 @ lsls r1, r0, #8
	.2byte 0x2368 @ movs r3, #104
	.2byte 0x0201 @ lsls r1, r0, #8
	.2byte 0xcc6c @ ldmia r4!, {r2, r3, r5, r6}
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0xcd68 @ ldmia r5, {r3, r5, r6}
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0xcba0 @ ldmia r3!, {r5, r7}
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0xcc6c @ ldmia r4!, {r2, r3, r5, r6}
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0x4831 @ ldr r0, [pc, #196]
	.2byte 0x6800 @ ldr r0, [r0, #0]
	.2byte 0x6701 @ str r1, [r0, #112]
	.2byte 0x4831 @ ldr r0, [pc, #196]
	.2byte 0x4931 @ ldr r1, [pc, #196]
	.2byte 0xf7ff, 0xf81f @ bl 0x800f23c
	.2byte 0x4d2e @ ldr r5, [pc, #184]
	.2byte 0x6829 @ ldr r1, [r5, #0]
	.2byte 0x6688 @ str r0, [r1, #104]
	.2byte 0x482f @ ldr r0, [pc, #188]
	.2byte 0x4930 @ ldr r1, [pc, #192]
	.2byte 0xf7ff, 0xf818 @ bl 0x800f23c
	.2byte 0x6829 @ ldr r1, [r5, #0]
	.2byte 0x6608 @ str r0, [r1, #96]
	.2byte 0x482e @ ldr r0, [pc, #184]
	.2byte 0x492f @ ldr r1, [pc, #188]
	.2byte 0xf7ff, 0xf812 @ bl 0x800f23c
	.2byte 0x6829 @ ldr r1, [r5, #0]
	.2byte 0x6648 @ str r0, [r1, #100]
	.2byte 0x3174 @ adds r1, #116
	.2byte 0x2000 @ movs r0, #0
	.2byte 0x8008 @ strh r0, [r1, #0]
	.2byte 0x6b38 @ ldr r0, [r7, #48]
	.2byte 0xf7ff, 0xfa36 @ bl 0x800f694
	.2byte 0x6829 @ ldr r1, [r5, #0]
	.2byte 0x1c08 @ adds r0, r1, #0
	.2byte 0x3080 @ adds r0, #128
	.2byte 0x6800 @ ldr r0, [r0, #0]
	.2byte 0x6788 @ str r0, [r1, #120]
	.2byte 0x1c08 @ adds r0, r1, #0
	.2byte 0x3084 @ adds r0, #132
	.2byte 0x6800 @ ldr r0, [r0, #0]
	.2byte 0x67c8 @ str r0, [r1, #124]
	.2byte 0xf7ff, 0xfb91 @ bl 0x800f960
	.2byte 0x6829 @ ldr r1, [r5, #0]
	.2byte 0x6a88 @ ldr r0, [r1, #40]
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd000 @ beq.n 0x8010248
	.2byte 0x62c8 @ str r0, [r1, #44]
	.2byte 0x2400 @ movs r4, #0
	.2byte 0x6828 @ ldr r0, [r5, #0]
	.2byte 0x6900 @ ldr r0, [r0, #16]
	.2byte 0x4284 @ cmp r4, r0
	.2byte 0xd20c @ bcs.n 0x801026c
	.2byte 0x1c2e @ adds r6, r5, #0
	.2byte 0x2500 @ movs r5, #0
	.2byte 0x6830 @ ldr r0, [r6, #0]
	.2byte 0x68c0 @ ldr r0, [r0, #12]
	.2byte 0x1940 @ adds r0, r0, r5
	.2byte 0xf001, 0xfcfa @ bl 0x8011c54
	.2byte 0x3550 @ adds r5, #80
	.2byte 0x3401 @ adds r4, #1
	.2byte 0x6830 @ ldr r0, [r6, #0]
	.2byte 0x6900 @ ldr r0, [r0, #16]
	.2byte 0x4284 @ cmp r4, r0
	.2byte 0xd3f4 @ bcc.n 0x8010256
	.2byte 0xf7ff, 0xfafa @ bl 0x800f864
	.2byte 0x4b11 @ ldr r3, [pc, #68]
	.2byte 0x6818 @ ldr r0, [r3, #0]
	.2byte 0x2401 @ movs r4, #1
	.2byte 0x6544 @ str r4, [r0, #84]
	.2byte 0x6a01 @ ldr r1, [r0, #32]
	.2byte 0x0089 @ lsls r1, r1, #2
	.2byte 0x3018 @ adds r0, #24
	.2byte 0x1840 @ adds r0, r0, r1
	.2byte 0x6801 @ ldr r1, [r0, #0]
	.2byte 0x89f8 @ ldrh r0, [r7, #14]
	.2byte 0x08c0 @ lsrs r0, r0, #3
	.2byte 0x4020 @ ands r0, r4
	.2byte 0x2200 @ movs r2, #0
	.2byte 0x7608 @ strb r0, [r1, #24]
	.2byte 0x6818 @ ldr r0, [r3, #0]
	.2byte 0x6840 @ ldr r0, [r0, #4]
	.2byte 0x3039 @ adds r0, #57
	.2byte 0x7002 @ strb r2, [r0, #0]
	.2byte 0x6818 @ ldr r0, [r3, #0]
	.2byte 0x6840 @ ldr r0, [r0, #4]
	.2byte 0x303a @ adds r0, #58
	.2byte 0x7002 @ strb r2, [r0, #0]
	.2byte 0x89f9 @ ldrh r1, [r7, #14]
	.2byte 0x2002 @ movs r0, #2
	.2byte 0x4008 @ ands r0, r1
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd016 @ beq.n 0x80102d4
	.2byte 0x6b38 @ ldr r0, [r7, #48]
	.2byte 0x30a0 @ adds r0, #160
	.2byte 0x6800 @ ldr r0, [r0, #0]
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd011 @ beq.n 0x80102d4
	.2byte 0x6818 @ ldr r0, [r3, #0]
	.2byte 0x3059 @ adds r0, #89
	.2byte 0x7004 @ strb r4, [r0, #0]
	.2byte 0xe012 @ b.n 0x80102de
	.2byte 0x0658 @ lsls r0, r3, #25
	.2byte 0x0300 @ lsls r0, r0, #12
	.2byte 0xca80 @ ldmia r2!, {r7}
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0xcba0 @ ldmia r3!, {r5, r7}
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0xcd7c @ ldmia r5, {r2, r3, r4, r5, r6}
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0xcdf0 @ ldmia r5, {r4, r5, r6, r7}
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0xcdf0 @ ldmia r5, {r4, r5, r6, r7}
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0xcea8 @ ldmia r6!, {r3, r5, r7}
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0x4806 @ ldr r0, [pc, #24]
	.2byte 0x6800 @ ldr r0, [r0, #0]
	.2byte 0x3059 @ adds r0, #89
	.2byte 0x2100 @ movs r1, #0
	.2byte 0x7001 @ strb r1, [r0, #0]
	.2byte 0x2001 @ movs r0, #1
