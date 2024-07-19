/// @description Проявление
// You can write your code in this editor
if image_alpha < 1 {
	image_alpha+= 0.05;
	alarm[0] = 1;
}
else {
	//if blinks < 3 {
		blinks++;
		alarm[1] = 30;
	//}
}