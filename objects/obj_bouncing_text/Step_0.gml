/// @description bouncing text step
// 

//Check if outside view 0 boundaries left, right, NOT top, bottom 
if ( check_outside_view(x,y,x,y,0,true,true,false,true) ){
	instance_destroy();
}