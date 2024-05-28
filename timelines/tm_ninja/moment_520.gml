/// @description Prepare Boss



if oPlayer.x>=4932
and oPlayer.ground=1 and oPlayer.atk=0 and oPlayer.dead=0 and oPlayer.hurt=0 
{
oPlayer.canControl=0
oPlayer.areaEntry=1
oPlayer.x=5024 oPlayer.y=174-16
with oPlayer
{key_right=0 doubledash=0 dashing=0 canmove=0 AnimFrame=0 anim=306
}

with oControl MusicFade=1

boss=instance_create_depth(5184-64,208-20,0,oOniController) 



}
else
{
timeline_position-=1
}
