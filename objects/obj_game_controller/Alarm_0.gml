/// @description Create the room transition in
//
//Start to transition effects
var transition = instance_create_depth(x,y,-100000, obj_room_transition);
transition.alarm[1] = 60;
transition.image_alpha = 1;