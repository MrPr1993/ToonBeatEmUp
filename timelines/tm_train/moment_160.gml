{with oPlayer {x=608 y=176 ground=0 visible=1 player_jump() anim=2 zSpeed=-8}
with luggage1 image_index=1

PlaySound(snd_hitgroundmetal)
PlaySound(snd_enemy2)
PlaySound(snd_enemy3)
oControl.quakeFXTime=10
}
oPlayer.areaEntry=0
oPlayer.Immune=0
oEnemySpawner.roomHSpd=0
oEnemySpawner.roomMove=0
oControl.camMove=1
spawner_followset("WaveSet1",0,692+160,1)

with oEnemy1 {canmove=0 sprite_index=ThrownSpr hurt=1 isIdle=0 animFrame=0 ground=0 zSpeed=-6 HitForceReact=3 anim=4 targetHeightHit=24}
