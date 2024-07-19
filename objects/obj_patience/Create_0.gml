

image_speed = 0;
can_move = false;
spd = 0;
dir = point_direction(0, 0, 0, 0);
depth = 0;
//inventorySpawned = false;

if room != rm_menu and room != rm_naming and !instance_exists(obj_gameover) and room != rm_start {
	spawnx = obj_spawn.x;
	spawny = obj_spawn.y;
}

up_sprite = spr_patience_up;
down_sprite = spr_patience_down;
left_sprite = spr_patience_left;
right_sprite = spr_patience_right;

go_back = false;

in_menu = false;
taking_item = false;
loaded = false;
in_cutscene = false;
reading = false;
in_shop = false;
//is_saving = false;



in_battle = false;
battle_trigger = false;
room_before_battle = noone;
x_before_battle = noone;
y_before_battle = y;
battle_type = 0;
previous_battle = -2;

steps_before_battle = 0;
randomize();
steps_to_battle = round(random_range(150 + global.killed * 10, 400)) + global.killed * 10;

struggle = 0;
struggle_limit = 60;
/*if global.language == "rus" {
	struggle_message = "Если вы застряли, нажмите F5";
}
else {
	struggle_message = "If you're stuck, press F5";
}*/

x_before_shaking = x;
y_before_shaking = y;
shaking = false;
timer = 0;
shake_x = 2;
shake_y = 1;

y_to_fall = -1;
spinning = false;
start_to_spin = false;
room_to_fall = rm_ruins_6;