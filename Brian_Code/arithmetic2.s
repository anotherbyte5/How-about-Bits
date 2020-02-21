@ arithmetic 2: register = val2 + 9 + val3 - val1

.section .data
	val1: .word 6	@ 32-bit variable val1 in memory
	val2: .word 11	@ 32-bit variable val2 in memory
	val3: .word 16	@ 32-bit variable val3 in memory

.section .text
.globl _start
_start:
	ldr r1,=val1	@ load the memory address of val1 into r1
	ldr r1,[r1]	@ load the value val1 into r1
	ldr r2,=val2	@ load the memory address of val2 into r2
	ldr r2,[r2]	@ load the value val2 into r2
	ldr r3,=val3	@ load the memory address of val3 into r3
	ldr r3,[r3]	@ load the value val3 into r3
	add r4,r2,#9	@ use r4 for calculations, start with val2 + 9
	add r4,r4,r3	@ add val3
	sub r4,r4,r1	@ subtract r1

	mov r7,#1	@ Program Termination: exit syscall
	svc #0		@ Program Termination: wake kernel
.end
