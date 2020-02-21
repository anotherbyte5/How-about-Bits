@ first program
.section .data
.section  .text 
.global  _start
_start:
	mov r1, #5  @load r1 with 5
	sub r1, r1, #1  @ subtract 1 from r1
	add r1, r1, #4  @4 to r1

	mov r7, #1  @Program Termination: exist syscall
	svc #0      @Program Termination: wake kernel
.end
