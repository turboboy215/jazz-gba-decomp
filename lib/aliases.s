@ Library symbols the compiler emits by name, at their ROM addresses (Thumb).
@ Filled in as library routines are identified (see docs/rom_map.md).
	.syntax unified
@ libgcc interworking thunks (_call_via_rN), emitted by agbcc for calls through pointers
	.global _call_via_r1
	.thumb_set _call_via_r1, 0x0831A7E8
	.global _call_via_r2
	.thumb_set _call_via_r2, 0x0831A7EC
	.global _call_via_r3
	.thumb_set _call_via_r3, 0x0831A7F0
	.global _call_via_r4
	.thumb_set _call_via_r4, 0x0831A7F4
	.global _call_via_r5
	.thumb_set _call_via_r5, 0x0831A7F8
	.global _call_via_r6
	.thumb_set _call_via_r6, 0x0831A7FC
	.global _call_via_r7
	.thumb_set _call_via_r7, 0x0831A800
	.global _call_via_r8
	.thumb_set _call_via_r8, 0x0831A804
	.global _call_via_r9
	.thumb_set _call_via_r9, 0x0831A808
	.global _call_via_sl
	.thumb_set _call_via_sl, 0x0831A80C
	.global _call_via_fp
	.thumb_set _call_via_fp, 0x0831A810
	.global _call_via_ip
	.thumb_set _call_via_ip, 0x0831A814
	.global _call_via_lr
	.thumb_set _call_via_lr, 0x0831A818
