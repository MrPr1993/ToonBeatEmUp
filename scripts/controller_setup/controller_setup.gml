function controller_setup() {
	AttackOrItem=0
	
	if canControl=0
	{keytick=0 threshold = 0.9;
		
	stick_left_pressed=0
    stick_right_pressed=0
    stick_up_pressed=0
    stick_down_pressed=0

    stick_left_held=0
    stick_right_held=0
    stick_up_held=0
    stick_down_held=0

    stick_left_released=0
    stick_right_released=0
    stick_up_released=0
    stick_down_released=0
		
	key_right = 0
	key_left = 0
	key_right_pressed = 0
	key_left_pressed = 0
	key_jump = 0
	key_jump_hold =  0
	key_up = 0
	key_down = 0
	key_up_pressed = 0
	key_down_pressed = 0

	key_attack = 0
	key_charge= 0
	key_release= 0
	key_shield = 0
	key_shield_pressed = 0
	key_super=0
	
	key_super=0
	
	key_taunt=0
	key_punchback=0
	
	key_interact=0
	
	key_attackanditem=0
	
	key_cancel=0
	key_cancelH=0
	key_accept=0
	key_switch=0
	
	key_start=0
	
	key_X=0
	key_Y=0
	key_A=0
	key_B=0
	key_LB=0
	key_LT=0
	key_RB=0
	key_RT=0
	
	key_Xh=0
	key_Yh=0
	key_Ah=0
	key_Bh=0
	key_LBh=0
	key_LTh=0
	key_RBh=0
	key_RTh=0
	
key_scream=0
key_screamP=0
	
	key_pause=0
	

	}
else
	{
	if keytick=1 {
keytick=0	

key_left_pressed=0
key_right_pressed=0
key_up_pressed=0
key_down_pressed=0

  stick_left_pressed = false;
    stick_right_pressed = false;
    stick_up_pressed = false;
    stick_down_pressed = false;

    stick_left_released = false;
    stick_right_released = false;
    stick_up_released = false;
    stick_down_released = false;
}	



//if controlNO=1
//for (var i=0; i<gamepad_get_device_count();i++)
//{
//controller_p1(1)// if controlNO=2 controller_p1(2) if controlNO=3 controller_p1(3) if controlNO=4 controller_p1(4)
//}


if controlNO=1
controller_pinput(0)
if controlNO=2
controller_pinput(1)
if controlNO=3
controller_pinput(2)
if controlNO=4
controller_pinput(3)
	
	
	
	if controlNO=9
	{
	controller_menu()	  
	}
	        }


}
