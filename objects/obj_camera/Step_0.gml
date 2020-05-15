/// @description move camera object
// 

//Sample camera movement

mouse_dist = distance_to_point(mouse_x,mouse_y);

move_towards_point(mouse_x,mouse_y,mouse_dist*0.1);

if ( mouse_dist < 10 ){
	
	x = mouse_x;
	y = mouse_y;
}

///Camera effects

//Screen shake
camera_set_view_angle(camera, 0 )
if ( alarm[0] ){
  	camera_set_view_angle(camera, 1 - random(2) );	
}