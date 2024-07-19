if image_index > 15 and revolving == true {
	if obj_soul_battle.invisible == false {
		var _max_attack = obj_battle_manager.defence_power + 1;
		for (var _i = 0; _i < 3; _i++) {
			if obj_battle_manager.enemies[_i] != noone and obj_battle_manager.enemies[_i].enemy_at > _max_attack {
				_max_attack = obj_battle_manager.enemies[_i].enemy_at;
			}
		}
		var _damage = _max_attack - obj_battle_manager.defence_power;
		if obj_lemike.jamed == false {
			_damage = 0;
		}
		global.player_hp -= _damage;
		if global.player_hp <= 0 { 
			if obj_soul_battle.dead == false {
				obj_soul_battle.dead = true;
				obj_soul_battle.dodging = false;
				die();
			}
		}
		else {
			if instance_exists(obj_battle_manager) {
				obj_battle_manager.hp_bar_width_yellow = global.player_hp;
			}
			audio_play_sound(snd_hurt, 10, 0);
			obj_soul_battle.image_speed = 1;
			obj_soul_battle.invisible = true;
			obj_soul_battle.alarm[0] = 30 * global.player_armor.invisible_time;
		}
	}
}