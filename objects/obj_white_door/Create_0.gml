event_inherited();
if global.language == "rus" {
	dialogue[0] = "* Вы заметили странную\n  белую дверь.";
	dialogue[1] = "* Приблизившись, вы\n  почувствовали что-то\n  непонятное.";
	dialogue[2] = "* Вы потянули ручку и...";
}
else {
	dialogue[0] = "* You've noticed a strange \n  white door.";
	dialogue[1] = "* As you approached, you felt\n  something incomprehensible.";
	dialogue[2] = "* You pulled the door handle\n  and...";
}
dialogue[3] = "";
dialogue_end = 3;


image_speed = 0;
if (global.fun != 24) {
	instance_destroy();
}


dialogue_length = string_length(dialogue[dialogue_current]);