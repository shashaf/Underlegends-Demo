/// @description Insert description here
// You can write your code in this editor





// Inherit the parent event
event_inherited();

if characters >= dialogue_length and dialogue_current == dialogue_end and broken == false {
	if enter_z_check() or ctrl_c_hold_check() {
		
		audio_play_sound(mus_remix, 5, 0);
		in_dialogue = false;
		obj_patience.can_move = true;
		obj_patience.reading = false;
		dialogue_current = dialogue_start;
		dialogue_draw = "";
		increase = default_increase;
		characters = 0;
		next_m = false;
		//ok = false;
		text = 0;
		pause = false;
		broken = true;
		dialogue_voice = snd_text2;
		if global.language == "rus" {
			dialogue[0] = "* Телефон больше не работает."
		}
		else {
			dialogue[0] = "* The phone doesn't work\n  anymore."
		}
		dialogue_end = 0;
		dialogue_length = string_length(dialogue[dialogue_current]);
		need_buffer = true;
		
	}
} 

