	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_08000C00
	.thumb_func
sub_08000C00:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #20
	str r0, [sp, #8]
	str r1, [sp, #12]
	adds r4, r2, #0
	ldr r0, [r4, #52]
	asrs r0, r0, #8
	mov r9, r0
	ldr r0, [r4, #56]
	asrs r0, r0, #8
	str r0, [sp, #16]
	movs r0, #100
	adds r0, r0, r4
	mov r8, r0
	bl sub_08000644
	ldrh r0, [r0, #2]
	mov sl, r0
	adds r4, #47
	ldrb r0, [r4, #0]
	cmp r0, #0
	beq .L08000CF2
	movs r0, #50
	str r0, [sp, #0]
	ldr r0, [sp, #8]
	ldr r1, [sp, #12]
	mov r2, r9
	ldr r3, [sp, #16]
	bl sub_08000BB4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08000C50
	b .L08000CF2
.L08000C4C:
	movs r0, #1
	b .L08000CF4
.L08000C50:
	movs r7, #0
	cmp r7, sl
	beq .L08000CF2
.L08000C56:
	mov r0, r8
	adds r1, r7, #0
	bl sub_0800062C
	adds r6, r0, #0
	ldr r0, [pc, #72]
	ldrh r1, [r6, #4]
	ands r0, r1
	ldr r2, [pc, #68]
	cmp r0, r2
	beq .L08000CEC
	mov r0, r8
	adds r1, r7, #0
	bl sub_08000614
	adds r4, r0, #0
	movs r3, #4
	ldrsh r0, [r4, r3]
	movs r1, #1
	negs r1, r1
	cmp r0, r1
	beq .L08000CEC
	movs r0, #64
	ldrb r2, [r6, #5]
	ands r0, r2
	cmp r0, #0
	beq .L08000CB0
	movs r3, #0
	ldrsh r2, [r6, r3]
	mov r0, r9
	subs r2, r0, r2
	ldrh r3, [r4, #0]
	lsls r1, r3, #3
	movs r3, #8
	ldrsh r0, [r4, r3]
	subs r0, r1, r0
	adds r5, r2, r0
	movs r3, #4
	ldrsh r0, [r4, r3]
	subs r1, r1, r0
	adds r2, r2, r1
	b .L08000CC4
	movs r0, r0
	subs r7, #255
	movs r0, r0
.L08000CB0:
	movs r1, #0
	ldrsh r0, [r6, r1]
	mov r2, r9
	subs r0, r2, r0
	movs r3, #4
	ldrsh r1, [r4, r3]
	adds r5, r0, r1
	movs r1, #8
	ldrsh r0, [r4, r1]
	adds r2, r5, r0
.L08000CC4:
	movs r0, #2
	ldrsh r3, [r6, r0]
	ldr r1, [sp, #16]
	subs r3, r1, r3
	movs r1, #6
	ldrsh r0, [r4, r1]
	adds r3, r3, r0
	movs r1, #10
	ldrsh r0, [r4, r1]
	adds r0, r3, r0
	str r2, [sp, #0]
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	ldr r1, [sp, #12]
	adds r2, r5, #0
	bl sub_08000BDC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08000C4C
.L08000CEC:
	adds r7, #1
	cmp r7, sl
	bne .L08000C56
.L08000CF2:
	movs r0, #0
.L08000CF4:
	add sp, #20
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	.thumb
	.align 1, 0
	.global sub_08000D04
	.thumb_func
sub_08000D04:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #44
	adds r5, r0, #0
	adds r6, r1, #0
	lsls r4, r2, #24
	lsrs r4, r4, #24
	ldr r0, [r5, #52]
	asrs r0, r0, #8
	str r0, [sp, #0]
	ldr r0, [r5, #56]
	asrs r0, r0, #8
	str r0, [sp, #4]
	ldr r0, [r6, #52]
	asrs r0, r0, #8
	str r0, [sp, #8]
	ldr r0, [r6, #56]
	asrs r0, r0, #8
	str r0, [sp, #12]
	adds r0, r5, #0
	adds r0, #100
	str r0, [sp, #16]
	adds r1, #100
	str r1, [sp, #20]
	bl sub_08000644
	ldrh r0, [r0, #2]
	str r0, [sp, #24]
	ldr r0, [sp, #20]
	bl sub_08000644
	ldrh r0, [r0, #2]
	str r0, [sp, #28]
	cmp r4, #0
	bne .L08000D6C
	adds r0, r5, #0
	adds r0, #46
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L08000D5C
	b .L08000EB8
.L08000D5C:
	adds r0, r6, #0
	adds r0, #46
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L08000D6C
	b .L08000EB8
.L08000D68:
	movs r0, #1
	b .L08000EBA
.L08000D6C:
	movs r2, #0
	b .L08000EAE
.L08000D70:
	ldr r0, [sp, #16]
	ldr r1, [sp, #32]
	bl sub_0800062C
	adds r4, r0, #0
	ldr r0, [pc, #80]
	ldrh r5, [r4, #4]
	ands r0, r5
	ldr r7, [pc, #72]
	cmp r0, r7
	bne .L08000D88
	b .L08000EAA
.L08000D88:
	ldr r0, [sp, #16]
	ldr r1, [sp, #32]
	bl sub_08000614
	adds r3, r0, #0
	movs r1, #4
	ldrsh r0, [r3, r1]
	movs r2, #1
	negs r2, r2
	cmp r0, r2
	bne .L08000DA0
	b .L08000EAA
.L08000DA0:
	movs r0, #64
	ldrb r5, [r4, #5]
	ands r0, r5
	cmp r0, #0
	beq .L08000DD0
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
	b .L08000DEA
	subs r7, #255
	movs r0, r0
.L08000DD0:
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
.L08000DEA:
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
	beq .L08000EAA
	ldr r0, [pc, #84]
	mov r9, r0
.L08000E0E:
	ldr r0, [sp, #20]
	adds r1, r6, #0
	bl sub_0800062C
	adds r4, r0, #0
	mov r0, r9
	ldrh r1, [r4, #4]
	ands r0, r1
	cmp r0, r9
	beq .L08000EA2
	ldr r0, [sp, #20]
	adds r1, r6, #0
	bl sub_08000614
	adds r3, r0, #0
	movs r2, #4
	ldrsh r0, [r3, r2]
	movs r5, #1
	negs r5, r5
	cmp r0, r5
	beq .L08000EA2
	movs r0, #64
	ldrb r7, [r4, #5]
	ands r0, r7
	cmp r0, #0
	beq .L08000E64
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
	b .L08000E78
	subs r7, #255
	movs r0, r0
.L08000E64:
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
.L08000E78:
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
	bgt .L08000EA2
	ldr r7, [sp, #36]
	cmp r7, r1
	blt .L08000EA2
	ldr r0, [sp, #40]
	cmp r0, r2
	bgt .L08000EA2
	cmp sl, r5
	blt .L08000EA2
	b .L08000D68
.L08000EA2:
	adds r6, #1
	ldr r1, [sp, #28]
	cmp r6, r1
	bne .L08000E0E
.L08000EAA:
	ldr r2, [sp, #32]
	adds r2, #1
.L08000EAE:
	str r2, [sp, #32]
	ldr r4, [sp, #24]
	cmp r2, r4
	beq .L08000EB8
	b .L08000D70
.L08000EB8:
	movs r0, #0
.L08000EBA:
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
	.global sub_08000ECC
	.thumb_func
sub_08000ECC:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #20
	ldr r2, [r0, #20]
	asrs r6, r2, #8
	ldr r2, [r0, #24]
	asrs r2, r2, #8
	mov r8, r2
	ldr r2, [r1, #52]
	asrs r2, r2, #8
	str r2, [sp, #0]
	ldr r2, [r1, #56]
	asrs r2, r2, #8
	str r2, [sp, #4]
	adds r5, r0, #0
	adds r5, #40
	adds r1, #100
	mov sl, r1
	mov r0, sl
	bl sub_08000644
	ldrh r0, [r0, #2]
	str r0, [sp, #8]
	adds r0, r5, #0
	movs r1, #0
	bl sub_0800062C
	adds r4, r0, #0
	ldr r1, [pc, #80]
	adds r0, r1, #0
	ldrh r2, [r4, #4]
	ands r0, r2
	cmp r0, r1
	bne .L08000F18
	b .L08001038
.L08000F18:
	adds r0, r5, #0
	movs r1, #0
	bl sub_08000614
	adds r3, r0, #0
	movs r5, #4
	ldrsh r1, [r3, r5]
	movs r0, #1
	negs r0, r0
	cmp r1, r0
	bne .L08000F30
	b .L08001038
.L08000F30:
	movs r0, #64
	ldrb r7, [r4, #5]
	ands r0, r7
	cmp r0, #0
	beq .L08000F64
	movs r0, #0
	ldrsh r2, [r4, r0]
	subs r2, r6, r2
	ldrh r5, [r3, #0]
	lsls r1, r5, #3
	movs r7, #8
	ldrsh r0, [r3, r7]
	subs r0, r1, r0
	adds r0, r2, r0
	str r0, [sp, #16]
	movs r5, #4
	ldrsh r0, [r3, r5]
	subs r1, r1, r0
	adds r2, r2, r1
	mov r9, r2
	b .L08000F7C
	movs r0, r0
	subs r7, #255
	movs r0, r0
.L08000F60:
	movs r0, #1
	b .L0800103A
.L08000F64:
	movs r7, #0
	ldrsh r0, [r4, r7]
	subs r0, r6, r0
	movs r2, #4
	ldrsh r1, [r3, r2]
	adds r0, r0, r1
	str r0, [sp, #16]
	movs r5, #8
	ldrsh r0, [r3, r5]
	ldr r7, [sp, #16]
	adds r0, r0, r7
	mov r9, r0
.L08000F7C:
	movs r1, #2
	ldrsh r0, [r4, r1]
	mov r2, r8
	subs r0, r2, r0
	movs r4, #6
	ldrsh r1, [r3, r4]
	adds r0, r0, r1
	mov r8, r0
	movs r5, #10
	ldrsh r0, [r3, r5]
	add r0, r8
	str r0, [sp, #12]
	movs r6, #0
	ldr r7, [sp, #8]
	cmp r6, r7
	bcs .L08001038
.L08000F9C:
	mov r0, sl
	adds r1, r6, #0
	bl sub_0800062C
	adds r5, r0, #0
	ldr r0, [pc, #72]
	ldrh r1, [r5, #4]
	ands r0, r1
	ldr r2, [pc, #64]
	cmp r0, r2
	beq .L08001030
	mov r0, sl
	adds r1, r6, #0
	bl sub_08000614
	adds r3, r0, #0
	movs r4, #4
	ldrsh r0, [r3, r4]
	movs r7, #1
	negs r7, r7
	cmp r0, r7
	beq .L08001030
	movs r0, #64
	ldrb r1, [r5, #5]
	ands r0, r1
	cmp r0, #0
	beq .L08000FF4
	movs r4, #0
	ldrsh r2, [r5, r4]
	ldr r7, [sp, #0]
	subs r2, r7, r2
	ldrh r0, [r3, #0]
	lsls r1, r0, #3
	movs r4, #8
	ldrsh r0, [r3, r4]
	subs r0, r1, r0
	adds r4, r2, r0
	movs r7, #4
	ldrsh r0, [r3, r7]
	subs r1, r1, r0
	adds r2, r2, r1
	b .L08001008
	subs r7, #255
	movs r0, r0
.L08000FF4:
	movs r1, #0
	ldrsh r0, [r5, r1]
	ldr r2, [sp, #0]
	subs r0, r2, r0
	movs r4, #4
	ldrsh r1, [r3, r4]
	adds r4, r0, r1
	movs r7, #8
	ldrsh r0, [r3, r7]
	adds r2, r4, r0
.L08001008:
	movs r1, #2
	ldrsh r0, [r5, r1]
	ldr r5, [sp, #4]
	subs r0, r5, r0
	movs r7, #6
	ldrsh r1, [r3, r7]
	adds r1, r0, r1
	movs r5, #10
	ldrsh r0, [r3, r5]
	adds r0, r1, r0
	cmp r8, r0
	bgt .L08001030
	ldr r7, [sp, #12]
	cmp r7, r1
	blt .L08001030
	ldr r0, [sp, #16]
	cmp r0, r2
	bgt .L08001030
	cmp r9, r4
	bge .L08000F60
.L08001030:
	adds r6, #1
	ldr r1, [sp, #8]
	cmp r6, r1
	bcc .L08000F9C
.L08001038:
	movs r0, #0
.L0800103A:
	add sp, #20
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
	.global sub_0800104C
	.thumb_func
sub_0800104C:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #24
	adds r4, r1, #0
	ldr r1, [r0, #20]
	asrs r5, r1, #8
	ldr r1, [r0, #24]
	asrs r1, r1, #8
	mov r8, r1
	ldr r1, [r4, #52]
	asrs r1, r1, #8
	str r1, [sp, #4]
	ldr r1, [r4, #56]
	asrs r1, r1, #8
	str r1, [sp, #8]
	adds r6, r0, #0
	adds r6, #40
	movs r0, #100
	adds r0, r0, r4
	mov sl, r0
	bl sub_08000644
	ldrh r0, [r0, #2]
	str r0, [sp, #12]
	adds r4, #47
	ldrb r0, [r4, #0]
	cmp r0, #0
	bne .L0800108C
	b .L080011DC
.L0800108C:
	movs r0, #50
	str r0, [sp, #0]
	adds r0, r5, #0
	mov r1, r8
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	bl sub_08000BB4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L080010A4
	b .L080011DC
.L080010A4:
	adds r0, r6, #0
	movs r1, #0
	bl sub_0800062C
	adds r4, r0, #0
	ldr r1, [pc, #80]
	adds r0, r1, #0
	ldrh r2, [r4, #4]
	ands r0, r2
	cmp r0, r1
	bne .L080010BC
	b .L080011DC
.L080010BC:
	adds r0, r6, #0
	movs r1, #0
	bl sub_08000614
	adds r3, r0, #0
	movs r7, #4
	ldrsh r1, [r3, r7]
	movs r0, #1
	negs r0, r0
	cmp r1, r0
	bne .L080010D4
	b .L080011DC
.L080010D4:
	movs r0, #64
	ldrb r1, [r4, #5]
	ands r0, r1
	cmp r0, #0
	beq .L08001108
	movs r7, #0
	ldrsh r2, [r4, r7]
	subs r2, r5, r2
	ldrh r0, [r3, #0]
	lsls r1, r0, #3
	movs r5, #8
	ldrsh r0, [r3, r5]
	subs r0, r1, r0
	adds r0, r2, r0
	str r0, [sp, #20]
	movs r7, #4
	ldrsh r0, [r3, r7]
	subs r1, r1, r0
	adds r2, r2, r1
	mov r9, r2
	b .L08001120
	movs r0, r0
	subs r7, #255
	movs r0, r0
.L08001104:
	movs r0, #1
	b .L080011DE
.L08001108:
	movs r1, #0
	ldrsh r0, [r4, r1]
	subs r0, r5, r0
	movs r2, #4
	ldrsh r1, [r3, r2]
	adds r0, r0, r1
	str r0, [sp, #20]
	movs r5, #8
	ldrsh r0, [r3, r5]
	ldr r7, [sp, #20]
	adds r0, r0, r7
	mov r9, r0
.L08001120:
	movs r1, #2
	ldrsh r0, [r4, r1]
	mov r2, r8
	subs r0, r2, r0
	movs r4, #6
	ldrsh r1, [r3, r4]
	adds r0, r0, r1
	mov r8, r0
	movs r5, #10
	ldrsh r0, [r3, r5]
	add r0, r8
	str r0, [sp, #16]
	movs r6, #0
	ldr r7, [sp, #12]
	cmp r6, r7
	bcs .L080011DC
.L08001140:
	mov r0, sl
	adds r1, r6, #0
	bl sub_0800062C
	adds r5, r0, #0
	ldr r0, [pc, #72]
	ldrh r1, [r5, #4]
	ands r0, r1
	ldr r2, [pc, #64]
	cmp r0, r2
	beq .L080011D4
	mov r0, sl
	adds r1, r6, #0
	bl sub_08000614
	adds r3, r0, #0
	movs r4, #4
	ldrsh r0, [r3, r4]
	movs r7, #1
	negs r7, r7
	cmp r0, r7
	beq .L080011D4
	movs r0, #64
	ldrb r1, [r5, #5]
	ands r0, r1
	cmp r0, #0
	beq .L08001198
	movs r4, #0
	ldrsh r2, [r5, r4]
	ldr r7, [sp, #4]
	subs r2, r7, r2
	ldrh r0, [r3, #0]
	lsls r1, r0, #3
	movs r4, #8
	ldrsh r0, [r3, r4]
	subs r0, r1, r0
	adds r4, r2, r0
	movs r7, #4
	ldrsh r0, [r3, r7]
	subs r1, r1, r0
	adds r2, r2, r1
	b .L080011AC
	subs r7, #255
	movs r0, r0
.L08001198:
	movs r1, #0
	ldrsh r0, [r5, r1]
	ldr r2, [sp, #4]
	subs r0, r2, r0
	movs r4, #4
	ldrsh r1, [r3, r4]
	adds r4, r0, r1
	movs r7, #8
	ldrsh r0, [r3, r7]
	adds r2, r4, r0
.L080011AC:
	movs r1, #2
	ldrsh r0, [r5, r1]
	ldr r5, [sp, #8]
	subs r0, r5, r0
	movs r7, #6
	ldrsh r1, [r3, r7]
	adds r1, r0, r1
	movs r5, #10
	ldrsh r0, [r3, r5]
	adds r0, r1, r0
	cmp r8, r0
	bgt .L080011D4
	ldr r7, [sp, #16]
	cmp r7, r1
	blt .L080011D4
	ldr r0, [sp, #20]
	cmp r0, r2
	bgt .L080011D4
	cmp r9, r4
	bge .L08001104
.L080011D4:
	adds r6, #1
	ldr r1, [sp, #12]
	cmp r6, r1
	bcc .L08001140
.L080011DC:
	movs r0, #0
.L080011DE:
	add sp, #24
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000
