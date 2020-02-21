@Program 2: val4 = val2 + 9 + val3 - val1
.section .data
val1: .word 6
val2: .word 11
val3: .word 16
d:    .word 9
val4: .word 0
.section .text
.globl _start
_start:
	ldr r1, =val1
	ldr r1, [r1]
	ldr r2, =val2
	ldr r2, [r2]
	ldr r3, =val3
	ldr r3, [r3]
	ldr r4, =d
	ldr r4, [r4]
	ldr r5, =val4
	ldr r5, [r5]
	add r6, r2, r4
	sub r7, r3, r1
	add r8, r6, r7
	add r5, r7, r8
	svc #0
.end

