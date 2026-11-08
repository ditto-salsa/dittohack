.thumb
.include "Definitions.s"

function GetWeaponTypeDisplayString

cmp r0, #0xA
ble 0f
mov r0, #0xA
0:
ldr r1, =#0x0505
add r0, r1, r0
ldr r1, =GetStringFromIndex|1
bx r1
