monkeyInit();

monkeyCreateListener(INPUTS.P1_LEFT,   ord("A"), gp_padl,  0, 1);
monkeyCreateListener(INPUTS.P1_RIGHT,  ord("D"), gp_padr,  0, 1);
monkeyCreateListener(INPUTS.P1_UP,     ord("W"), gp_padu,  0, 1);
monkeyCreateListener(INPUTS.P1_DOWN,   ord("S"), gp_padr,  0, 1);
monkeyCreateListener(INPUTS.P1_JUMP,   ord("W"), gp_face1, 0, 1);



monkeyCreateListener(INPUTS.P2_LEFT,    vk_left, gp_padl,  1, 1);
monkeyCreateListener(INPUTS.P2_RIGHT,  vk_right, gp_padr,  1, 1);
monkeyCreateListener(INPUTS.P2_UP,		  vk_up, gp_padu,  1, 1);
monkeyCreateListener(INPUTS.P2_DOWN,    vk_down, gp_padr,  1, 1);
monkeyCreateListener(INPUTS.P2_JUMP,	  vk_up, gp_face1, 1, 1);

monkeyCreateListener(INPUTS.P3_LEFT,    noone, gp_padl,  2, 1);
monkeyCreateListener(INPUTS.P3_RIGHT,  noone, gp_padr,  2, 1);
monkeyCreateListener(INPUTS.P3_UP,		  noone, gp_padu,  2, 1);
monkeyCreateListener(INPUTS.P3_DOWN,    noone, gp_padr,  2, 1);
monkeyCreateListener(INPUTS.P3_JUMP,	  noone, gp_face1, 2, 1);

monkeyCreateListener(INPUTS.P4_LEFT,    noone, gp_padl,  3, 1);
monkeyCreateListener(INPUTS.P4_RIGHT,  noone, gp_padr,  3, 1);
monkeyCreateListener(INPUTS.P4_UP,		  noone, gp_padu,  3, 1);
monkeyCreateListener(INPUTS.P4_DOWN,    noone, gp_padr,  3, 1);
monkeyCreateListener(INPUTS.P4_JUMP,	  noone, gp_face1, 3, 1);

room_goto_next()