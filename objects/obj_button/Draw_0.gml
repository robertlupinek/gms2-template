/// @
// You can write your code in this editor

if ( selected ){
	if ( alarm[0] < 30 ){
		outline_start(alarm[0]*.2,c_white);
	} 
	else {
		outline_start(3 - alarm[0]*.2,c_white);	
	}
}


draw_sprite(sprite_index,-1,x,y);
draw_set_font(global.font_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);
draw_text_transformed(x,y, button_text,xscale,yscale,angle );


if ( selected ){
	outline_end();
}