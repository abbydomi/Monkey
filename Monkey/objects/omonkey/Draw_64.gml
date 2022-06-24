if vkEnabled
{
	var a = sprite_get_width(vkSprite)
	show_debug_message(a / window_get_width())
	if status = MONKEY.OFF
	{
		draw_sprite_ext(vkSprite, 0, xPos, yPos, vkWidth/sprite_get_width(vkSprite), vkHeight/sprite_get_height(vkSprite),0,c_white,vkAlpha)
	}
	else 
	{
		draw_sprite_ext(vkSpritePressed, 0, xPos, yPos, vkWidth/sprite_get_width(vkSprite), vkHeight/sprite_get_height(vkSprite),0,c_white,vkAlpha)
	}
}

