//sprite_index=spr_bcameo31
sprite_index=spr_bcameo31 visible=0;
shadow=mask_none
isDepth=0 depth=0

myball=instance_create_depth(x,y,-1,oFlashFX) with myball
{sprite_index=spr_bcameo31ball image_speed=0 alarm[0]=-1;}

anim=555

newscript=function()
{
myball.z+=specialcheck[0];
specialcheck[0]+=0.22;	
if z>0 if spdZ>0 if !ground {z=0 ground=1 animFrame=2}
z+=spdZ;
if ground
frame_set(0,0,0.1) if animFrame=1 if ground {ground=0 spdZ=-8
	myball.z=z-96-30 specialcheck[0]=-8 animFrame=1.9 image_index=1 myball.image_angle=choose(0,90,180,270)
	
	if specialcheck[1]=0 {myball.x=pl1.x myball.hspeed=2.3}
	else {myball.x=pl2.x myball.hspeed=-2.3}
	
	}
	var frameadd=2;
if ground
{spdZ=0; z=0;
frame_set(2,2+frameadd,0.25)
frame_set(3,3+frameadd,0.25)
frame_set(4,4+frameadd,0.25)
frame_set(5,5+frameadd,0.25)
frame_set(6,6+frameadd,0.25)
frame_set(7,7+frameadd,0.1)
frame_set(8,10,0.25)
frame_set(9,0,0.1)
if myball.z>-96-32-30 if animFrame>9.2 {animFrame=0 specialcheck[1]^=1;}
}else {spdZ+=0.45 if image_index<4-0.25 image_index+=0.25}

if specialcheck[1]=0
{pl1.image_index=image_index; pl1.z=z myball.image_angle+=40}
else
{pl2.image_index=image_index; pl2.z=z myball.image_angle-=40}
}

pl1=instance_create_depth(x-96,y,-1,oCameoChar) with pl1
{
sprite_index=spr_bcameo31 anim=666
}
pl2=instance_create_depth(x+96,y,-1,oCameoChar) with pl2
{image_xscale=-1
sprite_index=spr_bcameo19 anim=666
}
