

// TODO: Add underscores and move to their own files

function monkeyGetInputKeyboard(vk_input, heldFrames) {
	if keyboard_check(vk_input) {
		var status = MONKEY.OFF
		if (held < heldFrames) {
			status = MONKEY.PRESSED
			held++
			return status
		} else {
			status = MONKEY.HELD
			return status
		}
	} else {
		if (held > 0.9) {
			held = 0;
			status = MONKEY.RELEASED;
			return status;
		} else {
			held = 0;
			status = MONKEY.OFF
			return status;
		}
	}

}

function monkeyGetInputGamepad(gp_input, gp_slot, heldFrames) {
	if gp_slots[gp_slot] != -1 {
		if gamepad_button_check(gp_slots[gp_slot], gp_input) {
			var status = MONKEY.OFF;
			if (held < heldFrames) {
				status = MONKEY.PRESSED
				held++
				return status
			} else {
				status = MONKEY.HELD
				return status;
			}
		} else {
			if (held > 0.9) {
				held = 0;
				status = MONKEY.RELEASED;
				return status;
				
			} else {
				held = 0;
				status = MONKEY.OFF
				return status;
			}
		}
	}
}

function monkeyGetInputMouse(mb_input, heldFrames){
	if mouse_check_button(mb_input) {
		var status = MONKEY.OFF;
        if (held < heldFrames) {
            status = MONKEY.PRESSED
            held++
            return status
        } else {
            status = MONKEY.HELD
            return status;
        }
	} else {
		if (held > 0.9) {
			held = 0;
			status = MONKEY.RELEASED;
			return status;
			
		} else {
			held = 0;
			status = MONKEY.OFF
			return status;
		}
	}
}