sprite_index=spr_bcameo63
////Gaming Eelektross

framespd=0.025

anim=666

shadow=spr_bigshadow

//image_xscale=-1
x-=8 y-=8
framespd=0.1
specialcheck[0]=4
newscript=function()
{
frame_set(0,0,0.01)
frame_set(1,1,0.1)
frame_set(2,2,0.1)
frame_set(3,3,0.01) if AnimFrame=4
{
	{hrt=instance_create_depth(x+(-10-4),y+1,-1,oFlashFX)
		hrt.z=z-20 hrt.depth=depth-1 hrt.hspeed=-0.4
		with hrt
		{alarm[0]=60 sprite_index=spr_scorefont image_speed=0 animEnd=0
image_index=35 zSpeed=2.04 zSpeedAdd=-0.1 isDepth=0 z=-70-4
}}
}
frame_set(4,2,0.1) 
frame_set(5,1,0.1)
if AnimFrame>=5
if specialcheck[0]!=0 {specialcheck[0]-=1 AnimFrame=0}
frame_set(6,0,0.1)
frame_set(7,4,0.1)
frame_set(8,5,0.01)
frame_set(9,4,0.1) 
if AnimFrame>=10
{specialcheck[0]=4 specialcheck[1]=6 AnimFrame=0}

}

