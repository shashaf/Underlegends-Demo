/// @description Действие 3
// You can write your code in this editor
/*if act3 == "* Музыка" or act3 == "* Music"{
	//obj_battleManager.alarm[2] = 150;
}
else {
	if enemy_at == 11 {
		enemy_at = 10;
	}
	else {
		enemy_at = 9;
	}
	enemy_real_df = 1;
	act2_text = "* You praised Lemike's`n  own attacks. She smirked.`n* Her ATTACK increased.";
	act3_text = "* You reminded that 3 people`n  worked on Lemike's design.`n* She was embarrassed again."
	if global.language == "rus" {
		act2_text = "* Вы похвалили собственные`n  атаки Лемике. Она ухмыльнулась.`n* Её АТАКА повышена.";
		act3_text = "* Вы напомнили, что над дизайном`n  Лемике работало 3 человека.`n* Она снова смутилась.";
	}
	//obj_battleManager.alarm[2] = 150;
}*/
if act_count == 0 {
	dialogue_current = 19;
	dialogue_end = 31;
}
else if act_count == 1 {
	dialogue_current = 35;
	dialogue_end = 39;
}
else {
	dialogue_current = 35;
	dialogue_end = 40;
}
act_count++;

