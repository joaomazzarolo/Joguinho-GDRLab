if (instance_exists(obj_cactus)&&score<=4900)
move_towards_point(obj_cactus.x, obj_cactus.y, 0.35);

if (instance_exists(obj_cactus)&&score>4900&&score<=14900)
move_towards_point(obj_cactus.x, obj_cactus.y, 0.5);

if (instance_exists(obj_cactus)&&score>15000&&score<=29900)
move_towards_point(obj_cactus.x, obj_cactus.y, 0.65);

if (instance_exists(obj_cactus)&&score>30000&&score<=150000)
move_towards_point(obj_cactus.x, obj_cactus.y, 0.8);

image_angle = direction;

move_wrap(true,true, sprite_width/4); //"prende" o asteróide às limitações da tela colocando-o para o outro lado usando 1/4 do tamanho do asset como referência de tamanho