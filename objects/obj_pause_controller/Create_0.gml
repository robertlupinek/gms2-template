image_speed = 0;
camera = view_get_camera(0);
cx = camera_get_view_x(camera);
cy = camera_get_view_y(camera);
paused = false;
unpause = false;  //Trigger the unpause game if this is true
screen_sprite = -1;
