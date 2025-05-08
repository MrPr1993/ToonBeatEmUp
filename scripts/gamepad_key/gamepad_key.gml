function gamepad_key(_device,_check,_button)
{
//var device = argument0; // Controller
//var check = argument1; // Use a for loop to find the desired gamepad button
var _returnbutton=0; // Holds the button on return

if (gamepad_is_connected(_device))
{
if _check=0
{
_returnbutton=gamepad_button_check_pressed(_device,_button)
}
else
{
_returnbutton=gamepad_button_check(_device,_button)
}
}
return _returnbutton
}




