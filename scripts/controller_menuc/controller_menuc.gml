// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function controller_menuc(){
//var _controlno=1;



for (var i=0;i<gamepad_get_device_count();i++)
{//var i=0;
key_right = keyboard_check(ord("D")) || gamepad_key(i,1,gp_padr);
key_right_pressed = keyboard_check_pressed(ord("D")) || gamepad_key(i,0,gp_padr);
key_left = -(keyboard_check(ord("A")) || gamepad_key(i,1,gp_padl));
key_left_pressed = (keyboard_check_pressed(ord("A")) || gamepad_key(i,0,gp_padl));
key_up = keyboard_check(ord("W")) || gamepad_key(i,1,gp_padu);
key_up_pressed = keyboard_check_pressed(ord("W")) || gamepad_key(i,0,gp_padu);
key_down = -(keyboard_check(ord("S")) || gamepad_key(i,1,gp_padd));
key_down_pressed = -(keyboard_check_pressed(ord("S")) || gamepad_key(i,1,gp_padd));

	key_X= keyboard_check_pressed(ord("H")) || gamepad_key(i,0,gp_face1);
	key_A= keyboard_check_pressed(ord("K")) || keyboard_check_pressed(vk_space) || gamepad_key(i,1,gp_face2);
	key_B= keyboard_check_pressed(ord("J")) || gamepad_key(i,0,gp_face3);
	key_Y= keyboard_check_pressed(ord("L")) || gamepad_key(i,0,gp_face4);
	key_LB=0
	key_LT= keyboard_check_pressed(ord("U")) || gamepad_key(i,0,gp_shoulderl);
	key_RB=0
	key_RT= keyboard_check_pressed(ord("I")) || gamepad_key(i,0,gp_shoulderr);

	key_Xh= keyboard_check(ord("H")) || gamepad_key(i,1,gp_face1);
	key_Ah=keyboard_check(ord("K"))  || keyboard_check(vk_space) || gamepad_key(i,1,gp_face2);
	key_Bh= keyboard_check(ord("J")) || gamepad_key(i,1,gp_face3);
	key_Yh= keyboard_check(ord("L")) || gamepad_key(i,1,gp_face4);
	key_LBh=0
	key_LTh=keyboard_check(ord("U")) || gamepad_key(i,1,gp_shoulderl);
	key_RBh=0
	key_RTh=keyboard_check(ord("I")) || gamepad_key(i,1,gp_shoulderr);
	
	key_attack = 0
	key_interact = 0
	key_charge=  0
	key_release= 0
	key_shield = 0
	key_shield_pressed =  0
	
	key_taunt=0;
	key_punchback=0;
	
	key_pause=keyboard_check_pressed(vk_enter) || gamepad_key(i,0,gp_start); ///Pause
	key_start=keyboard_check_pressed(vk_enter) || gamepad_key(i,0,gp_start);
key_cancel=keyboard_check_pressed(vk_escape) || gamepad_key(i,0,gp_face3);
key_cancelH= keyboard_check(vk_escape) || gamepad_key(i,1,gp_face3);
}	
	
}	
	
	
			

			
	
