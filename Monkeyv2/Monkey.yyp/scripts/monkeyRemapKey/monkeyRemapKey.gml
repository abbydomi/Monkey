function monkeyRemapKey(ID, newKeyboardKey, newGamepadKey){
    if monkeyList[ID].vkEnabled {
       monkeyList[ID].vkHolder = virtual_key_add(monkeyList[ID].xPos, monkeyList[ID].yPos, monkeyList[ID].vkWidth, monkeyList[ID].vkHeight, newKeyboardKey); 
    }
	monkeyList[ID].inputType = newKeyboardKey;
	monkeyList[ID].gamepadInput = newGamepadKey;
}