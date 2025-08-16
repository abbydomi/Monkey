// Returns TRUE if the input should be ignored
function _monkey_dependency_ds_l2_check(gpSlot) {
    // Windows disconnected DualShock/DualSense L1 glitch
    var slot = gp_slots[gpSlot]
    if os_type != os_windows {
        return false
    }
    if global.gamepad_is_xbox[gpSlot] {
        return false
    }
    if gamepad_button_check(slot, gp_shoulderlb) {
        oMonkeyGamepadBrain.l2Held[gpSlot] += 1
        var value = oMonkeyGamepadBrain.l2Held[gpSlot] > MONKEY_l2HeldWINDOWSTHRESHOLD
        return value
    } else {
        oMonkeyGamepadBrain.l2Held[gpSlot] = 0
        return false
    }
}