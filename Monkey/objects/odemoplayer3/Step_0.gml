//Movement
if monkeyGetInputStatus(INPUTS.P3_LEFT) == MONKEY.HELD || gamepad_axis_value(gp_slots[2], gp_axislh) < -0.5
{
	hsp -= acc
}
else if monkeyGetInputStatus(INPUTS.P3_RIGHT) == MONKEY.HELD || gamepad_axis_value(gp_slots[2], gp_axislh) > 0.5
{
	hsp+= acc
}
else
{
	hsp = approach(hsp, 0, frc);
}

if place_meeting(x,y+1,oWall)
{
	if monkeyGetInputStatus(INPUTS.P3_JUMP) 
	{
		vsp = -jmp;
	}
}
else 
{
	vsp += grv;
}

if place_meeting(x+hsp,y,oWall)
{
	while !place_meeting(x+sign(hsp), y, oWall) 
		x+=sign(hsp)
	hsp=0
}
if place_meeting(x,y+vsp,oWall)
{
	while !place_meeting(x, y+sign(vsp), oWall)
		y += sign(vsp)
	vsp = 0
}

hsp = clamp(hsp, -hsp_max, hsp_max);
vsp = clamp(vsp, -vsp_max, vsp_max);

x += hsp;
y += vsp;


//Animations
if place_meeting(x,y+1,oWall)
{
	if hsp != 0
	{
		if hsp >= 0
		{
			image_xscale = 1
		}
		else
		{
			image_xscale = -1
		}
		if monkeyGetInputStatus(INPUTS.P3_LEFT) || monkeyGetInputStatus(INPUTS.P3_RIGHT) || gamepad_axis_value(gp_slots[2], gp_axislh) > 0.5 || gamepad_axis_value(gp_slots[2], gp_axislh) < -0.5
		{
			sprite_index = sWalk
		}
		else
		{
			sprite_index = sSlide
		}
	}
	else
	{
		sprite_index = sIdle
	}
}
else
{
	if vsp > 0
	{
		sprite_index = sFall
	} 
	else
	{
		sprite_index = sJump
	}
}