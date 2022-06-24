hsp = 0;
vsp = 0;
acc = 0.2;
frc = 0.2;
grv = 0.4;
jmp = 6;
hsp_max = 4;
vsp_max = 7;

monkeyCreateListener(INPUTS.P4_LEFT,    noone, gp_padl,  3, 1);
monkeyCreateListener(INPUTS.P4_RIGHT,  noone, gp_padr,  3, 1);
monkeyCreateListener(INPUTS.P4_UP,		  noone, gp_padu,  3, 1);
monkeyCreateListener(INPUTS.P4_DOWN,    noone, gp_padr,  3, 1);
monkeyCreateListener(INPUTS.P4_JUMP,	  noone, gp_face1, 3, 1);
		
sIdle = sPlayer4_idle;
sWalk = sPlayer4_walk;
sSlide = sPlayer4_slide;
sFall = sPlayer4_fall;
sJump = sPlayer4_jump;

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