event_inherited();
image_index = 0;
image_speed = 0;

if global.fun < 90 or global.fun > 100 {
	instance_destroy();
}

dialogue_font = fnt_dialogue_rus;
dialogue_sprite = spr_froggit_dialogue;
dialogue_voice = snd_text2;