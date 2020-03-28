@Fourth Program
@ program compute following if statement
@intx
@iny
@if x == 0
@y = 1
.section .data
x: .word 0
y: .word 0  
.section .text
.globl _start
_start:
   ldr r1,=x
   ldr r1,[r1]

   cmp r1,#0
   bne endofif    @jump to the end of the if statement
           

   thenpart: mov r2,#1
             ldr r3,=y
             str r2,[r3]    @load r2 into y mem adress
   endofif:
             mov r7, #1
             svc #0
             .end
