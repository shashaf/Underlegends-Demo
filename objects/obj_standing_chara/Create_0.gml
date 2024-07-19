/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
dialogue[0] = "* This appears to be someone's\n  rejected sprite.";
dialogue[1] = "* Looks familiar.";
dialogue[2] = "* You can stand on its head.";
dialogue[3] = "* Perhaps it became rejected\n  because of this.";
if global.language == "rus" {
	dialogue[0] = "* Кажется, это чей-то\n  отвергнутый спрайт.";
	dialogue[1] = "* Выглядит знакомо.";
	dialogue[2] = "* На его голове можно\n  постоять.";
	dialogue[3] = "* Возможно, отвергли из-за\n  этого.";
}
//dialogue_end = array_length_1d(dialogue)- 1 ;
dialogue_end = 3;
dialogue_length = string_length(dialogue[dialogue_current]);
box_sprite = spr_dialogue_box2_yellow;