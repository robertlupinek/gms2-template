
var _view = argument0;
var _zoom = argument1;
var _view_w = argument2;
var _view_h = argument3;
var _camera_target = argument4;
var _camera_border_x = argument5;
var _camera_border_y = argument6;

var _camera = view_camera[_view ];

//Enable the view
view_enabled = true;
view_visible[_view] = true;

//Set the view width and height
view_wport[_view] = _view_w;
view_hport[_view] = _view_h;
window_set_size(_view_w,_view_h);

//Setup the active camera
camera_set_view_target(_camera,_camera_target);
camera_set_view_border(_camera, _camera_border_x, _camera_border_y)
camera_set_view_size(_camera,_view_w/_zoom,_view_h/_zoom);

//Set the application surfact to the appropriate size
surface_resize(application_surface, view_wport[0], view_hport[0]);