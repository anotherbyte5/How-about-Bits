@Program 1
.section .data
.section .text
.global _start
_start:


	@registers
	mov r1, #10	@load r1 with 10 
	mov r2, #11	@load r2 with 11
	mov r3, #7	@load r3 with 7
	mov r4, #2	@load r4 with 2

	add r5,r1,r2	@add r1 and r2and load  to r5
	mul r6,r3,r4	@multiply r3 and r4 and load to r6
	sub r1,r5,r6

	mov r7,r1
	svc #0
	.end



