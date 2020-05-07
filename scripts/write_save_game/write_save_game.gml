/// @desc Write save game data to file

var _save_filename = argument0;
var _save_data_map = argument1; 

var _string = json_encode(_save_data_map);
var _buffer = buffer_create( string_byte_length(_string) + 1, buffer_fixed, 1);
buffer_write( _buffer, buffer_string, _string );
buffer_save( _buffer,_save_filename );
buffer_delete( _buffer);

show_debug_message("Game Saved!")