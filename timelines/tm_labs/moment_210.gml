if specialSet7=160
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
layer_y("ElevatorBG",0)
layer_y("TileBoss",0)
}

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