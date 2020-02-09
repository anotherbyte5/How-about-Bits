.section .data
.section .text
.globl _start
_start:

   @ problem is a = (a+b)-(c*d)

   mov r1, #10     @r1 set to 10 this is a
   mov r2, #11     @this is b
   mov r3, #7      @this is c
   mov r4, #2      @this is d

   add r1,r1,r2    @this does (a+b)
   mul r3,r4    @this does (c*d)
   sub r1,r1,r3    @this subtracts the two values above


   svc #0
.end 
