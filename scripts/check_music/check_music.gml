// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function check_music(_current_room) {
	switch (_current_room) {
		case rm_battle:
			if global.enough != 0 {
				return true;
			}
			else {
				return false;
			}
			//break;
		case rm_castle_shop:
			return false;
		case rm_intro:
			return false;
			//break;
		case rm_naming:
			return false;
			//break;
		case rm_menu:
			return false;
			//break;
		case rm_start:
			return false;
			//break;
		case rm_ruins_0_prototype:
			if !audio_is_playing(mus_remix) {
				return true;
			}
			else {
				return false;
			}
		case rm_ruins_1_prototype:
			if !audio_is_playing(mus_remix) {
				return true;
			}
			else {
				return false;
			}
		case rm_reject0:
			return true;
			//break;
		case rm_reject1:
			return true;
			//break;
		case rm_reject2:
			if global.enough != 0 {
				return true;
			}
			else if global.lemike > 2 {
				return false;
			}
			else {
				return true;
			}
			//break;
		case rm_66:
			return false;
			//break;
		case rm_remix:
			return false;
			//break;
		case rm_ruins_0:
			return false;
		case rm_ruins_1:
			return false;
		case rm_ruins_2:
			return true;
		case rm_ruins_3:
			return true;
		case rm_ruins_4:
			return true;
		case rm_ruins_5_old:
			return false;
		case rm_ruins_5_bakery:
			return true;
		case rm_castle_1:
			return true;
		default:
			return false;
	}
}