horizontalSpeed = 0
verticalSpeed = 0
acc = 0.2
frc = 0.2
grv = 0.4
jmp = 6
maxHorizontalSpeed = 4
maxVerticalSpeed = 7

spriteIdle = sP1IDLE
spriteWalk = sP1WALK
spriteFall = sP1FALL
spriteJump = sP1JUMP

inputsLeft = INPUTS.P1_LEFT
inputsRight = INPUTS.P1_RIGHT
inputsJump = INPUTS.P1_JUMP
assignedControllerSlot = 0

function _monkey_demo_approach(a, b, amount) {
    if a < b {
        a += amount
        if a > b
            return b
    } else {
        a -= amount
        if a < b
            return b
    }
    return a
}

mask_index = sPLAYERMASK