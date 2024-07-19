// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function check_stats() {
	if (global.player_lv < 4 and global.enough != 0) {
		global.enough = 0;
	}
	else if global.player_lv >= 4 {
		global.enough = 1;
	}
	switch (global.player_lv) {
		case 1:
			if global.killed > 0 {
				global.killed = 0;
			}
			global.player_exp_to_lv = 10;
			if global.player_exp > 10 {
				global.player_exp = 0;
			}
			break;
		case 2:
			if global.killed < 1 {
				global.killed = 1;
			}
			global.player_exp_to_lv = 30;
			if global.player_exp > 30 {
				global.player_exp = 10;
			}
			break;
		case 3:
			if global.killed < 8 {
				global.killed = 8;
			}
			global.player_exp_to_lv = 70;
			if global.player_exp > 70 {
				global.player_exp = 30;
			}
			break;
		case 4:
			if global.killed < 21 {
				global.killed = 21;
			}
			global.player_exp_to_lv = 120;
			if global.player_exp > 120 {
				global.player_exp = 70;
			}
			break;
	}
	global.player_attack = (global.player_lv-1)*2;
	global.player_defence = floor(global.player_lv/4);
	global.player_max_hp = 20 + 4*(global.player_lv-1);
	
}
