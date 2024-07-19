/// @description Медленное затухание комнаты до 0.9

if image_alpha < 0.9 {
	image_alpha += 0.005;
	alarm[0] = 1;
}