var newMonkey = instance_create_layer(mouse_x, mouse_y, "Instances", oMonkey, {
	sprite_index: sMonkey,
	angle_speed: 1,
	heldFrames: 10,
	inputType: choose(vk_space)
});
monkeyList[newMonkey.inputType] = newMonkey;

