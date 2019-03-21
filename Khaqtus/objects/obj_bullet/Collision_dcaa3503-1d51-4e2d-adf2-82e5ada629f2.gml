instance_destroy(); //destrói o objeto

with(other){ //invoca o outro objeto da colisão
    instance_destroy();
    score += 100;
    repeat(10) //função para repetir o código x vezes
        instance_create_layer(x,y, "Instances", obj_debris); //Cria escombros

}