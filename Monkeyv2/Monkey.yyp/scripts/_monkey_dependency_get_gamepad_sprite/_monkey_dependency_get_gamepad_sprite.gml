/// @function _monkey_dependency_get_gamepad_sprite(button, isXbox)
/// @param button   The gp_* constant
/// @param isXbox   true = Xbox, false = Other
/// @returns sprite index or sEmpty if not mapped
function _monkey_dependency_get_gamepad_sprite(button, isXbox) {
    if isXbox {
        if ds_map_exists(global._monkey_gp_sprites_xbox, button) {
            return global._monkey_gp_sprites_xbox[? button]
        }
    } else {
        if ds_map_exists(global._monkey_gp_sprites_other, button) {
            return global._monkey_gp_sprites_other[? button]
        }
    }

    return sEmpty
}