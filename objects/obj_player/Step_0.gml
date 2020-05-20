/// @description Insert description here
// You can write your code in this editor

my_pad = global.p_pad[p_number];

image_speed = 0;


//Motion 
if ( global.pad_up[my_pad] ){
	move_dir = 90;
	motion_add(move_dir,move_speed);
	image_speed = 0.5;
}
if ( global.pad_right[my_pad] ){
	move_dir = 0;
	motion_add(move_dir,move_speed);
	image_speed = 0.5;
}
if ( global.pad_down[my_pad] ){
	move_dir = 270;
	motion_add(move_dir,move_speed);
	image_speed = 0.5;
}
if ( global.pad_left[my_pad] ){
	move_dir = 180;
	motion_add(move_dir,move_speed);
	image_speed = 0.5;
}

//Shooting

if ( global.pad_b1[my_pad] && alarm[1] <= 0 ){
	var my_b = instance_create_layer(x+lengthdir_x(20,direction),y+lengthdir_y(20,direction),"Instances",obj_player_bullet);
	my_b.direction = direction;
	my_b.speed = 4;
	my_b.friction = -0.2;
	my_b.image_angle = image_angle;
	alarm[1] = 20;
	//Screen shake
	with(obj_camera){
		alarm[0] = 5;
	}
}

if image_speed = 0 then image_index = 0;

image_angle = direction;
friction = 0.1;
if ( speed > max_speed ){
	speed = max_speed;	
}