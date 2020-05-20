/// @desc Write save game data to file

var _save_filename = argument0;

if ( file_exists( _save_filename ) ){
	//Load file to buffer then string
	var _buffer = buffer_load(_save_filename );
	var _buffer_string = buffer_read(_buffer,buffer_string);
	//Create temporary ds_map from JSON object loaded from file.
	var _json_map = json_decode(_buffer_string);
	// Copy map with correct key from loaded JSON object to correct ds_map.
	ds_map_copy( global.p1_map, _json_map[? "player_1"]);
	ds_map_copy( global.p2_map, _json_map[? "player_2"]);
	ds_map_copy( global.p3_map, _json_map[? "player_3"]);
	ds_map_copy( global.p4_map, _json_map[? "player_4"]);
	
	show_debug_message("Game Loaded!");
	show_debug_message(global.p1_map[? "max_hp"]);
	show_debug_message(global.p2_map[? "max_hp"]);
	show_debug_message(global.p3_map[? "max_hp"]);
	show_debug_message(global.p4_map[? "max_hp"]);
	
	return true;

}
else
{
	show_debug_message("No Save File To Load!")	
	return false;
}

