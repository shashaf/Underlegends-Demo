/// @description Insert description here
// You can write your code in this editor
alarm[0] = 1;
//alarm[2] = 2;

if global.player_lv > 1 and !audio_is_playing(muz) and (room == rm_reject0 or room == rm_reject1 or room == rm_reject2) {
	audio_play_sound(muz, 1, 1);
}

switch (room) {
	case rm_ruins_0:
		global.menu_type = 0;
		break;
	case rm_ruins_1_prototype:
		global.menu_type = 1;
		break;
}

if in_battle == false {
	if go_back = true {
		x = obj_exit.x;
		y = obj_exit.y;
		go_back = false;
		global.room_index --;
	}
	else {
		if loaded = true {
			global.room_index++;
			//alarm[5] = 3;
			x = obj_spawn.x;
			y = obj_spawn.y;
		}
		else {
			loaded = true;
			x = global.player_x;
			y = global.player_y;
		}
		
	}
}
//if inventorySpawned == false {
//	inventorySpawned = true;
	global.items = load_inventory(global.item_IDs);
	instance_create_depth(0, 0, 0, obj_empty_item);
	instance_create_depth(0, 0, 0, global.items[0]);
	instance_create_depth(0, 0, 0, global.items[1]);
	instance_create_depth(0, 0, 0, global.items[2]);
	instance_create_depth(0, 0, 0, global.items[3]);
	instance_create_depth(0, 0, 0, global.items[4]);
	instance_create_depth(0, 0, 0, global.items[5]);
	instance_create_depth(0, 0, 0, global.items[6]);
	instance_create_depth(0, 0, 0, global.items[7]);
	for (var _i = 0; _i <=7; _i++) {
		global.items[_i].taken = true;
		if (global.items[_i].spawned == true)
			global.items[_i].spawned = false;
	}
	var _weapon_object = weapon_choose(global.player_weapon_index)
	if !instance_exists(_weapon_object)
		instance_create_depth(0, 0, 0, _weapon_object);
	_weapon_object.spawned = false;
	_weapon_object.taken = true;
	var _armor_object = armor_choose(global.player_armor_index)
	if !instance_exists(_armor_object)
		instance_create_depth(0, 0, 0, _armor_object);
	_armor_object.spawned = false;
	_armor_object.taken = true;
//}

