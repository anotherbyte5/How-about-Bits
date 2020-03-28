.section .data
a: .hword -2  @16-bit signed word
.section .text 
.globl _start

_start:

@The following is a simple ARM code example that attempts to load a set of values into registersand it might have problems


mov r0, #0x1           @1
mov r1, #0xFFFFFFFF    @-1
mov r2, #0xFF          @255
mov r3, #0x101         @257
mov r4, #0x400         @1024

ldr r5,=a              @loads the address of a to r5

mov r7, #1
svc #0
.end
