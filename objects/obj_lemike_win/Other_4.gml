timeline_index = tl_lemike_win;
timeline_position = 0;
timeline_running = 0;
tl_speed = 1;
if instance_exists(obj_lemike_cutscene3) and global.lemike == 4 {
	obj_lemike_cutscene3.cutscene = obj_lemike_win;
}

if global.player_lv > 1 {
	instance_destroy();
}
