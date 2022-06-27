function gamepad_anykey(slot) {
return (gamepad_button_check(slot, gp_face1)||gamepad_button_check(slot, gp_face2)||gamepad_button_check(slot, gp_face3)||gamepad_button_check(slot, gp_face4)||gamepad_button_check(slot, gp_shoulderl)||gamepad_button_check(slot, gp_shoulderr)||gamepad_button_check(slot, gp_shoulderlb)||gamepad_button_check(slot, gp_shoulderrb)||gamepad_button_check(slot, gp_select)||gamepad_button_check(slot, gp_start) )
}

function monkeyGetInputKeyboard(vk_input, heldFrames) {
	if keyboard_check(vk_input)
	{
		var status = MONKEY.OFF;
		if (held < heldFrames)
		{
			status = MONKEY.PRESSED
			held++
		} 
		else 
		{
			status = MONKEY.HELD
			return status;
		}
	} 
	else 
	{
		if (held > 0.9)
		{
			if (held < heldFrames)
			{
				held = 0;
				status = MONKEY.PRESSED
				return status;
			}
			else 
			{
				held = 0;
				status = MONKEY.RELEASED;
				return status;
			}
		}
		else
		{
			held = 0;
			status = MONKEY.OFF
			return status;
		}
		held = 0;
	}

}

function monkeyGetInputGamepad(gp_input, gp_slot, heldFrames) {
	if gp_slots[gp_slot] != -1
	{
		if gamepad_button_check(gp_slots[gp_slot], gp_input)
		{
			var status = MONKEY.OFF;
			if (held < heldFrames)
			{
				status = MONKEY.PRESSED
				held++
			} 
			else 
			{
				status = MONKEY.HELD
				return status;
			}
		} 
		else 
		{
			if (held > 0.9)
			{
				if (held < heldFrames)
				{
					held = 0;
					status = MONKEY.PRESSED
					return status;
				}
				else 
				{
					held = 0;
					status = MONKEY.RELEASED;
					return status;
				}
			}
			else
			{
				held = 0;
				status = MONKEY.OFF
				return status;
			}
			held = 0;
		}
	}

}