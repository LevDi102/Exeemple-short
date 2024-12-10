// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function Playerstate_Ledge(){
	//Sortir si on saute 
	if jumpkey == true
	{
		yspd = 0;
		xspd = 0;
		yspd += jumpspd
		state = PLAYERSTATE.FREE;
	}

}