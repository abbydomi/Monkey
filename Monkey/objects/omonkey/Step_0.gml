if global.gamepad_connected
{
	status = monkeyGetInputGamepad(gamepadInput, heldFrames)
}
else
{
	status = monkeyGetInputKeyboard(inputType, heldFrames)
}