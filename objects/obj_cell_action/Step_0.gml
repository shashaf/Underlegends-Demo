if (characters < string_length(current_text) and can_draw == true) { //если фраза не вся на экране
	if instance_exists(obj_dialogue_avatar) {
		obj_dialogue_avatar.image_speed = 1;
	}
	characters += increase;
	text_to_draw = string_copy(current_text, 0, characters);
	var _character = string_char_at(current_text, characters);	
	if (_character != " ") and messages_current != 0 {
		audio_play_sound(voice, 20, 0);
	}
			
	if _character == "," {
		increase = 0.2;
	}
	else {
		increase = 1;
	}
	
	if enter_z_check() or shift_x_check() {
		characters = string_length(current_text);
		text_to_draw = string_copy(current_text, 0, characters);
	}
	
	if ctrl_c_hold_check() {
		increase = 3;
	}
	
}
else {
	if instance_exists(obj_dialogue_avatar) {
		obj_dialogue_avatar.image_speed = 0;
	}
	if enter_z_check() or ctrl_c_hold_check() {
		if messages_current == 0 {
			if (room == rm_reject0 or room == rm_reject1 or room == rm_reject2) {
				sprite_index = spr_dialogue_box3_yellow;
			}
			else {
				sprite_index = spr_dialogue_box3;
			}
			instance_create_depth(camera_get_view_x(view_camera[0]) + 90, camera_get_view_y(view_camera[0]) + box_y + 25, depth-1, obj_dialogue_avatar);
			obj_dialogue_avatar.sprite_index = avatar;
			text_x = text_x_with_avatar;
		}
		if (messages_current != messages_end) {
			text_to_draw = "";
			characters = 0;
			messages_current++;
			current_text = messages[messages_current];
			text_length = string_length(current_text);
		}
		else {
			instance_destroy();
		}
	}
}