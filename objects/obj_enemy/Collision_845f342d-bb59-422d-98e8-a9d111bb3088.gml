/// @description Insert description here
// You can write your code in this editor

with(obj_camera){
	alarm[0] = 5;
}

repeat(30){
	instance_create_layer(x+random(30)-random(30),y+random(30)-random(30),"Instances",obj_paricle_a);	
}
with(other){
	
	instance_destroy();	
	
}

dice_sprite(sprite_index,16,x - sprite_xoffset,y - sprite_yoffset,bbox_bottom,0);
instance_destroy();

