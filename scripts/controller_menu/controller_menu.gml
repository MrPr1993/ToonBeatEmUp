// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function controller_menu(){
//var _controlno=1;
var _KEY_right = 0;
var _KEY_right_pressed = 0;
var _KEY_left = 0;
var _KEY_left_pressed = 0;
var _KEY_up = 0;
var _KEY_up_pressed = 0;
var _KEY_down = 0;
var _KEY_down_pressed = 0;

	var _KEY_X= 0;
	var _KEY_A= 0;
	var _KEY_B= 0;
	var _KEY_Y= 0;
	var _KEY_LB=0
	var _KEY_LT= 0;
	var _KEY_RB=0
	var _KEY_RT= 0;

	var _KEY_Xh= 0;
	var _KEY_Ah=0;
	var _KEY_Bh= 0;
	var _KEY_Yh= 0;
	var _KEY_LBh=0
	var _KEY_LTh=0;
	var _KEY_RBh=0
	var _KEY_RTh=0;
	
	var _KEY_attack = 0
	var _KEY_interact = 0
	var _KEY_charge=  0
	var _KEY_release= 0
	var _KEY_shield = 0
	var _KEY_shield_pressed =  0
	var _KEY_super = 0
	var _KEY_jump = 0
	var _KEY_jump_hold = 0
	
	var _KEY_taunt=0;
	var _KEY_punchback=0;
	
	var _KEY_pause=0; ///Pause
	var _KEY_start=0;
var _KEY_cancel=0;
var _KEY_cancelH=0;

var _DpadL=0;
var _DpadR=0;
var _DpadU=0;
var _DpadD=0;
var _DpadLh=0;
var _DpadRh=0;
var _DpadUh=0;
var _DpadDh=0;

key_right = 0;
key_right_pressed = 0;
key_left = 0;
key_left_pressed = 0;
key_up = 0;
key_up_pressed = 0;
key_down = 0;
key_down_pressed = 0;

	key_X= 0;
	key_A= 0;
	key_B= 0;
	key_Y= 0;
	key_LB=0
	key_LT= 0;
	key_RB=0
	key_RT= 0;

	key_Xh= 0;
	key_Ah=0;
	key_Bh= 0;
	key_Yh= 0;
	key_LBh=0
	key_LTh=0;
	key_RBh=0
	key_RTh=0;
	
	key_attack = 0
	key_interact = 0
	key_charge=  0
	key_release= 0
	key_shield = 0
	key_shield_pressed =  0
	key_super = 0
	
	key_taunt=0;
	key_punchback=0;
	
	key_pause=0; ///Pause
	key_start=0;
key_cancel=0;
key_cancelH=0;

if canControl=1
{
_KEY_right = keyboard_check(ord("D"));
_KEY_right_pressed = keyboard_check_pressed(ord("D"));
_KEY_left = keyboard_check(ord("A"));
_KEY_left_pressed = keyboard_check_pressed(ord("A"));
_KEY_up = keyboard_check(ord("W"));
_KEY_up_pressed = keyboard_check_pressed(ord("W"));
_KEY_down = keyboard_check(ord("S"));
_KEY_down_pressed = keyboard_check_pressed(ord("S"));

	_KEY_X= keyboard_check_pressed(ord("H"))
	_KEY_A= keyboard_check_pressed(ord("K")) or keyboard_check_pressed(vk_space)
	_KEY_B= keyboard_check_pressed(ord("J"))
	_KEY_Y= keyboard_check_pressed(ord("L"))
	_KEY_LB=0
	_KEY_LT= keyboard_check_pressed(ord("U"))
	_KEY_RB=0
	_KEY_RT= keyboard_check_pressed(ord("I"))

	_KEY_Xh= keyboard_check(ord("H"))
	_KEY_Ah=keyboard_check(ord("K"))  or keyboard_check(vk_space)
	_KEY_Bh= keyboard_check(ord("J"))
	_KEY_Yh= keyboard_check(ord("L"))
	_KEY_LBh=0
	_KEY_LTh=keyboard_check(ord("U"))
	_KEY_RBh=0
	_KEY_RTh=keyboard_check(ord("I"))
	
	_KEY_attack = 0
	_KEY_interact = 0
	_KEY_charge=  0
	_KEY_release= 0
	_KEY_shield = 0
	_KEY_shield_pressed =  0
	
	_KEY_super = 0
	_KEY_jump = 0
	_KEY_jump_hold = 0
	
	_KEY_taunt=0;
	_KEY_punchback=0;
	
_KEY_pause=keyboard_check_pressed(vk_enter) ///Pause
_KEY_start=keyboard_check_pressed(vk_enter)
_KEY_cancel=keyboard_check_pressed(vk_escape)
_KEY_cancelH= keyboard_check(vk_escape)

}

for (var i=0;i<gamepad_get_device_count();i++)
{//var i=0;
if gamepad_is_connected(i)
{

	
key_right =_KEY_right;
key_right_pressed =_KEY_right_pressed
key_left =-_KEY_left
key_left_pressed =-_KEY_left_pressed
key_up =_KEY_up
key_up_pressed =_KEY_up_pressed
key_down =-_KEY_down
key_down_pressed =-_KEY_down_pressed

	key_X=_KEY_X or gamepad_button_check_pressed(i,gp_face1)
	key_A=_KEY_A or gamepad_button_check_pressed(i,gp_face2)
	key_B=_KEY_B or gamepad_button_check_pressed(i,gp_face3)
	key_Y=_KEY_Y or gamepad_button_check_pressed(i,gp_face4)
	key_LB=_KEY_LB
	key_LT=_KEY_LT or gamepad_button_check_pressed(i,gp_shoulderl)
	key_RB=_KEY_RB
	key_RT=_KEY_RT or gamepad_button_check_pressed(i,gp_shoulderr)

	key_Xh=_KEY_Xh or gamepad_button_check(i,gp_face1)
	key_Ah=_KEY_Ah or gamepad_button_check(i,gp_face2)
	key_Bh=_KEY_Bh or gamepad_button_check(i,gp_face3)
	key_Yh=_KEY_Yh or gamepad_button_check(i,gp_face4)
	key_LBh=_KEY_LBh
	key_LTh=_KEY_LTh or gamepad_button_check(i,gp_shoulderl)
	key_RBh=_KEY_RBh
	key_RTh=_KEY_RTh or gamepad_button_check(i,gp_shoulderr)
	
	key_attack =_KEY_attack or gamepad_button_check_pressed(i,gp_face1)
	key_interact =_KEY_interact or gamepad_button_check_pressed(i,gp_face1) 
	key_charge=_KEY_charge or gamepad_button_check(i,gp_face1)
	key_release=_KEY_release or gamepad_button_check_released(i,gp_face1);
	key_shield =_KEY_shield or gamepad_button_check(i,gp_face3)
	key_shield_pressed =_KEY_shield_pressed or gamepad_button_check_pressed(i,gp_face3)
	key_super =_KEY_super or gamepad_button_check_pressed(i,gp_face4)
	
	key_taunt=_KEY_taunt or gamepad_button_check_pressed(i,gp_shoulderl)
	key_punchback=_KEY_punchback or gamepad_button_check_pressed(i,gp_shoulderr)
	
key_pause=_KEY_pause or gamepad_button_check_pressed(i,gp_start)///Pause
key_start=_KEY_start or gamepad_button_check_pressed(i,gp_start)
key_cancel=_KEY_cancel or gamepad_button_check_pressed(i,gp_face3)
key_cancelH=_KEY_cancelH or gamepad_button_check(i,gp_face3)

key_jump = _KEY_jump or gamepad_button_check_pressed(i,gp_face2)
key_jump_hold = _KEY_jump_hold or gamepad_button_check(i,gp_face2)

var Haxis=gamepad_axis_value(i,gp_axislh);
var Vaxis=gamepad_axis_value(i,gp_axislv);

	 // left pressed
    if (!stick_left_held && gamepad_axis_value(i,gp_axislh) <= -threshold)
    {
        stick_left_held = true;
        stick_left_pressed = true;
        stick_left_released = false;
        keytick=1;
    }

    // left released
    else if (stick_left_held && gamepad_axis_value(i,gp_axislh) > -threshold)
    {
        stick_left_held = false;
        stick_left_pressed = false;
        stick_left_released = true;
        keytick=1;
    }

    // right pressed
    if (!stick_right_held && gamepad_axis_value(i,gp_axislh) >= threshold)
    {
        stick_right_held = true;
        stick_right_pressed = true;
        stick_right_released = false;
        keytick=1;
    }

    // right released
    else if (stick_right_held && gamepad_axis_value(i,gp_axislh) < threshold)
    {
        stick_right_held = false;
        stick_right_pressed = false;
        stick_right_released = true;
        keytick=1;
    }
 
    // up pressed
    if (!stick_up_held && gamepad_axis_value(i,gp_axislv) >= threshold)
    {
        stick_up_held = true;
        stick_up_pressed = true;
        stick_up_released = false;
        keytick=1;
    }

    // up released
    else if (stick_up_held && gamepad_axis_value(i,gp_axislv) < threshold)
    {
        stick_up_held = false;
        stick_up_pressed = false;
        stick_up_released = true;
        keytick=1;
    }

    // down pressed
    if (!stick_down_held && gamepad_axis_value(i,gp_axislv) <= -threshold)
    {
        stick_down_held = true;
        stick_down_pressed = true;
        stick_down_released = false;
        keytick=1;
    }

    // down released
    else if (stick_down_held && gamepad_axis_value(i,gp_axislv) > -threshold)
    {
        stick_down_held = false;
        stick_down_pressed = false;
        stick_down_released = true;
        keytick=1;
    }
	
	
//var _DpadHh=(gamepad_button_check(i,14) - gamepad_button_check(i,15));
//var _DpadVh=(gamepad_button_check(i,14) - gamepad_button_check(i,15));
//var _DpadH=(gamepad_button_check_pressed(i,12) - gamepad_button_check_pressed(i,13));
//var _DpadV=(gamepad_button_check_pressed(i,12) - gamepad_button_check_pressed(i,13));

//if _DpadHh=-1
//_DpadLh=1//(gamepad_button_check(i,gp_padl) - gamepad_button_check(i,gp_padr));
//if _DpadHh=1
//_DpadRh=1//(gamepad_button_check(i,gp_padl) - gamepad_button_check(i,gp_padr));
//if _DpadVh=-1
//_DpadUh=1//(gamepad_button_check(i,gp_padl) - gamepad_button_check(i,gp_padr));
//if _DpadVh=1
//_DpadDh=1//(gamepad_button_check(i,gp_padl) - gamepad_button_check(i,gp_padr));

//if _DpadH=-1
//_DpadL=1//(gamepad_button_check_pressed(i,gp_padl) - gamepad_button_check_pressed(i,gp_padr));
//if _DpadH=1
//_DpadR=1//(gamepad_button_check_pressed(i,gp_padl) - gamepad_button_check_pressed(i,gp_padr));
//if _DpadV=-1
//_DpadU=1//(gamepad_button_check_pressed(i,gp_padl) - gamepad_button_check_pressed(i,gp_padr));
//if _DpadV=1
//_DpadD=1//(gamepad_button_check_pressed(i,gp_padl) - gamepad_button_check_pressed(i,gp_padr));

var _DpadL=abs(gamepad_button_check_pressed(i,gp_padl))
var _DpadR=abs(gamepad_button_check_pressed(i,gp_padr))
var _DpadU=abs(gamepad_button_check_pressed(i,gp_padu))
var _DpadD=abs(gamepad_button_check_pressed(i,gp_padd))
var _DpadLh=abs(gamepad_button_check(i,gp_padl))
var _DpadRh=abs(gamepad_button_check(i,gp_padr))
var _DpadUh=abs(gamepad_button_check(i,gp_padu))
var _DpadDh=abs(gamepad_button_check(i,gp_padd))

key_right =(_KEY_right || stick_right_held || _DpadRh)
key_right_pressed =(_KEY_right_pressed || stick_right_pressed || _DpadR)
key_left =(_KEY_left || stick_left_held || _DpadLh)
key_left_pressed =(_KEY_left_pressed || stick_left_pressed || _DpadL)
key_up =(_KEY_up || stick_down_held || _DpadUh)
key_up_pressed =(_KEY_up_pressed || stick_down_pressed || _DpadU)
key_down =(_KEY_down || stick_up_held || _DpadDh)
key_down_pressed =(_KEY_down_pressed || stick_up_pressed || _DpadD)

if key_left!=0 key_left=-1;
if key_left_pressed!=0 key_left_pressed=-1;

if key_down!=0 key_down=-1;
if key_down_pressed!=0 key_down_pressed=-1;

exit;
}

key_right =_KEY_right;
key_right_pressed =_KEY_right_pressed
key_left =_KEY_left
key_left_pressed =_KEY_left_pressed
key_up =_KEY_up
key_up_pressed =_KEY_up_pressed
key_down =_KEY_down
key_down_pressed =_KEY_down_pressed

	key_X=_KEY_X
	key_A=_KEY_A
	key_B=_KEY_B
	key_Y=_KEY_Y
	key_LB=_KEY_LB
	key_LT=_KEY_LT
	key_RB=_KEY_RB
	key_RT=_KEY_RT

	key_Xh=_KEY_Xh
	key_Ah=_KEY_Ah
	key_Bh=_KEY_Bh
	key_Yh=_KEY_Yh
	key_LBh=_KEY_LBh
	key_LTh=_KEY_LTh
	key_RBh=_KEY_RBh
	key_RTh=_KEY_RTh
	
	key_attack =_KEY_attack
	key_interact =_KEY_interact
	key_charge=_KEY_charge
	key_release=_KEY_release
	key_shield =_KEY_shield
	key_shield_pressed =_KEY_shield_pressed
	key_super =_KEY_super
		
	key_taunt=_KEY_taunt
	key_punchback=_KEY_punchback
	
key_pause=_KEY_pause ///Pause
key_start=_KEY_start
key_cancel=_KEY_cancel
key_cancelH=_KEY_cancelH

if key_left!=0 key_left=-1;
if key_left_pressed!=0 key_left_pressed=-1;

if key_down!=0 key_down=-1;
if key_down_pressed!=0 key_down_pressed=-1;

}
			
	
}	
	
	
			

			
	
