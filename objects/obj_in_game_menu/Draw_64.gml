/// @description Insert description here
// You can write your code in this editor
//draw_self();
draw_set_font(fnt_in_game_menu_name);
draw_set_color(c_white);
draw_text(44, name_y, global.human_1_name);
draw_set_font(fnt_in_game_menu);
draw_set_color(c_white);
//draw_text(80, stat_y, string(global.player_lv) + "\n" + string(global.player_hp) + " / " + string(global.player_max_hp) + "\n" + string(global.player_gold));
draw_text(80, stat_y, string(global.player_lv) + "\n" + string(global.player_hp) + " / " + string(global.player_max_hp) + "\n" + string(global.player_gold));