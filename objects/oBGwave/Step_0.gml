/// @description Insert description here
// You can write your code in this editor


if haswater=1
{
with oPlayer if dead=0 {
if waterbubble=0 {
	if anim!=4 and anim!=5 and anim!=6 and anim!=7 and anim!=8
	{
	waterbubble=200
	hrt=instance_create_depth(x+4*image_xscale,y,-1,oFlashFX)
		hrt.z=z-height+12 hrt.depth=depth-1 hrt.hspeed=0
		with hrt
		{alarm[0]=60 sprite_index=spr_waterbub
zSpeed=0 zSpeedAdd=-0.1 isDepth=0 animEnd=0}
	}
	} else waterbubble-=1
}
}