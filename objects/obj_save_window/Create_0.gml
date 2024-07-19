if global.language == "rus" {
	sprite_index = spr_save_window_rus;
}
if (room == rm_reject0 or room == rm_reject1 or room == rm_reject2) {
	sprite_index = spr_save_window_yellow;
	if global.language == "rus" {
		sprite_index = spr_save_window_yellow_rus;
	}
}

depth = -9999;
image_speed = 0;
room_name = obj_save.room_name;

if global.game_status == 0 {
	image_index = 0;
	room_name = obj_save.room_name;
}
else {
	image_index = 2;
}
if instance_exists(obj_dark_room){
	depth = obj_dark_room.depth - 1;
}