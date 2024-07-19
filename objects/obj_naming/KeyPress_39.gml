
if name_chosen == false {
	if current_button < 0 { //переключение между буквами
		if ((current_letter == 6) or (current_letter == 13) or (current_letter == 20) or
		((current_letter - 26) == 6) or ((current_letter - 26) == 13) or ((current_letter - 26) == 20)) {
			current_letter -= 6;
		}
		else if ((current_letter == 25) or ((current_letter - 26)==25)){
			current_letter -= 4;
		}
		else {
			current_letter++;
		}
	}
	else { //переключение между кнопками
		if current_button == 2
			current_button = 0;
		else if current_button == 1 and done == false
			current_button = 0;
		else
			current_button++;
	}
}
else if !instance_exists(obj_skill_choice) {
	if current_name != "" {
		yes = !yes;
		no = !no;
	}
}