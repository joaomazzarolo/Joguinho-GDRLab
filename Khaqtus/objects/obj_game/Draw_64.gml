if(room==rm_game){
	var aux = global.maxhealth/200;
	var pc = (health/global.maxhealth)*100;
         draw_text(20, 20, "SCORE:" + string(score)); //escreve nas posições x e y especificadas.
         draw_healthbar(x+15, y+15, x+(100*aux), y+20, pc, c_black, c_red, c_lime, 0, true, true);

}