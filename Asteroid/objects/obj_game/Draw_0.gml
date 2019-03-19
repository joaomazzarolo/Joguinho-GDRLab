switch(room){ //executa o código para cada 
    case rm_game: 
         draw_text(20, 20, "SCORE:" + string(score)); //escreve nas posições x e y especificadas.
         draw_text(20, 60, "LIVES:" + string(lives));
    break;
	
    case rm_start:
	    draw_set_halign(fa_center); //alinha as funções draw com o centro da tela
	    var c = c_green;
	    draw_text_transformed_color(
		    room_width/2, 50, "TLSC",
			1.5, 1.5, 0, c,c,c,c, 1
		); //escreve o texto em uma posição específica no espectro de cor desejado pelo programador
		
		draw_text(
		    room_width/2, 150, 
@"Reach 1000 points to win

UP/W: move
LEFT/A or RIGHT/D: change direction
SPACE: shoot

>> PRESS ENTER TO START <<"
		);
		draw_set_halign(fa_left);
	break;
	
	case rm_win:
	    draw_set_halign(fa_center);
	    var c = c_lime;
	    draw_text_transformed_color(
		    room_width/2, 200, "YOU SURVIVED!",
			1.5, 1.5, 0, c,c,c,c, 1
		); //escreve o texto em uma posição específica no espectro de cor desejado pelo programador
		draw_text(
		    room_width/2, 300, 
            ">> PRESS ENTER TO RESTART <<"
		);
		draw_set_halign(fa_left);
	break;
	
	case rm_gameover:
	    draw_set_halign(fa_center);
	    var c = c_red;
	    draw_text_transformed_color(
		    room_width/2, 200, "YOU DIED",
			3, 3, 0, c,c,c,c, 1
		); //escreve o texto em uma posição específica no espectro de cor desejado pelo programador
		draw_text(
		    room_width/2, 250, 
            "FINAL SCORE: "+string(score)
		);
			draw_text(
		    room_width/2, 300, 
            ">> PRESS ENTER TO RESTART <<"
		);
		draw_set_halign(fa_left); //alinha a função draw com o lado esquerdo da tela
	break;
}