function monkey() constructor {
	sprite_index = sMonkey
	angle_speed = 1;
	inputType = vk_space
}

function monkeyGetInput(vk_input, gp_input, heldFrames) {
	if keyboard_check(vk_input)
	{
		var held = 0;
		var status = 0;
		if (held < heldFrames)
		{
			status = 1
			held++
			draw_text(x+6,y,string(vk_input)+"Pressed")
		} 
		else 
		{
			status = 2
			draw_text(x+6,y,string(vk_input)+"Held")
		}
	} 
	else 
	{
		status = 0
		held = 0;
		draw_text(x+6,y,string(vk_input)+"Not pressed")
	}
	
	return status;
}