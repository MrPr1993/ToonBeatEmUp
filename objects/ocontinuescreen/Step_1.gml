/// @description Insert description here


controlset[1]=0;
controlset[2]=0;
controlset[3]=0;
controlset[4]=0;
for (var i=0; i<gamepad_get_device_count();i++)
{
if gamepad_is_connected(i)
{
if controlset[1]=0
controlset[1]=i;
else
if controlset[2]=0
controlset[2]=i;
else
if controlset[3]=0
controlset[3]=i;
else
controlset[4]=i;
}
}