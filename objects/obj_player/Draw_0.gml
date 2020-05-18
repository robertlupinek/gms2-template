/// @description Insert description here
// You can write your code in this editor



draw_sprite_ext(sprite_index,-1,x,y,1,1,image_angle,c_white,1);


if ( alarm[0] && random(10) > 2 ){
	draw_text(x - 5,y-20,"P" + string(p_number + 1));
}