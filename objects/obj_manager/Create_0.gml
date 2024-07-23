
// You can write your code in this editor
start_x = camera_get_view_x(view_current);
start_y = camera_get_view_y(view_current);

timer = 0;
global.debug = false;
instance_create_depth(0, 0, 0, obj_room_manager);


randomize();
ini_open("save.ini");

global.game_status = ini_read_real("Global", "GameStatus", 0); 
global.camera_x = camera_get_view_x(view_camera[0]);
global.camera_y = camera_get_view_y(view_camera[0]);

global.room_index = ini_read_real("Global", "RoomID", 1);
global.room_name = room_from_index(global.room_index);
global.room_label = ini_read_string("Global", "RoomLabel", "");


global.game_seconds = ini_read_real("Global", "GameSeconds", 0);
global.game_minutes = ini_read_real("Global", "GameMinutes", 0);
global.real_game_frames = ini_read_real("Global", "RealGameFrames", 0);
global.real_game_seconds = ini_read_real("Global", "RealGameSeconds", 0);
global.real_game_minutes = ini_read_real("Global", "RealGameMinutes", 0);
//global.fun = ini_read_real("Global", "Fun", round(random_range(0, 100)));
global.fun = 1;
global.language = ini_read_string("Global", "Lang", "rus");
//global.language = "rus";

global.player_x = ini_read_real("PlayerStats", "X", 290);
global.player_y = ini_read_real("PlayerStats", "Y", 260);
global.human_1_name = ini_read_string("PlayerStats", "Human_1_Name", "Kira");
global.human_2_name = ini_read_string("PlayerStats", "Human_2_Name", "Kori");
global.skill = ini_read_real("PlayerStats", "Skill", 2);
global.player_hp = ini_read_real("PlayerStats", "HP", 20);
global.player_max_hp = ini_read_real("PlayerStats", "MaxHP", 20);
global.player_exp = ini_read_real("PlayerStats", "EXP", 0);
global.player_exp_to_lv = ini_read_real("PlayerStats", "EXP_to_lv", 10);
global.player_lv = ini_read_real("PlayerStats", "LV", 1);
global.player_gold = ini_read_real("PlayerStats", "Gold", 0);
global.killed = ini_read_real("PlayerStats", "Killed", 0);
global.enough = ini_read_real("PlayerStats", "Enough", 0);
global.deaths = ini_read_real("PlayerStats", "Deaths", 0);

global.player_attack = ini_read_real("PlayerStats", "ATK", (global.player_lv-1)*2);
global.player_defence = ini_read_real("PlayerStats", "DEF", floor(global.player_lv/4));
global.player_weapon_index = ini_read_real("PlayerStats", "Weapon", 0);
global.player_armor_index = ini_read_real("PlayerStats", "Armor", 1);
//global.player_weapon = obj_stick;
global.player_weapon = weapon_choose(global.player_weapon_index);
//global.player_armor = obj_bandage;
global.player_armor = armor_choose(global.player_armor_index);
//global.item_attack = global.player_weapon.weapon_attack;
//global.item_defence = global.player_armor.armor_defence;

global.item_attack = ini_read_real("PlayerStats", "WeaponATK", 0);
global.item_defence = ini_read_real("PlayerStats", "ArmorDEF", 1);

global.item_IDs[0] = ini_read_real("Inventory", "Item1", 0);
global.item_IDs[1] = ini_read_real("Inventory", "Item2", 0);
global.item_IDs[2] = ini_read_real("Inventory", "Item3", 0);
global.item_IDs[3] = ini_read_real("Inventory", "Item4", 0);
global.item_IDs[4] = ini_read_real("Inventory", "Item5", 0);
global.item_IDs[5] = ini_read_real("Inventory", "Item6", 0);
global.item_IDs[6] = ini_read_real("Inventory", "Item7", 0);
global.item_IDs[7] = ini_read_real("Inventory", "Item8", 0);

global.key_item_IDs[0] = ini_read_real("Inventory", "KeyItem1", 1);
global.key_item_IDs[1] = ini_read_real("Inventory", "KeyItem2", 0);
global.key_item_IDs[2] = ini_read_real("Inventory", "KeyItem3", 0);
global.key_item_IDs[3] = ini_read_real("Inventory", "KeyItem4", 0);
global.key_item_IDs[4] = ini_read_real("Inventory", "KeyItem5", 0);
global.key_item_IDs[5] = ini_read_real("Inventory", "KeyItem6", 0);
global.key_item_IDs[6] = ini_read_real("Inventory", "KeyItem7", 0);
global.key_item_IDs[7] = ini_read_real("Inventory", "KeyItem8", 0);

global.items = load_inventory(global.item_IDs);
global.key_items = load_key_items(global.key_item_IDs);

global.flowey_talked = ini_read_real("NPC", "Flowey", 0);
global.stranger_talked = ini_read_real("NPC", "Stranger", 0);
global.froggit_talked = ini_read_real("NPC", "Froggit", 0);
global.lemike = ini_read_real("NPC", "Lemike", 0);



if global.language == "rus" {
		global.cell[0] = "Дом";
		global.cell[1] = "Папирус";
}
else {
	global.cell[0] = "Home";
	global.cell[1] = "Papyrus";
}
	
//global.cell[1] = "";
global.cell[2] = "";
global.cell[3] = "";



ini_close();

ini_open("session_info.ini")
global.letter = ini_read_string("Info", "Letter", random_letter());
global.number = ini_read_real("Info", "Number", round(random_range(1, 100)));
global.grey = ini_read_real("Info", "Grey", 0);
global.season = get_season(current_month);
global.rejected_names = ini_read_string("Info","Names","");
global.previous_name = ini_read_string("Info", "Name", global.human_1_name);
ini_close()

check_stats();
if global.language == "rus" {
	exit_text = "Выходим";
}
else {
	exit_text = "Quiting";
}

alarm[0] = 10;