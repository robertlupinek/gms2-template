/// @description read in save game data
// You can write your code in this editor

//Clear out the gamepad settings
global.p_pad = [];
read_save_game(global.save_file_name );
room_goto( asset_get_index(global.game_state_map[? "room"]) );