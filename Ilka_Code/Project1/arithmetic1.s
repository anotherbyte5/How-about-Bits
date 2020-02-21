@ first program
.section .data
.section  .text 
.global  _start
_start:
	mov r1, #10  @load r1 with 5
	add  r1, r1, #11  @ add 11 from r1
	mov  r2,  #7      @load r2 with 7
	mov r3, #2
	mul r0, r2, r3   @ multiply r2 to r3
	sub r1, r0  @sub r0 from r1

	mov r7, #1  @Program Termination: exist syscall
	svc #0      @Program Termination: wake kernel
.end
