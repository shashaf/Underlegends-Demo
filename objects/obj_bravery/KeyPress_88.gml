/// @description Menu off
// You can write your code in this editor
if in_battle == false and in_menu = true and (instance_exists(obj_menu_soul) and obj_menu_soul.sub_menu == 0) {
		if instance_exists(obj_npc) {
			if obj_npc.in_dialogue = false {
				can_move = true;
				instance_destroy(obj_menu_soul);
				instance_destroy(obj_in_game_menu);
				in_menu = false;
			}
		}
		else {
			can_move = true;
			instance_destroy(obj_menu_soul);
			instance_destroy(obj_in_game_menu);
			in_menu = false;
		}
}