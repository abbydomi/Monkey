/// @desc Remaps the keys and buttons associated to a Monkey
/// @param {Real} ID The ID of the monkey to remap
/// @param {Real} newKeyboardKey The new keyboard key to assign to the Monkey (ie: vk_space, ord("W"))
/// @param {Real} newGamepadKey The new gamepad key to assign to the Monkey (ie: gp_face1)
function monkeyRemapKey(ID, newKeyboardKey, newGamepadKey){
    if monkeyList[ID].vkEnabled {
       monkeyList[ID].vkHolder = virtual_key_add(monkeyList[ID].xPos, monkeyList[ID].yPos, monkeyList[ID].vkWidth, monkeyList[ID].vkHeight, newKeyboardKey); 
    }
	monkeyList[ID].inputType = newKeyboardKey;
	monkeyList[ID].gamepadInput = newGamepadKey;
}