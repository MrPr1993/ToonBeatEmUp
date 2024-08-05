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
	
	key_taunt=0
	key_punchback=0
	
	key_interact=0
	
	key_attackanditem=0
	
	key_cancel=0
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
	key_pause=0
	

	}
else
	{
	if keytick=1 {
keytick=0	

  stick_left_pressed = false;
    stick_right_pressed = false;
    stick_up_pressed = false;
    stick_down_pressed = false;

    stick_left_released = false;
    stick_right_released = false;
    stick_up_released = false;
    stick_down_released = false;
}	

	if controlNO=1 or controlNO=2 or controlNO=3 or controlNO=4
{
gamepadMap = ds_list_create();	

//if ds_list_size(gamepadMap) < gamepad_get_device_count() // ** Change gamepad_get_device_count() to how many players you expect there to be
    {
    // Loop through all gamepads
for (var i=0; i<gamepad_get_device_count();i++)
        {
        // If this gamepad is on
        if gamepad_is_connected(i)
            {
                // If they hadn't already been assigned
                if is_undefined(ds_list_find_value(gamepadMap,i))
                    {
                    // Assign them to the next available player number
                    ds_list_add(gamepadMap,i,ds_list_size(gamepadMap));
                    }   
					

	
            }
     

        }
    }
	
ds_list_sort(gamepadMap,0)
   
if !is_undefined(ds_list_find_value(gamepadMap,controlNO-1))
{
	if controlNO=1
	{controller_p1(ds_list_find_value(gamepadMap,controlNO-1))}
	else
	{controller_p2(ds_list_find_value(gamepadMap,controlNO-1))
	}
}

	
	
ds_list_destroy(gamepadMap)
} 
	    
	
	
	
	if controlNO=9
	controller_menu()	   
	        }


}
