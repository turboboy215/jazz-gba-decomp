	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_082EA2DC
	.thumb_func
sub_082EA2DC:
	.2byte 0xb5f0 @ push {r4, r5, r6, r7, lr}
	.2byte 0x4647 @ mov r7, r8
	.2byte 0xb480 @ push {r7}
	.2byte 0xb081 @ sub sp, #4
	.2byte 0x2000 @ movs r0, #0
	.2byte 0x4680 @ mov r8, r0
	.2byte 0x2600 @ movs r6, #0
	.2byte 0x4819 @ ldr r0, [pc, #100]
	.2byte 0x1835 @ adds r5, r6, r0
	.2byte 0x7868 @ ldrb r0, [r5, #1]
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd048 @ beq.n 0x82ea386
	.2byte 0x7928 @ ldrb r0, [r5, #4]
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd145 @ bne.n 0x82ea386
	.2byte 0x1c28 @ adds r0, r5, #0
	.2byte 0x30d8 @ adds r0, #216
	.2byte 0x6800 @ ldr r0, [r0, #0]
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd005 @ beq.n 0x82ea310
	.2byte 0x1c28 @ adds r0, r5, #0
	.2byte 0x30dc @ adds r0, #220
	.2byte 0x6801 @ ldr r1, [r0, #0]
	.2byte 0x1c28 @ adds r0, r5, #0
	.2byte 0xf030, 0xfa6c @ bl 0x831a7e8
	.2byte 0x6b68 @ ldr r0, [r5, #52]
	.2byte 0x1200 @ asrs r0, r0, #8
	.2byte 0x6ba9 @ ldr r1, [r5, #56]
	.2byte 0x1209 @ asrs r1, r1, #8
	.2byte 0x4b0e @ ldr r3, [pc, #56]
	.2byte 0x689a @ ldr r2, [r3, #8]
	.2byte 0x3278 @ adds r2, #120
	.2byte 0x68db @ ldr r3, [r3, #12]
	.2byte 0x3350 @ adds r3, #80
	.2byte 0x1c2c @ adds r4, r5, #0
	.2byte 0x3454 @ adds r4, #84
	.2byte 0x2700 @ movs r7, #0
	.2byte 0x5fe4 @ ldrsh r4, [r4, r7]
	.2byte 0x9400 @ str r4, [sp, #0]
	.2byte 0xf516, 0xfc42 @ bl 0x8000bb4
	.2byte 0x0600 @ lsls r0, r0, #24
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd010 @ beq.n 0x82ea358
	.2byte 0x7928 @ ldrb r0, [r5, #4]
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd124 @ bne.n 0x82ea386
	.2byte 0x1c28 @ adds r0, r5, #0
	.2byte 0x30c8 @ adds r0, #200
	.2byte 0x6801 @ ldr r1, [r0, #0]
	.2byte 0x1c28 @ adds r0, r5, #0
	.2byte 0xf030, 0xfa50 @ bl 0x831a7e8
	.2byte 0x6e28 @ ldr r0, [r5, #96]
	.2byte 0xf011, 0xfb57 @ bl 0x82fb9fc
	.2byte 0xe01a @ b.n 0x82ea386
	.2byte 0x4400 @ add r0, r0
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0x38cc @ subs r0, #204
	.2byte 0x0300 @ lsls r0, r0, #12
	.2byte 0x1c2c @ adds r4, r5, #0
	.2byte 0x34e0 @ adds r4, #224
	.2byte 0x8821 @ ldrh r1, [r4, #0]
	.2byte 0x4810 @ ldr r0, [pc, #64]
	.2byte 0xf02c, 0xfdca @ bl 0x8316ef8
	.2byte 0x8802 @ ldrh r2, [r0, #0]
	.2byte 0x8841 @ ldrh r1, [r0, #2]
	.2byte 0x1c10 @ adds r0, r2, #0
	.2byte 0xf017, 0xfe75 @ bl 0x8302058
	.2byte 0x0600 @ lsls r0, r0, #24
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd108 @ bne.n 0x82ea386
	.2byte 0x8820 @ ldrh r0, [r4, #0]
	.2byte 0x28ff @ cmp r0, #255
	.2byte 0xd002 @ beq.n 0x82ea380
	.2byte 0x8820 @ ldrh r0, [r4, #0]
	.2byte 0xf02c, 0xfad0 @ bl 0x8316920
	.2byte 0x1c28 @ adds r0, r5, #0
	.2byte 0xf7ff, 0xff9d @ bl 0x82ea2c0
	.2byte 0x36f8 @ adds r6, #248
	.2byte 0x2701 @ movs r7, #1
	.2byte 0x44b8 @ add r8, r7
	.2byte 0x4640 @ mov r0, r8
	.2byte 0x2807 @ cmp r0, #7
	.2byte 0xd9ab @ bls.n 0x82ea2ea
	.2byte 0xb001 @ add sp, #4
	.2byte 0xbc08 @ pop {r3}
	.2byte 0x4698 @ mov r8, r3
	.2byte 0xbcf0 @ pop {r4, r5, r6, r7}
	.2byte 0xbc01 @ pop {r0}
	.2byte 0x4700 @ bx r0
	.2byte 0x0000
	.4byte 0x0300398C

	.thumb
	.align 1, 0
	.global sub_082EA3A4
	.thumb_func
sub_082EA3A4:
	.2byte 0xb5f0 @ push {r4, r5, r6, r7, lr}
	.2byte 0x4647 @ mov r7, r8
	.2byte 0xb480 @ push {r7}
	.2byte 0x2700 @ movs r7, #0
	.2byte 0x4813 @ ldr r0, [pc, #76]
	.2byte 0x4680 @ mov r8, r0
	.2byte 0x2600 @ movs r6, #0
	.2byte 0x4813 @ ldr r0, [pc, #76]
	.2byte 0x1835 @ adds r5, r6, r0
	.2byte 0x7868 @ ldrb r0, [r5, #1]
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd029 @ beq.n 0x82ea410
	.2byte 0x1c2c @ adds r4, r5, #0
	.2byte 0x3464 @ adds r4, #100
	.2byte 0x6b69 @ ldr r1, [r5, #52]
	.2byte 0x1209 @ asrs r1, r1, #8
	.2byte 0x6baa @ ldr r2, [r5, #56]
	.2byte 0x1212 @ asrs r2, r2, #8
	.2byte 0x1c20 @ adds r0, r4, #0
	.2byte 0xf017, 0xfe6d @ bl 0x83020a8
	.2byte 0x0600 @ lsls r0, r0, #24
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd017 @ beq.n 0x82ea404
	.2byte 0x1c20 @ adds r0, r4, #0
	.2byte 0xf516, 0xf915 @ bl 0x8000604
	.2byte 0x6b69 @ ldr r1, [r5, #52]
	.2byte 0x1209 @ asrs r1, r1, #8
	.2byte 0x4642 @ mov r2, r8
	.2byte 0x6890 @ ldr r0, [r2, #8]
	.2byte 0x1a09 @ subs r1, r1, r0
	.2byte 0x6baa @ ldr r2, [r5, #56]
	.2byte 0x1212 @ asrs r2, r2, #8
	.2byte 0x4643 @ mov r3, r8
	.2byte 0x68d8 @ ldr r0, [r3, #12]
	.2byte 0x1a12 @ subs r2, r2, r0
	.2byte 0x1c28 @ adds r0, r5, #0
	.2byte 0x303c @ adds r0, #60
	.2byte 0x7803 @ ldrb r3, [r0, #0]
	.2byte 0x1c20 @ adds r0, r4, #0
	.2byte 0xf516, 0xf945 @ bl 0x8000684
	.2byte 0xe006 @ b.n 0x82ea40a
	.2byte 0x38cc @ subs r0, #204
	.2byte 0x0300 @ lsls r0, r0, #12
	.2byte 0x4400 @ add r0, r0
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0x1c20 @ adds r0, r4, #0
	.2byte 0xf516, 0xf901 @ bl 0x800060c
	.2byte 0x1c20 @ adds r0, r4, #0
	.2byte 0xf515, 0xfffc @ bl 0x8000408
	.2byte 0x36f8 @ adds r6, #248
	.2byte 0x3701 @ adds r7, #1
	.2byte 0x2f08 @ cmp r7, #8
	.2byte 0xd1cc @ bne.n 0x82ea3b2
	.2byte 0xbc08 @ pop {r3}
	.2byte 0x4698 @ mov r8, r3
	.2byte 0xbcf0 @ pop {r4, r5, r6, r7}
	.2byte 0xbc01 @ pop {r0}
	.2byte 0x4700 @ bx r0
	.2byte 0x0000
