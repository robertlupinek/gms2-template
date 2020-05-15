/// @description setup capture for ANY keyboard input

var _p = 0;  //Loop counter for player input

//Reset all any input key variables
global.any_down = false;
global.any_up = false;
global.any_left = false;
global.any_right = false;
global.any_b1 = false;
global.any_b2 = false;
global.any_b3 = false;
global.any_b4 = false;
global.any_b5 = false;
global.any_b6 = false;
global.any_start = false;

global.any_down_pressed = false;
global.any_up_pressed = false;
global.any_left_pressed = false;
global.any_right_pressed = false;
global.any_b1_pressed = false;
global.any_b2_pressed = false;
global.any_b3_pressed = false;
global.any_b4_pressed = false;
global.any_b5_pressed = false;
global.any_b6_pressed = false;
global.any_start_pressed = false;


//Set all keys and buttons for any player useful for menu items and inventories
for ( _p = 0; _p < global.player_count; _p +=1;){ 
	
	//Reset the just pressed variables
	global.p_down_pressed[_p] = false;
	global.p_up_pressed[_p] = false;
	global.p_left_pressed[_p] = false;
	global.p_right_pressed[_p] = false;
	global.p_b1_pressed[_p] = false;
	global.p_b2_pressed[_p] = false;
	global.p_b3_pressed[_p] = false;
	global.p_b4_pressed[_p] = false;
	global.p_b5_pressed[_p] = false;
	global.p_b6_pressed[_p] = false;
	global.p_start_pressed[_p] = false;

	//Up
	if ( ( keyboard_check(vk_up) && global.p_kb[_p] ) || gamepad_hat_value(global.p_control[_p], 0) == 9 || gamepad_hat_value(global.p_control[_p], 0) == 1 || gamepad_hat_value(global.p_control[_p], 0) == 3 || gamepad_axis_value(global.p_control[_p], gp_axislv) < 0 || gamepad_axis_value(global.p_control[_p], 5) < 0 ){
		if ( !global.p_up[_p] ){ 
			global.p_up_pressed[_p] = true;
			global.any_up_pressed = true;
		}
		global.p_up[_p] = true;	
		global.any_up[_p] = true;	
	}
	else {
		global.p_up[_p] = false;	
	}
	//Right
	if ( ( keyboard_check(vk_right) && global.p_kb[_p] ) || gamepad_hat_value(global.p_control[_p], 0) == 3 || gamepad_hat_value(global.p_control[_p], 0) == 2 || gamepad_hat_value(global.p_control[_p], 0) == 6 || gamepad_axis_value(global.p_control[_p], gp_axislh) > 0 || gamepad_axis_value(global.p_control[_p], 4) > 0 ){
		if ( !global.p_right[_p] ){
			global.p_right_pressed[_p] = true;
			global.any_right_pressed = true;
		}	
		global.p_right[_p] = true;	
		global.any_right = true;
	}
	else {
		global.p_right[_p] = false;	
	}
	//Down
	if ( ( keyboard_check(vk_down) && global.p_kb[_p] ) || gamepad_hat_value(global.p_control[_p], 0) == 12 || gamepad_hat_value(global.p_control[_p], 0) == 4 || gamepad_hat_value(global.p_control[_p], 0) == 6 || gamepad_axis_value(global.p_control[_p], gp_axislv) > 0 || gamepad_axis_value(global.p_control[_p], 5) > 0 ){
		if ( !global.p_down[_p] ){
			global.p_down_pressed[_p] = true;
			global.any_down_pressed = true;
		}
		global.p_down[_p] = true;	
		global.any_down = true;
	}
	else {
		global.p_down[_p] = false;	
	}
	//Left
	if ( ( keyboard_check(vk_left) && global.p_kb[_p] ) || gamepad_hat_value(global.p_control[_p], 0) == 9 || gamepad_hat_value(global.p_control[_p], 0) == 8 || gamepad_hat_value(global.p_control[_p], 0) == 12 || gamepad_axis_value(global.p_control[_p], gp_axislh) < 0 || gamepad_axis_value(global.p_control[_p], 4) < 0  ){
		if ( !global.p_left[_p] ){
			global.p_left_pressed[_p] = true;
			global.any_left_pressed = true;
		}	
		global.p_left[_p] = true;
		global.any_left = true;
	}
	else {
		global.p_left[_p] = false;	
	}
	//Button 1
	if ( ( keyboard_check(ord("Z") ) && global.p_kb[_p] ) || gamepad_button_value(global.p_control[_p],gp_face1) ){
		if ( !global.p_b1[_p] ){
			global.p_b1_pressed[_p] = true;
			global.any_b1_pressed = true;
		}	
		global.p_b1[_p] = true;	
		global.any_b1 = true;
	}
	else {
		global.p_b1[_p] = false;	
	}
	//Button 2
	if ( ( keyboard_check(ord("X") ) && global.p_kb[_p] ) || gamepad_button_value(global.p_control[_p],gp_face2) ){
		if ( !global.p_b2[_p] ){
			global.p_b2_pressed[_p] = true;
			global.any_b2_pressed = true;
		}		
		global.p_b2[_p] = true;	
		global.any_b2 = true;
	}
	else {
		global.p_b2[_p] = false;	
	}
	//Button 3
	if ( ( keyboard_check(ord("C") ) && global.p_kb[_p] ) || gamepad_button_value(global.p_control[_p],gp_face3) ){
		if ( !global.p_b3[_p] ){
			global.p_b3_pressed[_p] = true;
			global.any_b3_pressed = true;
		}		
		global.p_b3[_p] = true;	
		global.any_b3 = true;	
	}
	else {
		global.p_b3[_p] = false;	
	}
	//Button 4
	if ( ( keyboard_check(ord("V") ) && global.p_kb[_p] ) || gamepad_button_value(global.p_control[_p],gp_face4) ){
		if ( !global.p_b4[_p] ){
			global.p_b4_pressed[_p] = true;
			global.any_b4_pressed = true;
		}		
		global.p_b4[_p] = true;	
		global.any_b4 = true;	
	}
	else {
		global.p_b4[_p] = false;	
	}
	//Button 5
	if ( ( keyboard_check(ord("Q") ) && global.p_kb[_p] ) || gamepad_button_value(global.p_control[_p], gp_shoulderl) || gamepad_button_value(global.p_control[_p], gp_shoulderlb) ){
		if ( !global.p_b5[_p] ){
			global.p_b5_pressed[_p] = true;
			global.any_b5_pressed = true;
		}		
		global.p_b5[_p] = true;	
		global.any_b5 = true;	
	}
	else {
		global.p_b5[_p]= false;	
	}
	//Button 6
	if ( ( keyboard_check(ord("E") ) && global.p_kb[_p] ) || gamepad_button_value(global.p_control[_p], gp_shoulderr) || gamepad_button_value(global.p_control[_p], gp_shoulderrb) ){
		if ( !global.p_b6[_p] ){
			global.p_b6_pressed[_p] = true;
			global.any_b6_pressed = true;
		}	
		global.p_b6[_p] = true;	
		global.any_b6 = true;
	}
	else {
		global.p_b6[_p] = false;	
	}
	//Button Start Button
	if ( ( ( keyboard_check(vk_enter ) || keyboard_check(vk_escape ) )  && global.p_kb[_p] )  || gamepad_button_value(global.p_control[_p], gp_start) || gamepad_button_value(global.p_control[_p], gp_select)) {
		if ( !global.p_start[_p] ){
			global.p_start_pressed[_p] = true;
			global.any_start_pressed = true;
		}	
		global.p_start[_p] = true;
		global.any_start = true;
	}
	else {
		global.p_start[_p] = false;	
	}
	
}