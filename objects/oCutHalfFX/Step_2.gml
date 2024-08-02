/// @description Insert description here
// You can write your code in this editor
switch(type)
{
case 0: ///In Half
x+=sentflying
z+=zSpeed
depth=-y


if !ground {zSpeed+=0.45 image_index=0}
else
{zSpeed=0
if image_index<2.5 image_index+=0.5 else {
if image_index!=2.75
{image_index=2.75
alarm[2]=30

	hground=instance_create_depth(x,y,0,oFlashFX)
	hground.sprite_index=spr_hitground hground.depth=99996
	hground.isDepth=0 hground.z=z
	if HitGround!=-1 PlaySoundNoStack(HitGround)
	
	}
}
}
if z>0 {zSpeed=0 ground=1 	sentflying=0}
break;
case 1: ///Sent Flying
x+=sentflying
z+=zSpeed
depth=-y
	if hitBack=0
	{
	image_index+=0.5
	if image_index>=15 image_index=11}
	else
	{
	image_index-=0.5
	if image_index<11 image_index=15-0.5
	}
	
	if x!=clamp(x,oControl.camX-100,oControl.camX+320+100) instance_destroy()


break;

case 2: ///Painting flying
{x+=sentflying image_index=1
z+=zSpeed
depth=-y
	if x!=clamp(x,oControl.camX-100,oControl.camX+320+100) instance_destroy()
}

}