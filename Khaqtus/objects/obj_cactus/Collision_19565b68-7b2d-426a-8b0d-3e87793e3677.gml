if(sprite_index == spr_cactus){
health-=90;

sprite_index = spr_cactus_iframes;
alarm[1] = room_speed*2;

if(health<=0){
instance_destroy();
lives = 0;
}

repeat(10)
instance_create_layer(x,y, "Instances", obj_debris); //cria escombros
}