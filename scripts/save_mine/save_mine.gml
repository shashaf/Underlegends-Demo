// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function save_mine(){
	global.player_hp = global.player_max_hp;
	ini_open("save.ini");

	ini_write_real("Global", "Menu", global.menu_type);
	ini_write_real("Global", "RoomID", global.room_index);
	ini_write_real("Global", "GameStatus", global.game_status);
	ini_write_real("Global", "RealGameFrames", global.real_game_frames);
	ini_write_real("Global", "GameSeconds", global.game_seconds);
	ini_write_real("Global", "RealGameSeconds", global.real_game_seconds);
	ini_write_real("Global", "GameMinutes", global.game_minutes);
	ini_write_real("Global", "RealGameMinutes", global.real_game_minutes);
	ini_write_real("Global", "Fun", global.fun);
	ini_write_string("Global", "RoomLabel", global.room_label);
	ini_write_string("Global", "Lang", global.language);

	if room != rm_menu {
		ini_write_real("PlayerStats", "X", obj_patience.x);
		ini_write_real("PlayerStats", "Y", obj_patience.y);
		ini_write_real("PlayerStats", "Weapon", global.player_weapon.weapon_index);
		ini_write_real("PlayerStats", "Armor", global.player_armor.armor_index);
		ini_write_real("PlayerStats", "WeaponATK", global.player_weapon.weapon_attack);
		ini_write_real("PlayerStats", "ArmorDEF", global.player_armor.armor_defence);
	}
	else {
		ini_write_real("PlayerStats", "X", global.player_x);
		ini_write_real("PlayerStats", "Y", global.player_y);
	}
	ini_write_string("PlayerStats", "Human_1_Name", global.human_1_name);
	ini_write_string("PlayerStats", "Human_2_Name", global.human_2_name);
	ini_write_real("PlayerStats", "Skill", global.skill);
	ini_write_real("PlayerStats", "HP", global.player_hp);
	ini_write_real("PlayerStats", "MaxHP", global.player_max_hp);
	ini_write_real("PlayerStats", "EXP", global.player_exp);
	ini_write_real("PlayerStats", "EXP_to_lv", global.player_exp_to_lv);
	ini_write_real("PlayerStats", "LV", global.player_lv);
	ini_write_real("PlayerStats", "ATK", global.player_attack);
	ini_write_real("PlayerStats", "DEF", global.player_defence);
	ini_write_real("PlayerStats", "Gold", global.player_gold);
	
	ini_write_real("PlayerStats", "Killed", global.killed);
	ini_write_real("PlayerStats", "Enough", global.enough);
	ini_write_real("PlayerStats", "Deaths", global.deaths);

	ini_write_real("Inventory", "Item1", global.item_IDs[0]);
	ini_write_real("Inventory", "Item2", global.item_IDs[1]);
	ini_write_real("Inventory", "Item3", global.item_IDs[2]);
	ini_write_real("Inventory", "Item4", global.item_IDs[3]);
	ini_write_real("Inventory", "Item5", global.item_IDs[4]);
	ini_write_real("Inventory", "Item6", global.item_IDs[5]);
	ini_write_real("Inventory", "Item7", global.item_IDs[6]);
	ini_write_real("Inventory", "Item8", global.item_IDs[7]);
	
	ini_write_real("Inventory", "KeyItem1", global.key_item_IDs[0]);
	ini_write_real("Inventory", "KeyItem2", global.key_item_IDs[1]);
	ini_write_real("Inventory", "KeyItem3", global.key_item_IDs[2]);
	ini_write_real("Inventory", "KeyItem4", global.key_item_IDs[3]);
	ini_write_real("Inventory", "KeyItem5", global.key_item_IDs[4]);
	ini_write_real("Inventory", "KeyItem6", global.key_item_IDs[5]);
	ini_write_real("Inventory", "KeyItem7", global.key_item_IDs[6]);
	ini_write_real("Inventory", "KeyItem8", global.key_item_IDs[7]);

	
	ini_write_real("NPC", "Flowey", global.flowey_talked);
	ini_write_real("NPC", "Stranger", global.stranger_talked);
	ini_write_real("NPC", "Froggit", global.froggit_talked);
	ini_write_real("NPC", "Lemike", global.lemike);
	
	ini_close();
	
	ini_open("session_info.ini");
	ini_write_string("Info","Names", global.rejected_names);
	ini_write_real("Info", "Number", global.number);
	ini_write_string("Info", "Letter", global.letter);
	ini_write_string("Info", "Name", global.previous_name);
	ini_write_real("Info", "Grey", global.grey);
	ini_write_string("Info", "Season", global.season);
	ini_write_real("Info", "Year", current_year);
	ini_write_real("Info", "Month", current_month);
	ini_write_real("Info", "Day", current_day);
	ini_write_real("Info", "WeekDay", current_weekday);
	ini_write_real("Info", "Hour", current_hour);
	ini_write_real("Info", "Minute", current_minute);
	ini_write_real("Info", "Second", current_second);
	ini_write_real("Info", "Time", current_time);
	ini_write_real("Controls", "LeftKey", global.left);
	ini_write_real("Controls", "RightKey", global.right);
	ini_write_real("Controls", "DownKey", global.down);
	ini_write_real("Controls", "UpKey", global.up);
	ini_write_real("Controls", "EnterKey", global.enter);
	ini_write_real("Controls", "ShiftKey", global.shift);
	ini_write_real("Controls", "CtrlKey", global.ctrl);
	ini_close();
}