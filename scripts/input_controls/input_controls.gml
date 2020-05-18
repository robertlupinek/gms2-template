/// @description setup capture for ANY keyboard input

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


//Check controller and keyboard state for player input
for ( var _c = 0; _c < 9; _c +=1;){ 
	
	//Reset the just pressed variables
	global.pad_down_pressed[_c] = false;
	global.pad_up_pressed[_c] = false;
	global.pad_left_pressed[_c] = false;
	global.pad_right_pressed[_c] = false;
	global.pad_b1_pressed[_c] = false;
	global.pad_b2_pressed[_c] = false;
	global.pad_b3_pressed[_c] = false;
	global.pad_b4_pressed[_c] = false;
	global.pad_b5_pressed[_c] = false;
	global.pad_b6_pressed[_c] = false;
	global.pad_start_pressed[_c] = false;
	
	//Note: There are only 8 possible gamepads.  Indice 8 or controller 9 is used represent the keyboard.
	
	//Up
	if ( ( keyboard_check(vk_up) && _c == 8 ) || gamepad_hat_value(_c, 0) == 9 || gamepad_hat_value(_c, 0) == 1 || gamepad_hat_value(_c, 0) == 3 || gamepad_axis_value(_c, gp_axislv) < 0 || gamepad_axis_value(_c, 5) < 0 ){
		if ( !global.pad_up[_c] ){ 
			global.pad_up_pressed[_c] = true;
			global.any_up_pressed = true;
		}
		global.pad_up[_c] = true;	
		global.any_up[_c] = true;	
	}
	else {
		global.pad_up[_c] = false;	
	}
	//Right
	if ( ( keyboard_check(vk_right) && _c == 8 ) || gamepad_hat_value(_c, 0) == 3 || gamepad_hat_value(_c, 0) == 2 || gamepad_hat_value(_c, 0) == 6 || gamepad_axis_value(_c, gp_axislh) > 0 || gamepad_axis_value(_c, 4) > 0 ){
		if ( !global.pad_right[_c] ){
			global.pad_right_pressed[_c] = true;
			global.any_right_pressed = true;
		}	
		global.pad_right[_c] = true;	
		global.any_right = true;
	}
	else {
		global.pad_right[_c] = false;	
	}
	//Down
	if ( ( keyboard_check(vk_down)  && _c == 8 ) || gamepad_hat_value(_c, 0) == 12 || gamepad_hat_value(_c, 0) == 4 || gamepad_hat_value(_c, 0) == 6 || gamepad_axis_value(_c, gp_axislv) > 0 || gamepad_axis_value(_c, 5) > 0 ){
		if ( !global.pad_down[_c] ){
			global.pad_down_pressed[_c] = true;
			global.any_down_pressed = true;
		}
		global.pad_down[_c] = true;	
		global.any_down = true;
	}
	else {
		global.pad_down[_c] = false;	
	}
	//Left
	if ( ( keyboard_check(vk_left) && _c == 8 ) || gamepad_hat_value(_c, 0) == 9 || gamepad_hat_value(_c, 0) == 8 || gamepad_hat_value(_c, 0) == 12 || gamepad_axis_value(_c, gp_axislh) < 0 || gamepad_axis_value(_c, 4) < 0  ){
		if ( !global.pad_left[_c] ){
			global.pad_left_pressed[_c] = true;
			global.any_left_pressed = true;
		}	
		global.pad_left[_c] = true;
		global.any_left = true;
	}
	else {
		global.pad_left[_c] = false;	
	}
	//Button 1
	if ( ( keyboard_check(ord("Z") ) && _c == 8 ) || gamepad_button_value(_c,gp_face1) ){
		if ( !global.pad_b1[_c] ){
			global.pad_b1_pressed[_c] = true;
			global.any_b1_pressed = true;
		}	
		global.pad_b1[_c] = true;	
		global.any_b1 = true;
	}
	else {
		global.pad_b1[_c] = false;	
	}
	//Button 2
	if ( ( keyboard_check(ord("X") ) && _c == 8 ) || gamepad_button_value(_c,gp_face2) ){
		if ( !global.pad_b2[_c] ){
			global.pad_b2_pressed[_c] = true;
			global.any_b2_pressed = true;
		}		
		global.pad_b2[_c] = true;	
		global.any_b2 = true;
	}
	else {
		global.pad_b2[_c] = false;	
	}
	//Button 3
	if ( ( keyboard_check(ord("C") ) && _c == 8 ) || gamepad_button_value(_c,gp_face3) ){
		if ( !global.pad_b3[_c] ){
			global.pad_b3_pressed[_c] = true;
			global.any_b3_pressed = true;
		}		
		global.pad_b3[_c] = true;	
		global.any_b3 = true;	
	}
	else {
		global.pad_b3[_c] = false;	
	}
	//Button 4
	if ( ( keyboard_check(ord("V") ) && _c == 8 ) || gamepad_button_value(_c,gp_face4) ){
		if ( !global.pad_b4[_c] ){
			global.pad_b4_pressed[_c] = true;
			global.any_b4_pressed = true;
		}		
		global.pad_b4[_c] = true;	
		global.any_b4 = true;	
	}
	else {
		global.pad_b4[_c] = false;	
	}
	//Button 5
	if ( ( keyboard_check(ord("Q") ) && _c == 8 ) || gamepad_button_value(_c, gp_shoulderl) || gamepad_button_value(_c, gp_shoulderlb) ){
		if ( !global.pad_b5[_c] ){
			global.pad_b5_pressed[_c] = true;
			global.any_b5_pressed = true;
		}		
		global.pad_b5[_c] = true;	
		global.any_b5 = true;	
	}
	else {
		global.pad_b5[_c]= false;	
	}
	//Button 6
	if ( ( keyboard_check(ord("E") ) && _c == 8 ) || gamepad_button_value(_c, gp_shoulderr) || gamepad_button_value(_c, gp_shoulderrb) ){
		if ( !global.pad_b6[_c] ){
			global.pad_b6_pressed[_c] = true;
			global.any_b6_pressed = true;
		}	
		global.pad_b6[_c] = true;	
		global.any_b6 = true;
	}
	else {
		global.pad_b6[_c] = false;	
	}
	//Button Start Button
	if ( ( ( keyboard_check(vk_enter ) || keyboard_check(vk_escape ) )  && _c == 8 )  || gamepad_button_value(_c, gp_start) || gamepad_button_value(_c, gp_select)) {
		if ( !global.pad_start[_c] ){
			global.pad_start_pressed[_c] = true;
			global.any_start_pressed = true;
		}	
		global.pad_start[_c] = true;
		global.any_start = true;
	}
	else {
		global.pad_start[_c] = false;	
	}
	
}

