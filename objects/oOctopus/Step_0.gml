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




if hp=0 
or anim=4 ///Replace the usual hit flying animations with this
or anim=5
or anim=6
or anim=7
or anim=30
or anim=31
or dead=1
{
	with oOctopusT if anim!=4 {animFrame=0 anim=4}
	
	
	
	}
	else
	{
	{if spawntent[1]=0 {if tent1=-1
{spawntent[1]=choose(120,140,160,180,200,220,240);
tent=instance_create_depth(x+choose(-128,128),y+choose(-32,160),-1,oOctopusT)
tent.targetEnemy=targetEnemy
}}
else {if tent1=-1 spawntent[1]-=1;}}
	}