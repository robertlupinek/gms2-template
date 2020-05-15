
///Camera configuration
//Camera zoom level
global.camera_zoom = 2;


//Player count
global.player_count = 2;
///Player Stats 
global.p1_map = ds_map_create();
global.p1_map[? "max_health"] = 10;

///Save game configuration
global.save_file_name = "saved_game.json";
global.save_data_map = ds_map_create();
//Add Player Stats to Save Game ds_map use for export to json.
ds_map_add_map(global.save_data_map,"player_1",global.p1_map);

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


global.p_control[0] = 4;
global.p_kb[0] = true;

global.p_down[0] = false;
global.p_up[0]  = false;
global.p_left[0]  = false;
global.p_right[0]  = false;
global.p_b1[0]  = false;
global.p_b2[0]  = false;
global.p_b3[0]  = false;
global.p_b4[0]  = false;
global.p_b5[0]  = false;
global.p_b6[0]  = false;
global.p_start[0]  = false;

global.p_down_pressed[0] = false;
global.p_up_pressed[0]  = false;
global.p_left_pressed[0]  = false;
global.p_right_pressed[0]  = false;
global.p_b1_pressed[0]  = false;
global.p_b2_pressed[0]  = false;
global.p_b3_pressed[0]  = false;
global.p_b4_pressed[0]  = false;
global.p_b5_pressed[0]  = false;
global.p_b6_pressed[0]  = false;
global.p_start_pressed[0]  = false;


global.p_control[1] = 5;
global.p_kb[1] = true;

global.p_down[1] = false;
global.p_up[1]  = false;
global.p_left[1]  = false;
global.p_right[1]  = false;
global.p_b1[1]  = false;
global.p_b2[1]  = false;
global.p_b3[1]  = false;
global.p_b4[1]  = false;
global.p_b5[1]  = false;
global.p_b6[1]  = false;
global.p_start[1]  = false;

global.p_down_pressed[1] = false;
global.p_up_pressed[1]  = false;
global.p_left_pressed[1]  = false;
global.p_right_pressed[1]  = false;
global.p_b1_pressed[1]  = false;
global.p_b2_pressed[1]  = false;
global.p_b3_pressed[1]  = false;
global.p_b4_pressed[1]  = false;
global.p_b5_pressed[1]  = false;
global.p_b6_pressed[1]  = false;
global.p_start_pressed[1]  = false;



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

