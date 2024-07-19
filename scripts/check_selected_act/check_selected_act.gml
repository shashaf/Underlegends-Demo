// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function check_selected_act(_selected_act){
	switch (_selected_act) {
		case 0:
			obj_soul_battle.x = x + 37;
			obj_soul_battle.y = y + 35;
			break;
		case 1:
			obj_soul_battle.x = x + 37 + 265;
			obj_soul_battle.y = y + 35;
			break;
		case 2:
			obj_soul_battle.x = x + 37;
			obj_soul_battle.y = y + 35 + 32;
			break;
		case 3:
			obj_soul_battle.x = x + 37 + 265;
			obj_soul_battle.y = y + 35 + 32;
			break;
	}	
}