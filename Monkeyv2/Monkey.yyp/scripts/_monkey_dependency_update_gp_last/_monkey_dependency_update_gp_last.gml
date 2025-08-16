function _monkey_dependency_update_gp_last(newValue) {
    gp_last = newValue
    _monkey_dependency_log("Last used gamepad (gp_last) set to slot " + string(newValue))
}