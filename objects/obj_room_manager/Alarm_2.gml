/// @description Долгий переход из комнаты
// You can write your code in this editor
if global.dark < 1 {
	global.dark += 0.06;
	alarm[2] = 1;
	if instance_exists(obj_patience) {
		if obj_patience.image_alpha >= 0 {
			obj_patience.image_alpha -=0.05;
		}
		else {
			obj_patience.image_alpha = 0;
			if obj_patience.visible == false and room != rm_castle_shop
				obj_patience.visible = true;
		}
	}
} 
else {
	global.dark = 1;
	alarm[1]= 90;
}