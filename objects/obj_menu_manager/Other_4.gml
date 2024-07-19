if global.game_status == 0 {
	//obj_menuManager.sprite_index = spr_instruction;
	buttons = [obj_begin_button, obj_settings_button, obj_quit_button];
	//buttons = [obj_begin_button, obj_quit_button];
	last_button = array_length_1d(buttons) - 1;
	instance_create_depth(90*2, 160*2, -10, obj_begin_button);
	instance_create_depth(90*2, 160*2+40, -10, obj_settings_button);
	instance_create_depth(174*2, 160*2, -10, obj_quit_button);
	global.menu_music = mus_menu_start;
	//audio_play_sound(global.menu_music, 10, true);
}
else {
//if global.menu_type == 1 {
	buttons = [obj_continue_button, obj_settings_button, obj_reset_button, obj_quit_button];
	
	last_button = array_length_1d(buttons) - 1;
	/*instance_create_depth(120, 160*2, -10, obj_continue_button);
	instance_create_depth(140, 160, -10, obj_settings_button);
	instance_create_depth(270, 160*2, -10, obj_reset_button);
	instance_create_depth(380, 160*2, -10, obj_quit_button);*/
	instance_create_depth(90*2, 160*2, -10, obj_continue_button);
	instance_create_depth(174*2, 160*2, -10, obj_reset_button);
	instance_create_depth(90*2, 160*2+40, -10, obj_settings_button);
	instance_create_depth(174*2, 160*2+40, -10, obj_quit_button);
	if global.menu_type == 1 {
		global.menu_music = mus_menu_castle;
	}
}

if !audio_is_playing(global.menu_music) {
	audio_play_sound(global.menu_music, 10, true);
}