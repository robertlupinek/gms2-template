/// @description Create buttons and setup effects

//Reset button configuration before creating new ones
clear_buttons();
if ( file_exists( global.save_file_name ) ){
	create_buttons(spr_big_button,237,138,0,1,"Load Game",true);
	create_buttons(spr_big_button,237,198,0,0,"New Game",false);
}
else {
	create_buttons(spr_big_button,237,138,0,0,"New Game",true);	
	create_buttons(spr_big_button,160,198,0,1,"test",false);
	create_buttons(spr_big_button,304,198,1,1,"test2",false);	
}

























