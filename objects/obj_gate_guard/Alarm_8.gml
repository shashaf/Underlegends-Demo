/// @description Предсмертная катсцена 

//sprite_index = spr_lemike_battle_defeated;
//calm_sprite = spr_lemike_battle_defeated;
//talking_sprite = spr_lemike_battle_defeated_talking;
audio_stop_sound(global.battle_music);
if can_be_spared == true { //если убили одним ударом
	dialogue_current = 83;
	dialogue_cutscene_end = 89;
	dialogue_end = 89;
}
else { //если убивали постепенно
	dialogue_current = 70;
	dialogue_cutscene_end = 82;
	dialogue_end = 82;
}
alarm[7] = 90;



