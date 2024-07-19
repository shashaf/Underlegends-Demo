/// @description Затухание
// You can write your code in this editor
if image_alpha > 0 {
	image_alpha -= 0.05;
	alarm[1] = 1;
}
else {
	if blinks < 1 {
		alarm[0] = 30;
	}
	obj_dark_room.alarm[1] = 30;
}