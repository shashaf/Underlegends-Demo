//переключение от верхнего ряда к кнопкам
if (current_letter < 2) {
	current_button = 0;
	current_letter = 52;
}
else if current_letter < 5 {
	current_button = 1;
	current_letter = 52;
}
else if current_letter < 7 {
	if done == true 
		current_button = 2;
	else
		current_button = 1;
	current_letter = 52;
}
//переключение между буквами
else if (current_letter < 26) {
	current_letter -= 7;
}
else if current_letter < 31 {
	current_letter -= 5;
}
else if current_letter < 33 {
	current_letter -= 12;
}
else if current_letter < 52 {
	current_letter -= 7;
}
//переключение от кнопок к буквам
else if current_button == 2 {
	current_button = -1;
	current_letter = 45;
}
else if current_button == 1 {
	current_button = -1;
	current_letter = 50;
}
else if current_button == 0 {
	current_button = -1;
	current_letter = 47;
}
