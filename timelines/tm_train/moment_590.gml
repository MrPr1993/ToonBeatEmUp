if specialSet8=20
{
with oPlayer
animFrame=1
}

with oPlayer
{flashFX(x+choose(-24,-16,-8,0,8,16,24),y,z,spr_gunflash,0,0.5,10,1,1,c_white,1)}
PlaySound(snd_gun)

if specialSet8!=0 {specialSet8-=1 timeline_position-=4} else
{
oEnemySpawner.roomHSpd=2
oEnemySpawner.roomMove=1

with fk
{sprite_index=spr_twoheads_shoot image_index=2 haspal=1 image_xscale=-1 image_blend=c_white y=174
	x=4184-16 isDepth=1 image_speed=0 vspeed=0 z=0 hspeed=0 alarm[0]=66666
}

with oPlayer
{

animFrame=4 
}
}
