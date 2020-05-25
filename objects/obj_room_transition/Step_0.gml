
// Perform transition logic

//Transition out
if ( alarm[0] ){
	image_alpha += 0.05;
}

//Transition in
if ( alarm[1] ){
	image_alpha -= 0.01;
}