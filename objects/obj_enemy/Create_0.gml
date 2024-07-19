
// You can write your code in this editor
visible = false;

spared = false;
can_be_spared = false;
act1 = "* Check";
if global.language == "rus" {
	act1 = "* Оценить";
}

act4_effect = "";

enemy_current_hp = 30;
target_sprite = spr_froggit_head_target;
weapon_sprite = spr_froggit_head_weapon;

dialogue_text[0] = "Default text";
dialogue_current = 0;
dialogue_previous = -1;
dialogue_end = -1;
dialogue_cutscene_end = -1;

timer = 0;
shake_x = 3;
shake_y = 1;
shaking = false;
x_before_shaking = x;
y_before_shaking = y;