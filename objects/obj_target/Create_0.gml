/// @description Insert description here
// You can write your code in this editor
randomize();
//image_index = obj_battleManager.enemies[selected_enemy].target_sprite;
hspeed = round(random_range(5, 12));
with (obj_battle_manager) {
	other.sprite_index = enemies[selected_enemy].target_sprite;
}


