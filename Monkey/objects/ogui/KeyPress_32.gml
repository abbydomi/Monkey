//Using functions
//instance_create_layer(mouse_x, mouse_y, "Instances", oMonkey, new monkey());

//Using structs
instance_create_layer(mouse_x, mouse_y, "Instances", oMonkey, {
	sprite_index: sMonkey,
	angle_speed: 1,
	inputType: vk_space
});