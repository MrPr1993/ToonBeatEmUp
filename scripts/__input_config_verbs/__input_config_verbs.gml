// Feather disable all

//This script contains the default profiles, and hence the default bindings and verbs, for your game
//
//  Please edit this macro to meet the needs of your game!
//
//The struct return by this script contains the names of each default profile.
//Default profiles then contain the names of verbs. Each verb should be given a binding that is
//appropriate for the profile. You can create bindings by calling one of the input_binding_*()
//functions, such as input_binding_key() for keyboard keys and input_binding_mouse() for
//mouse buttons

function __input_config_verbs()
{
    return {
        keyboard_and_mouse:
        {
            up:    [input_binding_key(vk_up),    input_binding_key("W")],
            down:  [input_binding_key(vk_down),  input_binding_key("S")],
            left:  [input_binding_key(vk_left),  input_binding_key("A")],
            right: [input_binding_key(vk_right), input_binding_key("D")],
            
            accept:  input_binding_key(vk_space),
            cancel:  input_binding_key(vk_backspace),
            action:  input_binding_key(vk_enter),
            special: input_binding_key(vk_shift),
			
	key_a: input_binding_key("K"),
	key_b: input_binding_key("J"),
	key_x: input_binding_key("H"),
	key_y: input_binding_key("L"),		
	key_lt: input_binding_key("Y"),
	key_rt: input_binding_key("U"),
	
            //No aiming verbs since we use the mouse for that (see below for aiming verb examples)
            shoot: input_binding_mouse_button(mb_left),
            
            pause: input_binding_key(vk_escape),
        },
        
        gamepad:
        {
            up:    [input_binding_gamepad_axis(gp_axislv, true),  input_binding_gamepad_button(gp_padu)],
            down:  [input_binding_gamepad_axis(gp_axislv, false), input_binding_gamepad_button(gp_padd)],
            left:  [input_binding_gamepad_axis(gp_axislh, true),  input_binding_gamepad_button(gp_padl)],
            right: [input_binding_gamepad_axis(gp_axislh, false), input_binding_gamepad_button(gp_padr)],
            
            accept:  input_binding_gamepad_button(gp_face1),
            cancel:  input_binding_gamepad_button(gp_face2),
            action:  input_binding_gamepad_button(gp_face3),
            special: input_binding_gamepad_button(gp_face4),
			
			
	key_a: input_binding_gamepad_button(gp_face1),//gamepad_button_check_pressed(i,gp_face1) or keyboard_check_pressed(ord("K"))  or keyboard_check_pressed(vk_space)
	key_b: input_binding_gamepad_button(gp_face2),//gamepad_button_check_pressed(i,gp_face2) or keyboard_check_pressed(ord("J"))
	key_x: input_binding_gamepad_button(gp_face3),//gamepad_button_check_pressed(i,gp_face3) or keyboard_check_pressed(ord("H"))
	key_y: input_binding_gamepad_button(gp_face4),//gamepad_button_check_pressed(i,gp_face4) or keyboard_check_pressed(ord("L"))			
	key_lt: input_binding_gamepad_button(gp_shoulderl),// gamepad_button_check_pressed(i,gp_shoulderl) or keyboard_check_pressed(ord("U"))
	key_rt: input_binding_gamepad_button(gp_shoulderr),//gamepad_button_check_pressed(i,gp_shoulderr) or keyboard_check_pressed(ord("O"))
	
            
            aim_up:    input_binding_gamepad_axis(gp_axisrv, true),
            aim_down:  input_binding_gamepad_axis(gp_axisrv, false),
            aim_left:  input_binding_gamepad_axis(gp_axisrh, true),
            aim_right: input_binding_gamepad_axis(gp_axisrh, false),
            shoot:     [input_binding_gamepad_button(gp_shoulderlb), input_binding_gamepad_button(gp_shoulderrb)],
            
            pause: input_binding_gamepad_button(gp_start),
        },
        
        touch:
        {
            up:    input_binding_virtual_button(),
            down:  input_binding_virtual_button(),
            left:  input_binding_virtual_button(),
            right: input_binding_virtual_button(),
            
            accept:  input_binding_virtual_button(),
            cancel:  input_binding_virtual_button(),
            action:  input_binding_virtual_button(),
            special: input_binding_virtual_button(),
            
            pause: input_binding_virtual_button(),
        
	key_a: input_binding_virtual_button(),
	key_b: input_binding_virtual_button(),
	key_x: input_binding_virtual_button(),
	key_y: input_binding_virtual_button(),
	key_lt: input_binding_virtual_button(),
	key_rt: input_binding_virtual_button(),
	
		
		}
    };
}