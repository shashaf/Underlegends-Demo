/// @description Начало битвы
// You can write your code in this editor
if instance_exists(obj_alert)
	instance_destroy(obj_alert);
instance_create_depth(global.camera_x, global.camera_y, depth+1, obj_all_dark);

instance_create_depth(x, y+12, depth-1, obj_soul_battle);
