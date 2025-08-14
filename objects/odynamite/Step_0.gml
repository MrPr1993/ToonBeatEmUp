depth=-y

if ground=0 trigger=1
if trigger=1
{
if triggertime>120 image_index+=0.1	
else image_index+=0.25

if image_index>2.75 image_index=1
triggertime-=1 if triggertime<0
{
ex=instance_create_depth(x,y,depth,oExplosion) ex.z=z ex.depth=depth
PlaySoundNoStack(snd_explosion) ex.damage=0.2
oControl.quakeFXTime=10
instance_destroy()
}

}
if z>0 
if !place_meeting(x,y,oFallHole)
{z=0 ground=1 spdZ=0 airSpin=0 angleImage=0}
else if fallHole=0 {fallHole=1 disappearTime=0 alarm[2]=60}

if !ground
{z+=spdZ if canGrav=1 spdZ+=0.45}
else
{
if gravLandHalt=1 spinBack=0
{gravLandHalt=0 spdX=0 if weaponLife<=0 and isweapon=1 and HPDie=1 isBroken=1}

if throwGravity=1 hspeed=0
}

if carry=1
{
if carryID=-1
{carry=0 mask_index=itsmask zAddGround=1
	
	}
else
{

mask_index=spr_nospace zAddGround=0
x=carryID.x
y=carryID.y+2
z=carryID.z-height+8+carryZ
waterMax=carryID.waterMax
}
}
else
{
if !ground
if airSpin=1 angleImage+=angleSpin
}

