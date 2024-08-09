/// @description Baddies Appear 10

//if __view_get( e__VW.XView, 0 )>=10000-2-320
//{
//boss=instance_create(__view_get( e__VW.XView, 0)+160-64,228,oPlantPrincess)
//musicplaystart(msc_boss4)
//oControl.bossID=oPlantPrincess
//}
//else
//{
//timeline_position-=1
//}

/// @description Prepare Boss



if oPlayer.x>=10000-320+160
and oPlayer.ground=1 and oPlayer.atk=0 and oPlayer.dead=0 and oPlayer.hurt=0 
{timer_set(0)
oPlayer.canControl=0
oPlayer.areaEntry=1
oPlayer.x=10000+30
with oPlayer
{key_right=0 doubledash=0 dashing=0
}

if instance_number(oPlayer)!=1
with oPlayer
{
y=oControl.wallY+16+16*controlNO
}

with oControl MusicFade=1
}
else
{
timeline_position-=1
}
