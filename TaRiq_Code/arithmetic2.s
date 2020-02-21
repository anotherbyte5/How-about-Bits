@arithmetic2
.section .data
val1: .word 6
val2: .word 11
val3: .word 16
.section .text
.globl _start
_start:
	@ register = val2 + 9 + val3 - val1
    ldr r1, = val1     @load mem address into r1
    ldr r1, [r1]       @loads the value of the address into r1
    ldr r2, = val2
    ldr r2, [r2]
    ldr r3, = val3
    ldr r3, [r3]
        @ the actual arithmetic val1 = r1 val2 = r2 val3 = r3

    add r4, r2, #9
    add r4, r4, r3     @ add r3 and r4 store to r4
    sub r4, r4, r1
    


   

    mov r7, #1     @Program Termination: exit syscall
    svc #0         @Program Termination: wake kernel
.end 
