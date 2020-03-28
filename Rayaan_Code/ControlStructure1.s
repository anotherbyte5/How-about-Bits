.section .data
x: .word 5
.section .text
.globl _start
_start:
	ldr r1, =x
	ldr r2, [r1]
	cmp r2, #3
	blt else
	mov r4, #1
	sub r2, r4
	str r2, [r1]

	b final
else:

	sub r2, #2
	str r2, [r1]
final:
	mov r7, #1
	svc #0
	.end
