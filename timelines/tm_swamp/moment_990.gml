/// @description Prepare Boss


if x=-9999999999999
{
if oControl.allPlayersMove 
{
oPlayer.canControl=0
oPlayer.areaEntry=1
//oPlayer.x=__view_get( e__VW.XView, 0 )+320+32
//with oPlayer {key_right=0 doubledash=0 dashing=0}

PlaySound(snd_fall)

with oPlayer
{canControl=0 areaEntry=1 shadowSpr=spr_shadow
key_up=0 key_down=0 key_left=0 canBounce=0
key_right=1 doubledash=0 dashing=0
}

oEnemySpawner.roomHSpd=4
oEnemySpawner.roomMove=1
spawner_followset("WaveSet1",0,9408,1)

with oControl MusicFade=1

}
else
{
timeline_position-=1
}
}