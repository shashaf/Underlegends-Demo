// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function armor_choose(_armor_index) {
	switch (_armor_index) {
		case 1:
			armor = obj_bandage_armor;
			break;
		case 2:
			armor = obj_bone_bracelet;
			break;
		case 3:
			armor = obj_bandanna;
			break;
		default:
			armor = obj_bandage_armor;
			break;
	}
	return armor;
}