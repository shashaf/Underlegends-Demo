// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function begin_end_battle() {
	if in_battle == false { //начало битвы
		if global.player_lv < 4 {
			audio_pause_sound(obj_music.area_music);
		}
		instance_create_depth(x-9, y-50, depth-1, obj_alert);
		can_move = false;
		in_battle = true;
		room_before_battle = room;
		x_before_battle = x;
		y_before_battle = y;
		alarm[3] = 30;
	}
	else if room == rm_battle { //конец битвы
		audio_stop_sound(global.battle_music);
		instance_destroy(obj_all_dark);
		instance_destroy(obj_soul_battle);
		previous_battle = battle_type;
		battle_type = 0;
		x = x_before_battle;
		y = y_before_battle;
		if (x == 0 or y == 0 or x == global.camera_x or y == global.camera_y) {
			x += 100;
			y += 100;
		}
		room_goto_dark(room_before_battle);
		can_move = true;
		//visible = true;
		alarm[4] = 60;
		room_before_battle = noone;
		x_before_battle = noone;
		y_before_battle = noone;
		obj_patience.in_cutscene = false;
	}
}