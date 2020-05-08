
//Check if the pause button is pressed OR this pause object is a button then pause when it is clicked.
if ( ( mouse_check_button_released(mb_left) && check_mouse_over(self.id) ) || keyboard_check_pressed(ord(pause_key) )   )
{
	//Stop anything other objects that trigger on mouse button
    mouse_clear(mb_left); 
    
	//If game is already paused then unpause it
    if  ( paused )
    {
        paused = false
		//Activate all deactivated instances
        instance_activate_all();
		//Clear out the sprite and surface
		if ( sprite_exists( screen_sprite ) ) {
			sprite_delete( screen_sprite);
		}
    }
    else
    {
		paused = true;
        //Create the sprite from the view surface.
        //We use a sprite because surfaces are volatile.
        //For example, a minimize will destroy it.        
        screen_sprite = sprite_create_from_surface(application_surface,0,0,surface_get_width(application_surface),surface_get_height(application_surface),false,false,0,0);
		//Deactivate all instance, besides this one.
        instance_deactivate_all(true);
    }
}
