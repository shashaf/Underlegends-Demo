/// @description Загрузка
// You can write your code in this editor
ini_open("save.ini");

global.game_status = ini_read_real("Global", "game_status", 0); //0 - don't skip start intro, 1 - skip it, 2 - spawn in a room
global.camera_x = camera_get_view_x(view_camera[0]);
global.camera_y = camera_get_view_y(view_camera[0]);

global.room_index = ini_read_real("Global", "RoomID", 1);
global.room_name = room_from_index(global.room_index);
global.room_label = ini_read_string("Global", "RoomLabel", "");


global.player_x = ini_read_real("PlayerStats", "X", 290);
global.player_y = ini_read_real("PlayerStats", "Y", 260);
global.human_1_name = ini_read_string("PlayerStats", "_name", "Shasha");
global.player_hp = ini_read_real("PlayerStats", "HP", 20);
global.player_max_hp = ini_read_real("PlayerStats", "MaxHP", 20);
global.player_exp = ini_read_real("PlayerStats", "EXP", 0);
global.player_exp_to_lv = ini_read_real("PlayerStats", "EXP_to_lv", 10);
global.player_lv = ini_read_real("PlayerStats", "LV", 1);
global.player_gold = ini_read_real("PlayerStats", "Gold", 0);
global.killed = ini_read_real("PlayerStats", "Killed", 0);
global.enough = ini_read_real("PlayerStats", "Enough", 0);
global.deaths++;
ini_write_real("PlayerStats", "Deaths", global.deaths);

global.player_attack = ini_read_real("PlayerStats", "ATK", (global.player_lv-1)*2);
global.player_defence = ini_read_real("PlayerStats", "DEF", floor(global.player_lv/4));
global.player_weapon_index = ini_read_real("PlayerStats", "Weapon", 2);
global.player_armor_index = ini_read_real("PlayerStats", "Armor", 2);

global.player_weapon = weapon_choose(global.player_weapon_index);

global.player_armor = armor_choose(global.player_armor_index);


global.item_attack = ini_read_real("PlayerStats", "WeaponATK", 5);
global.item_defence = ini_read_real("PlayerStats", "ArmorDEF", 5);

//global.item_IDs[0] = ini_read_real("Inventory", "Item1", 1);
global.item_IDs[0] = ini_read_real("Inventory", "Item1", 5);
//global.item_IDs[1] = ini_read_real("Inventory", "Item2", 0);
global.item_IDs[1] = ini_read_real("Inventory", "Item2", 5);
global.item_IDs[2] = ini_read_real("Inventory", "Item3", 0);
global.item_IDs[3] = ini_read_real("Inventory", "Item4", 0);
global.item_IDs[4] = ini_read_real("Inventory", "Item5", 0);
global.item_IDs[5] = ini_read_real("Inventory", "Item6", 0);
global.item_IDs[6] = ini_read_real("Inventory", "Item7", 0);
global.item_IDs[7] = ini_read_real("Inventory", "Item8", 0);

global.items = load_inventory(global.item_IDs);


if instance_exists(obj_lemike) {
	global.cell[0] = "???";
	global.cell[1] = "";
}
else {
	if global.language == "rus" {
		global.cell[0] = "Дом";
		global.cell[1] = "Папирус";
	}
	else {
		global.cell[0] = "Home";
		global.cell[1] = "Papyrus";
	}
}	

if (global.fun >= 70 and global.fun <= 75)
	global.cell[2] = "???";
else 
	global.cell[2] = "";
global.cell[3] = "";

ini_close();
if instance_exists(obj_patience) {
	instance_destroy(obj_patience)
	instance_create_depth(global.player_x, global.player_y, 0, obj_patience);
	room_goto_dark(global.room_name);
}



