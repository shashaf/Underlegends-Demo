/// @description Вращение

if spinning == true {
	if sprite_index != left_sprite {
		sprite_index = left_sprite;
	}
	else {
		sprite_index = right_sprite;
	}
	alarm[7] = 15;
}
else {
	y_to_fall = -1;
}