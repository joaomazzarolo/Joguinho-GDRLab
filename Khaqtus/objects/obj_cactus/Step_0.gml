if(keyboard_check(vk_left)||keyboard_check(ord("A"))){ //verifica a seta para esquerda ou A
    image_angle += 2; //gira o cacto 2 graus no sentido anti-horário
    global.a = image_angle;
}
if(keyboard_check(vk_right)||keyboard_check(ord("D"))){ //verifica a seta para direita ou D
    image_angle -= 2; //gira o cacto 2 graus no sentido horário
	global.a = image_angle;
}

if(keyboard_check(vk_up) || keyboard_check(ord("W"))) //verifica a seta para cima ou W
motion_add(image_angle, 0.03); //acelera em direção a "frente" do cacto

if(keyboard_check(vk_down)||keyboard_check(ord("S"))){ //verifica a seta para baixo ou S
    if(speed>0)
	speed = 0; //freia a nave
}
if(keyboard_check_pressed(vk_space)){ //verifica se a barra de espaço está pressionada
    var inst = instance_create_layer(x,y, "Instances", obj_bullet); //variável criada para pegar o ID dos tiros e criá-los
    inst.direction = image_angle; //tiros recebem a direção da "frente" do cacto
}

if(keyboard_check_pressed(ord("Q")) && global.special==1){
    repeat(6){
	var inst = instance_create_layer(x,y, "Instances", obj_bullet); //variável criada para pegar o ID dos tiros e criá-los
    inst.direction = global.a //tiros recebem a direção da "frente" do cacto
	global.a += 60;
}
global.special = 0;
alarm[2] = room_speed*15;
}

if(speed>0&&!keyboard_check(vk_up)&&!keyboard_check(ord("W"))) //checa se o objeto está se movendo e se a tecla de andar não está pressionada
speed -= 0.08;

if(speed<0) //evita que o código de redução de velocidade acelere o jogador para trás
speed = 0;