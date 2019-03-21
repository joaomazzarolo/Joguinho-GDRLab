if(room == rm_game){ //executa o código se o room for o do jogo
	repeat(6){ //repete 6 vezes o código entre chaves
	var xx = choose( //escolhe aleatoriamente
	    irandom_range(0, room_width*0.3), //escolhe um espaço entre 0 e 1/3 da largura da tela
		irandom_range(room_width*0.7, room_width) //escolhe um espaço entre 7/10 da largura e da largura máxima
	);
	var yy = choose(
	    irandom_range(0, room_height*0.3), //escolhe um espaço entre 0 e 1/3 da altura da tela
		irandom_range(room_height*0.7, room_height) //escolhe um espaço entre 7/10 e a largura máxima da tela
	);
	instance_create_layer(xx, yy, "Instances", obj_humans); //cria um objeto humano nas coordenadas x e y escolhidas aleatoriamente
	}
	
	alarm [0] = 60; //ativa o alarme em 60 frames
}