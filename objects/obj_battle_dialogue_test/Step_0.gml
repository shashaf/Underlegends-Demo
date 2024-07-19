
if enter_z_check() or shift_x_check() or ctrl_c_check() {
	if dialogue_current < dialogue_end {
		dialogue_current++;
	}
	else {
		dialogue_current = dialogue_start;
	}
	text_length = string_length(dialogue_text[dialogue_current]);
	text = string_copy(dialogue_text[dialogue_current], 0, text_length);
}