/// @description Insert description here
// You can write your code in this editor

image_speed = 0;
can_move = true;
spd = 0;
dir = point_direction(0, 0, 0, 0);
depth = 0;
//inventorySpawned = false;

if room != rm_menu and room != rm_naming and !instance_exists(obj_gameover){
	spawnx = obj_spawn.x;
	spawny = obj_spawn.y;
}

down_sprite = spr_bravery_down;
up_sprite = spr_bravery_up;
left_sprite = spr_bravery_left;
right_sprite = spr_bravery_right;


go_back = false;

in_menu = false;
taking_item = false;
loaded = false;
in_cutscene = false;
reading = false;
//is_saving = false;



in_battle = false;
battle_trigger = false;
room_before_battle = noone;
x_before_battle = noone;
y_before_battle = y;
battle_type = 0;
previous_battle = 0;

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