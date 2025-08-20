/// @desc Returns the asset associated to the input
/// @param {Real} ID The ID of the Monkey to check
/// @param {Real} inputType (optional) INPUT_TYPE Enum value (default = auto-detect)
/// @return {Asset.GMSprite} 
function monkeyGetSprite(ID, inputType){
    var _inputType = inputType != undefined ? inputType : -1
    
    if !instance_exists(monkeyList[ID]) {
        _monkey_dependency_log("monkeyGetSprite failed! The Monkey does not exist!")
    }
    
    var inputKeyboard = monkeyList[ID].inputType
    var inputGamepad = monkeyList[ID].gamepadInput
    var sprite = sEmpty
    
    switch _inputType {
        case INPUT_TYPE.CONTROLLER_XBOX: case INPUT_TYPE.CONTROLLER_OTHER:
            sprite = _monkey_dependency_get_sprite(inputGamepad, _inputType)
        break
        case INPUT_TYPE.KEYBOARD:
            sprite = _monkey_dependency_get_sprite(inputKeyboard, _inputType)
        break
        case INPUT_TYPE.TOUCHSCREEN:
            if monkeyList[ID].status == MONKEY.OFF {
                sprite = monkeyList[ID].vkSprite
            } else {
                sprite = monkeyList[ID].vkSpritePressed
            }
        break
        default: // Auto pick
            var autoType = INPUT_TYPE.CONTROLLER_XBOX
            if global.gamepad_connected {
                var slot = monkeyMultiplayerEnabled ? gp_last : monkeyList[ID].gp_slot
                autoType = global.gamepad_is_xbox[slot] ? INPUT_TYPE.CONTROLLER_XBOX : INPUT_TYPE.CONTROLLER_OTHER
                sprite = _monkey_dependency_get_sprite(inputGamepad, autoType)
            } else {
                autoType = INPUT_TYPE.KEYBOARD
                sprite = _monkey_dependency_get_sprite(inputKeyboard, autoType)
            }
        break
    }
    
    if sprite == sEmpty || sprite == noone || sprite == undefined {
        _monkey_dependency_log("monkeyDrawInput failed! The Monkey returned an empty sprite")
        return sEmpty
    }
    return sprite
}