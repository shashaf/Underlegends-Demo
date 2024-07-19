/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
blue_sprite = spr_bone_attack_blue;
disappear = false;
if x > obj_battle_manager.border_right {
	hspeed = - 3 * speed_coeff;
}
else if x < obj_battle_manager.x {
	hspeed = 3 * speed_coeff;
}
image_yscale = random_range(0.5, 1.1);
if y == obj_battle_manager.y {
	y += sprite_height;
}
current_y = y;
