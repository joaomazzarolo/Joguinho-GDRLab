if(room!=rm_game) 
	exit;
	
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
