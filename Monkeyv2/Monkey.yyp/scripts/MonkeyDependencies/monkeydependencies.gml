function _monkey_dependency_gamepad_anykey(gpSlot) {
    if gpSlot < 0 || gpSlot > 3  { exit }
    var slot = gp_slots[gpSlot]
    for(var i = gp_face1; i <= gp_padr; i++) {
        if i == gp_shoulderlb {
            if _monkey_dependency_ds_l1_check(gpSlot) { 
                _monkey_dependency_log("Controller slot " + string(gpSlot) + " anykey call has been ignored due to a DualShock/DualSense glitch with Windows")
                return false
            }
        }
        if (gamepad_button_check(slot, i)) return i;
    }
    for(var i = gp_axislh; i <= gp_axisrv; i++) {
        if abs(gamepad_axis_value(slot, i)) return i;
    }
}

// Returns TRUE if the input should be ignored
function _monkey_dependency_ds_l1_check(gpSlot) {
    // Windows disconnected DualShock/DualSense L1 glitch
    var slot = gp_slots[gpSlot]
    if os_type != os_windows {
        return false
    }
    if global.gamepad_is_xbox[gpSlot] {
        return false
    }
    if gamepad_button_check(slot, gp_shoulderlb) {
        oMonkeyGamepadBrain.l2Held[gpSlot] += 1
        var value = oMonkeyGamepadBrain.l2Held[gpSlot] > MONKEY_l2HeldWINDOWSTHRESHOLD
        return value
    } else {
        oMonkeyGamepadBrain.l2Held[gpSlot] = 0
        return false
    }
}

function _monkey_dependency_log(log) {
    // TODO: if logs active
    show_debug_message("[MONKEY] " + string(log))
}

function _monkey_dependency_update_gp_last(newValue) {
    gp_last = newValue
    _monkey_dependency_log("Last used gamepad (gp_last) set to slot " + string(newValue))
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