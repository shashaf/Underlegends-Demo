// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function check_selected_item(_selected_item){
	switch (_selected_item) {
		case 0:
			item_page = 1;
			obj_soul_battle.x = x + 37;
			obj_soul_battle.y = y + 35;
			break;
		case 1:
			item_page = 1;
			obj_soul_battle.x = x + 37 + 265;
			obj_soul_battle.y = y + 35;
			break;
		case 2:
			item_page = 1;
			obj_soul_battle.x = x + 37;
			obj_soul_battle.y = y + 35 + 32;
			break;
		case 3:
			item_page = 1;
			obj_soul_battle.x = x + 37 + 265;
			obj_soul_battle.y = y + 35 + 32;
			break;
		case 4:
			item_page = 1;
			obj_soul_battle.x = x + 37;
			obj_soul_battle.y = y + 35 + 32 + 32;
			break;
		case 5:
			item_page = 1;
			obj_soul_battle.x = x + 37 + 265;
			obj_soul_battle.y = y + 35 + 32 + 32;
			break;
		case 6:
			item_page = 2;
			obj_soul_battle.x = x + 37;
			obj_soul_battle.y = y + 35;
			break;
		case 7:
			item_page = 2;
			obj_soul_battle.x = x + 37 + 265;
			obj_soul_battle.y = y + 35;
			break;
		default:
			item_page = 1;
			obj_soul_battle.x = x + 37;
			obj_soul_battle.y = y + 35;
			break;
	}
}