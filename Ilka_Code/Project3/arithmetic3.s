@Arithmetic3 program

.section .data
val1: .byte -60
val2: .byte 11
val3: .byte 16


.section .text
.globl _start
_start:


@The following is a simple ARM code example

mov r0,  #0xB 
add r0,   #0x3
mov r2,  #0x10
sub r2,   #-0x3C
add r0, r2


mov r7, #1
svc #0
.end
