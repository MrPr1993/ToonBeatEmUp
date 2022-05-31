with oControl 
{MusicFade=0 MusicFadeAdd=1
with oPlayer {key_right=0 doubledash=0 dashing=0}
global.CurrentMusic=msc_boss2

musicplaystart(global.CurrentMusic)
PlaySound(snd_twoheads5)
}


oEnemySpawner.roomMove=0
oEnemySpawner.roomHSpd=3
spawner_followset("WaveSet1",__view_get( e__VW.XView, 0 )+32,__view_get( e__VW.XView, 0 )+32,0)

