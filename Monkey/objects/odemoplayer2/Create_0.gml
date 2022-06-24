hsp = 0;
vsp = 0;
acc = 0.2;
frc = 0.2;
grv = 0.4;
jmp = 6;
hsp_max = 4;
vsp_max = 7;

monkeyCreateListener(INPUTS.P2_LEFT,    vk_left, gp_padl,  1, 1);
monkeyCreateListener(INPUTS.P2_RIGHT,  vk_right, gp_padr,  1, 1);
monkeyCreateListener(INPUTS.P2_UP,		  vk_up, gp_padu,  1, 1);
monkeyCreateListener(INPUTS.P2_DOWN,    vk_down, gp_padr,  1, 1);
monkeyCreateListener(INPUTS.P2_JUMP,	  vk_up, gp_face1, 1, 1);
		
sIdle = sPlayer2_idle;
sWalk = sPlayer2_walk;
sSlide = sPlayer2_slide;
sFall = sPlayer2_fall;
sJump = sPlayer2_jump;

function approach(a,b,amount){
    if (a<b)
    {
        a+=amount;
        if (a>b)
            return b;
    }
    else
    {
        a-=amount;
        if (a<b)
            return b;
    }
    return a;
}