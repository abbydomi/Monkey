function monkey() constructor {
	sprite_index = sMonkey
	angle_speed = 1;
	inputType = vk_space
}

test = 0;
monkeyInit();


function monkeyGetInputKeyboard(vk_input, heldFrames) {
	if keyboard_check(vk_input)
	{
		var status = 0;
		if (held < heldFrames)
		{
			status = 1
			held++
			show_debug_message(held)
		} 
		else 
		{
			status = 2
		}
	} 
	else 
	{
		status = 0
		held = 0;
	}
	return status;
}
