//Take over getting controlls input and manage buttons
if ( paused ){
	input_controls();
	operate_buttons();
}


//Pause & unpause is triggered by this conditional 
if ( global.any_start_pressed || unpause )
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
		
		//Reset button configuration before creating new buttons
		clear_buttons();
		with(obj_button){
			if ( button_text == "Resume" || button_text == "Quit" ){
				instance_destroy();
			}
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
		
		///Create pause screen buttons
		//Reset button configuration before creating new buttons
		clear_buttons();		
		camera = view_get_camera(0);
		cx = camera_get_view_x(camera);
		cy = camera_get_view_y(camera);
		cw = camera_get_view_width(camera);
		ch = camera_get_view_height(camera);
		b1 = create_buttons(spr_big_button,cx+cw/2,cy + 80,0,0,"Resume",true,false,trigger_button_resume);
		b2 = create_buttons(spr_big_button,cx+cw/2,cy + 120,0,1,"Quit",false,false,trigger_button_quit);
		b1.depth = -100000;
		b2.depth = -100000;
		
    }
	
	unpause = false;
}
