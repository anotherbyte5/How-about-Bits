.section .data
val1: .word 6
val2: .word 11
val3: .word 16
.section .text
.globl _start
_start:
ldr r2, =val1
ldr r2, [r2]
ldr r3, =val2
ldr r3, [r3]
ldr r4, =val3
ldr r4, [r4]

add r3, r3, #9
add r3, r3, r4
sub r3,r3, r2
mov r1, r3

mov r7,#1
svc #0
.end


