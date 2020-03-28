.section .data
	x: .int 1
.section .text
.globl _start
_start:
	ldr r1, =x
	ldr r2,[r1]
	cmp r2,#3
	bgt thenelse

if:
	mov r3, #1
	b final

thenelse: mov r3,#2

final:
	sub r2,r2,r3
	str r2,[r1]
	

	mov r7,#1
	svc #0
	.end
