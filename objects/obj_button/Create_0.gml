/// @description Button object used for creating in game and menu buttons.
// This object COULD potentially be used as a basis for an inventory

button_text = "New Game";  //Text to display on the button
xscale = 1; //Button image x scale
yscale = 1; //Button image y scale
angle = 0;  //Button image angle
selected = false;  //Is the button currently selected?
just_selected = false;	//Was the button JUST selected - triggers only once when a button is selected
mouse_type = false; //Is this button operated using mouse?
trigger_script = -1;  //What script should trigger if this button is used?


///"Special" Effects

//Init the outline shader
outline_init();

//Make outline go up and down
alarm[0] = 60;