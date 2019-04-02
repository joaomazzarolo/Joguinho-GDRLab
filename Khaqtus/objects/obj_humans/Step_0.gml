if (instance_exists(obj_cactus)&&score<=1000)
move_towards_point(obj_cactus.x, obj_cactus.y, 0.35);

if (instance_exists(obj_cactus)&&score>1000&&score<=2500)
move_towards_point(obj_cactus.x, obj_cactus.y, 0.5);

if (instance_exists(obj_cactus)&&score>2500&&score<=5000)
move_towards_point(obj_cactus.x, obj_cactus.y, 0.65);

if (instance_exists(obj_cactus)&&score>5000&&score<=150000)
move_towards_point(obj_cactus.x, obj_cactus.y, 0.8);

image_angle = direction;

move_wrap(true,true, sprite_width/4); //"prende" o asteróide às limitações da tela colocando-o para o outro lado usando 1/4 do tamanho do asset como referência de tamanho