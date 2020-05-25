//The purpose of this script is to create sprites out of other sprites, or little chunks

//Chunk size
var chunk_sprite = argument0;
var chunk_size =   argument1;
var chunk_x_org =  argument2;
var chunk_y_org =  argument3;
var chunk_start_y = argument4;
var chunk_type = argument5;


var chunk_r = floor( sprite_get_height(chunk_sprite) / chunk_size );
var chunk_c = floor( sprite_get_width(chunk_sprite) / chunk_size );


for ( rr = 0;rr < chunk_r;rr+=1)
{
    for ( cc = 0;cc < chunk_c;cc+=1)
    {
        chunk = instance_create_depth(chunk_x_org + cc * chunk_size,chunk_y_org +rr * chunk_size,0,obj_sprite_chunk )
        chunk.sprite_index = chunk_sprite;
        
        
        chunk.l = cc * chunk_size;
        chunk.t = rr * chunk_size;
        
        chunk.w = chunk_size;
        chunk.h = chunk_size;
    
        chunk.type = chunk_type;
        chunk.start_y = chunk_start_y - 2 + random(4);         
        chunk.speed = 2 + random(1);
        chunk.direction = random(360);
    } 
}
 
