/// @description Insert description here
// You can write your code in this editor

assign_input();

for (var _p=0;_p < array_length_1d(global.p_pad);_p++){

	if ( global.pad_up_pressed[global.p_pad[_p] ] ){
		my_text = instance_create_layer(220 + random(20), 120,"Instances",obj_bouncing_text);
		my_text.text = string(_p) + " - " + "up";
	}
	
	if ( global.pad_down_pressed[global.p_pad[_p] ] ){
		my_text = instance_create_layer(220 + random(20), 120,"Instances",obj_bouncing_text);
		my_text.text = string(_p) + " - " + "down";
	}
	
	if ( global.pad_left_pressed[global.p_pad[_p] ] ){
		my_text = instance_create_layer(220 + random(20), 120,"Instances",obj_bouncing_text);
		my_text.text = string(_p) + " - " + "left";
	}
	
	if ( global.pad_right_pressed[global.p_pad[_p] ] ){
		my_text = instance_create_layer(220 + random(20), 120,"Instances",obj_bouncing_text);
		my_text.text = string(_p) + " - " + "right";
	}
	
	
	if ( global.pad_b1_pressed[global.p_pad[_p] ] ){
		my_text = instance_create_layer(220 + random(20), 120,"Instances",obj_bouncing_text);
		my_text.text = string(_p) + " - " + "B1";
	}
	
	if ( global.pad_b2_pressed[global.p_pad[_p] ] ){
		my_text = instance_create_layer(220 + random(20), 120,"Instances",obj_bouncing_text);
		my_text.text = string(_p) + " - " + "B2";
	}
	
	if ( global.pad_b3_pressed[global.p_pad[_p] ] ){
		my_text = instance_create_layer(220 + random(20), 120,"Instances",obj_bouncing_text);
		my_text.text = string(_p) + " - " + "B3";
	}
	
	if ( global.pad_b4_pressed[global.p_pad[_p] ] ){
		my_text = instance_create_layer(220 + random(20), 120,"Instances",obj_bouncing_text);
		my_text.text = string(_p) + " - " + "B4";
	}
	
	if ( global.pad_b5_pressed[global.p_pad[_p] ] ){
		my_text = instance_create_layer(220 + random(20), 120,"Instances",obj_bouncing_text);
		my_text.text = string(_p) + " - " + "B5";
	}
	
	if ( global.pad_b6_pressed[global.p_pad[_p] ] ){
		my_text = instance_create_layer(220 + random(20), 120,"Instances",obj_bouncing_text);
		my_text.text = string(_p) + " - " + "B6";
	}
	
	if ( global.pad_start_pressed[global.p_pad[_p] ] ){
		my_text = instance_create_layer(220 + random(20), 120,"Instances",obj_bouncing_text);
		my_text.text = string(_p) + " - " + "START";
	}
}