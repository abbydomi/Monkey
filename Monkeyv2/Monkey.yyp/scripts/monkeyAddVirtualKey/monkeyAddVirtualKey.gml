/// @desc Adds a virtual key for touchscreen devices to press inputs managed by Monkey
/// @param {Real} ID The ID of the Monkey to add the virtual key to
/// @param {Asset.GMSprite} vkSprite The sprite of the button on screen
/// @param {Asset.GMSprite} vkSpritePressed The sprite of the button on screen while pressed
/// @param {Real} xPos The X position for the virtual key
/// @param {Real} yPos The Y position for the virtual key
/// @param {Real} width The width of the virtual key
/// @param {Real} height The height of the virtual key
/// @param {Real} alpha The opacity of the virtual key
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