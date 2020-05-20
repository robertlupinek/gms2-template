/// @description Ensure player does not go outside of view
// You can write your code in this editor

//Stay inside the camera at all costs

var camera = view_get_camera(0);
var cx = camera_get_view_x(camera);
var cy = camera_get_view_y(camera);
var cw = camera_get_view_width(camera);
var ch = camera_get_view_height(camera);

if ( check_outside_view(bbox_left,bbox_top,bbox_right,bbox_bottom,0,true,false,false,false) ){
	x = cx + ( x - bbox_left);
}

if ( check_outside_view(bbox_left,bbox_top,bbox_right,bbox_bottom,0,false,true,false,false) ){
	y = cy + ( y - bbox_top );	
}
if ( check_outside_view(bbox_left,bbox_top,bbox_right,bbox_bottom,0,false,false,true,false) ){
	x = cx + cw - ( bbox_right - x );	
}
if ( check_outside_view(bbox_left,bbox_top,bbox_right,bbox_bottom,0,false,false,false,true) ){
	y = cy + ch - ( bbox_bottom - y );	
}
