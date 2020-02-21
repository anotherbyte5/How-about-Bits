@second program: c = a +b
.section .data
a: .word 2
b: .word 5
c: .word 0
.section .text
.globl _start
_start:
    ldr r1, =a     @load mem address into r1
    ldr r1, [r1]   @loads the value of the address into r1
    ldr r2, =b     
    ldr r2, [r2]
    add r1, r1, r2 @ add r2 and r1 store to r1

    ldr r2, =c
    str r1, [r2]   @store the r1 into mem c

    mov r7, #1     @Program Termination: exit syscall
    svc #0         @Program Termination: wake kernel
.end 
