/// @description Insert description here
// You can write your code in this editor
//event_inherited();
if can_move = true {
	spd = 1;
}
var _left_moving = keyboard_check(vk_left);
var _right_moving = keyboard_check(vk_right);
var _up_moving = keyboard_check(vk_up);
var _down_moving = keyboard_check(vk_down);

var _hspd = _right_moving - _left_moving;
var _vspd = _down_moving - _up_moving;

if (_hspd != 0 or _vspd != 0) {
	if (_hspd != 0 and _vspd != 0) { //диагональ
		spd = spd * 4;
		dir = point_direction(0, 0, _hspd, _vspd);
	}
	else {
	spd = spd * 3; //вертикаль/горизонталь
	dir = point_direction(0, 0, _hspd, _vspd);
	}
}

else {
	spd = spd * 0; //нет движения
	image_index = 0;
	//dir = point_direction(0, 0, 0, 0);
}

if keyboard_check(ord("X")) {
	spd = spd * 1.25;
	image_speed = image_speed * 2;
}

var _xadd = lengthdir_x(spd, dir);
var _yadd = lengthdir_y(spd, dir);
if !place_meeting(x+_xadd, y, obj_wall)
	x = x + _xadd;
else {
	while (!place_meeting(x +sign(_xadd), y, obj_wall))
		x = x + sign(_xadd);
}

if !place_meeting(x, y + _yadd, obj_wall)
	y = y + _yadd;
else {
	while (!place_meeting(x, y+sign(_yadd), obj_wall))
		y = y + sign(_yadd);
}

x = round(x);
y = round(y);

//анимация
if can_move = true {
	if (_up_moving = 1)
		sprite_index = spr_bravery_up;
	
	else if (_down_moving = 1)
		sprite_index = spr_bravery_down;
	
	else if (_left_moving = 1)
		sprite_index = spr_bravery_left;
	
	else if (_right_moving = 1)
		sprite_index = spr_bravery_right;
	
	if (x != xprevious or y != yprevious)
		image_speed = 1;
	else {
		image_index = 0;
		image_speed = 0;
	}
}

//искусственное следование камеры за игроком

//switch (room) {
//	case Room0:
//		camera_set_view_pos(view_camera[0], x - camera_get_view_width(view_camera[0])/2, y - camera_get_view_height(view_camera[0])/2);
//		break;
//	case Room1:
//		camera_set_view_pos(view_camera[0], x - camera_get_view_width(view_camera[0])/2, y - 150);
//		break;
//}

