/// @description move camera object
// 


mouse_dist = distance_to_point(mouse_x,mouse_y);

move_towards_point(mouse_x,mouse_y,mouse_dist*0.1);

if ( mouse_dist < 10 ){
	
	x = mouse_x;
	y = mouse_y;
}

