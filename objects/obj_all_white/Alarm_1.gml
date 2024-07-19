/// @description Перемещение в игру
// You can write your code in this editor
if !instance_exists(obj_patience) {
	instance_create_depth(global.player_x, global.player_y, 0, obj_patience);
}
if room == rm_ruins_1_prototype {
	reject_stats();
}
room_goto(global.room_name);
audio_stop_sound(global.menu_music);
instance_destroy();