.thumb
.include "Definitions.s"

CheckActive:
ldr r1, =0x03004E50
ldr r1, [r1]
ldr r1, [r1]
ldrb r1, [r1, #4]
cmp r0, r1
beq RetTrue
mov r0, #0
bx r14
RetTrue:
mov r0, #1
bx r14
