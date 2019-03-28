image_alpha -= 0.01;
if(image_alpha <= 0) //se a cor ficar abaixo de transparente os escombros são apagados
    instance_destroy();
