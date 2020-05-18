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
}
//Set camera target 
with(obj_camera){
	target = obj_player;	
}

///Test effects

//Screen shake
if (global.any_b2_pressed ){
	with(obj_camera){
		alarm[0] = 5;
	}
}