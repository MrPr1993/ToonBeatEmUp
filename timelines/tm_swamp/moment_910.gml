/// @description The Witch's Turn



if oPlayer.ground
{
oEnemySpawner.roomHSpd=0
oEnemySpawner.roomMove=0	


oPlayer.areaEntry=0
oPlayer.hspeed=0
oPlayer.canControl=1

with oBlock {y=ystart}	
with oBlock image_yscale=2

with oControl
{
goActive=1 alarm[1]=90
xGoCheck=__view_get( e__VW.XView, 0 )+320}

en3=instance_create(__view_get( e__VW.XView, 0)+320+64,200-32,oBeeLady)
with en3 {image_xscale=-1 canAttack=5 alarm[1]=60}

en4=instance_create(__view_get( e__VW.XView, 0)+320+64,200+32,oBeeLady)
with en4 {image_xscale=-1 canAttack=5 alarm[1]=60}

}
else
{
with oEnemySpawner {if roomHSpd>0 roomHSpd-=0.2 else roomHSpd=0}
with oPlayer {if hspeed>0 hspeed-=0.2 else hspeed=0}

timeline_position-=1
}


//5000, plants
//6000, more zombies
//7000, more enemies
//8000, even more enemies
//9000, last area
//9408, boss