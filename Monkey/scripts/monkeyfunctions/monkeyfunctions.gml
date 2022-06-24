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
	//if instance_exists(monkeyList[ID]) instance_destroy(monkeyList[ID]);
	monkeyList[ID] = newMonkey;
}

function monkeyAddVirtualKey(ID, vkSprite, vkSpritePressed, xPos, yPos, width, height, alpha){
	monkeyList[ID].vkEnabled = true;
	monkeyList[ID].vkSprite = vkSprite;
	monkeyList[ID].vkSpritePressed = vkSpritePressed;
	monkeyList[ID].xPos = xPos;
	monkeyList[ID].yPos = yPos;
	monkeyList[ID].vkWidth = width;
	monkeyList[ID].vkHeight = height;
	monkeyList[ID].vkAlpha = alpha;
	
	monkeyList[ID].vkHolder = virtual_key_add(xPos, yPos, width, height, monkeyList[ID].inputType);
}

function monkeyRemapKey(ID, newKeyboardKey, newGamepadKey){
	monkeyList[ID].vkHolder = virtual_key_add(monkeyList[ID].xPos, monkeyList[ID].yPos, monkeyList[ID].vkWidth, monkeyList[ID].vkHeight, newKeyboardKey);
	monkeyList[ID].inputType = newKeyboardKey;
	monkeyList[ID].gamepadInput = newGamepadKey;
}