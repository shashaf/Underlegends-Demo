timeline_index = tl_lemike_meet4;
tl_speed = 1;
if instance_exists(obj_lemike_cutscene3) {
	obj_lemike_cutscene3.cutscene = obj_lemike_meet4;
}

if global.player_lv > 1 {
	instance_destroy();
}
