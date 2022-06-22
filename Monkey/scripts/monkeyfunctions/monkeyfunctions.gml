

function monkeyGetInputKeyboard(vk_input, heldFrames) {
	if keyboard_check(vk_input)
	{
		var status = MONKEY.OFF;
		if (held < heldFrames)
		{
			status = MONKEY.PRESSED
			held++
			show_debug_message(held)
		} 
		else 
		{
			status = MONKEY.HELD
			return status;
		}
	} 
	else 
	{
		if (held > 1)
		{
			if (held < heldFrames)
			{
				held = 0;
				status = MONKEY.PRESSED
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

function monkeyGetInputStatus(vk_input){
	return monkeyList[vk_input].status
}

function monkeyCreateListener(){
	
}