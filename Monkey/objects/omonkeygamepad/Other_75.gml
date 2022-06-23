show_debug_message("Event = " + async_load[? "event_type"]);
show_debug_message("Pad = " + string(async_load[? "pad_index"]));

switch(async_load[? "event_type"])
{
	case "gamepad discovered":
		var pad = async_load[? "pad_index"];
		for(var i = 0; i < 3; i++)
		{
			if gp_slots[i] == -1
			{
				gp_slots[i] = pad;
				show_debug_message("Registered pad "+gamepad_get_description(pad)+" on slot "+string(i))
				break;
			}
			else if gp_slots[i] == pad
			{
				break;
			}
		}
	break;
	case "gamepad lost":
		var pad = async_load[? "pad_index"];
		for(var i = 0; i < 3; i++)
		{
			if gp_slots[i] == pad
			{
				gp_slots[i] = -1
				show_debug_message("Lost pad "+gamepad_get_description(pad)+" on slot "+string(i))
				break;
			}
		}
	break;
}