draw_self();

if keyboard_check(inputType)
{
	if (held < heldFrames)
	{
		held++
		draw_text(x+6,y,"Pressed")
	} 
	else 
	{
		draw_text(x+6,y,"Held")
	}
} else 
{
	held = 0;
	draw_text(x+6,y,"Not pressed")
}