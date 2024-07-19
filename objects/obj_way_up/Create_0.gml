event_inherited();
if global.language == "rus" {
	dialogue[0] = "* Путь наверх закрыт.";
	dialogue_end = 0;
	if global.enough != 0 {
		dialogue[0] = "* Незачем возвращаться.";
		dialogue_end = 0;
	}
} 
else {
	dialogue[0] = "* The way up is blocked.";
	dialogue_end = 0;
	if global.enough != 0 {
		dialogue[0] = "* No reason to return.";
		dialogue_end = 0;
	}
}
//dialogue_end = array_length_1d(dialogue)- 1 ;

dialogue_length = string_length(dialogue[dialogue_current]);
distance_to_player = 15;