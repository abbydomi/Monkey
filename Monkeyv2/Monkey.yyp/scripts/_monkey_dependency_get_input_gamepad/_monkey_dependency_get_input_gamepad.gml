function _monkey_dependency_get_input_gamepad(gp_input, gp_slot, heldFrames) {
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