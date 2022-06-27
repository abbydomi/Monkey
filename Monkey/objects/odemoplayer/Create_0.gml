enum INPUTS
{
	P1_LEFT,
	P1_RIGHT,
	P1_UP,
	P1_DOWN,
	P1_JUMP,
	
	P2_LEFT,
	P2_RIGHT,
	P2_UP,
	P2_DOWN,
	P2_JUMP,
	
	P3_LEFT,
	P3_RIGHT,
	P3_UP,
	P3_DOWN,
	P3_JUMP,
	
	P4_LEFT,
	P4_RIGHT,
	P4_UP,
	P4_DOWN,
	P4_JUMP,
}



hsp = 0;
vsp = 0;
acc = 0.2;
frc = 0.2;
grv = 0.4;
jmp = 6;
hsp_max = 4;
vsp_max = 7;
		
sIdle = sPlayer_idle;
sWalk = sPlayer_walk;
sSlide = sPlayer_slide;
sFall = sPlayer_fall;
sJump = sPlayer_jump;



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