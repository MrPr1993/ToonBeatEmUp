/// @description Prepare Boss

with oControl
{timecheck=alarm[0] alarm[0]=10000000}

if oPlayer.ground=1 and oPlayer.atk=0 and oPlayer.dead=0 and oPlayer.hurt=0 
{specialSet8=0
oPlayer.canControl=0
oPlayer.areaEntry=1
//oPlayer.x=__view_get( e__VW.XView, 0 )+320+32
//with oPlayer {key_right=0 doubledash=0 dashing=0}

with oPlayer
{canControl=0 areaEntry=1
key_up=0 key_down=0 key_left=0
key_right=1 doubledash=0 dashing=0
}

oEnemySpawner.roomHSpd=4
oEnemySpawner.roomMove=1
spawner_followset("WaveSet1",__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.XView, 0 )+320,0)

with oControl MusicFade=1

}
else
{
timeline_position-=1
}
