/// @description move camera object
// 

//Sample camera movement

if ( instance_exists(target) ) {
	x = target.x;
	y = target.y;
}


///Camera effects

//Screen shake
camera_set_view_angle(camera, 0 )
if ( alarm[0] ){
  	camera_set_view_angle(camera, 1 - random(2) );	
}