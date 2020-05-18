/// @description Insert description here
// You can write your code in this editor

//Stay inside the camera at all costs

var camera = view_get_camera(0);
var cx = camera_get_view_x(camera);
var cy = camera_get_view_y(camera);
var cw = camera_get_view_width(camera);
var ch = camera_get_view_height(camera);

if ( check_outside_view(bbox_left,bbox_right,bbox_top,bbox_bottom,0,true,false,false,false) ){
	x = cx;
	direction = point_direction(x,y,cx + cw /2, cy + ch /2);
	speed += 1;
}
if ( check_outside_view(bbox_left,bbox_right,bbox_top,bbox_bottom,0,false,true,false,false) ){
	x = cx + cw;
	direction = point_direction(x,y,cx + cw /2, cy + ch /2);
	speed += 1;	
}
if ( check_outside_view(bbox_left,bbox_right,bbox_top,bbox_bottom,0,false,false,true,false) ){
	y = cy;
	direction = point_direction(x,y,cx + cw /2, cy + ch /2);
	speed += 1;	
}
if ( check_outside_view(bbox_left,bbox_right,bbox_top,bbox_bottom,0,false,false,false,true) ){
	y = cy + ch;
	direction = point_direction(x,y,cx + cw /2, cy + ch /2);
	speed += 1;	
}
