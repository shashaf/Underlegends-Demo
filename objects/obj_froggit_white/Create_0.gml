/// @description Insert description here
// You can write your code in this editor
event_inherited();


enemy_max_hp = 30;
enemy_current_hp = enemy_max_hp;
enemy_at = 9;
enemy_check_df = 3; //было 5
enemy_real_df = 3;
enemy_exp = 3;
enemy_gold = 2;
can_be_spared = false;

calm_sprite = spr_froggit_head;
talking_sprite = spr_froggit_head;
if global.language == "rus" {
	enemy_name = "Белый фроггит";
	act2 = "* Комплимент";
	act3 = "* Угрожать";
	check_text = "* " + enemy_name + ". ATK - 4" + " ЗАЩ - " + string(enemy_check_df) + ".`n* Жизнь сложна для этого врага.";
	act2_text = "* Фроггит не понял, что`n  вы сказали ему, но всё равно`n  был польщён.";
	act3_text = "* Фроггит не понял, что`n  вы сказали ему, но всё равно`n  был напуган.";
	dialogue_text[0] = "Если ты `yдействуешь `b`nособым образом,`nты можешь завершить`nбитву `yпощадой`b.";
	dialogue_text[1] = "Если ты `rатакуешь`n`bмонстров, то при`nмалом ОЗ, их можно`n`yпощадить`b.";
	dialogue_text[2] = "`bКва, ква.";
	if instance_exists(obj_lemike) {
		if obj_battle_manager.enemies[0] = obj_lemike { 
			image_alpha = 0;
			alarm[4] = 1;
			visible = true;
			dialogue_text[0] = "`lСиние `bатаки не`nзаденут тебя,`nесли ты`nне двигаешься.";
			dialogue_text[1] = "`lСиние `bатаки не`nзаденут тебя,`nесли ты`nне двигаешься.";
			dialogue_text[2] = "`lСиние `bатаки не`nзаденут тебя,`nесли ты`nне двигаешься.";
		}
	}
}
else {
	enemy_name = "White froggit";
	act2 = "* Compliment";
	act3 = "* Threat";
	check_text = "* " + enemy_name + ". ATK - " + string(enemy_at) + " DEF - " + string(enemy_check_df) + ".`n* Life is difficult for this enemy.";
	act2_text = "* Froggit didn't understand`n  what you said, but was`n  flattered anyway.";
	act3_text = "* Froggit didn't understand`n  what you said, but was`n  scared anyway.";

	dialogue_text[0] = "You can `yact `bin`na special way`nto end the battle`nwith `yMercy`b.";
	dialogue_text[1] = "You can `rattack`n`bmonsters and when`nthey have low HP`nyou can `yspare `bthem.";
	dialogue_text[2] = "Ribbit, ribbit.";
	if instance_exists(obj_lemike) {
		if obj_battle_manager.enemies[0] = obj_lemike { 
			image_alpha = 0;
			alarm[4] = 1;
			visible = true;
			dialogue_text[0] = "`lBlue `battacks won't`nhit you if you are`nnot moving.";
			dialogue_text[1] = "`lBlue `battacks won't`nhit you if you are`nnot moving.";
			dialogue_text[2] = "`lBlue `battacks won't`nhit you if you are`nnot moving.";
		}
	}
}




act4 = "";
act4_text = "";

