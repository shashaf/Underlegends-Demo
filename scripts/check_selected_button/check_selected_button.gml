// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function check_selected_button(_selected_button){
	obj_soul_battle.y = soul_start_y;
	switch (_selected_button) {
		case 1:
			obj_button_fight.selected = true;
			obj_button_act.selected = false;
			obj_button_item.selected = false;
			obj_button_mercy.selected = false;
			obj_soul_battle.x = soul_start_x;
			break;
		case 2:
			obj_button_fight.selected = false;
			obj_button_act.selected = true;
			obj_button_item.selected = false;
			obj_button_mercy.selected = false;
			obj_soul_battle.x = soul_start_x + 158;
			break;
		case 3:
			obj_button_fight.selected = false;
			obj_button_act.selected = false;
			obj_button_item.selected = true;
			obj_button_mercy.selected = false;
			obj_soul_battle.x = soul_start_x + 158*2;
			break;
		case 4:
			obj_button_fight.selected = false;
			obj_button_act.selected = false;
			obj_button_item.selected = false;
			obj_button_mercy.selected = true;
			obj_soul_battle.x = soul_start_x + 158*3;
			break;
	}
}