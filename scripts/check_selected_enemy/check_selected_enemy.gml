// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function check_selected_enemy(_selected_enemy){
	obj_soul_battle.x = x + 37;
	if _selected_enemy == 0 {
		obj_soul_battle.y = y + 35;
	}
	else if _selected_enemy == 1 {
		obj_soul_battle.y = y + 35 + 32;
	}
	else if _selected_enemy == 2 {
		obj_soul_battle.y = y + 35 + 32 + 32;
	}
}