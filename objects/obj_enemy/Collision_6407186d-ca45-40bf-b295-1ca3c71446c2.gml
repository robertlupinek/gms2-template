/// @description Insert description here
// You can write your code in this editor
move_bounce_all(true);
with(other){
	move_bounce_all(true);
	if ( !alarm[2] ){
		alarm[2] = 30;
		hp -= 1;
	}
}