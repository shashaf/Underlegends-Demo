// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function load_inventory(_ids){
	for (var _i = 0; _i <= 7; _i++) {
		switch (_ids[_i]) {
			case 0:
				items[_i] = obj_empty_item;
				break;
			case 1:
				items[_i] = obj_bandage_armor;
				break;
			case 2:
				items[_i] = obj_bone;
				break;
			case 3:
				items[_i] = obj_bone_bracelet;
				break;
			case 4:
				items[_i] = obj_bone_knife;
				break;
			case 5:
				items[_i] = obj_bandage_heal;
				break;
			case 6:
				items[_i] = obj_monster_candy;
				break;
			case 7:
				items[_i] = obj_tough_glove;
				break;
			case 8:
				items[_i] = obj_bandanna
				break;
			case 9:
				items[_i] = obj_bisicle;
				break;
			case 10:
				items[_i] = obj_spaghetti;
				break;
			case 15:
				items[_i] = obj_candy;
				break;
		}
		//items[_i].taken = true;
	}
	return items;
}
