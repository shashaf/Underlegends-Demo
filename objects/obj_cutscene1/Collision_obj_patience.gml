/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
if instance_exists(obj_music) {
	if audio_is_playing(obj_music.area_music)
		audio_stop_sound(obj_music.area_music);
}
//if obj_Patience.can_move = true {
	
//}
