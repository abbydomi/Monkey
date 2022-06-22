function gamepad_anykey(slot) {
return (gamepad_button_check(slot, gp_face1)||gamepad_button_check(slot, gp_face2)||gamepad_button_check(slot, gp_face3)||gamepad_button_check(slot, gp_face4)||gamepad_button_check(slot, gp_shoulderl)||gamepad_button_check(slot, gp_shoulderr)||gamepad_button_check(slot, gp_shoulderlb)||gamepad_button_check(slot, gp_shoulderrb)||gamepad_button_check(slot, gp_select)||gamepad_button_check(slot, gp_start) )
}

function monkeyInit()
{
	globalvar monkeyList[0]
	monkeyList[0] = 0;
	if !instance_exists(oMonkeyGamepad)
	{
		instance_create_depth(0,0,0,oMonkeyGamepad);
	}
	enum MONKEY
	{
		OFF,
		PRESSED,
		HELD
	}
}