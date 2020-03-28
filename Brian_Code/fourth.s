.section .data
	x: .int 0 @ 32-bit signed integer
	y: .int 0

.section .text
.globl _start
_start:
	ldr r1,=x	@ load the memory address of x into r1
	ldr r1,[r1]	@ load the value of x into r1

	cmp r1,#0
	bne endofif	@ skip "then" if not equal

	thenpart:
		mov r2,#1
		ldr r3,=y
		str  r2,[r3]

	endofif:
		mov r7,#1
		svc #0
.end
