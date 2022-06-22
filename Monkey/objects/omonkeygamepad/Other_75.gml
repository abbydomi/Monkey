switch async_load[? "event_type"] {
    case "gamepad discovered":
        global.gamepad_connected = true;
        global.gamepad_slot = async_load[? "pad_index"];
		show_debug_message(gamepad_get_description(global.gamepad_slot))
		if gamepad_get_description(global.gamepad_slot) == "PS4 Controller"{
			global.gamepad_is_xbox = false;
		} else {
			global.gamepad_is_xbox = true;
		}
    break;
    case "gamepad lost":
        global.gamepad_connected = false;
        global.gamepad_slot = 0;
    break;
}