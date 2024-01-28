/// @description The Witch's Turn



if oPlayer.ground
{
oEnemySpawner.roomHSpd=0
oEnemySpawner.roomMove=0	


oPlayer.areaEntry=0
oPlayer.hspeed=0
oPlayer.canControl=1

with oBlock {if object_index=oBlock y-=24}	

with oControl
{
goActive=1 alarm[1]=90
xGoCheck=__view_get( e__VW.XView, 0 )+320}


}
else
{
with oPlayer {if hspeed>0 hspeed-=0.1 else oPlayer.hspeed=0}

timeline_position-=1
}


//5000, plants
//6000, more zombies
//7000, more enemies
//8000, even more enemies
//9000, last area
//9408, boss