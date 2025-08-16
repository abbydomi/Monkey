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