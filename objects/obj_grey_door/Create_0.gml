event_inherited();
if global.language == "rus" {
	dialogue[0] = "* Ох!\n* Ты так близко к секрету!";
	dialogue[1] = "* Но дверь закрыта.";
}
else {
	dialogue[0] = "* Oh! You were so close to\n  the secret.";
	dialogue[1] = "* Just like this door.";
}
dialogue_end = 1;


image_speed = 0;
if (global.fun < 60 or global.fun > 69) {
	instance_destroy();
}
else if (global.fun == 66) {
	if global.language == "rus" {
		dialogue[0] = "* Вау! У тебя достаточно\n  удачи или хитрости, чтобы\n  открыть эту дверь!!";
		dialogue[1] = "* Наконец-то ты сможешь\n  увидеть, что там.";
		dialogue[2] = "";
	}
	else {
		dialogue[0] = "* Wow! You are lucky or\n  cunning enough to get the\n  door opened!!";
		dialogue[1] = "* You can finally see\n  what's there.";
		dialogue[2] = "";
	}
	dialogue_end = 2;
}

dialogue_length = string_length(dialogue[dialogue_current]);