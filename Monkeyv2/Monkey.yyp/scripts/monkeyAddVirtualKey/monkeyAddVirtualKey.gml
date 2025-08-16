function monkeyAddVirtualKey(ID, vkSprite, vkSpritePressed, xPos, yPos, width, height, alpha) {
		monkeyList[ID].vkEnabled = true
		monkeyList[ID].vkSprite = vkSprite
		monkeyList[ID].vkSpritePressed = vkSpritePressed
		monkeyList[ID].xPos = xPos
		monkeyList[ID].yPos = yPos
		monkeyList[ID].vkWidth = width
		monkeyList[ID].vkHeight = height
		monkeyList[ID].vkAlpha = alpha
	
		monkeyList[ID].vkHolder = virtual_key_add(xPos, yPos, width, height, monkeyList[ID].inputType)
}