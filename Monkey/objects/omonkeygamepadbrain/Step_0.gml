if (global.gamepad_connected) {
    if (keyboard_check_pressed(vk_anykey)) {
        global.gamepad_connected = false;
    }
} else {
    if (gamepad_anykey(gp_slots[0])) {
        global.gamepad_connected = true;
    }
}