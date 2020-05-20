/// @description Insert description here
// You can write your code in this editor

image_angle = direction;

if ( check_outside_view(bbox_left,bbox_top,bbox_right,bbox_bottom,0,true,true,true,true) ){
	instance_destroy();	
}