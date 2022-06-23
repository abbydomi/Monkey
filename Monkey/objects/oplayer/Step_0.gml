
switch(monkeyGetInputStatus(2))
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

x += gamepad_axis_value(gp_slots[0], gp_axislh) * 5
y += gamepad_axis_value(gp_slots[0], gp_axislv) * 5