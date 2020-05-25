/// @description Insert description here
// You can write your code in this editor

friction = 0.1;

//Move towards player
if ( instance_exists(obj_player) && random(10) > 5 ){
	var nearest = instance_nearest(x,y,obj_player);
	var move_speed = random(1);
	var move_dir = point_direction(x,y,nearest.x,nearest.y);
	motion_add(move_dir,move_speed);	
}
else {
	var move_speed = random(2) + 2;
	motion_add(random(360),move_speed);
}
image_angle = direction;
if speed > 1.5 then speed = 1.5;