/// @description Затухание комнаты до 0.9

if image_alpha < 0.9 {
	image_alpha += 0.05;
	alarm[2] = 1;
}