/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
if global.language == "rus" {
	dialogue[0] = "* Вместе они спустят Ангела.";
	dialogue[1] = "* Вместе они освободят нас.";
	dialogue_end = 1;
} 
else {
	dialogue[0] = "* Please don't step on the\n  leaves.";
	dialogue_end = 0;
}
//dialogue_end = array_length_1d(dialogue)- 1 ;

dialogue_length = string_length(dialogue[dialogue_current]);
distance_to_player = 15;
