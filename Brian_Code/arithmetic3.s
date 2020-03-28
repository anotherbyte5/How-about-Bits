.section .data
	val1: .byte -60
	val2: .byte 11
	val3: .byte 16

.section .text
.globl _start
_start:
	ldr r1,=val1
	ldrb r1,[r1]	@ Move val1 to r1
	ldr r2,=val2
	ldrb r2,[r2]	@ Move val2 to r2
	ldr r3,=val3
	ldrsb r3,[r3]	@ Move val3 to r3
	mov r0,#0	@ Result to be stored in r0
	add r0,r0,r2
	add r0,r0,#3
	add r0,r0,r3
	sub r0,r0,r1

	mov r7,#1
	svc #0
.end
