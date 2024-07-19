/// @description Заполнение
// You can write your code in this editor
if image_alpha < 1 {
	image_alpha += 0.01;
	alarm[0] = 1;
	text_alpha += 0.01;
}
else if rejected == false {
	alarm[1] = 60;
}
else {
	//alarm[2] = 60;
}