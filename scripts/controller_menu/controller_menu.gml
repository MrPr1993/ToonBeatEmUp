// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function controller_menu(){
	
	
key_right = keyboard_check(ord("D"));
	key_left = -keyboard_check(ord("A"));
	key_right_pressed = keyboard_check_pressed(ord("D"));
	key_left_pressed = -keyboard_check_pressed(ord("A"));

	key_jump = keyboard_check_pressed(vk_space) or keyboard_check_pressed(ord("K"));
	key_jump_hold =  keyboard_check(vk_space) or keyboard_check(ord("K"));
	key_up = keyboard_check(ord("W"));
	key_down = keyboard_check(ord("S"));
	key_up_pressed = keyboard_check_pressed(ord("W"));
	key_down_pressed = -keyboard_check_pressed(ord("S"));
	key_attack = keyboard_check_pressed(ord("J"));
	key_charge= keyboard_check(ord("J"));
	key_release= keyboard_check_released(ord("J"));
	key_shield = keyboard_check(ord("L"));
	key_shield_pressed = keyboard_check_pressed(ord("L"));
	key_super=keyboard_check_pressed(ord("H"));
		key_taunt=keyboard_check_pressed(ord("Y"))
	key_punchback=keyboard_check_pressed(ord("U"))
		key_start=keyboard_check_pressed(vk_enter)
		
		key_interact=0;
	
	key_X=keyboard_check_pressed(ord("H"))
	key_Y=keyboard_check_pressed(ord("L"))
	key_A=keyboard_check_pressed(ord("K"))  or keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_enter) ///Accept
	key_B=keyboard_check_pressed(ord("J"))  ///Cancel
	key_LB=keyboard_check_pressed(ord("Y"))
	key_LT=keyboard_check_pressed(ord("U"))
	key_RB=keyboard_check_pressed(ord("I"))
	key_RT=keyboard_check_pressed(ord("O"))
	key_pause=keyboard_check_pressed(vk_escape) ///Pause

	for (var i=0;i<gamepad_get_device_count();i++)
	{
	    if (gamepad_is_connected(i)) 
	        {
	key_A=gamepad_button_check_pressed(i,gp_face1)
	key_B=gamepad_button_check_pressed(i,gp_face2)
	key_X=gamepad_button_check_pressed(i,gp_face3)
	key_Y=gamepad_button_check_pressed(i,gp_face4)
	key_LB=0
	key_LT=gamepad_button_check_pressed(i,gp_shoulderl)
	key_RB=0
	key_RT=gamepad_button_check_pressed(i,gp_shoulderr)
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
        
	        if keyboard_check(ord("D")) or gamepad_axis_value(i, gp_axislh)>0.1 or gamepad_button_check(i,gp_padr)
	       key_right= 1 else key_right=0
	        if keyboard_check(ord("A")) or gamepad_axis_value(i, gp_axislh)<-0.1 or gamepad_button_check(i,gp_padl)
	       key_left= -1 else key_left=0
       
  
	      if keyboard_check_pressed(ord("D"))  or gamepad_button_check_pressed(i,gp_padr) or stick_right_pressed
	      key_right_pressed = 1 else  key_right_pressed = 0
	if   keyboard_check_pressed(ord("A"))  or gamepad_button_check_pressed(i,gp_padl) or stick_left_pressed
	    key_left_pressed = -1 else  key_left_pressed = 0
    
	          if keyboard_check_pressed(ord("W"))  or gamepad_button_check_pressed(i,gp_padu) or stick_down_pressed
	      key_up_pressed = 1 else  key_up_pressed = 0
	if   keyboard_check_pressed(ord("S"))  or gamepad_button_check_pressed(i,gp_padd) or stick_up_pressed
	    key_down_pressed = -1 else  key_down_pressed = 0

	key_up = keyboard_check(ord("W")) or gamepad_axis_value(i, gp_axislv)<-0.1 or gamepad_button_check(i,gp_padu)
	key_down = keyboard_check(ord("S")) or gamepad_axis_value(i, gp_axislv)>0.9 or gamepad_button_check(i,gp_padd)
	key_attack = keyboard_check_pressed(ord("J")) or gamepad_button_check_pressed(i,gp_face1) 
	key_interact = keyboard_check_pressed(ord("J")) or gamepad_button_check_pressed(i,gp_face1) 
	key_charge= keyboard_check(ord("J")) or gamepad_button_check(i,gp_face1)
	key_release= keyboard_check_released(ord("J")) or gamepad_button_check_released(i,gp_face1);
	key_shield = gamepad_button_check(i,gp_face3) or keyboard_check(ord("L"));
	key_shield_pressed =  gamepad_button_check_pressed(i,gp_face3) or keyboard_check_pressed(ord("L"));

	key_jump = keyboard_check_pressed(vk_space) or keyboard_check_pressed(ord("K")) or gamepad_button_check_pressed(i,gp_face2)
		key_jump_hold = keyboard_check(vk_space) or keyboard_check(ord("K")) or gamepad_button_check(i,gp_face2)

	key_super=keyboard_check_pressed(ord("H")) or gamepad_button_check_pressed(i,gp_face4)
			
	key_taunt=keyboard_check_pressed(ord("Y"))  or gamepad_button_check_pressed(i,gp_shoulderl)
	key_punchback=keyboard_check_pressed(ord("U")) or gamepad_button_check_pressed(i,gp_shoulderr)


key_start=keyboard_check_pressed(vk_enter) or gamepad_button_check_pressed(i,gp_start) 

	
			}
			

			
	}
}