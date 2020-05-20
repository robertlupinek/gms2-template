/// @description Basically useless tag effect between players for fun.
//  
// You can write your code in this editor
if ( !alarm[0] && !other.it ){
	it = false;
	move_bounce_all(true);
	alarm[0] = 60;
	with(other){
		move_bounce_all(true);
		it = true;
		alarm[0] = 60;
	}
}



