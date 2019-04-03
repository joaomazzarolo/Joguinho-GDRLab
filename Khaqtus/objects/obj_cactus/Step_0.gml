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

if(keyboard_check_pressed(vk_space)&&sprite_index!=spr_cactus_iframes){ //verifica se a barra de espaço está pressionada
	sprite_index = spr_cactus_attack;
    var inst = instance_create_layer(x,y, "Instances", obj_bullet); //variável criada para pegar o ID dos tiros e criá-los
    inst.direction = image_angle; //tiros recebem a direção da "frente" do cacto
	alarm[3] = room_speed/5;
}

if(keyboard_check_pressed(ord("Q")) && global.special==1){
	repeat(3){
	repeat(360){
	var inst = instance_create_layer(x,y, "Instances", obj_bullet); //variável criada para pegar o ID dos tiros e criá-los
    inst.direction = global.a //tiros recebem a direção da "frente" do cacto
	global.a += 1;
	}
	}
	
global.special = 0;
alarm[2] = room_speed*15;
}

if(speed>0&&!keyboard_check(vk_up)&&!keyboard_check(ord("W"))) //checa se o objeto está se movendo e se a tecla de andar não está pressionada
speed -= 0.08;

if(speed<0) //evita que o código de redução de velocidade acelere o jogador para trás
speed = 0;

if (score==1000&&global.aux==0){
health = 300;
global.aux = 1;
global.maxhealth = health;
}

if (score==1100&&global.aux==1){
global.aux = 0;
}

if (score==2500&&global.aux==0){
health = 450;
global.aux = 1;
global.maxhealth = health;
}

if (score==2600&&global.aux==1){
global.aux = 0;
}

if (score==5000&&global.aux==0){
health = 600;
global.aux = 1;
global.maxhealth = health;
}

if (score==5100&&global.aux==1){
global.aux = 0;
}

if (score==150000&&global.aux==0){
health = 900;
global.aux = 1;
global.maxhealth = health;
}

if(sprite_index==spr_cactus_iframes&&image_alpha!=0)
image_alpha = image_alpha - 0.05;

if(sprite_index == spr_cactus_iframes && image_alpha==0)
image_alpha = 1;

if(sprite_index == spr_cactus)
image_alpha = 1;