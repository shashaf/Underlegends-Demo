if enter_z_check() {
	if confirm == false {
		confirm = true;
	}
	else {
		global.skill = current_option;
		if global.skill == 1 {
			global.player_defence = 2;
		}
		audio_stop_sound(global.menu_music);
		if !instance_exists(obj_all_white) {
			instance_create_depth(0, 0, depth-2, obj_all_white);
		}
		//visible = false;
	}
}

if shift_x_check() {
	if confirm == true {
		confirm = false;
	}
}