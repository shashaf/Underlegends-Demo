/// @description Insert description here
// You can write your code in this editor
randomise();

path = choose(tumbleweed_fly1, tumbleweed_fly2, tumbleweed_fly3)
if x < obj_soul_battle.x {
	path = choose(tumbleweed_fly1_right, tumbleweed_fly2_right, tumbleweed_fly3_right)
}
spd = random_range(6, 8);
path_start(path, spd, path_action_continue, 0);






