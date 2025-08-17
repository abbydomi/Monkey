function monkeyVirtualKeyPosition(ID, xPos, yPos, width, height, alpha) {
	if monkeyList[ID].vkEnabled {
		monkeyList[ID].xPos = xPos
		monkeyList[ID].yPos = yPos
		monkeyList[ID].vkWidth = width
		monkeyList[ID].vkHeight = height
		monkeyList[ID].vkAlpha = alpha
	}
}