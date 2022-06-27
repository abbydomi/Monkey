hsp = 0;
vsp = 0;
acc = 0.2;
frc = 0.2;
grv = 0.4;
jmp = 6;
hsp_max = 4;
vsp_max = 7;


		
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