/// @description Insert description here
// You can write your code in this editor

//Init the outline shader
outline_init();

outline_color = c_white;
//Player number assigned used to assign stats
//and controls to the player
p_number = 0;  
my_pad = global.p_pad[p_number];
move_speed = 0.2;
max_speed = 5;
alarm[0] = 240;

//Just a silly thing to play a fake game of tag
it = false;

//Stats 
max_hp = 1;
hp = 1;
