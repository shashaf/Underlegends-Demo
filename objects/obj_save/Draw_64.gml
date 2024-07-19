/// @description Insert description here
// You can write your code in this editor
draw_set_font(fnt_dialogue_rus);
draw_set_color(c_white);
if can_draw == true {
	draw_sprite_ext(box_sprite, 0, 65, box_y, 1, 1, 0 ,c_white, 1);
	//if (global.player_lv < 4) {
	if (global.enough != 1) {
		draw_text_ext(80, box_y + 15, dialogue_draw, 30, 600);	
	}
	else {
		draw_text_ext_color(80, box_y + 15, dialogue_draw, 30, 600, c_red, c_red, c_red, c_red, 1);
	}
}