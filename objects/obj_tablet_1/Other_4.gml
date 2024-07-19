if global.enough != 0 {
		dialogue[0] = "* It does not matter.";
		if global.language == "rus" {
			dialogue[0] = "* Неважно.";
		}
		dialogue_end = 0;
}
dialogue_length = string_length(dialogue[dialogue_current]);