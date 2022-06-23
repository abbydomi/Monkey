draw_sprite_ext(sMonkey,0,x,y,1,1,0,c_blue,1);



switch(monkeyGetInputStatus(vk_space))
{
	case MONKEY.OFF:
		draw_set_color(c_gray)
		draw_rectangle(0,0,10,10,false);
		draw_set_color(c_white)
	break;
	case MONKEY.PRESSED:
		draw_set_color(c_blue)
		draw_rectangle(0,0,10,10,false);
		draw_set_color(c_white)
	break;
	case MONKEY.HELD:
		draw_set_color(c_red)
		draw_rectangle(0,0,10,10,false);
		draw_set_color(c_white)
	break;
}