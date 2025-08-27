// Movement
if monkeyGetInputStatus(inputsLeft) == MONKEY.HELD || gamepad_axis_value(gp_slots[assignedControllerSlot], gp_axislh) < -0.5 {
    horizontalSpeed -= acc
} else if monkeyGetInputStatus(inputsRight) == MONKEY.HELD || gamepad_axis_value(gp_slots[assignedControllerSlot], gp_axislh) > 0.5 {
    horizontalSpeed += acc
} else {
    horizontalSpeed = _monkey_demo_approach(horizontalSpeed, 0, frc)
}

if place_meeting(x, y + 1, oMonkeyDemoWall) {
    if monkeyGetInputStatus(INPUTS.P1_JUMP) {
        verticalSpeed = -jmp
    }
} else {
    verticalSpeed += grv
}

if place_meeting(x + horizontalSpeed, y, oMonkeyDemoWall) {
	while !place_meeting(x + sign(horizontalSpeed), y, oMonkeyDemoWall) 
		x += sign(horizontalSpeed)
	horizontalSpeed = 0
}
if place_meeting(x, y + verticalSpeed, oMonkeyDemoWall)
{
	while !place_meeting(x, y + sign(verticalSpeed), oMonkeyDemoWall)
		y += sign(verticalSpeed)
	verticalSpeed = 0
}

horizontalSpeed = clamp(horizontalSpeed, -maxHorizontalSpeed, maxHorizontalSpeed)
verticalSpeed = clamp(verticalSpeed, -maxVerticalSpeed, maxVerticalSpeed)

x += horizontalSpeed
y += verticalSpeed

// Animations
if place_meeting(x ,y + 1, oMonkeyDemoWall)
{
	if horizontalSpeed != 0 {
		if horizontalSpeed >= 0 {
			image_xscale = 1
		} else {
			image_xscale = -1
		} 
        sprite_index = spriteWalk
	} else {
		sprite_index = spriteIdle
	}
} else {
	if verticalSpeed > 0 {
		sprite_index = spriteFall
	} else {
		sprite_index = spriteJump
	}
}