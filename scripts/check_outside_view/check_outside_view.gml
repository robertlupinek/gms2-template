//outside_view
//Checks to see if described rectangle is outside 
//of the requested camera view and returns x if it is outside just the x.
//example:
////Check view 0 boundaries left, right, NOT top, bottom 
//check_outside_view(bbox_left,bbox_right,bbox_top,bbox_bottom,0,true,true,false,true);


var _x = argument0; //Left side of rectangle
var _y = argument1; //Top side of rectangle to check
var _x2 = argument2; //Right of rectangle
var _y2 = argument3; //Botton of rectangle
var _view = argument4; //Camera view to check against

//Provide which directions outside the view you want to check
var _check_l = argument5;
var _check_t = argument6;
var _check_r = argument7;
var _check_b = argument8;

//Get the camera configuration
var _camera = view_get_camera(_view);
var _cx = camera_get_view_x(_camera);
var _cy = camera_get_view_y(_camera);
var _cw = camera_get_view_width(_camera);
var _ch = camera_get_view_height(_camera);
var _outside = false;

//Check left
if ( _x < _cx && _check_l ) {
	_outside = true;
}

//Check right
if ( _x2 > _cx + _cw && _check_r ){
	_outside = true;
}

//Check top
if ( _y < _cy && _check_t ) {
	_outside = true;
}


//Check bottom
if ( _y2 > _cy + _ch && _check_b ){
	_outside = true;
}

return _outside;