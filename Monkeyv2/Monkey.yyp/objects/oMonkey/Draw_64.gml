if vkEnabled {
	if status = MONKEY.OFF {
		draw_sprite_ext(vkSprite, 0, xPos, yPos, vkWidth/sprite_get_width(vkSprite), vkHeight/sprite_get_height(vkSprite),0,c_white,vkAlpha)
	} else {
		draw_sprite_ext(vkSpritePressed, 0, xPos, yPos, vkWidth/sprite_get_width(vkSprite), vkHeight/sprite_get_height(vkSprite),0,c_white,vkAlpha)
	}
}