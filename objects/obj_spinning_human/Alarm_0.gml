/// @description Insert description here
// You can write your code in this editor
switch (sprite_index) {
	case spr_patience_down:
		sprite_index = spr_patience_left;
		break;
	case spr_patience_left:
		sprite_index = spr_patience_up;
		break;
	case spr_patience_up:
		sprite_index = spr_patience_right;
		break;
	case spr_patience_right:
		sprite_index = spr_patience_down;
		break;
	case spr_bravery_down:
		sprite_index = spr_bravery_left;
		break;
	case spr_bravery_left:
		sprite_index = spr_bravery_up;
		break;
	case spr_bravery_up:
		sprite_index = spr_bravery_right;
		break;
	case spr_bravery_right:
		sprite_index = spr_bravery_down;
		break;
}
alarm[0] = 60;