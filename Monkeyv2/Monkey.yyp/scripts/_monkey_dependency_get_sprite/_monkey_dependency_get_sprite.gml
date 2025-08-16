/// @function _monkey_dependency_get_sprite(input, inputType)
/// @description Draws the assigned sprite for a Monkey input
/// @param input The button/key/ord
/// @param inputType  INPUT_TYPE Enum value 
/// @return {Asset.GMObject} the sprite associated with the input
function _monkey_dependency_get_sprite(input, inputType) {
    switch inputType {
        case INPUT_TYPE.CONTROLLER_XBOX:
           return  _monkey_dependency_get_gamepad_sprite(input, true)
        case INPUT_TYPE.CONTROLLER_OTHER: 
            return _monkey_dependency_get_gamepad_sprite(input, false)
        case INPUT_TYPE.KEYBOARD: 
            return _monkey_dependency_get_keyboard_sprite(input)
    }
}