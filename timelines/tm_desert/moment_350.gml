/// @description Prepare Boss



if oControl.allPlayersMove 
{
oPlayer.canControl=0
oPlayer.areaEntry=1
//oPlayer.x=__view_get( e__VW.XView, 0 )+320+32
//with oPlayer {key_right=0 doubledash=0 dashing=0}

with oPlayer
{canControl=0 areaEntry=1
key_up=0 key_down=0 key_left=0
key_right=1 doubledash=0 dashing=0
}

if instance_number(oPlayer)!=1
with oPlayer
{
autoYMOVE=oControl.wallY+16+16*controlNO
}

oEnemySpawner.roomHSpd=4
oEnemySpawner.roomMove=1
spawner_followset("WaveSet1",0,9700,1)

timer_set(0)

with oControl MusicFade=1

enb=instance_create_depth(9630+32,228,-1,oGenieMaster)
enb.specialcheck[1]=1
}
else
{
timeline_position-=1
}
