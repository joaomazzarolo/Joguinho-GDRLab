if (instance_exists(obj_cactus)&&score<=300)
move_towards_point(obj_cactus.x, obj_cactus.y, 0.25);

if (instance_exists(obj_cactus)&&score>300&&score<=600)
move_towards_point(obj_cactus.x, obj_cactus.y, 0.3);

if (instance_exists(obj_cactus)&&score>600&&score<=900)
move_towards_point(obj_cactus.x, obj_cactus.y, 0.35);

if (instance_exists(obj_cactus)&&score>900&&score<=1000)
move_towards_point(obj_cactus.x, obj_cactus.y, 0.4);

image_angle = direction;

if(distance_to_object(obj_cactus)<6&&alarm[3]==0){
image_angle += 45;
alarm[3] = room_speed*1.5;
}

move_wrap(true,true, sprite_width/4); //"prende" o asteróide às limitações da tela colocando-o para o outro lado usando 1/4 do tamanho do asset como referência de tamanho