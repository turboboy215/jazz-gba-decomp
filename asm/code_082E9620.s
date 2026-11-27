	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_082E9620
	.thumb_func
sub_082E9620:
	adds r2, r0, #0
	strb r1, [r2, #7]
	subs r0, r1, #1
	cmp r0, #14
	bhi .L082E96E4
	lsls r0, r0, #2
	ldr r1, [pc, #4]
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	str r4, [r3, #52]
	lsrs r5, r7, #32
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #0]
	b .L082E96E2
	ldr r0, [sp, #500]
	lsrs r6, r5, #32
	adds r0, r2, #0
	adds r0, #200
	ldr r1, [pc, #0]
	b .L082E966E
	ldr r2, [sp, #644]
	lsrs r6, r5, #32
	adds r0, r2, #0
	adds r0, #200
	ldr r1, [pc, #0]
	b .L082E966E
	ldr r3, [sp, #212]
	lsrs r6, r5, #32
	adds r0, r2, #0
	adds r0, #200
	ldr r1, [pc, #0]
	b .L082E966E
	ldr r3, [sp, #804]
	lsrs r6, r5, #32
	adds r0, r2, #0
	adds r0, #200
	ldr r1, [pc, #8]
.L082E966E:
	str r1, [r0, #0]
	movs r0, #0
	strh r0, [r2, #26]
	b .L082E96E4
	movs r0, r0
	ldr r4, [sp, #452]
	lsrs r6, r5, #32
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #0]
	b .L082E96E2
	ldr r5, [sp, #100]
	lsrs r6, r5, #32
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #0]
	b .L082E96E2
	ldr r5, [sp, #724]
	lsrs r6, r5, #32
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #0]
	b .L082E96E2
	ldr r6, [sp, #180]
	lsrs r6, r5, #32
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #0]
	b .L082E96E2
	ldr r6, [sp, #740]
	lsrs r6, r5, #32
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #0]
	b .L082E96E2
	ldr r7, [sp, #164]
	lsrs r6, r5, #32
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #0]
	b .L082E96E2
	ldr r7, [sp, #916]
	lsrs r6, r5, #32
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #0]
	b .L082E96E2
	add r0, pc, #676
	lsrs r6, r5, #32
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #0]
	b .L082E96E2
	add r1, pc, #644
	lsrs r6, r5, #32
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #4]
.L082E96E2:
	str r0, [r1, #0]
.L082E96E4:
	bx lr
	.2byte 0x0000
	.4byte 0x082EA129

	.thumb
	.align 1, 0
	.global sub_082E96EC
	.thumb_func
sub_082E96EC:
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #216
	ldr r0, [r0, #0]
	cmp r0, #8
	beq .L082E972C
	cmp r0, #8
	bgt .L082E9702
	cmp r0, #7
	beq .L082E9716
	b .L082E9742
.L082E9702:
	cmp r0, #41
	bne .L082E9742
	ldrb r0, [r4, #7]
	cmp r0, #1
	beq .L082E9742
	adds r0, r4, #0
	movs r1, #1
	bl sub_082E9620
	b .L082E9742
.L082E9716:
	ldrb r0, [r4, #7]
	cmp r0, #13
	beq .L082E9724
	adds r0, r4, #0
	movs r1, #13
	bl sub_082E9620
.L082E9724:
	adds r1, r4, #0
	adds r1, #48
	movs r0, #1
	b .L082E9740
.L082E972C:
	ldrb r0, [r4, #7]
	cmp r0, #13
	beq .L082E973A
	adds r0, r4, #0
	movs r1, #13
	bl sub_082E9620
.L082E973A:
	adds r1, r4, #0
	adds r1, #48
	movs r0, #0
.L082E9740:
	strb r0, [r1, #0]
.L082E9742:
	pop {r4}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082E9748
	.thumb_func
sub_082E9748:
	push {r4, lr}
	adds r4, r0, #0
	movs r2, #0
	movs r1, #1
	strb r1, [r4, #5]
	movs r0, #11
	strb r0, [r4, #6]
	adds r0, r4, #0
	adds r0, #46
	strb r1, [r0, #0]
	adds r0, #1
	strb r1, [r0, #0]
	adds r0, #33
	movs r3, #0
	strh r2, [r0, #0]
	adds r1, r4, #0
	adds r1, #82
	ldr r0, [pc, #44]
	strh r0, [r1, #0]
	subs r1, #22
	movs r0, #50
	strb r0, [r1, #0]
	str r2, [r4, #68]
	str r2, [r4, #64]
	movs r0, #128
	lsls r0, r0, #3
	str r0, [r4, #72]
	movs r0, #192
	lsls r0, r0, #3
	str r0, [r4, #76]
	ldr r0, [pc, #20]
	ldrb r0, [r0, #0]
	cmp r0, #1
	beq .L082E97B4
	cmp r0, #1
	bgt .L082E97A0
	cmp r0, #0
	beq .L082E97AA
	b .L082E97D2
	movs r0, r0
	.2byte 0xfff8 @ .raw
	movs r0, r0
	strb r6, [r4, #21]
	lsls r0, r0, #8
.L082E97A0:
	cmp r0, #2
	beq .L082E97C0
	cmp r0, #3
	beq .L082E97CA
	b .L082E97D2
.L082E97AA:
	adds r1, r4, #0
	adds r1, #90
	movs r0, #150
	lsls r0, r0, #3
	b .L082E97D0
.L082E97B4:
	adds r1, r4, #0
	adds r1, #90
	ldr r0, [pc, #0]
	b .L082E97D0
	lsls r4, r0, #29
	movs r0, r0
.L082E97C0:
	adds r1, r4, #0
	adds r1, #90
	movs r0, #255
	lsls r0, r0, #3
	b .L082E97D0
.L082E97CA:
	adds r1, r4, #0
	adds r1, #90
	ldr r0, [pc, #92]
.L082E97D0:
	strh r0, [r1, #0]
.L082E97D2:
	adds r0, r4, #0
	adds r0, #87
	movs r1, #0
	strb r1, [r0, #0]
	adds r0, #1
	strb r1, [r0, #0]
	subs r0, #2
	strb r1, [r0, #0]
	bl sub_082E931C
	ldr r0, [r4, #52]
	ldr r1, [r4, #56]
	movs r2, #1
	bl sub_08000A1C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082E9804
	adds r0, r4, #0
	adds r0, #52
	adds r1, r4, #0
	adds r1, #56
	movs r2, #1
	bl sub_08000A70
.L082E9804:
	adds r0, r4, #0
	adds r0, #84
	movs r1, #250
	lsls r1, r1, #1
	strh r1, [r0, #0]
	adds r0, #143
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082E9834
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #20]
	movs r2, #16
	movs r3, #0
	bl sub_080002E0
	adds r1, r4, #0
	adds r1, #48
	movs r0, #1
	b .L082E9848
	lsrs r4, r4, #4
	movs r0, r0
	add r4, pc, #640
	lsrs r5, r3, #32
.L082E9834:
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #56]
	movs r2, #17
	movs r3, #0
	bl sub_080002E0
	adds r1, r4, #0
	adds r1, #48
	movs r0, #0
.L082E9848:
	strb r0, [r1, #0]
	adds r1, r4, #0
	adds r1, #229
	ldrb r0, [r1, #0]
	cmp r0, #0
	beq .L082E9858
	subs r1, #139
	strh r0, [r1, #0]
.L082E9858:
	movs r0, #0
	strb r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #220
	ldr r0, [pc, #20]
	str r0, [r1, #0]
	adds r0, r4, #0
	movs r1, #1
	bl sub_082E9620
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x081DA4A0
	.4byte 0x082E96ED

	.thumb
	.align 1, 0
	.global sub_082E987C
	.thumb_func
sub_082E987C:
	push {r4, r5, lr}
	sub sp, #12
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #1
	beq .L082E9894
	ldrb r0, [r5, #7]
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
.L082E9894:
	ldr r2, [pc, #72]
	ldr r1, [r5, #52]
	ldr r0, [r2, #52]
	subs r0, r1, r0
	adds r4, r2, #0
	cmp r0, #0
	bge .L082E98A4
	negs r0, r0
.L082E98A4:
	asrs r0, r0, #8
	cmp r0, #149
	bgt .L082E98FC
	adds r0, r5, #0
	movs r1, #0
	bl sub_082E9384
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082E98FC
	movs r1, #26
	ldrsh r0, [r5, r1]
	cmp r0, #70
	ble .L082E98FC
	bl sub_082E934C
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne .L082E98EE
	ldrb r4, [r4, #7]
	cmp r4, #7
	bne .L082E98E4
	adds r0, r5, #0
	movs r1, #4
	bl sub_082E9620
	b .L082E98F6
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
.L082E98E4:
	adds r0, r5, #0
	movs r1, #3
	bl sub_082E9620
	b .L082E98F6
.L082E98EE:
	adds r0, r5, #0
	movs r1, #12
	bl sub_082E9620
.L082E98F6:
	movs r0, #0
	strh r0, [r5, #26]
	b .L082E9A2C
.L082E98FC:
	movs r2, #34
	ldrsh r0, [r5, r2]
	ldr r4, [pc, #44]
	ldr r1, [r5, #52]
	cmp r0, #140
	ble .L082E9960
	ldr r0, [r4, #52]
	subs r0, r1, r0
	cmp r0, #0
	bge .L082E9912
	negs r0, r0
.L082E9912:
	asrs r0, r0, #8
	cmp r0, #99
	bgt .L082E9960
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne .L082E9938
	adds r0, r5, #0
	adds r0, #100
	movs r1, #16
	bl sub_08000680
	ldr r0, [pc, #4]
	b .L082E9946
	movs r5, #12
	lsls r0, r0, #12
	.2byte 0xfe0c @ .raw
	.2byte 0xffff @ .raw
.L082E9938:
	adds r0, r5, #0
	adds r0, #100
	movs r1, #17
	bl sub_08000680
	movs r0, #250
	lsls r0, r0, #1
.L082E9946:
	str r0, [r5, #64]
	ldr r0, [pc, #16]
	str r0, [r5, #68]
	adds r0, r5, #0
	movs r1, #9
	bl sub_082E9620
	movs r0, #0
	strh r0, [r5, #34]
	b .L082E9A2C
	movs r0, r0
	.2byte 0xf800 @ .raw
	.2byte 0xffff @ .raw
.L082E9960:
	ldr r0, [r4, #52]
	subs r0, r1, r0
	cmp r0, #0
	bge .L082E996A
	negs r0, r0
.L082E996A:
	asrs r0, r0, #8
	cmp r0, #75
	ble .L082E9A06
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne .L082E9990
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #16
	bl sub_08000680
	ldr r0, [pc, #4]
	b .L082E99A0
	movs r0, r0
	.2byte 0xff00 @ .raw
	.2byte 0xffff @ .raw
.L082E9990:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #17
	bl sub_08000680
	movs r0, #128
	lsls r0, r0, #1
.L082E99A0:
	str r0, [r5, #64]
	adds r0, r4, #0
	bl sub_08000704
	ldr r4, [r5, #64]
	cmp r4, #0
	bge .L082E99C0
	ldr r0, [r5, #52]
	ldr r1, [r5, #56]
	movs r3, #75
	negs r3, r3
	movs r2, #32
	negs r2, r2
	str r2, [sp, #0]
	movs r2, #8
	b .L082E99D4
.L082E99C0:
	cmp r4, #0
	ble .L082E9A2C
	ldr r0, [r5, #52]
	ldr r1, [r5, #56]
	movs r3, #8
	negs r3, r3
	movs r2, #32
	negs r2, r2
	str r2, [sp, #0]
	movs r2, #75
.L082E99D4:
	str r2, [sp, #4]
	movs r2, #16
	negs r2, r2
	str r2, [sp, #8]
	adds r2, r4, #0
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082E9A2C
	ldr r0, [r5, #52]
	ldr r1, [r5, #64]
	adds r0, r0, r1
	ldr r1, [r5, #56]
	movs r2, #1
	bl sub_08000A1C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082E9A2C
	ldr r0, [r5, #52]
	ldr r1, [r5, #64]
	adds r0, r0, r1
	str r0, [r5, #52]
	b .L082E9A2C
.L082E9A06:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	bl sub_080006AC
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne .L082E9A24
	adds r0, r4, #0
	movs r1, #24
	bl sub_08000680
	b .L082E9A2C
.L082E9A24:
	adds r0, r4, #0
	movs r1, #25
	bl sub_08000680
.L082E9A2C:
	movs r1, #28
	ldrsh r0, [r5, r1]
	cmp r0, #50
	ble .L082E9A58
	ldr r0, [pc, #16]
	ldr r1, [r0, #52]
	ldr r0, [r5, #52]
	cmp r1, r0
	bge .L082E9A4C
	adds r1, r5, #0
	adds r1, #48
	movs r0, #1
	b .L082E9A52
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
.L082E9A4C:
	adds r1, r5, #0
	adds r1, #48
	movs r0, #0
.L082E9A52:
	strb r0, [r1, #0]
	movs r0, #0
	strh r0, [r5, #28]
.L082E9A58:
	ldrh r0, [r5, #28]
	adds r0, #1
	strh r0, [r5, #28]
	ldrh r1, [r5, #26]
	movs r2, #26
	ldrsh r0, [r5, r2]
	cmp r0, #249
	bgt .L082E9A6C
	adds r0, r1, #1
	strh r0, [r5, #26]
.L082E9A6C:
	ldrh r1, [r5, #34]
	movs r2, #34
	ldrsh r0, [r5, r2]
	cmp r0, #249
	bgt .L082E9A7A
	adds r0, r1, #1
	strh r0, [r5, #34]
.L082E9A7A:
	adds r0, r5, #0
	bl sub_082E952C
	cmp r0, #1
	bne .L082E9A96
	adds r0, r5, #0
	bl sub_082E960C
	cmp r0, #1
	bne .L082E9A96
	adds r0, r5, #0
	movs r1, #15
	bl sub_082E9620
.L082E9A96:
	add sp, #12
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082E9AA0
	.thumb_func
sub_082E9AA0:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #2
	beq .L082E9AB6
	ldrb r0, [r5, #7]
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
.L082E9AB6:
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082E9ACE
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #23
	bl sub_08000680
	b .L082E9ADA
.L082E9ACE:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #22
	bl sub_08000680
.L082E9ADA:
	adds r0, r4, #0
	bl sub_08000794
	cmp r0, #2
	bne .L082E9AFC
	adds r0, r4, #0
	bl sub_08000798
	cmp r0, #0
	bne .L082E9AFC
	adds r0, r5, #0
	movs r1, #23
	bl sub_082F8A24
	ldr r0, [r5, #96]
	bl sub_082FB9D0
.L082E9AFC:
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082E9B10
	adds r0, r5, #0
	movs r1, #1
	bl sub_082E9620
.L082E9B10:
	adds r0, r5, #0
	bl sub_082E952C
	cmp r0, #1
	bne .L082E9B2C
	adds r0, r5, #0
	bl sub_082E960C
	cmp r0, #1
	bne .L082E9B2C
	adds r0, r5, #0
	movs r1, #15
	bl sub_082E9620
.L082E9B2C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082E9B34
	.thumb_func
sub_082E9B34:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #12
	beq .L082E9B4A
	ldrb r0, [r5, #7]
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
.L082E9B4A:
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082E9B62
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #23
	bl sub_08000680
	b .L082E9B6E
.L082E9B62:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #22
	bl sub_08000680
.L082E9B6E:
	adds r0, r4, #0
	bl sub_08000794
	cmp r0, #2
	bne .L082E9B90
	adds r0, r4, #0
	bl sub_08000798
	cmp r0, #0
	bne .L082E9B90
	adds r0, r5, #0
	movs r1, #24
	bl sub_082F8A24
	ldr r0, [r5, #96]
	bl sub_082FB9D0
.L082E9B90:
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082E9BA4
	adds r0, r5, #0
	movs r1, #5
	bl sub_082E9620
.L082E9BA4:
	adds r0, r5, #0
	bl sub_082E952C
	cmp r0, #1
	bne .L082E9BC0
	adds r0, r5, #0
	bl sub_082E960C
	cmp r0, #1
	bne .L082E9BC0
	adds r0, r5, #0
	movs r1, #15
	bl sub_082E9620
.L082E9BC0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082E9BC8
	.thumb_func
sub_082E9BC8:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #3
	beq .L082E9BF0
	ldrb r0, [r5, #7]
	movs r4, #0
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
	adds r0, r5, #0
	movs r1, #25
	bl sub_082F8A24
	ldr r0, [r5, #96]
	bl sub_082FB9D0
	strh r4, [r5, #30]
.L082E9BF0:
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082E9C08
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #19
	bl sub_08000680
	b .L082E9C14
.L082E9C08:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #18
	bl sub_08000680
.L082E9C14:
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082E9C4C
	ldrh r0, [r5, #30]
	adds r0, #1
	strh r0, [r5, #30]
	lsls r0, r0, #16
	asrs r0, r0, #16
	cmp r0, #4
	ble .L082E9C38
	adds r0, r5, #0
	movs r1, #1
	bl sub_082E9620
	b .L082E9C4C
.L082E9C38:
	adds r0, r5, #0
	movs r1, #25
	bl sub_082F8A24
	ldr r0, [r5, #96]
	bl sub_082FB9D0
	adds r0, r4, #0
	bl sub_080006AC
.L082E9C4C:
	adds r0, r5, #0
	bl sub_082E952C
	cmp r0, #1
	bne .L082E9C68
	adds r0, r5, #0
	bl sub_082E960C
	cmp r0, #1
	bne .L082E9C68
	adds r0, r5, #0
	movs r1, #15
	bl sub_082E9620
.L082E9C68:
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082E9C70
	.thumb_func
sub_082E9C70:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #4
	beq .L082E9C98
	ldrb r0, [r5, #7]
	movs r4, #0
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
	adds r0, r5, #0
	movs r1, #25
	bl sub_082F8A24
	ldr r0, [r5, #96]
	bl sub_082FB9D0
	strh r4, [r5, #30]
.L082E9C98:
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082E9CB0
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #21
	bl sub_08000680
	b .L082E9CBC
.L082E9CB0:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #20
	bl sub_08000680
.L082E9CBC:
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082E9CF4
	ldrh r0, [r5, #30]
	adds r0, #1
	strh r0, [r5, #30]
	lsls r0, r0, #16
	asrs r0, r0, #16
	cmp r0, #4
	ble .L082E9CE0
	adds r0, r5, #0
	movs r1, #1
	bl sub_082E9620
	b .L082E9CF4
.L082E9CE0:
	adds r0, r5, #0
	movs r1, #25
	bl sub_082F8A24
	ldr r0, [r5, #96]
	bl sub_082FB9D0
	adds r0, r4, #0
	bl sub_080006AC
.L082E9CF4:
	adds r0, r5, #0
	bl sub_082E952C
	cmp r0, #1
	bne .L082E9D10
	adds r0, r5, #0
	bl sub_082E960C
	cmp r0, #1
	bne .L082E9D10
	adds r0, r5, #0
	movs r1, #15
	bl sub_082E9620
.L082E9D10:
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082E9D18
	.thumb_func
sub_082E9D18:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #5
	beq .L082E9D32
	ldrb r0, [r5, #7]
	movs r4, #0
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
	strh r4, [r5, #30]
.L082E9D32:
	movs r0, #54
	bl sub_0831683C
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082E9D44
	movs r0, #54
	bl sub_083189D0
.L082E9D44:
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082E9D5C
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #13
	bl sub_08000680
	b .L082E9D68
.L082E9D5C:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #12
	bl sub_08000680
.L082E9D68:
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082E9D92
	ldrh r0, [r5, #30]
	adds r0, #1
	strh r0, [r5, #30]
	lsls r0, r0, #16
	asrs r0, r0, #16
	cmp r0, #4
	ble .L082E9D8C
	adds r0, r5, #0
	movs r1, #1
	bl sub_082E9620
	b .L082E9D92
.L082E9D8C:
	adds r0, r4, #0
	bl sub_080006AC
.L082E9D92:
	adds r0, r5, #0
	bl sub_082E952C
	cmp r0, #1
	bne .L082E9DAE
	adds r0, r5, #0
	bl sub_082E960C
	cmp r0, #1
	bne .L082E9DAE
	adds r0, r5, #0
	movs r1, #15
	bl sub_082E9620
.L082E9DAE:
	pop {r4, r5}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082E9DB4
	.thumb_func
sub_082E9DB4:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #6
	beq .L082E9DD0
	ldrb r0, [r5, #7]
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
	movs r0, #53
	bl sub_083189D0
.L082E9DD0:
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082E9DE8
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #3
	bl sub_08000680
	b .L082E9DF4
.L082E9DE8:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #2
	bl sub_08000680
.L082E9DF4:
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082E9E08
	adds r0, r5, #0
	movs r1, #7
	bl sub_082E9620
.L082E9E08:
	adds r0, r5, #0
	bl sub_082E952C
	cmp r0, #1
	bne .L082E9E24
	adds r0, r5, #0
	bl sub_082E960C
	cmp r0, #1
	bne .L082E9E24
	adds r0, r5, #0
	movs r1, #15
	bl sub_082E9620
.L082E9E24:
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082E9E2C
	.thumb_func
sub_082E9E2C:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #7
	beq .L082E9E46
	ldrb r0, [r5, #7]
	movs r4, #0
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
	strh r4, [r5, #30]
.L082E9E46:
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082E9E5E
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #15
	bl sub_08000680
	b .L082E9E6A
.L082E9E5E:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #14
	bl sub_08000680
.L082E9E6A:
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082E9E94
	ldrh r0, [r5, #30]
	adds r0, #1
	strh r0, [r5, #30]
	lsls r0, r0, #16
	asrs r0, r0, #16
	cmp r0, #4
	ble .L082E9E8E
	adds r0, r5, #0
	movs r1, #8
	bl sub_082E9620
	b .L082E9E94
.L082E9E8E:
	adds r0, r4, #0
	bl sub_080006AC
.L082E9E94:
	adds r0, r5, #0
	bl sub_082E952C
	cmp r0, #1
	bne .L082E9EB0
	adds r0, r5, #0
	bl sub_082E960C
	cmp r0, #1
	bne .L082E9EB0
	adds r0, r5, #0
	movs r1, #15
	bl sub_082E9620
.L082E9EB0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082E9EB8
	.thumb_func
sub_082E9EB8:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #8
	beq .L082E9ECE
	ldrb r0, [r5, #7]
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
.L082E9ECE:
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082E9EE6
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #27
	bl sub_08000680
	b .L082E9EF2
.L082E9EE6:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #26
	bl sub_08000680
.L082E9EF2:
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082E9F06
	adds r0, r5, #0
	movs r1, #1
	bl sub_082E9620
.L082E9F06:
	adds r0, r5, #0
	bl sub_082E952C
	cmp r0, #1
	bne .L082E9F22
	adds r0, r5, #0
	bl sub_082E960C
	cmp r0, #1
	bne .L082E9F22
	adds r0, r5, #0
	movs r1, #15
	bl sub_082E9620
.L082E9F22:
	pop {r4, r5}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082E9F28
	.thumb_func
sub_082E9F28:
	push {r4, r5, lr}
	sub sp, #12
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #9
	beq .L082E9F46
	ldrb r0, [r5, #7]
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
	movs r0, #15
	bl sub_083189D0
.L082E9F46:
	ldr r1, [r5, #68]
	movs r0, #1
	movs r2, #64
	bl sub_083170A0
	str r0, [r5, #68]
	ldr r1, [r5, #56]
	adds r4, r1, r0
	str r4, [r5, #56]
	ldr r2, [r5, #64]
	cmp r2, #0
	bge .L082E9F6E
	ldr r0, [r5, #52]
	movs r3, #75
	negs r3, r3
	movs r1, #32
	negs r1, r1
	str r1, [sp, #0]
	movs r1, #8
	b .L082E9F80
.L082E9F6E:
	cmp r2, #0
	ble .L082E9F9C
	ldr r0, [r5, #52]
	movs r3, #8
	negs r3, r3
	movs r1, #32
	negs r1, r1
	str r1, [sp, #0]
	movs r1, #75
.L082E9F80:
	str r1, [sp, #4]
	movs r1, #16
	negs r1, r1
	str r1, [sp, #8]
	adds r1, r4, #0
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082E9F9C
	ldr r0, [r5, #52]
	ldr r1, [r5, #64]
	adds r0, r0, r1
	str r0, [r5, #52]
.L082E9F9C:
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082E9FB4
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #11
	bl sub_08000680
	b .L082E9FC0
.L082E9FB4:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #10
	bl sub_08000680
.L082E9FC0:
	adds r0, r4, #0
	bl sub_080006C4
	ldr r0, [r5, #68]
	cmp r0, #0
	blt .L082E9FD4
	adds r0, r5, #0
	movs r1, #10
	bl sub_082E9620
.L082E9FD4:
	adds r0, r5, #0
	bl sub_082E952C
	add sp, #12
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082E9FE4
	.thumb_func
sub_082E9FE4:
	push {r4, r5, lr}
	sub sp, #12
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #10
	beq .L082E9FFC
	ldrb r0, [r5, #7]
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
.L082E9FFC:
	ldr r1, [r5, #68]
	movs r0, #1
	movs r2, #64
	bl sub_083170A0
	str r0, [r5, #68]
	ldr r1, [r5, #56]
	adds r4, r1, r0
	str r4, [r5, #56]
	ldr r2, [r5, #64]
	cmp r2, #0
	bge .L082EA024
	ldr r0, [r5, #52]
	movs r3, #75
	negs r3, r3
	movs r1, #32
	negs r1, r1
	str r1, [sp, #0]
	movs r1, #8
	b .L082EA036
.L082EA024:
	cmp r2, #0
	ble .L082EA052
	ldr r0, [r5, #52]
	movs r3, #8
	negs r3, r3
	movs r1, #32
	negs r1, r1
	str r1, [sp, #0]
	movs r1, #75
.L082EA036:
	str r1, [sp, #4]
	movs r1, #16
	negs r1, r1
	str r1, [sp, #8]
	adds r1, r4, #0
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082EA052
	ldr r0, [r5, #52]
	ldr r1, [r5, #64]
	adds r0, r0, r1
	str r0, [r5, #52]
.L082EA052:
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082EA06A
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #7
	bl sub_08000680
	b .L082EA076
.L082EA06A:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #6
	bl sub_08000680
.L082EA076:
	adds r0, r4, #0
	bl sub_080006C4
	ldr r0, [r5, #52]
	ldr r1, [r5, #64]
	adds r0, r0, r1
	ldr r1, [r5, #56]
	movs r2, #1
	bl sub_08000A1C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082EA098
	adds r0, r5, #0
	movs r1, #11
	bl sub_082E9620
.L082EA098:
	adds r0, r5, #0
	bl sub_082E952C
	add sp, #12
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082EA0A8
	.thumb_func
sub_082EA0A8:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #11
	beq .L082EA0BE
	ldrb r0, [r5, #7]
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
.L082EA0BE:
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082EA0D6
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #9
	bl sub_08000680
	b .L082EA0E2
.L082EA0D6:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #8
	bl sub_08000680
.L082EA0E2:
	adds r0, r5, #0
	adds r0, #52
	adds r1, r5, #0
	adds r1, #56
	movs r2, #1
	bl sub_08000A70
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082EA104
	adds r0, r5, #0
	movs r1, #1
	bl sub_082E9620
.L082EA104:
	adds r0, r5, #0
	bl sub_082E952C
	cmp r0, #1
	bne .L082EA120
	adds r0, r5, #0
	bl sub_082E960C
	cmp r0, #1
	bne .L082EA120
	adds r0, r5, #0
	movs r1, #15
	bl sub_082E9620
.L082EA120:
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082EA128
	.thumb_func
sub_082EA128:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #13
	beq .L082EA13E
	ldrb r0, [r5, #7]
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
.L082EA13E:
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082EA156
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #25
	bl sub_08000680
	b .L082EA162
.L082EA156:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #24
	bl sub_08000680
.L082EA162:
	adds r0, r4, #0
	bl sub_08000704
	adds r0, r5, #0
	adds r0, #216
	ldr r0, [r0, #0]
	subs r0, #7
	cmp r0, #1
	bls .L082EA17C
	adds r0, r5, #0
	movs r1, #1
	bl sub_082E9620
.L082EA17C:
	adds r0, r5, #0
	bl sub_082E952C
	cmp r0, #1
	bne .L082EA198
	adds r0, r5, #0
	bl sub_082E960C
	cmp r0, #1
	bne .L082EA198
	adds r0, r5, #0
	movs r1, #15
	bl sub_082E9620
.L082EA198:
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082EA1A0
	.thumb_func
sub_082EA1A0:
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldrb r0, [r6, #8]
	cmp r0, #15
	beq .L082EA224
	ldrb r0, [r6, #7]
	movs r4, #0
	strb r0, [r6, #8]
	adds r5, r6, #0
	adds r5, #100
	adds r0, r5, #0
	bl sub_080006AC
	adds r0, r6, #0
	adds r0, #47
	strb r4, [r0, #0]
	subs r0, #1
	strb r4, [r0, #0]
	ldr r1, [pc, #116]
	adds r0, r5, #0
	bl sub_0800075C
	ldr r0, [r6, #52]
	ldr r1, [r6, #56]
	movs r2, #0
	bl sub_083081B0
	ldr r0, [r6, #52]
	movs r1, #160
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r1, [r6, #56]
	movs r2, #160
	lsls r2, r2, #4
	adds r1, r1, r2
	movs r2, #15
	bl sub_083081B0
	ldr r0, [r6, #52]
	ldr r1, [pc, #80]
	adds r0, r0, r1
	ldr r1, [r6, #56]
	ldr r2, [pc, #76]
	adds r1, r1, r2
	movs r2, #30
	bl sub_083081B0
	ldr r0, [r6, #52]
	movs r4, #144
	lsls r4, r4, #4
	adds r0, r0, r4
	ldr r1, [r6, #56]
	movs r2, #240
	lsls r2, r2, #4
	adds r1, r1, r2
	movs r2, #45
	bl sub_083081B0
	ldr r0, [r6, #52]
	adds r0, r0, r4
	ldr r1, [r6, #56]
	ldr r2, [pc, #44]
	adds r1, r1, r2
	movs r2, #60
	bl sub_083081B0
.L082EA224:
	adds r0, r6, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082EA24C
	adds r4, r6, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #1
	bl sub_08000680
	b .L082EA258
	.2byte 0xffff @ .raw
	movs r0, r0
	.2byte 0xfb00 @ .raw
	.2byte 0xffff @ .raw
	.2byte 0xe700 @ b.n 0x82ea048
	.2byte 0xffff @ .raw
	.2byte 0xf100, 0xffff @ bl 0x83eb24a
.L082EA24C:
	adds r4, r6, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #0
	bl sub_08000680
.L082EA258:
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082EA270
	adds r0, r6, #0
	bl sub_082EA2C0
	ldr r0, [pc, #12]
	bl sub_0831638C
.L082EA270:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x082FC651

	.thumb
	.align 1, 0
	.global sub_082EA27C
	.thumb_func
sub_082EA27C:
	movs r1, #0
	movs r2, #0
	movs r3, #1
	ldr r0, [pc, #20]
.L082EA284:
	strb r3, [r0, #5]
	strb r2, [r0, #1]
	strb r2, [r0, #4]
	strb r1, [r0, #0]
	adds r0, #248
	adds r1, #1
	cmp r1, #8
	bne .L082EA284
	bx lr
	.2byte 0x0000
	.4byte 0x02004400

	.thumb
	.align 1, 0
	.global sub_082EA29C
	.thumb_func
sub_082EA29C:
	.2byte 0x1c03 @ adds r3, r0, #0
	.2byte 0x2200 @ movs r2, #0
	.2byte 0x4903 @ ldr r1, [pc, #12]
	.2byte 0x7848 @ ldrb r0, [r1, #1]
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd105 @ bne.n 0x82ea2b4
	.2byte 0x6019 @ str r1, [r3, #0]
	.2byte 0x2001 @ movs r0, #1
	.2byte 0xe007 @ b.n 0x82ea2be
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x4400 @ add r0, r0
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0x31f8 @ adds r1, #248
	.2byte 0x3201 @ adds r2, #1
	.2byte 0x2a08 @ cmp r2, #8
	.2byte 0xd1f2 @ bne.n 0x82ea2a2
	.2byte 0x2000 @ movs r0, #0
	.2byte 0x4770 @ bx lr
