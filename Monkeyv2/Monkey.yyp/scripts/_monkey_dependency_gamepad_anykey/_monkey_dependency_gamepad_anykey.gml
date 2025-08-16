function _monkey_dependency_gamepad_anykey(gpSlot) {
    if gpSlot < 0 || gpSlot > 3  { exit }
    var slot = gp_slots[gpSlot]
    for(var i = gp_face1; i <= gp_padr; i++) {
        if i == gp_shoulderlb {
            if _monkey_dependency_ds_l2_check(gpSlot) { 
                _monkey_dependency_log("Controller slot " + string(gpSlot) + " anykey call has been ignored due to a DualShock/DualSense glitch with Windows")
                return false
            }
        }
        if (gamepad_button_check(slot, i)) return i;
    }
    for(var i = gp_axislh; i <= gp_axisrv; i++) {
        if abs(gamepad_axis_value(slot, i)) return i;
    }
}
