/// @description Insert description here
// You can write your code in this editor
obj_patience.can_move = false;
if (room == rm_battle or room == rm_battle_test) and global.player_hp > 0 {
	alarm[0]= 1;
}
else if obj_patience.struggle >= 60 {
	image_alpha = 0;
	alarm[1] = 1;
}
teleport_time = 60;
if instance_exists(obj_dialogue_avatar){
	instance_destroy(obj_dialogue_avatar);
}