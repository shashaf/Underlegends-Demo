/// @description Insert description here
// You can write your code in this editor
//hspeed = -2;
randomize();
hspeed = round(random_range(5, 12))*-1;
with (obj_battle_manager) {
	other.sprite_index = enemies[selected_enemy].weapon_sprite;
}


