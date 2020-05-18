/// @description Handle some effects when selected
// 


if ( selected ){
	//Trigger things that should happen only when button is JUST selected
	if ( !just_selected ){
		//Balloon button out when first selected
		alarm[1] = 20;
	}
	just_selected = true;		
}
else {
	just_selected = false;	
}