function _monkey_dependency_deinit() {
    if ds_exists(global._monkey_gp_sprites_xbox, ds_type_map) {
        ds_map_destroy(global._monkey_gp_sprites_xbox)
    }

    if ds_exists(global._monkey_gp_sprites_other, ds_type_map) {
        ds_map_destroy(global._monkey_gp_sprites_other)
    }

    if ds_exists(global._monkey_vk_sprites, ds_type_map) {
        ds_map_destroy(global._monkey_vk_sprites)
    }
}