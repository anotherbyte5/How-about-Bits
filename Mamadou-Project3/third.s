.section .data
a: .hword -2 

.section .text
.globl _start
_start:
mov r0, #0x1           @ = 1
mov r1, #0xFFFFFFFF    @ = -1 (signed)
mov r2, #0xFF          @= 255
mov r3, #0x101         @ = 257
mov r4, #0x400          @ = 1024
ldr r5, =a
ldrsh r5,[r5]
mov r7, #1             @ Program Termination: exit syscall
svc #0                 @ Program Termination:wake kernel
.end
