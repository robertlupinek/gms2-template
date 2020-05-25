image_speed = 0;
image_alpha = 0;
camera = view_get_camera(0);
cx = camera_get_view_x(camera);
cy = camera_get_view_y(camera);
paused = false;
unpause = false;  //Trigger the unpause game if this is true
screen_sprite = -1;




screen_sprite = sprite_create_from_surface(application_surface,0,0,surface_get_width(application_surface),surface_get_height(application_surface),false,false,0,0);
//Deactivate all instance, besides this one.
instance_deactivate_all(true);