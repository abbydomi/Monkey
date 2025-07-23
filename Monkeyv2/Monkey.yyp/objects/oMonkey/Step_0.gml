if global.gamepad_connected
{
	status = monkeyGetInputGamepad(gamepadInput, gp_slot, heldFrames)
}
else
{
	status = monkeyGetInputKeyboard(inputType, heldFrames)
}