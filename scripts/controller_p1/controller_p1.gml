// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function controller_p1(_controlno){

//var _controlno=1;
keytick=0;
	key_right_pressed = 0;
	key_left_pressed = 0;
	key_up_pressed = 0;
	key_down_pressed = 0;
if _controlno=1
{
key_right = keyboard_check(ord("D"));
	key_left = -keyboard_check(ord("A"));
	key_right_pressed = keyboard_check_pressed(ord("D"));
	key_left_pressed = -keyboard_check_pressed(ord("A"));

	key_jump = keyboard_check_pressed(vk_space) or keyboard_check_pressed(ord(global.ControlJump[_controlno]));
	key_jump_hold =  keyboard_check(vk_space) or keyboard_check(ord(global.ControlJump[_controlno]));
	key_up = keyboard_check(ord("W"));
	key_down = keyboard_check(ord("S"));
	key_up_pressed = keyboard_check_pressed(ord("W"));
	key_down_pressed = -keyboard_check_pressed(ord("S"));
	key_attack = keyboard_check_pressed(ord(global.ControlAttack[_controlno]));
	key_charge= keyboard_check(ord(global.ControlAttack[_controlno]));
	key_release= keyboard_check_released(ord(global.ControlAttack[_controlno]));
	key_shield = keyboard_check(ord(global.ControlShield[_controlno]));
	key_shield_pressed = keyboard_check_pressed(ord(global.ControlShield[_controlno]));
	key_super=keyboard_check_pressed(ord(global.ControlSuper[_controlno]));
	
	key_scream=keyboard_check(ord("O"));
	key_screamP=keyboard_check_pressed(ord("O"));

	key_interact = global.LegacyMode[_controlno]*keyboard_check_pressed(ord(global.ControlInteract[_controlno]));
	
	key_X=keyboard_check_pressed(ord(global.ControlSuper[_controlno])) or keyboard_check_pressed(ord("J"))
	key_Y=keyboard_check_pressed(ord(global.ControlShield[_controlno])) or keyboard_check_pressed(ord("K"))
	key_A=keyboard_check_pressed(ord(global.ControlJump[_controlno]))  or keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_enter) ///Accept
	key_B=keyboard_check_pressed(ord(global.ControlAttack[_controlno]))   or keyboard_check_pressed(ord("K"))  or keyboard_check_pressed(vk_escape)///Cancel
	key_LB=keyboard_check_pressed(ord(global.ControlTaunt[_controlno])) or keyboard_check_pressed(ord("U"))
	key_LT=keyboard_check_pressed(ord(global.ControlPunchback[_controlno])) or keyboard_check_pressed(ord("Y"))
	key_RB=keyboard_check_pressed(ord("I"))
	key_RT=keyboard_check_pressed(ord("O"))
	
	key_taunt=keyboard_check_pressed(ord(global.ControlTaunt[_controlno]))
	key_punchback=keyboard_check_pressed(ord(global.ControlPunchback[_controlno]))
	
	key_pause=keyboard_check_pressed(vk_escape) ///Pause
	key_start=0
}
else
{

}


var sourcecontrol=-1;
if instance_exists(oControl) sourcecontrol=oControl.controlset[_controlno];
else if instance_exists(oContinueScreen) sourcecontrol=oContinueScreen.controlset[_controlno];

if sourcecontrol!=-1
if gamepad_is_connected(sourcecontrol)
{
var i=sourcecontrol;
{
	key_A+=gamepad_button_check_pressed(i,gp_face1)
	key_B+=gamepad_button_check_pressed(i,gp_face2)
	key_X+=gamepad_button_check_pressed(i,gp_face3)
	key_Y+=gamepad_button_check_pressed(i,gp_face4)
	key_LB=0
	key_LT+=gamepad_button_check_pressed(i,gp_shoulderl)
	key_RB=0
	key_RT+=gamepad_button_check_pressed(i,gp_shoulderr)
	key_pause=0
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
	
	      if gamepad_button_check_pressed(i,gp_padr) or stick_right_pressed
	      key_right_pressed += 1
	if gamepad_button_check_pressed(i,gp_padl) or stick_left_pressed
	    key_left_pressed += -1
		
	       if gamepad_button_check_pressed(i,gp_padu) or stick_up_pressed
	    key_up_pressed=1
	if gamepad_button_check_pressed(i,gp_padd) or stick_down_pressed
	    key_down_pressed=-1
   
if gamepad_axis_value(i, gp_axislh)>0.1 or gamepad_button_check(i,gp_padr)
key_right=1
if gamepad_axis_value(i, gp_axislh)<-0.1 or gamepad_button_check(i,gp_padl)
key_left=1
		
		   if stick_down_held or gamepad_button_check(i,gp_padu)
	       key_up=1
	        if stick_up_held or gamepad_button_check(i,gp_padd)
	       key_down=1
 
  



key_right=clamp(key_right,-1,1)	  
if key_left!=0 key_left=-1
key_left=clamp(key_left,-1,1)	
key_up=clamp(key_up,-1,1)	
key_down=clamp(key_down,-1,1)	

	if room=rm_characterselect
	key_attack += gamepad_button_check_pressed(i,global.gpControlJump[_controlno])
	else
	key_attack += gamepad_button_check_pressed(i,global.gpControlAttack[_controlno]) 
	
	key_charge+= gamepad_button_check(i,global.gpControlAttack[_controlno])
	key_release+= gamepad_button_check_released(i,global.gpControlAttack[_controlno]);
	key_shield += gamepad_button_check(i,global.gpControlShield[_controlno]);
	
	key_interact +=  global.LegacyMode[_controlno]*gamepad_button_check_pressed(i,global.gpControlInteract[_controlno]);
	
if room=rm_characterselect
key_shield_pressed +=  gamepad_button_check_pressed(i,global.gpControlAttack[_controlno]) 
	else
	key_shield_pressed =  gamepad_button_check_pressed(i,global.gpControlShield[_controlno]);

if room=rm_characterselect
	key_jump += gamepad_button_check_pressed(i,global.gpControlShield[_controlno]);
else
	key_jump += gamepad_button_check_pressed(i,global.gpControlJump[_controlno])
	
		key_jump_hold += gamepad_button_check(i,global.gpControlJump[_controlno])
		
if room=rm_characterselect
key_super+=gamepad_button_check_pressed(i,global.gpControlSuper[_controlno])
else
key_super+=gamepad_button_check_pressed(i,global.gpControlSuper[_controlno])
		
		
	key_taunt+= gamepad_button_check_pressed(i,global.gpControlTaunt[_controlno])
	key_punchback+=gamepad_button_check_pressed(i,global.gpControlPunchback[_controlno])

}}

	
			
			

			
	
}