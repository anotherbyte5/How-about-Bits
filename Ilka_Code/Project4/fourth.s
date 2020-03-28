@Fourth program
@This program compute the following if statement construct:
	@intx; inty; if(x==-) ; y=1;

.section .data
x: .word 0		@32-bit signed integer, you also use int directive instead of .wrrd directive
y: .word 0 		@32-bit unsigned integer,
.section .text
.globl _start
_start:
	ldr r1, =x		@load the memory address of x into r1
	ldr r1, [r1]		@load the value x into r1

	cmp r1, #0
 		@branch(jump) if true (Z==1) to the thenpart
	bne thenpart
	
thenpart: mov r2,#1
	  ldr r3, =y		@load the memory address of y into r3
	  str r2, [r3]          @load r2 register value into y memory address
endofif:  
	  mov r7, #1		@Program Termination: exit sycall
	  svc #0
	  .end
