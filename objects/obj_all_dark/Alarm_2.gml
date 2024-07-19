/// @description Убирание затемнения

if image_alpha > 0 {
	image_alpha -= 0.05;
	obj_patience.image_alpha += 0.05;
	alarm[2] = 1;
}
else {
	obj_patience.can_move = true;
	instance_destroy();
}




