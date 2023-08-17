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

if hp=0 
or anim=4 ///Replace the usual hit flying animations with this
or anim=5
or anim=6
or anim=7
or anim=30
or anim=31
or dead=1
{

	
	}
	else
	{minebuffer-=1 
if minebuffer!=0 minebuffer-=1
else
{
mineind+=0.1 if mineind=5 {mineind=0 minebuffer=choose(120,130,140,150,160)}
}

if torpedobuffer!=0 torpedobuffer=-1
else
{
torpedoind+=0.1 if mineind=5 {
	if torpedotimes!=0 {torpedoind=0 torpedotimes-=1}
	else
	{torpedoind=0 torpedobuffer=choose(120,130,140,150,160)}
	}
}


	}