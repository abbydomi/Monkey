/// @function _monkey_dependency_get_keyboard_sprite(key)
/// @param key  The vk_* or ord() value
/// @returns sprite index or sEmpty if not mapped
function _monkey_dependency_get_keyboard_sprite(key) {
    if ds_map_exists(global._monkey_vk_sprites, key) {
        return global._monkey_vk_sprites[? key]
    }
    return sEmpty
}