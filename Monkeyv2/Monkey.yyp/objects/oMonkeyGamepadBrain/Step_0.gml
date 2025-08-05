if global.gamepad_connected {
	//Comment this statement to use gamepad AND keyboard simultaneously 
    if keyboard_check_pressed(vk_anykey) {
        global.gamepad_connected = false
    }
}

for(var i = 0; i < 4; i++) {
    if gp_last != i {
        if gamepad_anykey(gp_slots[i]) {
            global.gamepad_connected = true
            gp_last = i
            show_debug_message("Changed gp_last to slot " + string(i))
        }
    }
}