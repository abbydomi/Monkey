/// @desc Creates a Monkey that will listen for inputs
/// @param {Real} ID The ID the monkey should have (recommended to use an enum such as INPUTS.LEFT)
/// @param {Real} mouseInput The mouse input assigned to the Monkey (ie: vk_space ord("W"))
/// @param {Real} heldframes The amount of frames necessary to count for the input to be considered held instead of pressed
function monkeyCreateMouseListener(ID, mouseInput, heldframes) {
	var newMonkey = instance_create_depth( 0, 0, 0, oMonkeyMouse, {
		status: MONKEY.OFF,
		image_alpha: 0,
		heldFrames: heldframes,
		mb_input: mouseInput
	});
	monkeyList[ID] = newMonkey
}