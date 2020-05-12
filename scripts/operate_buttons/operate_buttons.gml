
//Move down through the menu
if ( global.any_down_pressed ){
	global.button_y += 1;
	if ( global.button_y > ( array_height_2d(global.buttons) -1 ) ){
		global.button_y = 0;	
	}
	//Set button x to the highest button x if it is higher than max
	if ( global.button_x > ( array_length_2d(global.buttons,global.button_y) -1 ) ){
		global.button_x = array_length_2d(global.buttons,global.button_y) -1;
	}
	//Deselect all buttons
	with( obj_button ){
		selected = 0;	
	}
	//Set selected button to selected
	with(global.buttons[global.button_y,global.button_x]){
		selected = 1;
	}
}

//Move up through the menu
if ( global.any_up_pressed ){
	global.button_y -= 1;
	if ( global.button_y < 0 ){
		global.button_y = array_height_2d(global.buttons) -1;	
	}
	//Set button x to the highest button x if it is higher than max
	if ( global.button_x > ( array_length_2d(global.buttons,global.button_y) -1 ) ){
		global.button_x = array_length_2d(global.buttons,global.button_y) -1;
	}	
	//Deselect all buttons
	with( obj_button ){
		selected = 0;	
	}
	//Set selected button to selected
	with(global.buttons[global.button_y,global.button_x]){
		selected = 1;
	}
}


if ( global.any_right_pressed ){
	global.button_x += 1;
	if ( global.button_x > ( array_length_2d(global.buttons,global.button_y) -1 ) ){
		global.button_x = 0;	
	}
	//Deselect all buttons
	with( obj_button ){
		selected = 0;	
	}
	//Set selected button to selected
	with(global.buttons[global.button_y,global.button_x]){
		selected = 1;
	}
}

//Move up through the menu
if ( global.any_left_pressed ){
	global.button_x -= 1;
	if ( global.button_x < 0 ){
		global.button_x = array_length_2d(global.buttons,global.button_y) -1;	
	}
	//Deselect all buttons
	with( obj_button ){
		selected = 0;	
	}
	//Set selected button to selected
	with(global.buttons[global.button_y,global.button_x]){
		selected = 1;
	}
}