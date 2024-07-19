/// @description Insert description here
// You can write your code in this editor

if obj_soul_battle_test.invisible == false and blue_mod == false or (blue_mod == true and obj_soul_battle_test.spd != 0) {
	/*var _max_attack = obj_attack_test.defence_power + 1;
	for (var _i = 0; _i < 3; _i++) {
		if .enemies[_i] != noone and obj_attack_test.enemies[_i].enemy_at > _max_attack {
			_max_attack = obj_attack_test.enemies[_i].enemy_at;
		}
	}
	var _damage = _max_attack - obj_attack_test.defence_power;
	if instance_exists(obj_lemike) and obj_lemike.jamed == false {
		_damage = 0;
	}
	global.player_hp -= _damage;
	if global.player_hp <= 0 { 
		if obj_soul_battle.dead == false {
			obj_soul_battle.dead = true;
			obj_soul_battle.dodging = false;
			while (instance_exists(obj_bullet)) {
				instance_destroy(obj_bullet);
			}
			die();
		}
	}
	else {
		if instance_exists(obj_attack_test) {
			obj_attack_test.hp_bar_width_yellow = global.player_hp;
		}
		audio_play_sound(snd_hurt, 10, 0);*/
		obj_soul_battle_test.image_speed = 1;
		obj_soul_battle_test.invisible = true;
		obj_soul_battle_test.alarm[0] = 30 *3;
		instance_destroy();
}
//}













