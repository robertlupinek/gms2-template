/// @description gather inputs and other fun things
//

//Gather input status for keyboard and gamepads
input_controls();


//Triggers if a new input devices "activation" button was pressed
if ( assign_input() ){
	var new_player = instance_create_layer(obj_camera.x,obj_camera.y,"Instances",obj_player);
	//Assign which player this is new object represents.
	//Player 0, 1, 2, or 3 based on the length of the global.p_pad array
	new_player.p_number = array_length_1d(global.p_pad) -1 ;
	//Assign player object appropriate stats
	//Will probably want to create a separate script to handle this as it could get huge
	if ( new_player.p_number == 0 ){
		new_player.max_hp = global.p1_map[? "max_hp"];
		new_player.hp = new_player.max_hp;
	}
	if ( new_player.p_number == 1 ){
		new_player.max_hp = global.p2_map[? "max_hp"];
		new_player.hp = new_player.max_hp;
	}
	if ( new_player.p_number == 2 ){
		new_player.max_hp = global.p3_map[? "max_hp"];
		new_player.hp = new_player.max_hp;
	}
	if ( new_player.p_number == 3 ){
		new_player.max_hp = global.p4_map[? "max_hp"];
		new_player.hp = new_player.max_hp;
	}	
	
	//Player has joined!  Game has started!
	game_start = 1;
}
//Set camera target 
with(obj_camera){
	target = obj_player;	
}


//End game if there are no more player objects and game_start = 1;
//Can go to Game Over screen or what ever you choose
if ( game_start == 1 ){
	if ( instance_number(obj_player) <= 0 ){
		room_goto(rm_main_menu);
	}
}


//Level complete!
if ( !instance_number(obj_enemy) || keyboard_check_pressed(ord("N") )){
	trigger_button_next();
}
