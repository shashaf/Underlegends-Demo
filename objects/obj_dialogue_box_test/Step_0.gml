
if enter_z_check() or shift_x_check() or ctrl_c_check() {
	if dialogue_current < dialogue_end {
		dialogue_current++;
	}
	else {
		dialogue_current = dialogue_start;
	}
	dialogue_length = string_length(dialogue[dialogue_current]);
	dialogue_draw = string_copy(dialogue[dialogue_current], 0, dialogue_length);
}