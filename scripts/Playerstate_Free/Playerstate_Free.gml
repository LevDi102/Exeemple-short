// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function Playerstate_Free(){





//moving
xspd = (rightkey - leftkey)*movespd;
yspd += grav;

if jumpkey == true && place_meeting(x,y+yspd,oWall)
{
	yspd += jumpspd;
}

//Collision
var _atLedge = false;
if place_meeting(x+xspd,y,oWall)
{
	// il y t'il un bord?
	var _horiWall = instance_place(x + xspd, y , oWall)
	if verlan == false
	{
		if (!position_meeting((sign(xspd) == 1) ? _horiWall.bbox_left : _horiWall.bbox_right, _horiWall.bbox_top - 1, oWall))
		{
			_atLedge = true;
			var _LedgeAboveOrBelow = sign(oPlayer.bbox_top - _horiWall.bbox_top);
		}
	}
	else{
		if (!position_meeting((sign(xspd) == 1) ? _horiWall.bbox_left : _horiWall.bbox_right, _horiWall.bbox_bottom - 1, oWall))
		{
			_atLedge = true;
			var _LedgeAboveOrBelow = sign(oPlayer.bbox_bottom - _horiWall.bbox_bottom);
		}
	}
	xspd = 0;
}
if place_meeting(x,y+yspd,oWall)
{
	yspd = 0;
}


//animation
if xspd != 0
{
	image_index += imgspd;
}
x += xspd;
y += yspd;

//S'accrocher a une parois si on passe a coté d'une
if (_atLedge) && (_LedgeAboveOrBelow != sign(oPlayer.bbox_top - _horiWall.bbox_top))
{
	y = _horiWall.bbox_top + sprite_get_yoffset(sCarlos);
	state = PLAYERSTATE.LEDGE;
}

}