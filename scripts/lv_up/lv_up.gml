// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function lv_up(){
	
	//audio_play_sound(snd_levelup, 10, 0);
	global.player_lv++;
	global.player_max_hp += 4;
	global.player_hp = global.player_max_hp;
	if instance_exists(obj_battle_manager) {
		obj_battle_manager.hp_bar_width_yellow = global.player_hp;
		obj_battle_manager.hp_bar_width_red = global.player_max_hp; 
	}
	global.player_attack = (global.player_lv-1)*2;
	global.player_defence = floor(global.player_lv/4);
	switch (global.player_lv) {
		case 2:
			global.player_exp_to_lv = 30;
			break;
		case 3:
			global.player_exp_to_lv = 70;
			break;
		case 4:
			global.player_exp_to_lv = 120;
			audio_stop_sound(obj_music.area_music);
			obj_music.area_music = muz;
			global.enough = 1;
			ini_open("save.ini");
			ini_write_real("PlayerStats", "Enough", global.enough);
			ini_close();
			global.froggit_talked = 0;
			global.flowey_talked = 0;
			global.stranger_talked = 0;
			break;
		case 5:
			global.player_exp_to_lv = 200;
			break;
		case 6:
			global.player_exp_to_lv = 300;
			break;
		case 7:
			global.player_exp_to_lv = 500;
			break;
		case 8:
			global.player_exp_to_lv = 800;
			break;
		case 9:
			global.player_exp_to_lv = 1200;
			break;
		case 10:
			global.player_exp_to_lv = 1700;
			break;
		case 11:
			global.player_exp_to_lv = 2500;
			break;
		case 12:
			global.player_exp_to_lv = 3500;
			break;
		case 14:
			global.player_exp_to_lv = 5000;
			break;
		case 15:
			global.player_exp_to_lv = 10000;
			break;
		case 16:
			global.player_exp_to_lv = 15000;
			break;
		case 17:
			global.player_exp_to_lv = 25000;
			break;
		case 18:
			global.player_exp_to_lv = 50000;
			break;
	}
}