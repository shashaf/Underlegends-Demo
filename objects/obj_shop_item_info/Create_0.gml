path_start(path_shop_item_info, 15, path_action_stop, 0);
item = obj_shop_manager.items[0];

global.player_weapon = obj_hand;
global.player_armor = obj_bone_bracelet;
instance_create_depth(320, 240, 0, global.player_weapon);
instance_create_depth(320, 240, 0, global.player_armor);

function get_item_info(item) {
	switch (item.item_type) {
		case 1:
			if global.language == "rus" {
				item_type = "Оружие:";
				item_stat_type = "АТ";
			}
			else {
				item_type = "Weapon: ";
				item_stat_type = "AT";
			}
			item_stat = item.weapon_attack;
			item_stat_difference = item_stat - global.player_weapon.weapon_attack;
			if item_stat_difference >= 0 {
				item_stat_difference_string = "\n(+" + string(item_stat_difference) + " " + item_stat_type + ")\n";
			}
			else {
				item_stat_difference_string = "\n(" + string(item_stat_difference) + " " + item_stat_type + ")\n";	
			}
			break;
		case 2:
			if global.language == "rus" {
				item_type = "Броня:";
				item_stat_type = "ЗЩ";
			}
			else {
				item_type = "Armor: ";
				item_stat_type = "DF";
			}
			item_stat = item.armor_defence;
			item_stat_difference = item_stat - global.player_armor.armor_defence;
			if item_stat_difference >= 0 {
				item_stat_difference_string = "\n(+" + string(item_stat_difference) + " " + item_stat_type + ")\n";
			}
			else {
				item_stat_difference_string = "\n(" + string(item_stat_difference) + " " + item_stat_type + ")\n";	
			}
			break;
		default:
			if global.language == "rus" {
				item_type = "Лечит:";
				item_stat_type = "ОЗ";
			}
			else {
				item_type = "Heals: ";
				item_stat_type = "HP";
			}
			item_stat = item.item_heals;
			item_stat_difference = "";
			item_stat_difference_string = "\n";
			break;
	}
	item_info = item.shop_text;
	info_string = item_type + string(item_stat) + " " + item_stat_type + item_stat_difference_string + item_info;
}

//item_type = "Weapon";
//item_stat_type = "AT";
//item_stat = 5;
//item_stat_difference = 2;
get_item_info(item);


//item_info = "Slap 'em.";


text_x = x + 30;
text_y = y + 30;

//info_string = item_type + ": " + string(item_stat) + item_stat_type + "\n(" + item_stat_difference_string + item_stat_type + ")\n" + item_info;