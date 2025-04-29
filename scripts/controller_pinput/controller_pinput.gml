// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function controller_pinput(_controlno){

//var _controlno=1;
keytick=0;
	key_right_pressed = 0;
	key_left_pressed = 0;
	key_up_pressed = 0;
	key_down_pressed = 0;


key_right = input_check("right",_controlno)//keyboard_check(ord("D"));
	key_left = -input_check("left",_controlno)//-keyboard_check(ord("A"));
	key_right_pressed = input_check_pressed("right",_controlno)//keyboard_check_pressed(ord("D"));
	key_left_pressed = -input_check_pressed("left",_controlno)//-keyboard_check_pressed(ord("A"));

	key_jump = input_check_pressed("key_a",_controlno)//keyboard_check_pressed(vk_space) or keyboard_check_pressed(ord(global.ControlJump[_controlno]));
	key_jump_hold =  input_check("key_a",_controlno)//keyboard_check(vk_space) or keyboard_check(ord(global.ControlJump[_controlno]));
	key_up = input_check("up",_controlno)//keyboard_check(ord("W"));
	key_down = input_check("down",_controlno)//keyboard_check(ord("S"));
	key_up_pressed = input_check_pressed("up",_controlno)//keyboard_check_pressed(ord("W"));
	key_down_pressed = input_check_pressed("down",_controlno)//-keyboard_check_pressed(ord("S"));
	key_attack = input_check_pressed("key_x",_controlno)//keyboard_check_pressed(ord(global.ControlAttack[_controlno]));
	key_charge= input_check("key_x",_controlno)//keyboard_check(ord(global.ControlAttack[_controlno]));
	key_release= input_check_released("key_x",_controlno)//keyboard_check_released(ord(global.ControlAttack[_controlno]));
	key_shield = input_check("key_b",_controlno)//keyboard_check(ord(global.ControlShield[_controlno]));
	key_shield_pressed = input_check_pressed("key_b",_controlno)//keyboard_check_pressed(ord(global.ControlShield[_controlno]));
	key_super=input_check_pressed("key_y",_controlno)//keyboard_check_pressed(ord(global.ControlSuper[_controlno]));
	
	key_scream=0//keyboard_check(ord("O"));
	key_screamP=0//keyboard_check_pressed(ord("O"));

	key_interact = 0//global.LegacyMode[_controlno]*keyboard_check_pressed(ord(global.ControlInteract[_controlno]));
	
	key_X=input_check_pressed("key_x",_controlno)
	key_Y=input_check_pressed("key_y",_controlno)
	key_A=input_check_pressed("key_a",_controlno)
	key_B=input_check_pressed("key_b",_controlno)
	key_LB=input_check_pressed("key_lt",_controlno)
	key_LT=input_check_pressed("key_lt",_controlno)
	key_RB=input_check_pressed("key_rt",_controlno)
	key_RT=input_check_pressed("key_rt",_controlno)
	
	key_taunt=input_check_pressed("key_rt",_controlno)
	key_punchback=input_check_pressed("key_lt",_controlno)
	
	key_pause=0 ///Pause
	key_start=0
	
}