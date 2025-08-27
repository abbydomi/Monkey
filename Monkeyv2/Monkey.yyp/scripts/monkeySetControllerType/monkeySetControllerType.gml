/// @desc Changes the type of controller associated to the slot
/// @param {Real} slot The slot of the controller to set
/// @param {Real} type The type of input set to the slot (INPUT_TYPE.CONTROLLER_OTHER or INPUT_TYPE.CONTROLLER_XBOX)
function monkeySetControllerType(slot, type){
    if gp_slots[slot] == -1 {
        _monkey_dependency_log("monkeySetControllerType failed! The specified slot (" + string(slot) + ") is empty!")
        return
    }
    if type != INPUT_TYPE.CONTROLLER_OTHER && type != INPUT_TYPE.CONTROLLER_XBOX {
        _monkey_dependency_log("monkeySetControllerType failed! The type of control specified is not xbox or other type of controller!")
        return
    }
    var isXbox = type == INPUT_TYPE.CONTROLLER_XBOX
    global.gamepad_is_xbox[slot] = isXbox
}