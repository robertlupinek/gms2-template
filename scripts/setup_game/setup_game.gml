
///Camera configuration
//Camera zoom level
global.camera_zoom = 2;

///Player Stats 
global.p1_map = ds_map_create();
global.p1_map[? "max_hp"] = 3;

global.p2_map = ds_map_create();
global.p2_map[? "max_hp"] = 3;


global.p3_map = ds_map_create();
global.p3_map[? "max_hp"] = 3;

global.p4_map = ds_map_create();
global.p4_map[? "max_hp"] = 3;

///Save game configuration
global.save_file_name = "saved_game.json";
global.save_data_map = ds_map_create();
//Add Player Stats to Save Game ds_map use for export to json.
ds_map_add_map(global.save_data_map,"player_1",global.p1_map);
ds_map_add_map(global.save_data_map,"player_2",global.p2_map);
ds_map_add_map(global.save_data_map,"player_3",global.p3_map);
ds_map_add_map(global.save_data_map,"player_4",global.p4_map);

//Buttons 2d array variable
global.buttons = 0;
//Variables used to nagivate the 2d array
global.button_x = 0;
global.button_y = 0;
//Globals for game controls

global.any_down = false;
global.any_up = false;
global.any_left = false;
global.any_right = false;
global.any_b1 = false;
global.any_b2 = false;
global.any_b3 = false;
global.any_b4 = false;
global.any_b5 = false;
global.any_b6 = false;
global.any_start = false;

global.any_down_pressed = false;
global.any_up_pressed = false;
global.any_left_pressed = false;
global.any_right_pressed = false;
global.any_b1_pressed = false;
global.any_b2_pressed = false;
global.any_b3_pressed = false;
global.any_b4_pressed = false;
global.any_b5_pressed = false;
global.any_b6_pressed = false;
global.any_start_pressed = false;

///Player assigned to the pad
//Each indice represents a player
//Set the player to keyboard by setting p_pad[x] = 8, where index x is the player.
global.p_pad = [];

//Controller / gamepad
// Gamepad 8 is the keyboard :)
for ( var _pads = 0; _pads <= 8; _pads++;){
	
	global.pad_down[_pads] = false;
	global.pad_up[_pads]  = false;
	global.pad_left[_pads]  = false;
	global.pad_right[_pads]  = false;
	global.pad_b1[_pads]  = false;
	global.pad_b2[_pads]  = false;
	global.pad_b3[_pads]  = false;
	global.pad_b4[_pads]  = false;
	global.pad_b5[_pads]  = false;
	global.pad_b6[_pads]  = false;
	global.pad_start[_pads]  = false;
	
	global.pad_down_pressed[_pads] = false;
	global.pad_up_pressed[_pads]  = false;
	global.pad_left_pressed[_pads]  = false;
	global.pad_right_pressed[_pads]  = false;
	global.pad_b1_pressed[_pads]  = false;
	global.pad_b2_pressed[_pads]  = false;
	global.pad_b3_pressed[_pads]  = false;
	global.pad_b4_pressed[_pads]  = false;
	global.pad_b5_pressed[_pads]  = false;
	global.pad_b6_pressed[_pads]  = false;
	global.pad_start_pressed[_pads]  = false;

}


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

