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
    
    var sprite = monkeyGetSprite(ID, inputType)
    
    draw_sprite_ext(sprite, 0, _x, _y, _xscale, _yscale, 0, c_white, _alpha)
}