if room == rm_ruins_1_prototype {
	sprite_index = spr_empty;
	visible = true;
}

if global.lemike == 4 and room == rm_reject2 {
	visible = true;
}
if global.player_lv > 1 and room == rm_reject2 {
	instance_destroy();
}