
//obj_Patience.can_move = true;
obj_patience.in_cutscene = false;
global.lemike = 3;
audio_sound_gain(mus_sheriff_prebattle, 0, 1000);
ini_open("save.ini");
ini_write_real("NPC", "Lemike", global.lemike);	
ini_close();