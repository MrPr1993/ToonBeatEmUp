///@description Ride Start


if __view_get( e__VW.XView, 0 )>=7039-320-2
{

PlaySound(snd_hitgroundmetal)
oControl.quakeFXTime=10



bgsetter=instance_create_depth(6688,0,-1,oCameoChar)
with bgsetter
{isDepth=0 anim=666600 sprite_index=spr_carnivalride image_speed=0.25 image_alpha=0
	depth=777203
newscript=function()
{if image_alpha<1 image_alpha+=0.01}
	
}
}
else
timeline_position-=1
