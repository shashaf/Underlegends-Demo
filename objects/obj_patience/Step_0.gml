
//event_inherited();
//подсчёт реального игрового времени
global.real_game_frames ++; //кадры
if global.real_game_frames >= 30 { //секунды
	global.real_game_frames = 0;
	global.real_game_seconds ++;
}
if global.real_game_seconds >= 60 { //минуты
	global.real_game_seconds = 0;
	global.real_game_minutes ++;
}

if can_move == true { //скорость движения по умолчанию
	spd = 6;
}

var _left_moving = keyboard_check(vk_left) or keyboard_check(ord("A")); //проверка нажатия клавиш
var _right_moving = keyboard_check(vk_right) or keyboard_check(ord("D"));
var _up_moving = keyboard_check(vk_up) or keyboard_check(ord("W"));
var _down_moving = keyboard_check(vk_down) or keyboard_check(ord("S"));

var _hspd = _right_moving - _left_moving; //проверка горизонтального движения
var _vspd = _down_moving - _up_moving; //проверка вертикального движения

if keyboard_check_pressed(vk_left) or keyboard_check_pressed(vk_right) //одноразовое переключение на кадр движения, чтобы игрок не "плыл стоя"
or keyboard_check_pressed(vk_up) or keyboard_check_pressed(vk_down) 
or keyboard_check_pressed(ord("A")) or keyboard_check_pressed(ord("D")) 
or keyboard_check_pressed(ord("S")) or keyboard_check_pressed(ord("W")) {
	image_index = 1;
} 

if (_hspd != 0 or _vspd != 0) and can_move == true  and visible == true { //если мы куда-то движемся
	if (_hspd != 0 and _vspd != 0) { //диагональное движение
		spd = 8;
		dir = point_direction(0, 0, _hspd, _vspd);
		if instance_exists(obj_enemy) and image_speed != 0 and room != rm_battle and (distance_to_object(obj_npc)) > 10
			steps_before_battle++;
	}
	else {
		if instance_exists(obj_enemy) and image_speed != 0 and room != rm_battle and (distance_to_object(obj_npc)) > 10 //если в комнате есть враг, считаем шаги до битвы
			steps_before_battle++;
		spd = 6; //вертикаль/горизонталь
		dir = point_direction(0, 0, _hspd, _vspd);
	}
}

else {
	spd = spd * 0; //нет движения
	image_index = 0;
	dir = point_direction(0, 0, 0, 0);
}

if (keyboard_check(ord("X")) or keyboard_check(vk_shift)) { //бег 
	spd = spd * 1.25;
	image_speed = image_speed * 2;
}

//плавное приближение к объектам, останавливающим движение
var _xadd = lengthdir_x(spd, dir);
var _yadd = lengthdir_y(spd, dir);
if !place_meeting(x+_xadd, y, obj_stopper) or global.debug == true {
	x = x + _xadd;
}
else {
	while (!place_meeting(x +sign(_xadd), y, obj_stopper))
		x = x + sign(_xadd);
}

if !place_meeting(x, y + _yadd, obj_stopper) or global.debug == true {
	y = y + _yadd;
}
else {
	while (!place_meeting(x, y+sign(_yadd), obj_stopper))
		y = y + sign(_yadd);
}

x = round(x);
y = round(y);

//анимация
if can_move == true {
	if (_up_moving = 1)
		sprite_index = up_sprite;
	
	else if (_down_moving = 1)
		sprite_index = down_sprite;
	
	else if (_left_moving = 1)
		sprite_index = left_sprite;
	
	else if (_right_moving = 1)
		sprite_index = right_sprite;
	
	if (x != xprevious or y != yprevious)
		if (keyboard_check(ord("X")) or keyboard_check(vk_shift))
			image_speed = 2;
		else
			image_speed = 1;
	else {
		image_index = 0;
		image_speed = 0;
	}
}

//искусственное следование камеры за челом

//switch (room) {
//	case Room0:
//		camera_set_view_pos(view_camera[0], x - camera_get_view_width(view_camera[0])/2, y - camera_get_view_height(view_camera[0])/2);
//		break;
//	case Room1:
//		camera_set_view_pos(view_camera[0], x - camera_get_view_width(view_camera[0])/2, y - 150);
//		break;
//}

depth = -y;

//обновление числа шагов до битвы
if steps_before_battle == steps_to_battle {
	battle_type = choose_battle(global.room_index);
		if global.player_lv < 4 {
			while (battle_type == previous_battle) {
				battle_type = choose_battle(global.room_index);
			}
		}
		else {
			battle_type = -1;
		}
	begin_end_battle();
	randomize();
	steps_to_battle = round(random_range(150 + global.killed * 10, 400)) + global.killed * 10;
	steps_before_battle = 0;
}

if battle_trigger == true {
	//alarm[6] = 30;
	battle_trigger = false;
	begin_end_battle();
}

//баг с застреванием
//if ((x <= (global.camera_x + 5)) and (y <= (global.camera_y + 5))) or (x == 0 and y == 0) or (x < 0) or (y < 0) {
if ((x <= (global.camera_x + 5))) or (x == 0 and y == 0) or (x < 0) or (y < 0) {
	if struggle < struggle_limit {
		struggle++;
	}
	else {
		if !instance_exists(obj_struggle_bug) {
			instance_create_depth(global.camera_x + 65, global.camera_y + box_y_check(), -9999, obj_struggle_bug);
		}
	}
}

if shaking == true {
	//if (timer < 60) {
		timer++;
		shake_x *= 0.9;
		shake_y *= 0.9;
		var _ran_x = random_range(-shake_x, shake_x);
		var _ran_y = random_range(-shake_y, shake_y);
		x = x + _ran_x;
		y = y + _ran_y;
	//}
	/*else {
		x = x_before_shaking;
		y = y_before_shaking;
		shaking = false;
		timer = 0;
		shake_x = 2;
		shake_y = 2;
	}*/
	if floor(shake_x) <= 0 {
		shake_x = 2;
	}
	if floor(shake_y) <= 0 {
		shake_y = 1;
	}
}

if y_to_fall > -1 and y < y_to_fall {
	if ((y_to_fall - y) >= 6) {
		y+=6;
	}
	else {
		y++;
	}
}
else if y >= y_to_fall and room == room_to_fall and spinning == true {
	//sprite_index = left_sprite;
	y_to_fall = -1;
	spinning = false;
	can_move = true;
	spd = 2;
}
if spinning == true and start_to_spin == false {
	start_to_spin = true;
	if sprite_index != left_sprite {
		sprite_index = left_sprite;
	}
	else {
		sprite_index = right_sprite;
	}
	alarm[7] = 10;
}
