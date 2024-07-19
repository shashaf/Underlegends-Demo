/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_dialogue_avatar) {
	if global.letter != "z" {
		switch (dialogue_current) {
			case 4:
				dialogue_sprite = spr_flowey_evil;
				dialogue_voice = snd_flowey_evil_voice;
				obj_dialogue_avatar.sprite_index = dialogue_sprite;
				audio_sound_pitch(mus_your_best_friend, 0.95);
				break;
			case 5:
				dialogue_sprite = spr_flowey_evil;
				dialogue_voice = snd_flowey_evil_voice;
				obj_dialogue_avatar.sprite_index = dialogue_sprite;
				break;
			case 6:
				dialogue_sprite = spr_flowey_evil;
				dialogue_voice = snd_flowey_evil_voice;
				obj_dialogue_avatar.sprite_index = dialogue_sprite;
				break;
			case 7:
				dialogue_sprite = spr_flowey_evil;
				dialogue_voice = snd_flowey_evil_voice;
				obj_dialogue_avatar.sprite_index = dialogue_sprite;
				break;
			case 8:
				dialogue_sprite = spr_flowey_evil;
				dialogue_voice = snd_flowey_evil_voice;
				obj_dialogue_avatar.sprite_index = dialogue_sprite;
				break;
			case 17:
				dialogue_sprite = spr_flowey_evil;
				dialogue_voice = snd_flowey_evil_voice;
				obj_dialogue_avatar.sprite_index = dialogue_sprite;
				audio_sound_pitch(mus_your_best_friend, 0.90);
				break;
			case 18:
				dialogue_sprite = spr_flowey_wink;
				dialogue_voice = snd_flowey_voice;
				obj_dialogue_avatar.sprite_index = dialogue_sprite;
				break;
			case 19:
				dialogue_sprite = spr_flowey_wink;
				dialogue_voice = snd_flowey_voice;
				obj_dialogue_avatar.sprite_index = dialogue_sprite;
				break;
			case 20:
				dialogue_sprite = spr_flowey_evil;
				dialogue_voice = snd_flowey_evil_voice;
				obj_dialogue_avatar.sprite_index = dialogue_sprite;
				audio_sound_pitch(mus_your_best_friend, 0.85);
				break;
			case 29:
				dialogue_sprite = spr_flowey_wink;
				obj_dialogue_avatar.sprite_index = dialogue_sprite;
				break;
			default:
				dialogue_sprite = spr_flowey_dialogue3;
				dialogue_voice = snd_flowey_voice;
				obj_dialogue_avatar.sprite_index = dialogue_sprite;
				break;
		}
	}
	else {
		switch(dialogue_current) {
			case 12:
				dialogue_sprite = spr_flowey_wink;
				obj_dialogue_avatar.sprite_index = dialogue_sprite;
				break;
		}
	}
}


if image_index == 7 {
	image_speed = 0;
	//sprite_index = spr_flowey_talking;
}
else {
	image_speed = 1;
}


if change_spr == true {
	change_spr = false;
	//audio_play_sound(snd_hurt, 10, 0);
	sprite_index = spr_flowey_sink;
	image_index = 0;
	image_speed = 1;
}

event_inherited();