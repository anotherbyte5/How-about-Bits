@control Structure Program
@ program compute following if statement
@intx
@
@if x <= 3
@   x = x-1
@else 
   x = x-2

.section .data
x: .word 67
  
.section .text
.globl _start
_start:
   ldr r3, =x
   ldr r4, [r3]   @loads the value of x to r3
   
   cmp r4,#3
   blt else    @jump to the else
   mov r1, #1  @loads 1 to r1
   sub r4,r1   @substracts r4 -1
   str r4,[r3] @stores the new value into x
   b end
 

   else:     mov r2,#2      @ this is the else body
             sub r4, r2
             str r4,[r3]    @stores the new value in x
   end:
             mov r7, #1
             svc #0
             .end
