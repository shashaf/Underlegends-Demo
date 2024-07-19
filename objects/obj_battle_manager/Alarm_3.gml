/// @description Ход противника
// You can write your code in this editor
//froggit_attack1(); //выбрать атаку
//if attack_type != lemike_attack_spawn_one_froggit and attack_type!= lemike_attack_spawn_two_froggits {

battle_state = "dodging";
//enemies[0].sprite_index = enemies[0].attack_sprite;
//enemies[0].image_speed = 1;
obj_soul_battle.visible = true;
obj_soul_battle.dodging = true;
if obj_patience.battle_type != 0 {
	alarm[1] = attack_time;
}
else {
	alarm[5] = attack_time;
}
if instance_exists (obj_lemike) and enemies[0] == obj_lemike {
	if instance_exists(obj_battle_dialogue) and obj_battle_dialogue.speaker == obj_lemike {
		script_execute(attack_type);
	}
}
else {
	script_execute(attack_type);
}
if instance_exists(obj_battle_dialogue) {
	instance_destroy(obj_battle_dialogue);
}


