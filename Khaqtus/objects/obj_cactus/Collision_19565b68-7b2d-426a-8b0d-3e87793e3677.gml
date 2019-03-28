if(sprite_index == spr_cactus){
lives-=1;

sprite_index = spr_cactus_iframes;
alarm[1] = room_speed*2;

repeat(10)
instance_create_layer(x,y, "Instances", obj_debris); //cria escombros
}