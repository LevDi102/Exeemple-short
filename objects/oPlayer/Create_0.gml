leftkey = keyboard_check(ord("Q"));
rightkey = keyboard_check(ord("D"));
jumpkey = keyboard_check(vk_space);
gravkey_up = keyboard_check(ord("E"));
gravkey_down = keyboard_check(ord("A"));

yspd = 1;
jumpspd = -5; 
xspd = 1;
movespd = 1.5;
grav = 0.2;
grav_change_time = 0;
verlan = false

imgspd = 10/60;

state = PLAYERSTATE.FREE;

enum PLAYERSTATE
{
	FREE,
	LEDGE
}

//Gravity

if gravkey_up
{
	
}
