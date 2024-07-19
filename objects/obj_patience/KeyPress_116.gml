/// @description Переместиться на спавн
// Вы можете записать свой код в этом редакторе
if global.debug == true {
	if instance_exists(obj_struggle_spawn) {
		x = obj_struggle_spawn.x;
		y = obj_struggle_spawn.y;
	}
	else if instance_exists(obj_spawn) {
		x = obj_spawn.x;
		y = obj_spawn.y;
	}
	else {
		x = 100;
		y = 100;
	}
	struggle = 0;
}




