if global.gamepad_connected {
	//Comment this statement to use gamepad AND keyboard simultaneously 
    if keyboard_check_pressed(vk_anykey) {
        global.gamepad_connected = false
    }
}

// Set the last used controller
for(var i = 0; i < 4; i++) {
    if gamepad_anykey(gp_slots[i]) {
        if gp_last != i {
            global.gamepad_connected = true
            monkeyUpdateGpLast(i)
        }
    }
}