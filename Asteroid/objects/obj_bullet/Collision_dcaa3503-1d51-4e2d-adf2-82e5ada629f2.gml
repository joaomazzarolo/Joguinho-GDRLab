instance_destroy(); //destrói o objeto

with(other){ //invoca o outro objeto da colisão
    instance_destroy();
	
	if(sprite_index == spr_ast_big){ //se for asteróide grande, quebrar em dois médios
	    score += 25;
		repeat(2){
		var new_asteroid = instance_create_layer(x,y, "Instances", obj_asteroid); //salva o ID do asteróide destruído para ser usado nos que serão gerados
		new_asteroid.sprite_index = spr_ast_med; //cria o novo asteróide usando o ID
                 }
    } else 	if(sprite_index == spr_ast_med){ //se for asteróide médio, quebrar em dois pequenos
	     score += 15;
		 repeat(2){
		 var new_asteroid = instance_create_layer(x,y, "Instances", obj_asteroid); //salva o ID do asteróide destruído para ser usado nos que serão gerados
		 new_asteroid.sprite_index = spr_ast_small; //cria o novo asteróide usando o ID
                  }
        }
		score += 5;
    repeat(10) //função para repetir o código x vezes
        instance_create_layer(x,y, "Instances", obj_debris); //Cria escombros

}