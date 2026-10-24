.thumb

push {r14}
mul r0, r1
add r0, #50
mov r1, #100
swi #6
pop {r1}
bx r1
