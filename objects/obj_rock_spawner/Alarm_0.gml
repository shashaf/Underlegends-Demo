instance_create_depth(random_range(min_x, max_x), -50, obj_patience.depth+5, obj_rock);
if global.rock_y > 0 and audio_is_playing(snd_stone_avalanche){
	alarm[0] = 5;
}