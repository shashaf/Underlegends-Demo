if global.language == "rus" {
	intro_message[0] = "   В наши дни на земле\n   мирно живут две расы:\n   МОНСТРЫ и ЛЮДИ."
	intro_message[1] = "Но так было не всегда..."
	intro_message[2] = "Давным давно люди объявили\nбезжалостную войну и запечатали\nмонстров под землёй."
	//intro_message[2] = "Давным давно судьба разделила\nих, и монстры оказались\nзапечатаны под землёй."
	intro_message[3] = "Много-много лет сильное\nмагическое заклятие отделяло\nдве расы друг от друга."
	intro_message[4] = "Монстры находились под землёй,\nлюди проживали жизни\nна поверхности."
	intro_message[5] = " С тех пор и до наших дней\n рассказывают легенды\n о ВОСЬМИ УПАВШИХ ЛЮДЯХ."
	intro_message[6] = "Легенды о людях с поверхности,\nоказавшихся запертыми\nв мире монстров."
	intro_message[7] = "   Одну из таких вы\n   сейчас и услышите..."
	intro_message[8] = "                                      ";
	intro_message[9] = "                                      ";
}
else {
	x = 160;
	intro_message[0] = "Nowadays, two races\npeacefully live on Earth:\nMONSTERS and HUMANS.";
	intro_message[1] = "But it was not always like this.";
	intro_message[2] = "Long ago, humans declared\na merciless war and sealed\nthe monsters underground.";
	intro_message[3] = "For many, many years, a powerful\nmagical spell separated the\ntwo races from each other.";
	intro_message[4] = "Monsters remained UNDEGROUND\nwhile humans lived their lives\non THE SURFACE.";
	intro_message[5] = "Since then, and up to our days,\nlegends have been told about\nthe EIGHT FALLEN HUMANS.";
	intro_message[6] = "Legends of humans from the surface\nwho found themselves trapped\nin the world of monsters."
	intro_message[7] = "One such legend you are\nabout to hear now. . ."
	intro_message[8] = "                                      ";
	intro_message[9] = "                                      ";
}
message_current = 0;
message_end = 9;
message_draw = "";
increase = 0.5;
characters = 0;

message_length = string_length(intro_message[message_current]);

next_m = false;
ok = false;
text = 0;
need_title = true;