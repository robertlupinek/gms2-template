/// @
// You can write your code in this editor
outline_start(3,c_white);


draw_sprite(sprite_index,-1,x,y);
draw_set_font(global.font_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);
draw_text_transformed(x,y, button_text,xscale,yscale,angle );


outline_end();