if name_chosen == false {
	if current_button < 0 { //переключение между буквами
		if ((current_letter == 0) or (current_letter == 7) or (current_letter == 14) or
		((current_letter - 26) == 0) or ((current_letter - 26) == 7) or ((current_letter - 26) == 14)) {
			current_letter += 6;
		}
		else if ((current_letter == 21) or ((current_letter - 26)==21)) {
			current_letter += 4;
		}
		else {
			current_letter--;
		}
	}
	else { //переключение между кнопками
		if current_button == 0 {
			if done == true
				current_button = 2;
			else
				current_button = 1;
		}
		else
			current_button--;
	}
}
else if !instance_exists(obj_skill_choice) {
	if current_name != "" {
		yes = !yes;
		no = !no;
	}
}