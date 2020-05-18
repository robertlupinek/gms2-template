///Check to see if a player has joined and been assign a gamepad
//Loop through the gamepads and keyboard ( index 9 is keyboard ;) )

var input_assigned = false;  //Used to flag a gamepad / keyboard if it has been assigned
var input_new = false; //Used to flag if a new gamepad / keyboard was indeed assigned

for ( var c = 0; c < 9; c +=1; ){
	//Check if button 1 is pressed or not and if it is see if the input device
	//can be assigned to a player.
	if ( global.pad_b1_pressed[c]  )
	{
		//If you haven't assigned input devices to all 4 players
		if ( array_length_1d(global.p_pad) < 4 ){
			input_assigned = false;
			//Check if the input device has been assigned to a player ( check the gobal.p_pad array )
			for ( var p_used = 0;p_used < array_length_1d(global.p_pad); p_used += 1; ){
				if ( global.p_pad[p_used] == c  ){
					input_assigned = true;
				}
			}
			//If the gamepad has not been assigned then assign that game pad to the nex avaiable player
			if ( !input_assigned ){
				//Append the current gamepad / controller / keyboard index to the player pad ( p_pad ) array.
				global.p_pad[array_length_1d(global.p_pad) ] = c;
				input_new = true;
				//Important to break the for loop so that we return "true" when a new input is assigned 
				//If you don't it is possible to assign the input without taking any further action external to this script
				//such as creating the play object or what ever results from this script.
				break;
			}
		}
	}
}

return input_new;