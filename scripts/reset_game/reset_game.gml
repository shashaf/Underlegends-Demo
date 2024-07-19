// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function reset_game(){
	
	global.game_status = 0; //0 - don't skip start intro, 1 - skip it, 2 - spawn in a room
	//global.camera_x = camera_get_view_x(view_camera[0]);
	//global.camera_y = camera_get_view_y(view_camera[0]);
	global.menu_type = 0;
	global.room_index = 1;
	global.room_name = room_from_index(global.room_index);
	global.room_label = "";


	global.game_seconds = 0;
	global.game_minutes = 0;
	global.real_game_frames = 0;
	global.real_game_seconds = 0;
	global.real_game_minutes = 0;
	global.fun = round(random_range(0, 100));


	global.player_x = 290;
	global.player_y = 260;
	global.letter = random_letter();
	global.skill = 2;
	global.player_hp = 20;
	global.player_max_hp = 20;
	global.player_exp = 0;
	global.player_exp_to_lv = 10;
	global.player_lv = 1;
	global.player_gold = 0;
	global.killed = 0;
	global.deaths = 0;

	global.player_attack = (global.player_lv-1)*2;
	global.player_defence = floor(global.player_lv/4);
	global.player_weapon_index = 1;
	global.player_armor_index = 1;
	global.player_weapon = weapon_choose(global.player_weapon_index);
	global.player_armor = armor_choose(global.player_armor_index);
	global.item_attack = 0;
	global.item_defence = 0;

	global.item_IDs[0] = 15;
	global.item_IDs[1] = 3;
	global.item_IDs[2] = 0;
	global.item_IDs[3] = 0;
	if global.enough != 0 {
		global.letter = "z";
		global.previous_name = global.human_1_name;
	}
	global.item_IDs[4] = 0;
	global.item_IDs[5] = 0;
	global.item_IDs[6] = 0;
	global.item_IDs[7] = 0;

	global.items = load_inventory(global.item_IDs);

	global.key_item_IDs[0] = 1;
	global.key_item_IDs[1] = 0;
	global.key_item_IDs[2] = 0;
	global.key_item_IDs[3] = 0;
	global.key_item_IDs[4] = 0;
	global.key_item_IDs[5] = 0;
	global.key_item_IDs[6] = 0;
	global.key_item_IDs[7] = 0;
	
	global.key_items = load_key_items(global.key_item_IDs);
	
	global.flowey_talked = 0;
	global.stranger_talked = 0;
	global.froggit_talked = 0;
	global.lemike = 0;
	global.grey = 0;
	global.rejected_names = "";
	
	if global.language == "rus" {
		global.cell[0] = "Дом";
		global.cell[1] = "Папирус";
	}
	else {
		global.cell[0] = "Home";
		global.cell[1] = "Papyrus";
	}
	

	if (global.fun >= 70 and global.fun <= 75)
		global.cell[2] = "???";
	else 
		global.cell[1] = "";
	global.cell[2] = "";
	global.cell[3] = "";
	global.enough = 0;
	global.human_1_name = "Kira";
	global.human_2_name = "Kori";
	save_mine();

}