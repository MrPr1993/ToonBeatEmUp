// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function controller_menu(){
//var _controlno=1;


key_right = keyboard_check(ord("D"));
key_right_pressed = keyboard_check_pressed(ord("D"));
key_left = -keyboard_check(ord("A"));
key_left_pressed = -keyboard_check_pressed(ord("A"));
key_up = keyboard_check(ord("W"));
key_up_pressed = keyboard_check_pressed(ord("W"));
key_down = -keyboard_check(ord("S"));
key_down_pressed = -keyboard_check_pressed(ord("S"));

	key_X= keyboard_check_pressed(ord("H"))
	key_A= keyboard_check_pressed(ord("K")) or keyboard_check_pressed(vk_space)
	key_B= keyboard_check_pressed(ord("J"))
	key_Y= keyboard_check_pressed(ord("L"))
	key_LB=0
	key_LT= keyboard_check_pressed(ord("U"))
	key_RB=0
	key_RT= keyboard_check_pressed(ord("I"))

	key_Xh= keyboard_check(ord("H"))
	key_Ah=keyboard_check(ord("K"))  or keyboard_check(vk_space)
	key_Bh= keyboard_check(ord("J"))
	key_Yh= keyboard_check(ord("L"))
	key_LBh=0
	key_LTh=keyboard_check(ord("U"))
	key_RBh=0
	key_RTh=keyboard_check(ord("I"))
	
	key_attack = 0
	key_interact = 0
	key_charge=  0
	key_release= 0
	key_shield = 0
	key_shield_pressed =  0
	
	key_taunt=0;
	key_punchback=0;
	
	key_pause=keyboard_check_pressed(vk_enter) ///Pause
	key_start=keyboard_check_pressed(vk_enter)
key_cancel=keyboard_check_pressed(vk_escape)
key_cancelH= keyboard_check(vk_escape)


for (var i=0;i<gamepad_get_device_count();i++)
{//var i=0;
if gamepad_is_connected(i)
{
	key_X+=gamepad_button_check_pressed(i,gp_face1)
	key_A+=gamepad_button_check_pressed(i,gp_face2)
	key_B+=gamepad_button_check_pressed(i,gp_face3)
	key_Y+=gamepad_button_check_pressed(i,gp_face4)
	key_LB+=0
	key_LT+=gamepad_button_check_pressed(i,gp_shoulderl)
	key_RB+=0
	key_RT+=gamepad_button_check_pressed(i,gp_shoulderr)

	key_Xh+=gamepad_button_check(i,gp_face1)
	key_Ah+=gamepad_button_check(i,gp_face2)
	key_Bh+=gamepad_button_check(i,gp_face3)
	key_Yh+=gamepad_button_check(i,gp_face4)
	key_LBh+=0
	key_LTh+=gamepad_button_check(i,gp_shoulderl)
	key_RBh+=0
	key_RTh+=gamepad_button_check(i,gp_shoulderr)
	
	key_attack += gamepad_button_check_pressed(i,gp_face1)
	key_interact += gamepad_button_check_pressed(i,gp_face1) 
	key_charge+=  gamepad_button_check(i,gp_face1)
	key_release+= gamepad_button_check_released(i,gp_face1);
	key_shield += gamepad_button_check(i,gp_face3)
	key_shield_pressed +=  gamepad_button_check_pressed(i,gp_face3)

	key_jump += gamepad_button_check_pressed(i,gp_face2)
		key_jump_hold += gamepad_button_check(i,gp_face2)

	key_super+= gamepad_button_check_pressed(i,gp_face4)
			
	key_taunt+= gamepad_button_check_pressed(i,gp_shoulderl)
	key_punchback+= gamepad_button_check_pressed(i,gp_shoulderr)

key_pause+= gamepad_button_check_pressed(i,gp_start)
key_start+= gamepad_button_check_pressed(i,gp_start)
key_cancel+= gamepad_button_check_pressed(i,gp_face3)
key_cancelH+= gamepad_button_check(i,gp_face3)

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
	


	
	      if stick_right_pressed = true
	      key_right_pressed += 1
	if stick_left_pressed = true
	    key_left_pressed += -1
		
	       if stick_up_pressed = true
	  	  key_down_pressed=-1
	if stick_down_pressed = true
   key_up_pressed=1
   
if gamepad_axis_value(i, gp_axislh)>0.1
key_right=1
if gamepad_axis_value(i, gp_axislh)<-0.1
key_left=1
		
		   if stick_down_held
	      key_down=-1
	        if stick_up_held
	       key_up=1
		   
		   

		   
var _gp_right=gamepad_button_check(i,gp_padr);
var _gp_left=gamepad_button_check(i,gp_padl);
var _gp_up=gamepad_button_check(i,gp_padu);
var _gp_down=gamepad_button_check(i,gp_padd);

var _gp_rightP=gamepad_button_check(i,gp_padr);
var _gp_leftP=gamepad_button_check(i,gp_padl);
var _gp_upP=gamepad_button_check(i,gp_padu);
var _gp_downP=gamepad_button_check(i,gp_padd)

if  keyboard_check(ord("D")) or _gp_right
key_right = 1;
if keyboard_check_pressed(ord("D")) or _gp_rightP
key_right_pressed = 1;
if keyboard_check(ord("A")) or _gp_left
key_left = -1
if keyboard_check_pressed(ord("A")) or _gp_leftP
key_left_pressed = -1;
if keyboard_check(ord("W")) or _gp_up
key_up = 1;
if keyboard_check_pressed(ord("W")) or _gp_upP
key_up_pressed = 1;
if keyboard_check(ord("S")) or _gp_down
key_down = -1;
if keyboard_check_pressed(ord("S")) or _gp_downP
key_down_pressed = -1;

exit;
}
}
			
	
}	
	
	
			

			
	
