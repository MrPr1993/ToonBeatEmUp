/// @description Insert description here
// You can write your code in this editor
glass1=instance_create_depth(x+fxXadd,y+fxYadd,-99999,oFlashFX) with glass1
{depth=999999 sprite_index=spr_shatteredglass animEnd=0 alarm[0]=0 isDepth=0
	PlaySound(snd_break)
	var iceFX=0;
		repeat(5)
{
part=instance_create_depth(x,y+1,depth,oDisappearPart)
if iceFX=0 {part.x=x part.y=y part.z=z}
if iceFX=1 {part.x=x-24 part.y=y part.z=z}
if iceFX=2 {part.x=x-48 part.y=y part.z=z}
if iceFX=3 {part.x=x+24 part.y=y part.z=z}
if iceFX=4 {part.x=x+48 part.y=y part.z=z}
part.sprite_index=spr_shatteredglass2
if iceFX<2
{part.hspeed=-2 part.image_xscale=-1}
else
{part.hspeed=2 part.image_xscale=1}
if iceFX=0 part.hspeed=0
part.image_index=choose(0,1,2) part.image_speed=0
part.spdZ=-4 part.image_blend=image_blend part.vspeed=4
part.disappeartime=random_range(24,32)
iceFX+=1;
} iceFX=0;
}


