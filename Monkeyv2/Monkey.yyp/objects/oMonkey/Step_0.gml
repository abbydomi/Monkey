if global.gamepad_connected {
    if monkeyMultiplayerEnabled {
	    status = _monkey_dependency_get_input_gamepad(gamepadInput, gp_slot, heldFrames)
        exit
    }
    status = _monkey_dependency_get_input_gamepad(gamepadInput, gp_last, heldFrames)
} else {
	status = _monkey_dependency_get_input_keyboard(inputType, heldFrames)
}