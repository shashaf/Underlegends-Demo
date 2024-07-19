/// @description Пощада
// You can write your code in this editor
image_speed = 0;
if image_alpha > 0.4 {
	image_alpha -= 0.05;
	alarm[0] = 1;
}
else {
	spared = true;		
}