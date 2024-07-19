/// @description Insert description here
// You can write your code in this editor
//if (global.player_lv >= 4) {
if (global.enough != 0) {
	if global.language == "rus" {
		messages[0] = "* Терпение.";
	}
	else {
		messages[0] = "* Patience.";
	}
	message_end = 0;
	message_current = 0;
	message_length = string_length(messages[message_current]);
}



