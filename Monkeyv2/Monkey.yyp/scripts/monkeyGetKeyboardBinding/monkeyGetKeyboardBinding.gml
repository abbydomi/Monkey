/// @desc Returns the keyboard binding of the specified monkey (ie: vk_space)
/// @param {Real} ID The ID of the monkey to check
/// @return {Real}
function monkeyGetKeyboardBinding(ID) {
	return monkeyList[ID].inputType
}