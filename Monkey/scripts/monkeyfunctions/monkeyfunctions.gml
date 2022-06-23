
function monkeyGetInputStatus(ID){
	 return monkeyList[ID].status
}

function monkeyCreateListener(ID, vkInput, gpInput, gpSlot, heldframes){
	var newMonkey = instance_create_depth(0, 0, 0, oMonkey, {
		status: MONKEY.OFF,
		gp_slot: gpSlot,
		heldFrames: heldframes,
		inputType: vkInput,
		gamepadInput: gpInput
	});
	monkeyList[ID] = newMonkey;
}

