/// Button Navigation and actions

//Loop through buttons
//We use this for mouse selection and anything else we would want to trigger
with(obj_button){
	///Mouse handling
	// If a mouse type button first deselect it then select it IF the mouse is over it.
	if ( mouse_type ){
		selected = false;	
		if ( check_mouse_over(id) ){
				selected = true;	
		}
	}
}


///Keyboard and controller selection handling
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
		if ( !mouse_type ){
			selected = false;
		}
	}
	//Set selected button to selected
	with(global.buttons[global.button_y,global.button_x]){
		if ( !mouse_type ){
			selected = true;
		}
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
		if ( !mouse_type ){
			selected = false;
		}
	}
	//Set selected button to selected
	with(global.buttons[global.button_y,global.button_x]){
		if ( !mouse_type ){
			selected = true;
		}
	}
}

// Move right through the menu
if ( global.any_right_pressed ){
	global.button_x += 1;
	if ( global.button_x > ( array_length_2d(global.buttons,global.button_y) -1 ) ){
		global.button_x = 0;	
	}
	//Deselect all buttons
	with( obj_button ){
		if ( !mouse_type ){
			selected = false;
		}
	}
	//Set selected button to selected
	with(global.buttons[global.button_y,global.button_x]){
		if ( !mouse_type ){
			selected = true;
		}
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
		if ( !mouse_type ){
			selected = false;
		}
	}
	//Set selected button to selected
	with(global.buttons[global.button_y,global.button_x]){
		if ( !mouse_type ){
			selected = true;
		}
	}
}


///Trigger the script if appropriate keyboard/mouse/controller button is pressed
//Controller / Keyboard controlled buttons
if ( global.any_b1_pressed  ) {
	with(obj_button){
		if ( selected && !mouse_type ){
			script_execute(trigger_script)
		}
	}
}
//Mouse controlled buttons
if ( mouse_check_button_pressed(mb_left) ) {
	with(obj_button){
		if ( selected && mouse_type ){
			script_execute(trigger_script)
		}
	}
}