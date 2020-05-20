///@description Get and return the center point between two points

var _object = argument0; //The objects to use to find the center of
var _camera = argument1; //The camera object we are centering

var _target = _object;
var _target2 = _object;
var _target_count = instance_number(_target);

var _last_xd = 0;
var _last_yd = 0;

var _left = 0;
var _right = 0;
var _top = 0;
var _bottom = 0;	

//Position camera
if ( instance_exists(_object) ) {
	
	//Loop through all targets 
	if ( _target_count > 1 ){
		
		//Describe the rectangle to find the center of by comparing all target objects
		//finding the greatest distances between them
		for (var i = 0; i < instance_number(_object); ++i;){
			_target = instance_find(_object,i);

			for (var ii = 0; ii < instance_number(_object); ++ii;){
				_target2 = instance_find(_object,ii);
			    //Get distances to objects
				var _xd = abs(_target.x - _target2.x);
				var _yd = abs(_target.y - _target2.y);		
				//If the distances are greater use those values to describe the rectangle
				if ( _xd > _last_xd ){
					if ( _target.x > _target2.x ){
						_right = _target.x;
						_left = _target2.x;
					}
					else {
						_right = _target2.x;
						_left = _target.x;
					}
					_last_xd = _xd;
				}
				//If the distances are greater use those values to describe the rectangle
				if ( _yd > _last_yd ){
					if ( _target.y > _target2.y ){
						_top = _target2.y;
						_bottom = _target.y;
					}
					else {
						_top = _target.y;
						_bottom = _target2.y;
					}
					_last_yd = _yd;
				}				
			}			
		}
		
		//Now that we have calculated the rectangle let's find it's center
		_camera.x = round( (_left + _right) / 2 );
		_camera.y = round( (_top + _bottom) / 2 );
		
	}
	else {
		_camera.x = target.x;
		_camera.y = target.y;
	}
}

//Only for debugging purposes you can run this in the draw event to see the rectangle 
//draw_rectangle(_left,_top,_right,_bottom,true);