/// @description Other player hit
//

if ( other.id != creator ){

	with(obj_camera){
		alarm[0] = 5;
	}
	
	repeat(3){
		instance_create_layer(x,y,"Instances",obj_paricle_a);	
	}
	instance_destroy();
	//Reduce player health
	other.hp -= 1;

}