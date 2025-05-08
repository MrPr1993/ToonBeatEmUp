// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function controller_menuinput(){

//var _controlno=1;
for (var i=0;i<gamepad_get_device_count();i++)
{//var i=0;
if gamepad_is_connected(i)
{
keytick=0;
	key_right_pressed = 0;
	key_left_pressed = 0;
	key_up_pressed = 0;
	key_down_pressed = 0;

key_right = input_check("right",i)//keyboard_check(ord("D",i));
	key_left = -input_check("left",i)//-keyboard_check(ord("A",i));
	key_right_pressed = input_check_pressed("right",i)//keyboard_check_pressed(ord("D",i));
	key_left_pressed = -input_check_pressed("left",i)//-keyboard_check_pressed(ord("A",i));

	key_jump = input_check_pressed("key_a",i)//keyboard_check_pressed(vk_space) or keyboard_check_pressed(ord(global.ControlJump[_controlno]));
	key_jump_hold =  input_check("key_a",i)//keyboard_check(vk_space) or keyboard_check(ord(global.ControlJump[_controlno]));
	key_up = input_check("up",i)//keyboard_check(ord("W",i));
	key_down = -input_check("down",i)//keyboard_check(ord("S",i));
	key_up_pressed = input_check_pressed("up",i)//keyboard_check_pressed(ord("W",i));
	key_down_pressed = -input_check_pressed("down",i)//-keyboard_check_pressed(ord("S",i));
	key_attack = input_check_pressed("key_x",i)//keyboard_check_pressed(ord(global.ControlAttack[_controlno]));
	key_charge= input_check("key_x",i)//keyboard_check(ord(global.ControlAttack[_controlno]));
	key_release= input_check_released("key_x",i)//keyboard_check_released(ord(global.ControlAttack[_controlno]));
	key_shield = input_check("key_b",i)//keyboard_check(ord(global.ControlShield[_controlno]));
	key_shield_pressed = input_check_pressed("key_b",i)//keyboard_check_pressed(ord(global.ControlShield[_controlno]));
	key_super=input_check_pressed("key_y",i)//keyboard_check_pressed(ord(global.ControlSuper[_controlno]));
	
	key_scream=0//keyboard_check(ord("O",i));
	key_screamP=0//keyboard_check_pressed(ord("O",i));

	key_interact = 0//global.LegacyMode[_controlno]*keyboard_check_pressed(ord(global.ControlInteract[_controlno]));
	
	key_X=input_check_pressed("key_x",i)
	key_Y=input_check_pressed("key_y",i)
	key_A=input_check_pressed("key_a",i)
	key_B=input_check_pressed("key_b",i)
	key_LB=input_check_pressed("key_lt",i)
	key_LT=input_check_pressed("key_lt",i)
	key_RB=input_check_pressed("key_rt",i)
	key_RT=input_check_pressed("key_rt",i)
	
	key_Xh=input_check("key_x",i)
	key_Yh=input_check("key_y",i)
	key_Ah=input_check("key_a",i)
	key_Bh=input_check("key_b",i)
	key_LBh=input_check("key_lt",i)
	key_LTh=input_check("key_lt",i)
	key_RBh=input_check("key_rt",i)
	key_RTh=input_check("key_rt",i)
	
	key_taunt=input_check_pressed("key_rt",i)
	key_punchback=input_check_pressed("key_lt",i)
	
	key_pause=input_check_pressed("pause",i)
	key_start=input_check_pressed("pause",i)
	key_cancel=input_check_pressed("cancel",i) or input_check_pressed("key_b",i)
	key_cancelH=input_check("cancel",i) or input_check("key_b",i)
}
}
}