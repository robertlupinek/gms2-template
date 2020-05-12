/// @description Setup the button's configuration and position in the selection array global.buttons 

var _image = argument0;   //Image you wish use for the button
var _x = argument1;  //Where to draw the button on the screen
var _y = argument2;  //Where to draw the button on the screen
var _array_x = argument3; // Where in the buttons array to put this button 
var _array_y = argument4; // Where in the buttons array to put this button
var _button_text = argument5; //Text to draw ontop of button
var _selected = argument6;  //If the button is the current selected button

//Create and configure the button
var _button = instance_create_layer(_x,_y,"Instances",obj_button);
_button.button_text = _button_text;
_button.selected = _selected;
_button.image_index = _image;

//Make sure the menu button selection is on the selected button so navigation doesn't
//get all "wonky".
if ( _button.selected ){
	global.button_x = _array_x;
	global.button_y = _array_y;
}

//Add button to the button array for selection
global.buttons[_array_y,_array_x] = _button.id; 

return _button.id;