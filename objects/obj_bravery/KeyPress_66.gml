/// @description _battle
// You can write your code in this editor
if global.debug == true and instance_exists(obj_enemy) {
	if battle_type == 0 {
		battle_type = choose_battle(global.room_index);
	}
	begin_end_battle();
}