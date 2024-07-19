/// @description Insert description here
// You can write your code in this editor
paused = !paused;
if paused {
	audio_pause_sound(area_music);
}
else {
	audio_resume_sound(area_music);
}