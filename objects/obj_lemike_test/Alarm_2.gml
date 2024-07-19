/// @description Действие 3
// You can write your code in this editor
if act3 == "* Музыка" or act3 == "* Music" {
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
	if global.language == "rus" {
		act2_text = "* Вы похвалили собственные`n  атаки Лемике. Она ухмыльнулась.`n* Её АТАКА повышена.";
		act3_text = "* You reminded that 3 people`n  worked on Lemike's design.`n* She was embarrassed again.";
	}
	//obj_battleManager.alarm[2] = 150;
}
