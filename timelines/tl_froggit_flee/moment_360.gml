obj_patience.sprite_index = spr_patience_right;
obj_patience.hspeed = -2;
obj_patience.image_speed = 1;
instance_create_depth(obj_patience.x, obj_patience.y, obj_patience.depth - 9999, obj_dark_room);
obj_dark_room.alarm[0] = 1;