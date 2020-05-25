draw_set_font(global.font_white);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_alpha(1);
draw_set_color(c_white);

//draw_text_ext(150,100,"Hello chief how are you doing!",10,20);


counter = 0
for (var i = 0; i <= 20; i++;)
{
	
	var xx = 10;
	var yy = 2 + (135 * counter);
	if gamepad_is_connected(i)
	{
		draw_text(xx, yy, "Pad" + string(i) + " Gamepad Type - " + string(gamepad_get_description(i)) );
		draw_text(xx, yy + 15, "LHAxis - LVAxis - " + string(gamepad_axis_value(i, gp_axislh))+ string(gamepad_axis_value(i, gp_axislv)));
		draw_text(xx, yy + 30, "RHAxis - RVAxis - " + string(gamepad_axis_value(i, gp_axisrh)) + string(gamepad_axis_value(i, gp_axisrv)));   
		draw_text(xx, yy + 45, "TShLeft - TShRight - " + string(gamepad_button_value(i, gp_shoulderl)) + string(gamepad_button_value(i, gp_shoulderr)));		
		draw_text(xx, yy + 60, "ShLeft - ShRight - " + string(gamepad_button_value(i, gp_shoulderlb)) + string(gamepad_button_value(i, gp_shoulderrb)));
		draw_text(xx, yy + 75, "Buttons " + string(gamepad_button_value(i, gp_face1)) + string(gamepad_button_value(i, gp_face2)) + string(gamepad_button_value(i, gp_face3)) + string(gamepad_button_value(i, gp_face4))  + string(gamepad_button_value(i,gp_start))  + string(gamepad_button_value(i,gp_select))  );	
		//draw_text(xx, yy + 90, "Hat " + string(gamepad_hat_value(i, 0)) );		
		for ( var ii = 0;ii <= gamepad_button_count(i); ii++;){
			if ( gamepad_button_value(i, ii) = 1 ){
				draw_text(xx, yy + 90, "Pad -" + string(i) + " Button -"+ string(ii) ); 
				//draw_text(xx + 190, yy + 105, gamepad_axis_value(i, ii) );   
			}
		}		
		for ( var ii = 0;ii <= gamepad_axis_count(i); ii++;){
			if ( gamepad_axis_value(i, ii) != 0 ){
				draw_text(xx, yy + 105, "Pad -" + string(i) + " Axis -"+ string(ii) ); 
				draw_text(xx + 190, yy + 105, gamepad_axis_value(i, ii) );   
			}
		}
		for ( var ii = 0;ii <= gamepad_hat_count(i); ii++;){
			if ( gamepad_hat_value(i, ii ) != 0 ){
				draw_text(xx, yy + 120, "Hat -" + string(ii) + " Value -"+ string(gamepad_hat_value(i, ii)) );  
			}
		}			
		counter +=1;
    }
}