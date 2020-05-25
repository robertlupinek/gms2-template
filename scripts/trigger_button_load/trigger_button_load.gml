/// @description read in save game data
// You can write your code in this editor

//Clear out the gamepad settings.
//This variable is what is used to assign a gamepad or keyboard to a player.
//We are clearing it here because we want the player to pick their input device again.
global.p_pad = [];
//Read in the save game data
read_save_game(global.save_file_name );
//Goto the room in the file
room_goto( asset_get_index(global.game_state_map[? "room"]) );