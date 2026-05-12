switch(freeze)
{
	
	case(0):
		//draw_self()
		draw_sprite_ext(sprite_index, image_index, x, y, 3, 1.5, 0, c_white, 1);
	break;
	
	case(1):
		draw_sprite_ext(sprite_index, image_index, x, y, 3, 1.5, 0, c_ltgray, 1);
	break;
	
	case(2):
		draw_sprite_ext(sprite_index, image_index, x, y, 3, 1.4, 0, c_white, 1);
	break;
	
}
/*if (freeze != 1) draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, c_white, 1)
else draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, c_dkgray, 1);*/