/// @function monkeyDrawInput(ID, _x, _y, [xScale], [yScale], [opacity], [inputType])
/// @description Draws the assigned sprite for a Monkey input
/// @param {Real} ID The ID of the monkey to check
/// @param {Real} _x         X position (default = 0)
/// @param {Real} _y         Y position (default = 0)
/// @param {Real} xScale     (optional) Horizontal scale (default = 1)
/// @param {Real} yScale     (optional) Vertical scale (default = 1)
/// @param {Real} opacity    (optional) Alpha (default = 1)
/// @param {Real} inputType  (optional) INPUT_TYPE Enum value (default = auto-detect)
function monkeyDrawInput(ID, _x, _y, xScale, yScale, opacity, inputType) {
    var _xscale    = (xScale    != undefined) ? xScale : 1
    var _yscale    = (yScale    != undefined) ? yScale : 1
    var _alpha     = (opacity   != undefined) ? opacity : 1
    var _inputType = (inputType != undefined) ? inputType : -1
    
    if !instance_exists(monkeyList[ID]) {
        _monkey_dependency_log("monkeyDrawInput failed! The Monkey does not exist!")
        return
    }
    var inputKeyboard = monkeyList[ID].inputType
    var inputGamepad  = monkeyList[ID].gamepadInput
    var vkSprite = sEmpty
    var gpSprite = sEmpty
    var sprite  = sEmpty
    
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
        default: 
        // Auto pick
        var automaticType = INPUT_TYPE.CONTROLLER_XBOX
        if global.gamepad_connected {
            var slot = monkeyMultiplayerEnabled ? gp_last : monkeyList[ID].gp_slot
            automaticType = global.gamepad_is_xbox ? INPUT_TYPE.CONTROLLER_XBOX : INPUT_TYPE.CONTROLLER_OTHER
            sprite = _monkey_dependency_get_sprite(inputGamepad, automaticType)
        } else {
            automaticType = INPUT_TYPE.KEYBOARD
            sprite = _monkey_dependency_get_sprite(inputKeyboard, automaticType)
        }
        break
    }
    
    if sprite == sEmpty || sprite == noone || sprite == undefined {
        _monkey_dependency_log("monkeyDrawInput failed! The Monkey returned an empty sprite")
        return
    }
    draw_sprite_ext(sprite, 0, _x, _y, _xscale, _yscale, 0, c_white, _alpha)
}