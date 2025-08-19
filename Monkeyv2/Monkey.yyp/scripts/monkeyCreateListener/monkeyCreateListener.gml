/// @desc Creates a Monkey that will listen for inputs
/// @param {Real} ID The ID the monkey should have (recommended to use an enum such as INPUTS.LEFT)
/// @param {Real} vkInput The keyboard input assigned to the Monkey (ie: vk_space ord("W"))
/// @param {Real} gpInput The gamepad input assigned to the Monkey (ie: gp_face1)
/// @param {Real} gpSlot The gamepad slot assigned to the Monkey (0 - 3)
/// @param {Real} heldframes The amount of frames necessary to count for the input to be considered held instead of pressed
function monkeyCreateListener(ID, vkInput, gpInput, gpSlot, heldframes){
	var newMonkey = instance_create_depth(0, 0, 0, oMonkey, {
        _monkey_id: ID,
		status: MONKEY.OFF,
		image_alpha: 0,
		gp_slot: gpSlot,
		heldFrames: heldframes,
		inputType: vkInput,
		gamepadInput: gpInput
	});
	//if instance_exists(monkeyList[ID]) instance_destroy(monkeyList[ID]);
	monkeyList[ID] = newMonkey
}