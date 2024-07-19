// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function load_key_items(_ids){
	for (var _i = 0; _i <= 7; _i++) {
		switch (_ids[_i]) {
			case 0:
				key_items[_i] = obj_empty_key_item;
				break;
			case 1:
				key_items[_i] = obj_ribbon;
				break;
		}
	}
	return key_items;
}