.thumb

.global NoModeBonusesForBosses
.type NoModeBonusesForBosses, %function
NoModeBonusesForBosses:

ldr r0, [r5, #0]
ldr r1, [r5, #4]
ldr r0, [r0, #0x28]
ldr r1, [r1, #0x28]
orr r0, r1 // Getting unit attributes
mov r1, #1
lsl r1, r1, #15
tst r0, r1
bne RetNotBoss
RetBoss:
ldr r0, =#0x0800F81C|1
bx r0
RetNotBoss:
ldr r0, =#0x0800F888|1
bx r0
