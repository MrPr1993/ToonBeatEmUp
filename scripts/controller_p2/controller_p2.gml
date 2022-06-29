// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function controller_p2(){
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

	for (var i=0;i<gamepad_get_device_count();i++)
	{
	    if (gamepad_is_connected(i)) 
	        {
        
	        if keyboard_check(ord("D")) or gamepad_axis_value(i, gp_axislh)>0.1 or gamepad_button_check(i,gp_padr)
	       key_right= 1 else key_right=0
	        if keyboard_check(ord("A")) or gamepad_axis_value(i, gp_axislh)<-0.1 or gamepad_button_check(i,gp_padl)
	       key_left= -1 else key_left=0
       
  
	      if keyboard_check_pressed(ord("D"))  or gamepad_button_check_pressed(i,gp_padr)
	      key_right_pressed = 1 else  key_right_pressed = 0
	if   keyboard_check_pressed(ord("A"))  or gamepad_button_check_pressed(i,gp_padl)
	    key_left_pressed = -1 else  key_left_pressed = 0
    
	          if keyboard_check_pressed(ord("W"))  or gamepad_button_check_pressed(i,gp_padu)
	      key_up_pressed = 1 else  key_up_pressed = 0
	if   keyboard_check_pressed(ord("S"))  or gamepad_button_check_pressed(i,gp_padd)
	    key_down_pressed = -1 else  key_down_pressed = 0

	key_up = keyboard_check(ord("W")) or gamepad_axis_value(i, gp_axislv)<-0.1 or gamepad_button_check(i,gp_padu)
	key_down = keyboard_check(ord("S")) or gamepad_axis_value(i, gp_axislv)>0.9 or gamepad_button_check(i,gp_padd)
	key_attack = keyboard_check_pressed(ord("J")) or gamepad_button_check_pressed(i,gp_face3) 
	key_charge= keyboard_check(ord("J")) or gamepad_button_check(i,gp_face3)
	key_release= keyboard_check_released(ord("J")) or gamepad_button_check_released(i,gp_face3);
	key_shield = gamepad_button_check_released(i,gp_face2) or keyboard_check(ord("L"));
	key_shield_pressed =  gamepad_button_check(i,gp_face2) or keyboard_check_pressed(ord("L"));

	key_jump = keyboard_check_pressed(vk_space) or keyboard_check_pressed(ord("K")) or gamepad_button_check_pressed(i,gp_face1)
	key_super=keyboard_check_pressed(ord("H")) or gamepad_button_check_pressed(i,gp_face4)
			}
	}
}