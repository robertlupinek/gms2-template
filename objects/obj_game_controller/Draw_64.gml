/// @description draw without the zoom
// 
draw_set_alpha(1);
draw_set_color(c_white);
//global.camera_zoom

var p_text = "";
var p_x = 0;
var p_y = 0;
var hp = 0;
var max_hp = 0;


//Loop through all possible players
for ( var p = 0; p < 4; p++; ){	
	
	//Set default location for play stats on screen
	if ( p == 0 ){
		p_x = 10;
		p_y = 10;
	}
	if ( p == 1 ){
		p_x = 600;
		p_y = 10;
	}
	if ( p == 2 ){
		p_x = 10;
		p_y = 480;
	}
	if ( p == 3 ){
		p_x = 600;
		p_y = 480;
	}
	draw_set_font(global.font_blue);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	//IF player has not joined, show join instructions
	//else draw hud for player that has joined
	if ( array_length_1d(global.p_pad)  <= p ){
		p_text = "P" + string(p + 1) + "\nPress X"
	}
	else {
		p_text = "P" + string(p + 1);
		//Get any stats that are assigned to player object
		for (var i = 0; i < instance_number(obj_player); ++i;){
			var target = instance_find(obj_player,i);
			if ( target.p_number == p ){
				max_hp = target.max_hp;
				hp = target.hp;
			}
		}
		//Draw hp stats player object
		//Max health
		for ( var h = 0; h < max_hp; h++){
			draw_sprite_ext(spr_hp_heart,0,p_x + ( h * 16 * global.camera_zoom) + 8,p_y + 36,global.camera_zoom,global.camera_zoom,0,c_white,1);
		}
		//Current health
		for ( var h = 0; h < hp; h++){
			draw_sprite_ext(spr_hp_heart,1,p_x + ( h * 16 * global.camera_zoom) + 8,p_y + 36,global.camera_zoom,global.camera_zoom,0,c_white,1);
		}
		
		
	}	
	
	draw_text_ext_transformed(p_x,p_y,p_text,10,-1,global.camera_zoom,global.camera_zoom,0);
	

}

draw_sprite_ext(spr_water_mark,0, 890, 440,1,1,0,c_white,0.2);

//Draw a black square over the screen while we are waiting for the 
//room transition in to start.
if ( alarm[0] ){
	cx = camera_get_view_x(camera);
	cy = camera_get_view_y(camera);
	cw = camera_get_view_width(camera);
	ch = camera_get_view_height(camera);
	draw_set_alpha(1);
	draw_set_color(c_black);
	draw_rectangle(0,0,view_wport[0],view_hport[0],false);
}


