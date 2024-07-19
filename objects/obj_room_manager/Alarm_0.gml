/// @description Затемнение
// You can write your code in this editor
if global.dark < 1 {
	global.dark += 0.06;
	alarm[0] = 1;
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
	room_goto(room_go);
	alarm[1]=1;
}