{with oPlayer {x=608 y=176 ground=0 visible=1 player_jump() anim=2 zSpeed=-8 }
with luggage1 image_index=1



PlaySound(snd_hitgroundmetal)
PlaySound(snd_enemy2)
PlaySound(snd_enemy3)
oControl.quakeFXTime=10
}

if instance_number(oPlayer)!=1
with oControl
{
if instance_number(oPlayer)=2
{p1.hspeed=-1 p2.hspeed=1}
else
{
p1.hspeed=-1 p1.vspeed=-0.2
p2.hspeed=1 p2.vspeed=-0.2
p3.hspeed=-1 p3.vspeed=0.2
p4.hspeed=1 p4.vspeed=0.2

}


}

oPlayer.areaEntry=0
oPlayer.Immune=0
oEnemySpawner.roomHSpd=0
oEnemySpawner.roomMove=0
oControl.camMove=1
spawner_followset("WaveSet1",0,692+160,1)

with oEnemy1 {canmove=0 sprite_index=ThrownSpr hurt=1 isIdle=0 AnimFrame=0 ground=0 zSpeed=-6 HitForceReact=3 anim=4 targetHeightHit=24}
