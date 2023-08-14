if specialSet6=90
{
if specialSet7=0
{//camMove=0 camMax=room_width
with oControl
{
 goActive=1 alarm[1]=90
xGoCheck=__view_get( e__VW.XView, 0 )+320
spawner_followset("WaveSet1",0,8734,1)
layer_y("ElevatorBG",0)
PlaySound(snd_hitgroundmetal)
oControl.quakeFXTime=10
layer_vspeed("ElevatorBG",0)
}
specialscript=-1;
}
else
{
timeline_position-=1;
}


}
else
{
specialSet6+=1

if specialSet6=50
{
foody=instance_create(__view_get( e__VW.XView, 0)+160-32,200,oBurger)
foody.z=-200
foody=instance_create(__view_get( e__VW.XView, 0)+160,200,oPizza)
foody.z=-200
foody=instance_create(__view_get( e__VW.XView, 0)+160+32,200,oMeat)
foody.z=-200
}

timeline_position-=1;
}