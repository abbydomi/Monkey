held = 0;
status = 0;

vkSprite = noone;
gpSprite = noone;

vkEnabled = false;
vkHolder = 0;

function monkeyUpdateSprites(){
	switch(inputType)
	{
		case vk_add: break;
		case vk_alt: vkSprite = key_alt; break;
		case vk_backspace: vkSprite = key_Backspace; break;
		case vk_control: vkSprite = key_ctrl; break;
		case vk_decimal: break;
		case vk_delete: break;
		case vk_divide: break;
		case vk_down: vkSprite = key_arrowdown; break;
		case vk_end: break;
		case vk_enter: vkSprite = key_enter; break;
		case vk_f1: vkSprite = key_F1; break;
		case vk_f2: vkSprite = key_F2; break;
		case vk_f3: vkSprite = key_F3; break;
		case vk_f4: vkSprite = key_F4; break;
		case vk_f5: vkSprite = key_F5; break;
		case vk_f6: vkSprite = key_F6; break;
		case vk_f7: vkSprite = key_F7; break;
		case vk_f8: vkSprite = key_F8; break;
		case vk_f9: vkSprite = key_F9; break;
		case vk_f10: vkSprite = key_F10; break;
		case vk_f11:  vkSprite = key_F11; break;
		case vk_f12:  vkSprite = key_F12; break;
		case vk_insert: break;
		case vk_lalt: vkSprite = key_alt; break;
		case vk_lcontrol: vkSprite = key_ctrl; break;
		case vk_left: vkSprite = key_arrowleft; break;
		case vk_lshift: vkSprite = key_shift; break;
		case vk_multiply: break;
		case vk_numpad0: vkSprite = key_0; break;
		case vk_numpad1: vkSprite = key_1; break;
		case vk_numpad2: vkSprite = key_2; break;
		case vk_numpad3: vkSprite = key_3; break;
		case vk_numpad4: vkSprite = key_4; break;
		case vk_numpad5: vkSprite = key_5; break;
		case vk_numpad6: vkSprite = key_6; break;
		case vk_numpad7: vkSprite = key_7; break;
		case vk_numpad8: vkSprite = key_8; break;
		case vk_numpad9: vkSprite = key_9; break;
		case vk_pagedown: break;
		case vk_pageup: break;
		case vk_pause: break;
		case vk_printscreen: break;
		case vk_ralt: vkSprite = key_alt;break;
		case vk_rcontrol: vkSprite = key_ctrl; break;
		case vk_right: vkSprite = key_arrowright; break;
		case vk_rshift: vkSprite = key_shift; break;
		case vk_shift: vkSprite = key_shift; break;
		case vk_space: vkSprite = key_spacebar; break;
		case vk_subtract: break;
		case vk_tab: vkSprite = key_tab break;
		case vk_up: vkSprite = key_arrowup break;	
		case ord("Q"): vkSprite = key_Q; break;
		case ord("W"): vkSprite = key_W; break;
		case ord("E"): vkSprite = key_E; break;
		case ord("R"): vkSprite = key_R; break;
		case ord("T"): vkSprite = key_T; break;
		case ord("Y"): vkSprite = key_Y; break;
		case ord("U"): vkSprite = key_U; break;
		case ord("I"): vkSprite = key_i; break;
		case ord("O"): vkSprite = key_O; break;
		case ord("P"): vkSprite = key_P; break;
		case ord("A"): vkSprite = key_A; break;
		case ord("S"): vkSprite = key_S; break;
		case ord("D"): vkSprite = key_D; break;
		case ord("F"): vkSprite = key_F; break;
		case ord("G"): vkSprite = key_G; break;
		case ord("H"): vkSprite = key_H; break;
		case ord("J"): vkSprite = key_J; break;
		case ord("K"): vkSprite = key_K; break;
		case ord("L"): vkSprite = key_L; break;
		case ord("Z"): vkSprite = key_Z; break;
		case ord("X"): vkSprite = key_X; break;
		case ord("C"): vkSprite = key_C; break;
		case ord("V"): vkSprite = key_V; break;
		case ord("B"): vkSprite = key_B; break;
		case ord("N"): vkSprite = key_N; break;
		case ord("M"): vkSprite = key_M; break;
	}
	switch(gamepadInput)
	{
		case gp_face1: 
			if global.gamepad_is_xbox[gp_slot]
			{
				gpSprite = xbox_A;
			}
			else
			{
				gpSprite = ds4_X;	
			}
			break;
		case gp_face2: 
			if global.gamepad_is_xbox[gp_slot]
			{
				gpSprite = xbox_B;
			}
			else
			{
				gpSprite = ds4_circle;	
			}
		break;
		case gp_face3: 
			if global.gamepad_is_xbox[gp_slot]
			{
				gpSprite = xbox_X;
			}
			else
			{
				gpSprite = ds4_square;	
			}
		break;
		case gp_face4: 
			if global.gamepad_is_xbox[gp_slot]
			{
				gpSprite = xbox_Y;
			}
			else
			{
				gpSprite = ds4_triangle;	
			}
		break;
		case gp_padd: 
			if global.gamepad_is_xbox[gp_slot]
			{
				gpSprite = xbox_dpaddown;
			}
			else
			{
				gpSprite = ds4_dpaddown;	
			}break;
		case gp_padl:
			if global.gamepad_is_xbox[gp_slot]
			{
				gpSprite = xbox_dpadleft;
			}
			else
			{
				gpSprite = ds4_dpadleft;	
			}break;
		case gp_padr:
			if global.gamepad_is_xbox[gp_slot]
			{
				gpSprite = xbox_dpadright;
			}
			else
			{
				gpSprite = ds4_dpadright;	
			}break;
		case gp_padu:
				if global.gamepad_is_xbox[gp_slot]
			{
				gpSprite = xbox_dpadup;
			}
			else
			{
				gpSprite = ds4_dpadup;	
			}break;
		case gp_shoulderl: 
			if global.gamepad_is_xbox[gp_slot]
			{
				gpSprite = xbox_L;
			}
			else
			{
				gpSprite = ds4_l1;	
			}break;
		case gp_shoulderlb:
			if global.gamepad_is_xbox[gp_slot]
			{
				gpSprite = xbox_LT;
			}
			else
			{
				gpSprite = ds4_l2;	
			}break;
		case gp_shoulderr: 
			if global.gamepad_is_xbox[gp_slot]
			{
				gpSprite = xbox_R;
			}
			else
			{
				gpSprite = ds4_r1;	
			}break;
		case gp_shoulderrb: 
			if global.gamepad_is_xbox[gp_slot]
			{
				gpSprite = xbox_RT;
			}
			else
			{
				gpSprite = ds4_l2;	
			}break;
		case gp_start: 
			if global.gamepad_is_xbox[gp_slot]
			{
				gpSprite = xbox_start;
			}
			else
			{
				gpSprite = ds4_options;	
			}break;
		case gp_select:
			if global.gamepad_is_xbox[gp_slot]
			{
				gpSprite = xbox_select;
			}
			else
			{
				gpSprite = ds4_share;	
			}break;
		case gp_stickl: 
			if global.gamepad_is_xbox[gp_slot]
			{
				gpSprite = both_R3;
			}
			else
			{
				gpSprite = both_R3;	
			}break;	
		case gp_stickr:
			if global.gamepad_is_xbox[gp_slot]
			{
				gpSprite = both_L3;
			}
			else
			{
				gpSprite = both_L3;	
			}break;	
	}
}