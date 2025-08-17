/// @desc Returns the gamepad binding of the specified monkey (ie: gp_face1)
/// @param {Real} ID Description
/// @return {Real}
function monkeyGetGamepadBinding(ID) {
	return monkeyList[ID].gamepadInput
}