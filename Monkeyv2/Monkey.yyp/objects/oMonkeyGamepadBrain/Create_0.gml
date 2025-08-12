global.gamepad_connected = false

global.gamepad_is_xbox[0] = true
global.gamepad_is_xbox[1] = true
global.gamepad_is_xbox[2] = true
global.gamepad_is_xbox[3] = true

globalvar gp_slots, gp_last;
gp_last = 0
gp_slots[0] = -1
gp_slots[1] = -1
gp_slots[2] = -1
gp_slots[3] = -1

// Disconnected DualSense/DualShock constant L1 press related code
if os_type == os_windows {
    l1Held = 0
}