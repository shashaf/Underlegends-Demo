/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
dialogue[0] = "* Rejected spell button.";
dialogue[1] = "* Hmm, magic...";
dialogue[2] = "* It would be great to be able\n  to use it.";
if global.language == "rus" {
	dialogue[0] = "* Отвергнутая кнопка\n  заклинаний.";
	dialogue[1] = "* Хм, магия...";
	dialogue[2] = "* Было бы здорово уметь\n  пользоваться ей.";
}
//dialogue_end = array_length_1d(dialogue)- 1 ;
dialogue_end = 2;
dialogue_length = string_length(dialogue[dialogue_current]);
box_sprite = spr_dialogue_box2_yellow;