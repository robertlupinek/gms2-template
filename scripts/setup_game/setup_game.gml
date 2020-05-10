
///Camera configuration
//Camera zoom level
global.camera_zoom = 2;

///Player Stats 
global.p1_map = ds_map_create();
global.p1_map[? "max_health"] = 10;

///Save game configuration
global.save_file_name = "saved_game.json";
global.save_data_map = ds_map_create();
//Add Player Stats to Save Game ds_map use for export to json.
ds_map_add_map(global.save_data_map,"player_1",global.p1_map);


///Font configuration
//Fonts
global.font_blue = font_add_sprite(spr_blue_font,ord("!"),true,1);
global.font_white = font_add_sprite(spr_white_font,ord("!"),true,-4);
global.font_red = font_add_sprite(spr_red_font,ord("!"),true,1);
global.font_small = font_add_sprite(spr_small_font,ord("!"),true,1);
global.font_score = font_add_sprite(spr_score_font,ord("!"),true,1);

show_debug_message("Game Setup Complete!")
//Got to next room
room_goto_next();

