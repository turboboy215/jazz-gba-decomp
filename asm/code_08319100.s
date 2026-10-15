	.include "asm/macros.inc"
	.syntax unified
	.text

@ GAX_fx_note: [likely] (fxch, note) unused by Jazz
	.thumb
	.align 1, 0
	.global sub_08319100
	.thumb_func
sub_08319100:
	.global GAX_fx_note
	.thumb_set GAX_fx_note, sub_08319100
	push {r4, lr}
	adds r2, r0, #0
	adds r4, r1, #0
	ldr r0, [pc, #56]
	cmp r4, r0
	bhi .L0831913A
	cmp r2, #0
	blt .L0831913A
	ldr r0, [pc, #48]
	ldr r3, [r0, #0]
	ldr r0, [r3, #16]
	cmp r2, r0
	bcs .L0831913A
	ldr r0, [r3, #12]
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #4
	adds r2, r1, r0
	ldr r0, [r2, #44]
	cmp r0, #0
	beq .L0831913A
	adds r0, r2, #0
	adds r0, #68
	strh r4, [r0, #0]
	ldr r0, [r3, #12]
	adds r0, r1, r0
	adds r0, #74
	movs r1, #1
	strb r1, [r0, #0]
.L0831913A:
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x00000EEC
	.4byte 0x03000B0C

@ GAX_stop_fx: [likely] (fxch; -1 = all)
	.thumb
	.align 1, 0
	.global sub_08319148
	.thumb_func
sub_08319148:
	.global GAX_stop_fx
	.thumb_set GAX_stop_fx, sub_08319148
	push {r4, lr}
	adds r2, r0, #0
	movs r0, #1
	negs r0, r0
	cmp r2, r0
	bne .L08319184
	movs r1, #0
	ldr r2, [pc, #40]
	ldr r0, [r2, #0]
	ldr r0, [r0, #16]
	cmp r1, r0
	bcs .L083191A2
	adds r3, r2, #0
	movs r4, #1
	movs r2, #0
.L08319166:
	ldr r0, [r3, #0]
	ldr r0, [r0, #12]
	adds r0, r2, r0
	adds r0, #75
	strb r4, [r0, #0]
	adds r2, #80
	adds r1, #1
	ldr r0, [r3, #0]
	ldr r0, [r0, #16]
	cmp r1, r0
	bcc .L08319166
	b .L083191A2
	movs r0, r0
	lsrs r4, r1, #12
	lsls r0, r0, #12
.L08319184:
	ldr r0, [pc, #32]
	ldr r1, [r0, #0]
	ldr r0, [r1, #16]
	cmp r2, r0
	bcs .L083191A2
	cmp r2, #0
	blt .L083191A2
	ldr r0, [r1, #12]
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #4
	adds r1, r1, r0
	adds r1, #75
	movs r0, #1
	strb r0, [r1, #0]
.L083191A2:
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x03000B0C

@ GAX_set_fx_volume: [likely] AgbMain calls (-1, vol)
	.thumb
	.align 1, 0
	.global sub_083191AC
	.thumb_func
sub_083191AC:
	.global GAX_set_fx_volume
	.thumb_set GAX_set_fx_volume, sub_083191AC
	push {r4, lr}
	adds r2, r0, #0
	adds r4, r1, #0
	cmp r4, #255
	bls .L083191B8
	movs r4, #255
.L083191B8:
	movs r0, #1
	negs r0, r0
	cmp r2, r0
	bne .L083191EC
	movs r1, #0
	ldr r2, [pc, #36]
	ldr r0, [r2, #0]
	ldr r0, [r0, #16]
	cmp r1, r0
	bcs .L0831920A
	adds r3, r2, #0
	movs r2, #0
.L083191D0:
	ldr r0, [r3, #0]
	ldr r0, [r0, #12]
	adds r0, r2, r0
	strb r4, [r0, #12]
	adds r2, #80
	adds r1, #1
	ldr r0, [r3, #0]
	ldr r0, [r0, #16]
	cmp r1, r0
	bcc .L083191D0
	b .L0831920A
	movs r0, r0
	lsrs r4, r1, #12
	lsls r0, r0, #12
.L083191EC:
	movs r0, #2
	negs r0, r0
	cmp r2, r0
	ble .L0831920A
	ldr r0, [pc, #24]
	ldr r1, [r0, #0]
	ldr r0, [r1, #16]
	cmp r2, r0
	bcs .L0831920A
	ldr r1, [r1, #12]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #4
	adds r0, r0, r1
	strb r4, [r0, #12]
.L0831920A:
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x03000B0C
