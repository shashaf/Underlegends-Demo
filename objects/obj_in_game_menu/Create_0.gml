audio_play_sound(snd_menu_move, 10, 0);
image_index = 0;
image_speed = 0;
depth = -9999;
name_y = 330;
stat_y = 365;
up_menu = false;
obj_patience.can_move = false;
/*if global.item_IDs[0] == 0 {
	sprite_index = spr_in_game_menu2_no_items;
}*/
if global.language == "rus" {
	sprite_index = spr_in_game_menu2_rus;
	/*if global.item_IDs[0] == 0 {
		sprite_index = spr_in_game_menu2_no_items_rus;
	}*/
}
if instance_exists(obj_dark_room){
	depth = obj_dark_room.depth - 1;
}

if obj_patience.y >= global.camera_y + 240 {
	image_index = 1; //сдвигаем левую часть меню вверх
	if up_menu == false {
		up_menu = true;
		name_y -= 272; //сдвигаем имя игрока вверх
		stat_y -= 272; //сдвигаем его характеристики в меню вверх
	}
}
else {
	up_menu = false;
	image_index = 0;
	name_y = 330;
	stat_y = 365;
}