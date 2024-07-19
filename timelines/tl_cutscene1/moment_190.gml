obj_cutscene1.tl_speed = 0;
obj_flowey_cutscene.begin_dialogue = true;
if !audio_is_playing(mus_your_best_friend) {
	audio_play_sound(mus_your_best_friend, 0, 1);
}