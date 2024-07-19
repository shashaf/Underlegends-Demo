if global.language == "rus" {
	sprite_index = spr_credits_rus;
}
image_speed = 0;
image_index = 0;
obj_patience.in_cutscene = true;
obj_patience.can_move = false;
audio_play_sound(mus_sheriff_credits, 10, 1);

alarm[0] = 150;




