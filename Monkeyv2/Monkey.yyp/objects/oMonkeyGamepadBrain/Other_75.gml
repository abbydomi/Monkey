switch(async_load[? "event_type"])
{
	case "gamepad discovered":
		var pad = async_load[? "pad_index"]; //Recognize the gamepad
		
		gamepad_set_axis_deadzone(pad, 0.2) // Set the deadzone
		gamepad_set_button_threshold(pad, 0.1) // Set the threshold for the trigger
		
		// This loop checks if the gamepad is set in any slot and finds the right slot to be set in
		for(var i = 0; i < 4; i++) {
			if gp_slots[i] == -1 {
				gp_slots[i] = pad
                var description = gamepad_get_description(i)
                _monkey_dependency_log("Registered pad " + description + " on slot " + string(i))
				global.gamepad_connected = true
				
				// Checks gamepads descriptions in search for xbox controllers 
                if description != "" {
    				if string_pos("xbox", string_lower(description)) {
    					global.gamepad_is_xbox[i] = true
                        _monkey_dependency_log("Gamepad slot " + string(i) + " (" + gamepad_get_description(i) + ")" + " set as Xbox Gamepad")
    				} else {
    					global.gamepad_is_xbox[i] = false
                        _monkey_dependency_log("Gamepad slot " + string(i) + " (" + gamepad_get_description(i) + ")" + " set as Non-Xbox Gamepad")
    				}
                } else {
                    // Fallback: assume slots 0-3 are Xbox controllers
                    if pad <= 3 {
                        _monkey_dependency_log("Gamepad slot " + string(i) + " returned no description, it was assumed to be an Xbox Gamepad")
                        global.gamepad_is_xbox[i] = true
                    } else {
                        _monkey_dependency_log("Gamepad slot " + string(i) + " returned no description, it was assumed to be an Non-Xbox Gamepad")
                        global.gamepad_is_xbox[i] = false
                    }
                }
				_monkey_dependency_update_gp_last(i)
				break
			}
		}
	break
	case "gamepad lost":
		var pad = async_load[? "pad_index"]
		for(var i = 0; i < 4; i++) {
			if gp_slots[i] == pad {
				gp_slots[i] = -1
				_monkey_dependency_update_gp_last(0)
				global.gamepad_connected = false
                _monkey_dependency_log("Lost pad " + gamepad_get_description(pad) + " on slot " + string(i))
				break
			}
		}
	break
}