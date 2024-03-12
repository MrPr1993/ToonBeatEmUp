if specialSet8=300
{
if specialSet9=0
{//camMove=0 camMax=room_width
//////// Mark for boss area



boss=instance_create_depth(oControl.camX+320+32,220,-1,oScientist)
with boss {canmove=0 anim=100 image_xscale=-1 specialanim=3}


with oControl
{
//xGoCheck=__view_get( e__VW.XView, 0 )+320

MusicFade=1

//spawner_followset("WaveSet1",0,8734,1)
layer_y("ElevatorBG",0)
layer_y("TileBoss",0)
PlaySound(snd_hitgroundmetal)
oControl.quakeFXTime=10


with oEnemySpawner
specialscript=function()
{
specialSet7+=1
if specialSet7>160 specialSet7=0
layer_y("ElevatorBG",specialSet7)
}

}
specialscript=-1;
}
else
{
with oEnemySpawner
specialscript=function()
{
specialSet7+=1
if specialSet7>160 specialSet7=0
layer_y("ElevatorBG",specialSet7)
layer_vspeed("ElevatorBG",specialSet7)
}	

timeline_position-=1;
}


}
else
{
specialSet8+=1

if specialSet8=50
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