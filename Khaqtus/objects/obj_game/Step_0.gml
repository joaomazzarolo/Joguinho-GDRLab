if(keyboard_check_pressed(vk_enter)){//checa se "enter" foi pressionada
	switch(room){ //executa os códigos do room ativo
		case rm_start:
		    audio_play_sound(Game_ST,1,5);
		    room_goto(rm_game);
			break;
			
		case rm_win:
		case rm_gameover:
		    game_restart();
			break;
	}
}

if(room == rm_game){ //se estiver em jogo executa o código abaixo
	if(keyboard_check(ord("R"))){ //se "R" for pressionada o room é reiniciado
	game_restart();
	}
if(score >= 30000){//se o score passar de 30000 o jogador é mandado para o room de vitória
	room_goto(rm_win);
	audio_pause_all();
	audio_play_sound(Win_ST,1,1);
}}
		if(lives <=0){ //se as vidas acabarem antes do score chegar em 1000 o jogador é mandado para o room de derrota
		room_goto(rm_gameover);
		}