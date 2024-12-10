leftkey = keyboard_check(ord("A"));
rightkey = keyboard_check(ord("D"));
jumpkey = keyboard_check(vk_space);
gravkey_up = keyboard_check(ord("E"));
gravkey_down = keyboard_check(ord("Q"));

switch (state)
{
	case PLAYERSTATE.FREE: Playerstate_Free(); break;
	case PLAYERSTATE.LEDGE: Playerstate_Ledge(); break;
}

if place_meeting(x,y,oGravityZone)
{
	
	verlan = true;
}

if gravkey_up
{
	image_yscale = -1;
	grav = - 0.2;
	jumpspd = 5;
	verlan = true;
}
if gravkey_down
{
	image_yscale = 1;
	grav = 0.2;
	jumpspd = -5;
	verlan = false;
}