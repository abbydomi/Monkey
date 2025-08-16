function monkeyCreateMouseListener(ID, mouseInput, heldframes) {
	var newMonkey = instance_create_depth( 0, 0, 0, oMonkeyMouse, {
		status: MONKEY.OFF,
		image_alpha: 0,
		heldFrames: heldframes,
		mb_input: mouseInput
	});
	monkeyList[ID] = newMonkey
}