/// @description Transition in
// 

//Activate all deactivated instances
instance_activate_all();
//Clear out the sprite and surface
if ( sprite_exists( screen_sprite ) ) {
	sprite_delete( screen_sprite);
}

instance_destroy();