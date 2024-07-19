if blink_counter <= 3 { //переход к началу битвы
	if image_alpha == 1 {
		blink_counter ++;
		count_direction = 0;
		image_alpha -= 0.25;
		//audio_play_sound(snd_soul_noise, 10, 0);
	}
	else if image_alpha != 0 and image_alpha != 1 { 
		if count_direction == 0
			image_alpha -= 0.25;
		else
			image_alpha += 0.25;
	}
	else if image_alpha == 0 {
		//audio_play_sound(snd_soul_noise, 10, 0);
		blink_counter ++;
		count_direction = 1;
		image_alpha += 0.25;
	}
}
else {
	if room != rm_battle and room != rm_battle_test { //перемещение к координатам начала битвы
		image_alpha = 1;
		battle_started = true;
		obj_patience.visible = false;
		if instance_exists(obj_npc)
			obj_npc.image_alpha = 0;
		if need_sound == true {
			audio_play_sound(snd_battle_start, 10, 0);
			need_sound = false;
			image_index = 0;
		}
		if obj_patience.battle_type != 0 { //перемещение в угол комнаты
			if distance_to_point(global.camera_x + 49, global.camera_y + 454) > 0 {
				if distance_to_point(global.camera_x + 49, global.camera_y + 454) > 10 {
					move_towards_point(global.camera_x + 49, global.camera_y + 454, 15);
					x = round(x);
					y = round(y);
				}
				else {
					move_towards_point(global.camera_x + 49, global.camera_y + 454, 1);
					x = round(x);
					y = round(y);
				}
		
			}
			else { //перемещение в комнату битвы
				speed = 0;
				instance_destroy(obj_all_dark);
				room_goto(rm_battle);
			}
		}
		else if obj_patience.battle_type == 0 { //перемещение в центр на туториале
			if distance_to_point(global.camera_x + 322, global.camera_y + 323) > 0 {
				if distance_to_point(global.camera_x + 322, global.camera_y + 323) > 10 {
					move_towards_point(global.camera_x + 322, global.camera_y + 323, 15);
					x = round(x);
					y = round(y);
				}
				else {
					move_towards_point(global.camera_x + 322, global.camera_y + 323, 1);
					x = round(x);
					y = round(y);
				}
		
			}
			else { //перемещение в комнату битвы
				speed = 0;
				instance_destroy(obj_all_dark);
				room_goto(rm_battle);
			}
		}
	}
	else { //уже в битве
		//if (dodging == true and !instance_exists(obj_revolver)) { //движение души во время хода противника	
		
		if (dodging == true) { //движение души во время хода противника	
			//if ctrl_c_check() and obj_attack_test.has_blue_skill == true {
				//if !audio_is_playing(snd_blue_skill) {
					//audio_play_sound(snd_blue_skill, 2, 0);
				//}
				//obj_attack_test.has_blue_skill = false;
				//obj_attack_test.blue_skill = true;
				//obj_blue_skill.alarm[0] = 30;
			//}
			spd = 2;
			var _left_moving = keyboard_check(vk_left) or keyboard_check(ord("A")); //проверка нажатия клавиш
			var _right_moving = keyboard_check(vk_right) or keyboard_check(ord("D"));
			var _up_moving = keyboard_check(vk_up) or keyboard_check(ord("W"));
			var _down_moving = keyboard_check(vk_down) or keyboard_check(ord("S"));

			var _hspd = _right_moving - _left_moving; //проверка горизонтального движения
			var _vspd = _down_moving - _up_moving; //проверка вертикального движения

			if (_hspd != 0 or _vspd != 0) { 
				if (_hspd != 0 and _vspd != 0) { //диагональ
					spd = 8;
					dir = point_direction(0, 0, _hspd, _vspd);
				}
				else {
					spd = 6; //вертикаль/горизонталь
					dir = point_direction(0, 0, _hspd, _vspd);
				}
			}

			else {
				spd = spd * 0; //нет движения
			}

			if (keyboard_check(ord("X")) or keyboard_check(vk_shift)) { //медленное движение
				spd = spd * 0.5;
			}

			//расчёт шага
			var _xadd = lengthdir_x(spd, dir);
			var _yadd = lengthdir_y(spd, dir);
			
				
			if _xadd > 0 { //движение вправо
				var _next_x = x + 8 + _xadd;
				var _stop_x = obj_attack_test.x + obj_attack_test.border_width - 4;
				if (_next_x < _stop_x) {
					x = x + _xadd;
				}
				else if (_next_x >= _stop_x) {
					while ((x + 8) != _stop_x)
						x = x + 1;
				}
			}
			else if _xadd < 0 { //движение влево
				var _next_x = x - 8 + _xadd;
				var _stop_x = obj_attack_test.x + 4;
				if (_next_x > _stop_x) {
					x = x + _xadd;
				}
				else if (_next_x <= _stop_x) {
					while ((x - 8) != _stop_x)
						x = x - 1;
				}
			}
			if _yadd > 0 { //движение вниз
				var _next_y = y + 8 + _yadd;
				var _stop_y = obj_attack_test.y + obj_attack_test.border_height - 4;
				if (_next_y < _stop_y) {
					y = y + _yadd;
				}
				else if (_next_y >= _stop_y) {
					while ((y + 8) != _stop_y)
						y = y + 1;
				}
			}
			else if _yadd < 0 { //движение вверх
				var _next_y = y - 8 + _yadd;
				var _stop_y = obj_attack_test.y + 4;
				if (_next_y > _stop_y) {
					y = y + _yadd;
				}
				else if (_next_y <= _stop_y) {
					while ((y - 8) != _stop_y)
						y = y - 1;
				}
			}

			x = round(x);
			y = round(y);
		}
	}
}

if sprite_index == spr_soul_battle_broken and image_speed == 1 {
	image_alpha -= 0.05;
	if image_index == 18 {
		image_speed = 0;
	}
}







