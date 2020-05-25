/// @description Draw button, text and effects
// 

draw_set_alpha(1);
draw_set_color(c_white);

var xoffset = 0;
if ( selected ){
	if ( alarm[0] < 30 ){
		outline_start(alarm[0]*.2,c_white);
	} 
	else {
		outline_start(3 - alarm[0]*.2,c_white);	
	}
	xoffset = -5;
}
else {
	xoffset = 0;
}

//Balloon button out if just selected
if ( alarm[1] < 10 && alarm[1] > 0 ){
	image_xscale -= 0.01;
} 
else if ( alarm[1] >= 10 ){
	image_xscale += 0.01;
}
else {
	image_xscale = 1;	
}

image_yscale = image_xscale;

draw_sprite_ext(sprite_index,-1,x + xoffset,y,image_xscale,image_yscale,image_angle,c_white,1);
draw_set_font(global.font_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);
draw_text_transformed(x + xoffset ,y, button_text,xscale,yscale,angle );


if ( selected ){
	outline_end();
}