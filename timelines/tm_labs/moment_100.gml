if !instance_exists(en1)
and !instance_exists(en2)
{
if specialSet8=0
{//camMove=0 camMax=room_width
with oControl
{
 goActive=1 alarm[1]=90
xGoCheck=__view_get( e__VW.XView, 0 )+320
spawner_followset("WaveSet1",0,5200+320,1)
layer_y("ElevatorBG",0)
PlaySound(snd_hitgroundmetal)
oControl.quakeFXTime=10
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
timeline_position-=1;
}