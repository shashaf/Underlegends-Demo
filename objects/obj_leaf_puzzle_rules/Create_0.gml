event_inherited();
if global.language == "rus" {
	dialogue[0] = "* Пожалуйста, не наступайте\n  на листья.";
	dialogue_end = 0;
} 
else {
	dialogue[0] = "* Please don't step on the\n  leaves.";
	dialogue_end = 0;
}
//dialogue_end = array_length_1d(dialogue)- 1 ;

dialogue_length = string_length(dialogue[dialogue_current]);
distance_to_player = 15;