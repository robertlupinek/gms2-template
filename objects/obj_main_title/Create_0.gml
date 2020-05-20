/// @description Create buttons and setup effects

//Reset button configuration before creating new buttons
clear_buttons();

/// Create the buttons for the main menu

//Create buttons for Load Game default selected IF the save file exists

if ( room_get_name(room) == "rm_main_menu" ) {
	//Display Load Game and auto select IF the save game file exists
	if ( file_exists( global.save_file_name ) ){
		create_buttons(spr_big_button,237,138,0,0,"Load Game",true,false,trigger_button_load);
		create_buttons(spr_big_button,237,188,0,1,"New Game",false,false,trigger_button_next);
		create_buttons(spr_big_button,237,238,0,2,"Quit",false,false,trigger_button_quit);
	}
	else {
		create_buttons(spr_big_button,237,138,0,0,"New Game",true,false,trigger_button_next);
		create_buttons(spr_big_button,237,188,0,1,"Quit",false,false,trigger_button_quit);
	}
}
else {
	//Display the button test screen
	create_buttons(spr_big_button,160,138,0,0,"Next",true,false,trigger_button_next);	
	create_buttons(spr_big_button,304,138,1,0,"Back",false,false,trigger_button_back);
	create_buttons(spr_big_button,160,188,0,1,"Controls",false,false,trigger_button_controls);
	create_buttons(spr_big_button,304,188,1,1,"test 4",false,false,trigger_button_debug);		
	//Mouse controoled button
	create_buttons(spr_big_button,160,238,0,0,"mouse 1",false,true,trigger_button_debug);	
	create_buttons(spr_big_button,304,238,0,0,"mouse 1",false,true,trigger_button_debug);	
}

























