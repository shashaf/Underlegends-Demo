/// @description Insert description here
// You can write your code in this editor
event_inherited();

enemy_max_hp = 30;
enemy_current_hp = enemy_max_hp;
enemy_at = 4;
enemy_check_df = 3; //было 5
enemy_real_df = 3;
enemy_exp = 3;
enemy_gold = 2;
can_be_spared = true;

calm_sprite = spr_froggit_head;
talking_sprite = spr_froggit_head;
if global.language == "rus" {
	enemy_name = "Жёлтый фроггит";
	act2 = "* Поговорить";
	act3 = "* Перекрасить";
	check_text = "* " + enemy_name + ". ATK - 4" + " ЗАЩ - " + string(enemy_check_df) + ".`n* На самом деле он белый, но у`n  него `yжёлтое `wпятно на спине.";
	act2_text ="* Вы сказали фроггиту, что вы рады`n  видеть его. Он ценит, что вы не`n  пощадили его моментально.";
	act3_text ="* Вы перекрасили фроггита...`n  ...зачем-то.`n* Теперь он белый.";
	dialogue_text[0] = "Если имя врага`n`yжёлтое, `bего можно`n`yпощадить`b.";
	dialogue_text[1] = "Зачем ты всё ещё`nчитаешь это? Просто`n`yпощади `bменя и`nты одержишь победу.";
	dialogue_text[2] = "`yКва`b, `yква`b.";
	if instance_exists(obj_lemike) {
		if obj_battle_manager.enemies[0] = obj_lemike { 
			image_alpha = 0;
			alarm[4] = 30;
			visible = true;
			dialogue_text[0] = "`oОранжевые `bатаки не`nзаденут тебя, если`nты двигаешься`nчерез них.";
			dialogue_text[1] = "`oОранжевые `bатаки не`nзаденут тебя, если`nты двигаешься`nчерез них.";
			dialogue_text[2] = "`oОранжевые `bатаки не`nзаденут тебя, если`nты двигаешься`nчерез них.";
		}
	}
}
else {
	enemy_name = "Yellow froggit";
	act2 = "* Talk";
	act3 = "* Recolor";
	check_text = "* " + enemy_name + ". ATK - " + string(enemy_at) + " DEF - " + string(enemy_check_df) + ".`n* It is actually white with a`n  `yyellow `wspot on its back.";
	act2_text ="* You told froggit that you were`n  glad to see it. It`s happy that`n  you didn't spare it right away.";
	act3_text ="* You have recolored the froggit...`n  ...for some reason.`n* It is white now.";
	dialogue_text[0] = "If the enemy's`nname is `yyellow`b,`nyou can `yspare`n`bthem using `yMercy`b.";
	dialogue_text[1] = "Why are you still`nreading this? Just`n`yspare `bme and you`nwill win.";
	dialogue_text[2] = "`yRibbit`b, `yribbit`b.";
	if instance_exists(obj_lemike) {
		if obj_battle_manager.enemies[0] = obj_lemike { 
			image_alpha = 0;
			alarm[4] = 1;
			visible = true;
			dialogue_text[0] = "`oOrange `battacks won't`nhit you if you are`nmoving through them.";
			dialogue_text[1] = "`oOrange `battacks won't`nhit you if you are`nmoving through them.";
			dialogue_text[2] = "`oOrange `battacks won't`nhit you if you are`nmoving through them.";
		}
	}
}
act4 = "";






