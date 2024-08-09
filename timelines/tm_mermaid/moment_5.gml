if oControl.specialcheck0!=0
{
oControl.specialcheck0-=1
oControl.alarm[0]=60
timeline_position-=1
}
else
{
oPlayer.visible=1
oEnemySpawner.roomHSpd=0


with oPlayer
{canmove=0 x=90 y=232 z=-256
	
	
key_right=0 visible=1
dashing=2 AnimFrame=0
anim=21
oPlayer.hspeed=0 zSpeed=8
}

if instance_number(oPlayer)!=1
with oPlayer
{
y=oControl.wallY+16*controlNO
}

}
