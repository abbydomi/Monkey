if global.gamepad_connected {
	//Comment this statement to use gamepad AND keyboard simultaneously 
    if keyboard_check_pressed(vk_anykey) {
        global.gamepad_connected = false
    }
}

// Set the last used controller
for(var i = 0; i < 4; i++) {
    if gamepad_anykey(gp_slots[i]) {
        global.gamepad_connected = true
    }

    var keyPressed = gamepad_anykey(gp_slots[i])
    global.gamepad_is_connected = true
    if keyPressed {
        if gp_last != i {
            monkeyUpdateGpLast(i)
        }
    }
}