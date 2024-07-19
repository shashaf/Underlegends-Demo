if selected == true {
	sprite_index = spr_item;
	if global.item_IDs[0] == 0 {
		sprite_index = spr_item_nothing;
	}
	image_speed = 0;
	image_index = 1;
}
else {
	if shining == true {
		sprite_index = spr_item_shining;
		image_speed = 1;
	}
	else {
		sprite_index = spr_item;
		if global.item_IDs[0] == 0 {
			sprite_index = spr_item_nothing;
		}
		image_speed = 0;
		image_index = 0;
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