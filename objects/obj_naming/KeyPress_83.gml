//переключение между буквами
if (current_letter < 19) {
	current_letter += 7;
}
else if current_letter < 21 {
	current_letter += 12;
}
else if (current_letter < 26) {
	current_letter += 5;
}
else if current_letter < 45 {
	current_letter += 7;
}
//переключение от нижнего ряда букв к кнопкам
else if current_letter < 47 {
	if done == true
		current_button = 2;
	else
		current_button = 1;
	current_letter = 52;
}
else if current_button < 0 {
	if current_letter < 49 {
		current_button = 0;
		current_letter = 52;
	}
	else {
		current_button = 1;
		current_letter = 52;
	}
}
//переключение от кнопок к буквам
else if current_button == 0 {
	current_letter = 0;
	current_button = -1;
}
else if current_button == 1 {
	current_letter = 3;
	current_button = -1;
}
else if current_button == 2 {
	current_letter = 5;
	current_button = -1;
}