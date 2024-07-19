/// @description Insert description here
// You can write your code in this editor





// Inherit the parent event
event_inherited();

if (global.fun == 66) and dialogue_current == dialogue_end {
	if enter_z_check() {
		audio_play_sound(snd_door_open, 5, 0);
		image_index = 1;
		room_goto_dark(rm_66);
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
		dialogue_length = string_length(dialogue[dialogue_current]);
		need_buffer = true;
	}
} 