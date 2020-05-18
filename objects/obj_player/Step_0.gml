/// @description Insert description here
// You can write your code in this editor

my_pad = global.p_pad[p_number];

if ( global.pad_up[my_pad] ){
	move_dir = 90;
	motion_add(move_dir,move_speed);
}
if ( global.pad_right[my_pad] ){
	move_dir = 0;
	motion_add(move_dir,move_speed);
}
if ( global.pad_down[my_pad] ){
	move_dir = 270;
	motion_add(move_dir,move_speed);
}
if ( global.pad_left[my_pad] ){
	move_dir = 180;
	motion_add(move_dir,move_speed);
}




image_angle = direction;
friction = 0.1;
if ( speed > max_speed ){
	speed = max_speed;	
}