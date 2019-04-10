if(room!=rm_game) 
	exit;

if (score<=1000){
	if(choose(0,1) == 0){
	//escolhe entre os lados
	var xx = choose(0, room_width); //escolhe ou extrema esquerda ou direita
	var yy = irandom_range(0, room_height); //escolhe qualquer altura
} else {
	//escolhe entre teto ou chão
	var xx = irandom_range(0, room_width); //escolhe qualquer ponto da largura
	var yy = choose(0, room_height);//escolhe teto ou chão
}
instance_create_layer(xx, yy, "Instances", obj_humans); // cria um novo humano
alarm [0] = 4*room_speed; //reseta o alarme para 4 vezes o room_speed que tem o número de frames(60)
}

if (score>1000&&score<=2500){
repeat(4){
	if(choose(0,1) == 0){
	//escolhe entre os lados
	var xx = choose(0, room_width); //escolhe ou extrema esquerda ou direita
	var yy = irandom_range(0, room_height); //escolhe qualquer altura
} else {
	//escolhe entre teto ou chão
	var xx = irandom_range(0, room_width); //escolhe qualquer ponto da largura
	var yy = choose(0, room_height);//escolhe teto ou chão
}
instance_create_layer(xx, yy, "Instances", obj_humans); // cria um novo humano
alarm [0] = 3*room_speed; //reseta o alarme para 3 vezes o room_speed que tem o número de frames(60)
}
}

if (score>2500&&score<=5000){
repeat(8){
	if(choose(0,1) == 0){
	//escolhe entre os lados
	var xx = choose(0, room_width); //escolhe ou extrema esquerda ou direita
	var yy = irandom_range(0, room_height); //escolhe qualquer altura
} else {
	//escolhe entre teto ou chão
	var xx = irandom_range(0, room_width); //escolhe qualquer ponto da largura
	var yy = choose(0, room_height);//escolhe teto ou chão
}
instance_create_layer(xx, yy, "Instances", obj_humans); // cria um novo humano
alarm [0] = 2*room_speed; //reseta o alarme para 2 vezes o room_speed que tem o número de frames(60)
}
}

if (score>5000&&score<=150000){
repeat(14){
	if(choose(0,1) == 0){
	//escolhe entre os lados
	var xx = choose(0, room_width); //escolhe ou extrema esquerda ou direita
	var yy = irandom_range(0, room_height); //escolhe qualquer altura
} else {
	//escolhe entre teto ou chão
	var xx = irandom_range(0, room_width); //escolhe qualquer ponto da largura
	var yy = choose(0, room_height);//escolhe teto ou chão
}
instance_create_layer(xx, yy, "Instances", obj_humans); // cria um novo humano
alarm [0] = 2*room_speed; //reseta o alarme para 2 vezes o room_speed que tem o número de frames(60)
}
}