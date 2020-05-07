

global.p1_map = ds_map_create();
global.p1_map[? "max_health"] = 10;


global.save_file_name = "saved_game.json";

global.save_data_map = ds_map_create();
ds_map_add_map(global.save_data_map,"player_1",global.p1_map);



show_debug_message("Game Setup Complete!")


//Got to next room
room_goto_next();

