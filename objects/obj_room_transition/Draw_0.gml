/// @description the paused game stuff
// You can write your code in this editor

cx = camera_get_view_x(camera);
cy = camera_get_view_y(camera);
cw = camera_get_view_width(camera);
ch = camera_get_view_height(camera);

//Draw the sprite we created from the view surface.
//We use a sprite because surfaces are volatile.
//For example, a minimize will destroy it.
draw_sprite_ext(screen_sprite,0,cx,cy,1/global.camera_zoom,1/global.camera_zoom,0,c_white,1);
draw_set_alpha(image_alpha);
draw_set_color(c_black);
draw_rectangle(cx,cy,cw*global.camera_zoom,ch*global.camera_zoom,false);


