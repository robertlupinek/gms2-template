/// @description move camera object
// 

//Move camera

//Centers camera for multiple players

center_camera(obj_player,id);

///Camera effects

//Screen shake
camera_set_view_angle(camera, 0 )
if ( alarm[0] ){
  	camera_set_view_angle(camera, 1 - random(2) );	
}