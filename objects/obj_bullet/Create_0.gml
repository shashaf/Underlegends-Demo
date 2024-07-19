/// @description Insert description here
// You can write your code in this editor
speed_coeff = 1;
blue_mod = false;
default_sprite = sprite_index;
blue_sprite = noone;
disappear = false;
always_blue = false
if instance_exists(obj_battle_manager) {
	if obj_battle_manager.purple_skill == true {
		speed_coeff = 0.75;
	}
}