/// @description Prepare Boss

///8416

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
spawner_followset("WaveSet1",8416-2,8416-2,1)

with oControl MusicFade=1

}
else
{
timeline_position-=1
}
