/// @description Insert description here
// You can write your code in this editor

enemy_step()

image_xscale=1


if lockPos
{
x=lockX;
y=lockY;
z=lockZ;
}

if canmove {anim=0}

if recovery!=0 recovery-=1;

if eyeHit!=0 eyeHit-=1;


//lockX

if anim=0
	{
if minebuffer!=0 minebuffer-=1
else
{mineind+=0.2 if mineind>4.8 {
	
	bomb=instance_create_depth(x+32*wobbleX,y+16,-1,oBomb)
	bomb.z=z-80 PlaySoundNoStack(snd_swing)
bomb.ground=0 bomb.spdZ=-8 bomb.trigger=1 
if targetEnemy.x>x
bomb.spdX=(1*(point_distance(x,0,targetX,0)/48)/2)
else
bomb.spdX=-(1*(point_distance(x,0,targetX,0)/48)/2)
bomb.vspeed=(1*(point_distance(0,y,0,targetY)/48)/2)
with bomb
{sprite_index=spr_sub_mine mask_index=mask_mine
}


	
	mineind=0 minebuffer=160+choose(120,130,140,150,160)}}

if torpedobuffer!=0 torpedobuffer-=1
else{
torpedoind+=0.25 if torpedoind>4.8 {
		torp=instance_create_depth(x+64+32,y+1,-1,oTorpedoLaunch) torp.z=z
		torp.hspeed=4 torp.speciayY=y+choose(32)+24*torpedotimes	

	if torpedotimes!=1 {torpedoind=0 torpedotimes-=1
		}
	else
	{torpedoind=0 torpedotimes=6 torpedobuffer=80+choose(120,130,140,150,160)
		}
	}
}


	}
	else
	{
	minebuffer=240
mineind=0
torpedobuffer=120
torpedoind=0
torpedotimes=3
	}