function controller_setup() {
	AttackOrItem=0
	
	if canControl=0
	{
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
	
	key_attackanditem=0
	
	key_cancel=0
	key_accept=0
	key_switch=0

	}
else
	{
	if controlNO=1
	controller_p1()	    
	if controlNO=2
	controller_p2()	    
	if controlNO=3
	controller_p3()	    
	if controlNO=4
	controller_p4()	    
	        }



}
