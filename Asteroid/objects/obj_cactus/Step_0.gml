if(keyboard_check(vk_left)||keyboard_check(ord("A"))){ //verifica a seta para esquerda ou A
    image_angle += 2; //gira a nave 2 graus no sentido anti-horário
    global.a = image_angle;
}
if(keyboard_check(vk_right)||keyboard_check(ord("D"))){ //verifica a seta para direita ou D
    image_angle -= 2; //gira a nave 2 graus no sentido horário
	global.a = image_angle;
}
if(keyboard_check(vk_up)||keyboard_check(ord("W"))) //verifica a seta para cima ou W
    motion_add(image_angle, 0.03); //acelera em direção a "frente" da nave

if(keyboard_check(vk_down)||keyboard_check(ord("S"))){ //verifica a seta para baixo ou S
    if(speed>0)
	speed = 0; //freia a nave
}
if(keyboard_check_pressed(vk_space)){ //verifica se a barra de espaço está pressionada
    var inst = instance_create_layer(x,y, "Instances", obj_bullet); //variável criada para pegar o ID dos tiros e criá-los
    inst.direction = image_angle; //tiros recebem a direção da "frente" da nave
}



move_wrap(true,true, sprite_width/4); //"prende" a nave às limitações da tela colocando-a para o outro lado usando 1/4 do tamanho do asset como referência de tamanho