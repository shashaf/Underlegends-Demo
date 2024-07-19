if global.game_status == 0 and room == rm_ruins_0 {
	sprite_index = spr_patience_left;
	image_angle = 270;
}
else if room != rm_ruins_6 or (room == rm_ruins_6 and go_back == true) {
	alarm[0] = 18;
}
/*if room != rm_ruins_0 {
	alarm[0] = 18;
}
else {
	if global.game_status == 0 {
		sprite_index = spr_patience_left;
		image_angle = 270;
	}
}*/
//alarm[2] = 2;
//instance_create_depth(x, y, -9999999, obj_dark_room);
/*if global.player_lv > 1 and !audio_is_playing(muz) and (room == rm_reject0 or room == rm_reject1 or room == rm_reject2) {
	audio_play_sound(muz, 1, 1);
}*/

switch (room) {
	case rm_ruins_0:
		global.menu_type = 0;
		break;
	case rm_ruins_1_prototype:
		global.menu_type = 1;
		break;
	case rm_ruins_2:
		make_dark_room(0.9);
		break;
	case rm_ruins_3:
		make_dark_room(0.9);
		break;
	case rm_ruins_4:
		make_dark_room(0.9);
		break;
	case rm_ruins_5_bakery:
		make_dark_room(0.8);
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
		if room == rm_castle_shop {
			can_move = false;
			visible = false;
			in_shop = true;
		}
		else if in_shop == true {
			in_shop = false;
			can_move = true;
			x = obj_shop_door.x;
			y = obj_shop_door.y + sprite_height/2;
		}
		else if loaded = true {
			global.room_index++;
			//alarm[5] = 3;
			visible = true;
			if room != rm_ruins_6 {
				x = obj_spawn.x;
				y = obj_spawn.y;
			}
			else {
				x = x;
				y = 0;
				vspeed = 0;
			}
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
	global.key_items = load_key_items(global.key_item_IDs);
	if room != rm_castle_shop {
		instance_create_depth(room_width/2, room_height/2, 0, obj_empty_item);
		for (var _i = 0; _i <=7; _i++) {
			//if global.items[_i] != obj_empty_item {
				instance_create_depth(room_width/2, room_height/2, 0, global.items[_i]);
				global.items[_i].visible = false;
			//}
			if !instance_exists(global.key_items[_i]) {
				instance_create_depth(room_width/2, room_height/2, 0, global.key_items[_i]);
				global.key_items[_i].visible = false;
			}
		}
		/*instance_create_depth(0, 0, 0, obj_empty_item);
		instance_create_depth(0, 0, 0, global.items[0]);
		instance_create_depth(0, 0, 0, global.items[1]);
		instance_create_depth(0, 0, 0, global.items[2]);
		instance_create_depth(0, 0, 0, global.items[3]);
		instance_create_depth(0, 0, 0, global.items[4]);
		instance_create_depth(0, 0, 0, global.items[5]);
		instance_create_depth(0, 0, 0, global.items[6]);
		instance_create_depth(0, 0, 0, global.items[7]);*/
	}
	for (var _i = 0; _i <=7; _i++) {
		global.items[_i].taken = true;
		if (global.items[_i].spawned == true)
			global.items[_i].spawned = false;
	}
	var _weapon_object = weapon_choose(global.player_weapon_index)
	if !instance_exists(_weapon_object)
		instance_create_depth(room_width/2, room_height/2, 0, _weapon_object);
	_weapon_object.spawned = false;
	_weapon_object.taken = true;
	var _armor_object = armor_choose(global.player_armor_index)
	if !instance_exists(_armor_object)
		instance_create_depth(room_width/2, room_height/2, 0, _armor_object);
	_armor_object.spawned = false;
	_armor_object.taken = true;
//}

