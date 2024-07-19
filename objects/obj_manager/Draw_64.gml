
// You can write your code in this editor

//draw_self();


start_x = camera_get_view_x(view_current);
start_y = camera_get_view_y(view_current);
if global.debug == true {
	draw_set_font(fnt_dialogue_rus);
	if room != rm_battle {
		start_x = camera_get_view_x(view_current) + 500;
		start_y = camera_get_view_y(view_current) + 420;
		if room == rm_reject1 or room == rm_reject2 {
			draw_set_color(c_black);
		} 
		else {
			draw_set_color(c_white);
		}
		if global.language == "rus" {
			draw_text(20, 1, "Комната - " + string(global.room_index));
			draw_text(250, 1, "Fun - " + string(global.fun));
			draw_text(20, 20, "Мышь: " + string(mouse_x) + " " + string(mouse_y));
			if instance_exists(obj_patience) {
				if instance_exists(obj_patience)
				draw_text(20,100, "R - рестарт игры\nB - начать/завершить битву\nNum 1-7 - задать тип битвы\nТекущий тип битвы - " + string(obj_patience.battle_type));
			}
		}
		else {
			draw_text(20, 1, "Room - " + string(global.room_index));
			draw_text(250, 1, "Fun - " + string(global.fun));
			draw_text(20, 20, "Mouse: " + string(mouse_x) + " " + string(mouse_y));
			if instance_exists(obj_patience) {
				if instance_exists(obj_patience)
				draw_text(20,100, "R - restart the game\nB - begin/end battle\nNum 1-7 - set battle type\nCurrent battle type - " + string(obj_patience.battle_type) + "\nF5 - teleport to spawn");
			}
		}
	}
	else {
		if global.language == "rus" {
			draw_text(obj_button_item.x + 100, obj_button_mercy.y - obj_button_mercy.sprite_height, "Мышь: " + string(mouse_x) + " " + string(mouse_y));
		}
		else {
			draw_text(obj_button_item.x + 100, obj_button_mercy.y - obj_button_mercy.sprite_height, "Mouse: " + string(mouse_x) + " " + string(mouse_y));
		}
	}
	
	
	
}
draw_set_font(fnt_exit);
if timer > 1 and timer <= 15 {
	if room == rm_reject1 or room == rm_reject2 {
		draw_set_color(c_black);
	} 
	else {
		draw_set_color(c_white);
	}
	draw_text(start_x, start_y, exit_text + ".");
}

if timer > 15 and timer <= 25 {
	if room == rm_reject1 or room == rm_reject2 {
		draw_set_color(c_black);
	} 
	else {
		draw_set_color(c_white);
	}
	draw_text(start_x, start_y, exit_text + "..");
}

if timer > 25 and timer <= 35 {
	if room == rm_reject1 or room == rm_reject2 {
		draw_set_color(c_black);
	} 
	else {
		draw_set_color(c_white);
	}
	draw_text(start_x, start_y, exit_text + "...");
}

if timer > 35 {
	if room == rm_reject1 or room == rm_reject2 {
		draw_set_color(c_black);
	} 
	else {
		draw_set_color(c_white);
	}
	draw_text(start_x, start_y, exit_text + "....");
}


