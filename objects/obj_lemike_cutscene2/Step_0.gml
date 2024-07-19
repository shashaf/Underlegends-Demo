/// @description Insert description here
// You can write your code in this editor

if instance_exists(obj_dialogue_avatar) {
	switch (dialogue_current) {
		case 2:
			dialogue_sprite = spr_lemike_dialogue_happy1;
			obj_dialogue_avatar.sprite_index = dialogue_sprite;
			break;
		case 3:
			dialogue_sprite = spr_lemike_dialogue_sad1;
			obj_dialogue_avatar.sprite_index = dialogue_sprite;
			break;
		case 12:
			dialogue_sprite = spr_lemike_dialogue_sad1;
			obj_dialogue_avatar.sprite_index = dialogue_sprite;
			break;
		case 13:
			dialogue_sprite = spr_lemike_dialogue_sad1;
			obj_dialogue_avatar.sprite_index = dialogue_sprite;
			break;
		case 16:
			dialogue_sprite = spr_lemike_dialogue_sad2;
			obj_dialogue_avatar.sprite_index = dialogue_sprite;
			break;
		case 19:
			dialogue_sprite = spr_lemike_dialogue_serious;
			obj_dialogue_avatar.sprite_index = dialogue_sprite;
			break;
		case 20:
			dialogue_sprite = spr_lemike_dialogue_serious;
			obj_dialogue_avatar.sprite_index = dialogue_sprite;
			break;
		case 21:
			dialogue_sprite = spr_lemike_dialogue_serious;
			obj_dialogue_avatar.sprite_index = dialogue_sprite;
			break;
		case 22:
			dialogue_sprite = spr_lemike_dialogue_serious;
			obj_dialogue_avatar.sprite_index = dialogue_sprite;
			break;
		case 23:
			dialogue_sprite = spr_lemike_dialogue_sad1;
			obj_dialogue_avatar.sprite_index = dialogue_sprite;
			break;
		case 24:
			dialogue_sprite = spr_lemike_dialogue_sad1;
			obj_dialogue_avatar.sprite_index = dialogue_sprite;
			break;
		case 28:
			dialogue_sprite = spr_lemike_dialogue_serious;
			obj_dialogue_avatar.sprite_index = dialogue_sprite;
			break;
		case 29:
			dialogue_sprite = spr_lemike_dialogue_serious;
			obj_dialogue_avatar.sprite_index = dialogue_sprite;
			break;
		case 30:
			dialogue_sprite = spr_lemike_dialogue_serious;
			obj_dialogue_avatar.sprite_index = dialogue_sprite;
			break;
		default:
			if !instance_exists(obj_cell_action) {
				dialogue_sprite = spr_lemike_dialogue;
				obj_dialogue_avatar.sprite_index = dialogue_sprite;
			}
			break;
	} 
} 






// Inherit the parent event
event_inherited();

