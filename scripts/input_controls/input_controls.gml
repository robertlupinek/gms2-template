/// @description setup capture for ANY keyboard input


//Reset all pressed keys and buttons

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
if ( keyboard_check(vk_up) ){
	if ( !global.any_up ){ 
		global.any_up_pressed = true;
	}
	global.any_up = true;	
}
else {
	global.any_up = false;	
}
//Right
if ( keyboard_check(vk_right) ){
	if ( !global.any_right ){
		global.any_right_pressed = true;
	}	
	global.any_right = true;		
}
else {
	global.any_right = false;	
}
//Down
if ( keyboard_check(vk_down) ){
	if ( !global.any_down ){
		global.any_down_pressed = true;
	}
	global.any_down = true;		
}
else {
	global.any_down = false;	
}
//Left
if ( keyboard_check(vk_left) ){
	if ( !global.any_left ){
		global.any_left_pressed = true;
	}	
	global.any_left = true;	
}
else {
	global.any_left = false;	
}
//Button 1
if ( keyboard_check(ord("Z") ) ){
	if ( !global.any_b1 ){
		global.any_b1_pressed = true;
	}	
	global.any_b1 = true;	
}
else {
	global.any_b1 = false;	
}
//Button 2
if ( keyboard_check(ord("X") ) ){
	if ( !global.any_b2 ){
		global.any_b2_pressed = true;
	}		
	global.any_b2 = true;	
}
else {
	global.any_b2 = false;	
}
//Button 3
if ( keyboard_check(ord("C") ) ){
	if ( !global.any_b3 ){
		global.any_b3_pressed = true;
	}		
	global.any_b3 = true;	
}
else {
	global.any_b3 = false;	
}
//Button 4
if ( keyboard_check(ord("V") ) ){
	if ( !global.any_b4 ){
		global.any_b4_pressed = true;
	}		
	global.any_b4 = true;	
}
else {
	global.any_b4 = false;	
}
//Button 5
if ( keyboard_check(ord("Q") ) ){
	if ( !global.any_b5 ){
		global.any_b5_pressed = true;
	}		
	global.any_b5 = true;		
}
else {
	global.any_b5 = false;	
}
//Button 6
if ( keyboard_check(ord("E") ) ){
	if ( !global.any_b6 ){
		global.any_b6_pressed = true;
	}	
	global.any_b6 = true;	
}
else {
	global.any_b6 = false;	
}
//Button Start Button
if ( keyboard_check(vk_enter ) || keyboard_check(vk_escape ) ) {
	if ( !global.any_start ){
		global.any_start_pressed = true;
	}	
	global.any_start = true;
}
else {
	global.any_start = false;	
}
