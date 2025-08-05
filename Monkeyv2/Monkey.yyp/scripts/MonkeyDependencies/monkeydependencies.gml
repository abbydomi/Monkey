function gamepad_anykey(slot) {
    for(var i = gp_face1; i <= gp_padr; i++) {
        if (gamepad_button_check(slot, i)) return i;
    }
    for(var i = gp_axislh;i <= gp_axisrv; i++) {
        if abs(gamepad_axis_value(slot, i )) return i;
    }
}

function monkeyUpdateGpLast(newValue) {
    gp_last = newValue
    show_debug_message("Last used gamepad (gp_last) set to slot " + string(newValue))
}

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
		} else  {
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