/// @description Prepare Boss



if oPlayer.x>__view_get( e__VW.XView, 0 )+320+64
{
//oPlayer.x=__view_get( e__VW.XView, 0 )+320+32
//with oPlayer {key_right=0 doubledash=0 dashing=0}

with oPlayer
{y=0



canControl=0 areaEntry=1
key_up=0 key_down=0 key_left=0
key_right=0 doubledash=0 dashing=0
}

oEnemySpawner.roomHSpd=4
oEnemySpawner.roomMove=1
spawner_followset("WaveSet1",11360-2,11360-2,1)

with oControl MusicFade=1

}
else
{
timeline_position-=1
}
