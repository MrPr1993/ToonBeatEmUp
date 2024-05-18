if specialSet7=160
{
if specialSet9=0
{//camMove=0 camMax=room_width
//////// Mark for boss area
PlaySound(snd_shocked2)
with oEnemySpawner cammoveUP=1
bosscreen=instance_create_depth(7728,32,-1,oCameoChar) with bosscreen
{sprite_index=spr_labscreen isDepth=0 depth=16777208

anim=9999 shadow=-1

newscript=function()
{
if specialcheck[1]=0
{
image_index+=0.25 if image_index=3 image_index=0
animFrame+=0.25
if animFrame>20 {animFrame=0 specialcheck[1]=1 image_index=3 PlaySound(snd_dastardly1)}
}
if specialcheck[1]=1
{
image_index+=0.2 if image_index=6 image_index=3
animFrame+=0.1
if animFrame>38 {animFrame=0 specialcheck[1]=2 image_index=6 PlaySound(snd_dastardly2)}
}
if specialcheck[1]=2
{
image_index+=0.25 if image_index=9 image_index=7

animFrame+=0.1
if animFrame>15 {animFrame=0 specialcheck[1]=3 image_index=0 PlaySound(snd_shocked2)}
}

if specialcheck[1]=3
{
image_index+=0.25 if image_index=3 image_index=0
}

}

//specialcheck[9]=0;

}



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