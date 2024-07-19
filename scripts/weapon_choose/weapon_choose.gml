// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function weapon_choose(_weapon_index) {
	switch (_weapon_index) {
		case 0:
			weapon = obj_hand;
			break;
		case 1:
			weapon = obj_bone;
			break;
		case 2:
			weapon = obj_toy_knife;
			break;
		case 3:
			weapon = obj_tough_glove;
			break;
		default:
			weapon = obj_hand;
			break;
	}
	return weapon;
}