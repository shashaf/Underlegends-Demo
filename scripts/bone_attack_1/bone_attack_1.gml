// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function bone_attack_1(){
	new_border_left = 32 + 225 - 25;
	new_border_width = border_height + 50;
	instance_create_depth(50, 50, depth, obj_bone_spawner);
	obj_bone_spawner.alarm[1] = 20;
	/*var _spawn_y = choose(y + border_height, y);
	_bone = instance_create_depth(border_right + 50, _spawn_y, depth, obj_bone_attack)
	if _spawn_y == y {
		_bone.y += _bone.sprite_height;
	}*/
}