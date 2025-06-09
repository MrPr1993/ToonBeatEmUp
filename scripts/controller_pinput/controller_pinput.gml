// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function controller_pinput(_controlno){
var _attack=global.gpControlAttack[_controlno]//"key_XBUTTON";
var _jump=global.gpControlJump[_controlno]//"key_ABUTTON";
var _special=global.gpControlShield[_controlno]//"key_BBUTTON";
var _super=global.gpControlSuper[_controlno]//"key_YBUTTON";
var _taunt=global.gpControlPunchback[_controlno]//"key_RTBUTTON";
var _punchback=global.gpControlTaunt[_controlno]//"key_LTBUTTON";
var _interact="key_LTBUTTON";
	
	if (input_source_using(INPUT_KEYBOARD, _controlno))
{
key_right = keyboard_check(ord("D")) or keyboard_check(vk_right);
	key_left = -(keyboard_check(ord("A")) or keyboard_check(vk_left));
	key_right_pressed =keyboard_check_pressed(ord("D")) or keyboard_check_pressed(vk_right);
	key_left_pressed = -(keyboard_check_pressed(ord("A")) or keyboard_check_pressed(vk_left));

	key_up = keyboard_check(ord("W")) or keyboard_check(vk_up);

	key_up_pressed = keyboard_check_pressed(ord("W")) or keyboard_check_pressed(vk_up);
	key_down_pressed = -(keyboard_check_pressed(ord("S")) or keyboard_check_pressed(vk_down));
	key_down = keyboard_check(ord("S")) or keyboard_check(vk_down);
	if object_index=oPlayer
	{
	key_down_pressed = -keyboard_check_pressed(ord("S")) or -keyboard_check_pressed(vk_down);
	key_down = keyboard_check(ord("S")) or keyboard_check(vk_down);	
	}
	
	key_jump = keyboard_check_pressed(vk_space) or keyboard_check_pressed(ord(global.ControlJump[_controlno]));
	key_jump_hold =  keyboard_check(vk_space) or keyboard_check(ord(global.ControlJump[_controlno]));
	key_attack = keyboard_check_pressed(ord(global.ControlAttack[_controlno]));
	key_charge= keyboard_check(ord(global.ControlAttack[_controlno]));
	key_release= keyboard_check_released(ord(global.ControlAttack[_controlno]));
	key_shield = keyboard_check(ord(global.ControlShield[_controlno]));
	key_shield_pressed = keyboard_check_pressed(ord(global.ControlShield[_controlno]));
	key_super=keyboard_check_pressed(ord(global.ControlSuper[_controlno]));
	key_taunt=keyboard_check_pressed(ord(global.ControlTaunt[_controlno]));
	key_punchback=keyboard_check_pressed(ord(global.ControlPunchback[_controlno]));

	key_scream=0//keyboard_check(ord("O"));
	key_screamP=0//keyboard_check_pressed(ord("O"));

	key_interact = 0//global.LegacyMode[_controlno]*keyboard_check_pressed(ord(global.ControlInteract[_controlno]));
	
	key_X=keyboard_check_pressed(ord("J"))
	key_Y=keyboard_check_pressed(ord("H"))
	key_A=keyboard_check_pressed(ord("K")) or keyboard_check_pressed(vk_space)
	key_B=keyboard_check_pressed(ord("L"))
	key_LB=keyboard_check_pressed(ord("Y"))
	key_LT=keyboard_check_pressed(ord("Y"))
	key_RB=keyboard_check_pressed(ord("U"))
	key_RT=keyboard_check_pressed(ord("U"))
	
	key_Xh=keyboard_check(ord("J"))
	key_Yh=keyboard_check(ord("H"))
	key_Ah=keyboard_check(ord("K")) or keyboard_check(vk_space)
	key_Bh=keyboard_check(ord("L"))
	key_LBh=keyboard_check(ord("Y"))
	key_LTh=keyboard_check(ord("Y"))
	key_RBh=keyboard_check(ord("U"))
	key_RTh=keyboard_check(ord("U"))
	
	key_accept=keyboard_check_pressed(ord("K")) or keyboard_check_pressed(vk_space)
	key_pause=keyboard_check_pressed(vk_escape);
	key_start=keyboard_check_pressed(vk_escape);
	key_cancel=keyboard_check_pressed(ord("L")) or keyboard_check_pressed(vk_escape)

}
else
{


//var _controlno=1;
key_right = input_check("right",_controlno)//keyboard_check(ord("D"));
	key_left = -input_check("left",_controlno)//-keyboard_check(ord("A"));
	key_right_pressed = input_check_pressed("right",_controlno)//keyboard_check_pressed(ord("D"));
	key_left_pressed = -input_check_pressed("left",_controlno)//-keyboard_check_pressed(ord("A"));

	key_up = input_check("up",_controlno)//keyboard_check(ord("W"));

	key_up_pressed = input_check_pressed("up",_controlno)//keyboard_check_pressed(ord("W"));
	key_down_pressed = -input_check_pressed("down",_controlno)//-keyboard_check_pressed(ord("S"));
	key_down = -input_check("down",_controlno)//keyboard_check(ord("S"));
	if object_index=oPlayer
	{
	key_down_pressed = input_check_pressed("down",_controlno)//-keyboard_check_pressed(ord("S"));
	key_down = input_check("down",_controlno)//keyboard_check(ord("S"));	
	}
	
	key_jump = input_check_pressed(_jump,_controlno)//keyboard_check_pressed(vk_space) or keyboard_check_pressed(ord(global.ControlJump[_controlno]));
	key_jump_hold =  input_check(_jump,_controlno)//keyboard_check(vk_space) or keyboard_check(ord(global.ControlJump[_controlno]));
	key_attack = input_check_pressed(_attack,_controlno)//keyboard_check_pressed(ord(global.ControlAttack[_controlno]));
	key_charge= input_check(_attack,_controlno)//keyboard_check(ord(global.ControlAttack[_controlno]));
	key_release= input_check_released(_attack,_controlno)//keyboard_check_released(ord(global.ControlAttack[_controlno]));
	key_shield = input_check(_special,_controlno)//keyboard_check(ord(global.ControlShield[_controlno]));
	key_shield_pressed = input_check_pressed(_special,_controlno)//keyboard_check_pressed(ord(global.ControlShield[_controlno]));
	key_super=input_check_pressed(_super,_controlno)//keyboard_check_pressed(ord(global.ControlSuper[_controlno]));
	key_taunt=input_check_pressed(_taunt,_controlno)
	key_punchback=input_check_pressed(_punchback,_controlno)	

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
	
	key_Xh=input_check("key_x",_controlno)
	key_Yh=input_check("key_y",_controlno)
	key_Ah=input_check("key_a",_controlno)
	key_Bh=input_check("key_b",_controlno)
	key_LBh=input_check("key_lt",_controlno)
	key_LTh=input_check("key_lt",_controlno)
	key_RBh=input_check("key_rt",_controlno)
	key_RTh=input_check("key_rt",_controlno)
	
	key_accept=input_check_pressed("accept",_controlno)
	key_pause=input_check_pressed("pause",_controlno)
	key_start=input_check_pressed("pause",_controlno)
	key_cancel=input_check_pressed("cancel",_controlno)
}

if object_index=oPlayer
if ContinueSelect=0
if oControl.mirrorMode
{
var saveL=key_left;
var saveLP=key_left_pressed;
var saveR=key_right;
var saveRP=key_right_pressed;

key_left=-abs(saveR)
key_left_pressed=-abs(saveRP)
key_right=abs(saveL)
key_right_pressed=abs(saveLP)
}

}

