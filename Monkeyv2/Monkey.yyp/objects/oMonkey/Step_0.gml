

if global.gamepad_connected {
    if monkeyMultiplayerEnabled {
	    status = monkeyGetInputGamepad(gamepadInput, gp_slot, heldFrames)
        exit
    }
    status = monkeyGetInputGamepad(gamepadInput, gp_last, heldFrames)
} else {
	status = monkeyGetInputKeyboard(inputType, heldFrames)
}