/// @description gather inputs and other fun things
//

//Gather input status for keyboard and gamepads
input_controls();

///Check to see if a player has joined and been assign a gamepad
//Loop through the gamepads and keboard ( index 9 is keyboard ;) )

var pad_assigned = false;

for ( var c = 0; c < 9; c +=1; ){
	//Check if button 1 is pressed or not and if it is see if the gamepad
	//can be assigned to a player.
	if ( global.pad_b1_pressed[c]  )
	{
		//If you haven't assigned game pads to all 4 players
		if ( array_length_1d(global.p_pad) < 4 ){
			pad_assigned = false;
			//Check if the pad has been assigned to a player ( check the gobal.p_pad array )
			for ( var p_used = 0;p_used < array_length_1d(global.p_pad); p_used += 1; ){
				if ( global.p_pad[p_used] == c  ){
					pad_assigned = true;
				}
			}
			//If the gamepad has not been assigned then assign that game pad to the nex avaiable player
			if ( !pad_assigned ){
				//Append the current gamepad / controller / keyboard index to the player pad ( p_pad ) array.
				global.p_pad[array_length_1d(global.p_pad) ] = c;
				var new_player = instance_create_layer(obj_camera.x,obj_camera.y,"Instances",obj_player);
				//Assign which player this is new object represents.
				//Player 0, 1, 2, or 3 based on the length of the global.p_pad array
				new_player.p_number = array_length_1d(global.p_pad) -1 ;
				show_debug_message("Player: " + string(new_player.p_number + 1) + "Assigned input: " + string(c) );
			}
			show_debug_message("Game Pad Already Assigned: " + string(c) );
		}
	}
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