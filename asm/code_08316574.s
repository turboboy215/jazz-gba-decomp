	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_08316574
	.thumb_func
sub_08316574:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831652C
	movs r5, #0
	str r5, [sp, #0]
	movs r0, #240
	mov r8, r0
	str r0, [sp, #4]
	movs r4, #15
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #236]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #120
	bl sub_08316178
	ldr r2, [pc, #224]
	str r5, [sp, #0]
	movs r0, #6
	movs r1, #4
	movs r3, #120
	bl sub_08316178
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #15
	bl sub_08316098
	movs r0, #8
	movs r1, #0
	movs r2, #0
	movs r3, #240
	bl sub_08316098
	movs r0, #150
	movs r1, #30
	movs r2, #60
	movs r3, #255
	bl sub_08316308
	str r5, [sp, #0]
	mov r0, r8
	str r0, [sp, #4]
	movs r4, #60
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #156]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #240
	bl sub_08316178
	movs r6, #5
	str r6, [sp, #0]
	mov r0, r8
	str r0, [sp, #4]
	str r5, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #124]
	str r5, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #240
	bl sub_08316178
	str r6, [sp, #0]
	mov r0, r8
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #96]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #240
	bl sub_08316178
	movs r0, #55
	negs r0, r0
	movs r3, #210
	lsls r3, r3, #1
	movs r1, #13
	adds r2, r3, #0
	bl sub_08316308
	str r6, [sp, #0]
	movs r0, #1
	str r0, [sp, #4]
	str r5, [sp, #8]
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #52]
	str r5, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #1
	bl sub_08316178
	movs r0, #8
	movs r1, #1
	bl sub_083164A4
	add sp, #12
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.4byte 0x083DF9C4
	.4byte 0x083DF9E0
	.4byte 0x083DF9E8
	.4byte 0x083DF9FC
	.4byte 0x083DFA18
	.4byte 0x083DFA2C
