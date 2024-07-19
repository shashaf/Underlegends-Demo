if selected == true {
	sprite_index = default_sprite;
	image_index = 1;
}
else {
	if shining == true {
		sprite_index = shining_sprite;
		image_speed = 1;
	}
	else {
		sprite_index = default_sprite;
		image_index = 0;
		image_speed = 0;
	}
}
if moving == true and y > 432 {
	if (y - 432 > 6) {
		y -= 6;
	}
	else {
		y--;
	}
}
else {
	moving = false;
}