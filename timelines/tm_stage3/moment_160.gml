oPlayer.visible=1
oEnemySpawner.roomHSpd=0


with oPlayer
{canmove=0 x=90 y=232 z=-256
key_right=0
dashing=2 AnimFrame=0.1
anim=21
oPlayer.hspeed=0 zSpeed=8 key_jump_hold=1;
}

if instance_number(oPlayer)!=1
with oControl
{oPlayer.x-=40
//p1.x-=40
p2.x+=40
p3.x+=80
p4.x+=120


}

spawner_followset("WaveSet1",0,692+160,0)

PlaySound(snd_jump)



