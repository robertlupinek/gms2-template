/// @description gather inputs and other fun things
//

input_controls();


///Test effects

//Screen shake
if (global.any_b2_pressed ){
	with(obj_camera){
		alarm[0] = 5;
	}
}