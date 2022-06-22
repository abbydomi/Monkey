
switch(monkeyGetInputStatus(vk_space))
{
	case MONKEY.OFF:
		image_angle = 0;
		x = 176;
		y = 144;
	break;
	case MONKEY.PRESSED:
		y = 112;
	break;
	case MONKEY.HELD:
		image_angle+=10;
	break;
}