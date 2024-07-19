/// @description Пощада
// You can write your code in this editor
image_speed = 0;
if obj_battle_manager.enemies[0] != obj_lemike {
	if image_alpha > 0.4 {
		image_alpha -= 0.05;
		alarm[0] = 1;
	}
	else {
		spared = true;		
	}
}
else {
	if image_alpha > 0 {
		image_alpha -= 0.05;
		alarm[0] = 1;
	}
	else {
		spared = true;
		instance_destroy();
	}
}





