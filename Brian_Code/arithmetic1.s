.section .data
.section .text
.globl _start
_start:
	mov r1,#10	@ load r1 with 10, A's value
	mov r2,#11	@ load r1 with 11, B's value
	mov r3,#7	@ load r3 with 7, C's value
	mov r4,#2	@ load r4 with 2, D's value
			@ using separate registers to avoid mutating variables
	add r5,r1,r2	@ destination: r5; operands: r1, r2
	mul r6,r3,r4	@ destination: r6; operands: r3, r4
	sub r1,r5,r6	@ overwrite A; operands: r5, r6

	mov r7,#1	@ Program Termination: exit syscall
	svc #0		@ Program Termination: wake kernel
.end
