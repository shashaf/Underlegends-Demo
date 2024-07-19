event_inherited();
spawned = true;
//spawned = true;
if global.language == "rus" {
	item_name = "Кость";
	item_battle_name = "Кость";
	use_text = "* Вы вооружились костью.";
	info_text = "* Кость. ATK - 1.\n* Маленькая кость для\n  любителей собак и скелетов.";
	pick_up_text = "* Вы нашли Кость.";
}
else {
	item_name = "Bone";
	item_battle_name = "Bone";
	use_text = "* You equipped the bone";
	info_text = "* Bone. ATK - 1.\n* A small bone for dog\n  and skeleton lovers.";
	pick_up_text = "* You found the Bone.";
}
item_index = 2;
item_type = 1;
weapon_attack = 1;
weapon_index = 1;
sell_cost = 0;
boned = true;

 