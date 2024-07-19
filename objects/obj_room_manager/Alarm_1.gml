/// @description Осветление
// You can write your code in this editor
if global.dark == 1 {
	room_goto(room_go);
}
if global.dark > 0 {
	global.dark -= 0.06;
	if instance_exists(obj_patience) {
		if obj_patience.image_alpha <= 1 {
			if obj_patience.visible == false and room != rm_castle_shop
				obj_patience.visible = true;
			obj_patience.image_alpha +=0.05;
			
		}
		else
			obj_patience.image_alpha = 1;
	}
	if instance_exists(obj_npc) {
		if obj_npc.image_alpha <= 1
				obj_npc.image_alpha += 0.05;
	}
	alarm[1] = 1;
}