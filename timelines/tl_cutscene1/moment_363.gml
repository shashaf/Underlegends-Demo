instance_destroy(obj_cutscene1);
obj_patience.can_move = true;
obj_patience.in_cutscene = false;
//camera_set_view_speed(view_camera[0], -1, -1);
instance_destroy(obj_camera);
view_visible[0] = true;
view_visible[1] = false;
audio_stop_sound(mus_your_best_friend);