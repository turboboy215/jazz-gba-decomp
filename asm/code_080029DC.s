	.include "asm/macros.inc"
	.syntax unified
	.text

@ MultiBootWaitCycles: [sure] Nintendo libmultiboot (same code as pret/pokeemerald src/multiboot.c)
	.thumb
	.align 1, 0
	.global sub_080029DC
	.thumb_func
sub_080029DC:
	.global MultiBootWaitCycles
	.thumb_set MultiBootWaitCycles, sub_080029DC
	mov r2, pc
	lsrs r2, r2, #24
	movs r1, #12
	cmp r2, #2
	beq .L080029EE
	movs r1, #13
	cmp r2, #8
	beq .L080029EE
	movs r1, #4
.L080029EE:
	subs r0, r0, r1
	bgt .L080029EE
	bx lr
