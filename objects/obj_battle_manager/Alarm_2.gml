/// @description Подготовка к атаке монстра
// You can write your code in this editor
//audio_play_sound(snd_hurt, 5, 0);
battle_state = "enemyPreparing";
attack_type = choose_attack(obj_patience.battle_type);
//new_border_left = 32 + 225;
//new_border_width = border_height;
enemies[0].alarm[7] = 1;
if enemies[1] != noone and enemies[0] != obj_lemike {
	enemies[1].alarm[7] = 30;
	if enemies[2] != noone {
		enemies[2].alarm[7] = 60;
	}
}
obj_soul_battle.x = new_border_left + new_border_width/2;
obj_soul_battle.y = y + border_height/2;
//alarm[3] = 150;


